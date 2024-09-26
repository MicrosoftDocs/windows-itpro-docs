---
title: Create an App Control policy for lightly managed devices
description: App Control for Business restricts which applications users are allowed to run and the code that runs in the system core.
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 09/11/2024
---

# Create an App Control policy for lightly managed devices

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

This section outlines the process to create an App Control for Business policy for **lightly managed devices** within an organization. Typically, organizations that are new to App Control will be most successful if they start with a permissive policy like the one described in this article. Organizations can choose to harden the policy over time to achieve a stronger overall security posture on their App Control-managed devices as described in later articles.

> [!NOTE]
> Some of the App Control for Business options described in this topic are only available on Windows 10 version 1903 and above, or Windows 11. When using this topic to plan your own organization's App Control policies, consider whether your managed clients can use all or some of these features and assess the impact for any features that may be unavailable on your clients. You may need to adapt this guidance to meet your specific organization's needs.

As in [App Control for Business deployment in different scenarios: types of devices](common-appcontrol-use-cases.md), we'll use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of App Control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead tasked with the rollout of App Control. Lamna currently has loose application usage policies and a culture of maximum app flexibility for users. So, Alice knows she'll need to take an incremental approach to App Control and use different policies for different workloads.

For most users and devices, Alice wants to create an initial policy that is as relaxed as possible in order to minimize user productivity impact, while still providing security value.

## Define the "circle-of-trust" for lightly managed devices

Alice identifies the following key factors to arrive at the "circle-of-trust" for Lamna's lightly managed devices, which currently include most end-user devices:

- All clients are running Windows 10 version 1903 and above, or Windows 11;
- All clients are managed by Configuration Manager or with Intune.
- Some, but not all, apps are deployed using Configuration Manager;
- Most users are local administrators on their devices;
- Some teams may need more rules to authorize specific apps that don't apply generally to all other users.

Based on the above, Alice defines the pseudo-rules for the policy:

1. **"Windows works"** rules that authorize:
   - Windows
   - WHQL (third-party kernel drivers)
   - Windows Store signed apps

1. **"ConfigMgr works"** rules that include:
    - Signer and hash rules for Configuration Manager components to properly function.
    - **Allow Managed Installer** rule to authorize Configuration Manager as a managed installer.

1. **Allow Intelligent Security Graph (ISG)** (reputation-based authorization)

1. **Signed apps** using a certificate issued by a Windows Trusted Root Program certificate authority

1. **Admin-only path rules** for the following locations:
   - C:\Program Files\*
   - C:\Program Files (x86)\*
   - %windir%\*

## Create a custom base policy using an example App Control base policy

Having defined the "circle-of-trust", Alice is ready to generate the initial policy for Lamna's lightly managed devices. Alice decides to use the example `SmartAppControl.xml` to create the initial base policy and then customize it to meet Lamna's needs.

Alice follows these steps to complete this task:

1. On a client device, run the following commands in an elevated Windows PowerShell session to initialize variables:

    > [!NOTE]
    > If you prefer to use a different [example App Control for Business base policy](example-appcontrol-base-policies.md), substitute the example policy path with your preferred base policy in this step.

    ```powershell
    $PolicyPath = $env:userprofile+"\Desktop\"
    $PolicyName= "Lamna_LightlyManagedClients_Audit"
    $LamnaPolicy=Join-Path $PolicyPath "$PolicyName.xml"
    $ExamplePolicy=$env:windir+"\schemas\CodeIntegrity\ExamplePolicies\SmartAppControl.xml"
    ```

1. Copy the example policy to the desktop:

    ```powershell
    Copy-Item $ExamplePolicy $LamnaPolicy
    ```

1. Modify the policy to remove unsupported rule:

    > [!NOTE]
    > `SmartAppControl.xml` is available on Windows 11 version 22H2 and later. This policy includes "Enabled:Conditional Windows Lockdown Policy" rule that is unsupported for enterprise App Control policies and must be removed. For more information, see [App Control and Smart App Control](../appcontrol.md#app-control-and-smart-app-control). If you are using an example policy other than `SmartAppControl.xml`, skip this step.

    ```powershell
    [xml]$xml = Get-Content $LamnaPolicy
    $ns = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
    $ns.AddNamespace("ns", $xml.DocumentElement.NamespaceURI)
    $node = $xml.SelectSingleNode("//ns:Rules/ns:Rule[ns:Option[.='Enabled:Conditional Windows Lockdown Policy']]", $ns)
    $node.ParentNode.RemoveChild($node)
    $xml.Save($LamnaPolicy)
    ```

1. Give the new policy a unique ID, descriptive name, and initial version number:

    ```powershell
    Set-CIPolicyIdInfo -FilePath $LamnaPolicy -PolicyName $PolicyName -ResetPolicyID
    Set-CIPolicyVersion -FilePath $LamnaPolicy -Version "1.0.0.0"
    ```

1. [Use Configuration Manager to create and deploy an audit policy](/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager) to the client device running Windows 10 version 1903 and above, or Windows 11. Merge the Configuration Manager policy with the example policy.

    > [!NOTE]
    > If you do not use Configuration Manager, skip this step.

    ```powershell
    $ConfigMgrPolicy=$env:windir+"\CCM\DeviceGuard\MergedPolicy_Audit_ISG.xml"
    Merge-CIPolicy -OutputFilePath $LamnaPolicy -PolicyPaths $LamnaPolicy,$ConfigMgrPolicy
    Set-RuleOption -FilePath $LamnaPolicy -Option 13 # Managed Installer
    ```

1. Modify the policy to set additional policy rules:

    ```powershell
    Set-RuleOption -FilePath $LamnaPolicy -Option 3  # Audit Mode
    Set-RuleOption -FilePath $LamnaPolicy -Option 12 # Enforce Store Apps
    Set-RuleOption -FilePath $LamnaPolicy -Option 19 # Dynamic Code Security
    ```

1. Add rules to allow the Windows and Program Files directories:

    ```powershell
    $PathRules += New-CIPolicyRule -FilePathRule "%windir%\*"
    $PathRules += New-CIPolicyRule -FilePathRule "%OSDrive%\Program Files\*"
    $PathRules += New-CIPolicyRule -FilePathRule "%OSDrive%\Program Files (x86)\*"
    Merge-CIPolicy -OutputFilePath $LamnaPolicy -PolicyPaths $LamnaPolicy -Rules $PathRules
    ```

1. If appropriate, add more signer or file rules to further customize the policy for your organization.

1. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the App Control for Business policy to a binary format:

    ```powershell
    [xml]$PolicyXML = Get-Content $LamnaPolicy
    $LamnaPolicyBin = Join-Path $PolicyPath "$($PolicyXML.SiPolicy.PolicyID).cip"
    ConvertFrom-CIPolicy $LamnaPolicy $LamnaPolicyBin
    ```

1. Upload your base policy XML and the associated binary to a source control solution, such as [GitHub](https://github.com/) or a document management solution such as [Office 365 SharePoint](https://products.office.com/sharepoint/collaboration).

At this point, Alice now has an initial policy that is ready to deploy in audit mode to the managed clients within Lamna.

## Security considerations of this lightly managed policy

In order to minimize user productivity impact, Alice has defined a policy that makes several trade-offs between security and user app flexibility. Some of the trade-offs include:

- **Users with administrative access**

  This trade-off is the most impactful security trade-off. It allows the device user, or malware running with the user's privileges, to modify or remove the App Control policy on the device. Additionally, administrators can configure any app to act as a managed installer, which would allow them to gain persistent app authorization for whatever apps or binaries they wish.

  Possible mitigations:

  - Use signed App Control policies and UEFI BIOS access protection to prevent tampering of App Control policies.
  - To remove the requirement for managed installer, create and deploy signed catalog files as part of the app deployment process.
  - Use device attestation to detect the configuration state of App Control at boot time and use that information to condition access to sensitive corporate resources.

- **Unsigned policies**

  Unsigned policies can be replaced or removed without consequence by any process running as administrator. Unsigned base policies that also enable supplemental policies can have their "circle-of-trust" altered by any unsigned supplemental policy.

  Possible mitigations:

  - Use signed App Control policies and UEFI BIOS access protection to prevent tampering of App Control policies.
  - Limit who can elevate to administrator on the device.

- **Managed installer**

  See [security considerations with managed installer](configure-authorized-apps-deployed-with-a-managed-installer.md#security-considerations-with-managed-installer)

  Possible mitigations:

  - To remove the requirement for managed installer, create and deploy signed catalog files as part of the app deployment process.
  - Limit who can elevate to administrator on the device.

- **Intelligent Security Graph (ISG)**

  See [security considerations with the Intelligent Security Graph](use-appcontrol-with-intelligent-security-graph.md#security-considerations-with-the-isg-option)

  Possible mitigations:

  - Implement policies that require apps be managed by IT. Audit existing app usage and deploy authorized apps using a software distribution solution, like Microsoft Intune. Move from ISG to managed installer or signature-based rules.
  - Use a restrictive audit mode policy to audit app usage and augment vulnerability detection.

- **Supplemental policies**

  Supplemental policies are designed to relax the associated base policy. Additionally allowing unsigned policies allows any administrator process to expand the "circle-of-trust" defined by the base policy without restriction.

  Possible mitigations:

  - Use signed App Control policies that allow authorized signed supplemental policies only.
  - Use a restrictive audit mode policy to audit app usage and augment vulnerability detection.

- **FilePath rules**

  See [more information about filepath rules](select-types-of-rules-to-create.md#more-information-about-filepath-rules)

  Possible mitigations:

  - Limit who can elevate to administrator on the device.
  - Migrate from filepath rules to managed installer or signature-based rules.

- **Signed files**

  Although files that are code-signed verify the author's identity and ensures that the code hasn't been altered by anyone other than the author, it doesn't guarantee that the signed code is safe.

  Possible mitigations:

  - Use a reputable antimalware or antivirus software with real-time protection, such as Microsoft Defender, to protect your devices from malicious files, adware, and other threats.

## Up next

- [Create an App Control for Business policy for fully managed devices](create-appcontrol-policy-for-fully-managed-devices.md)
- [Prepare to deploy App Control for Business policies](../deployment/appcontrol-deployment-guide.md)
