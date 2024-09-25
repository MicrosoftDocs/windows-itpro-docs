---
title: Create an App Control policy for fully managed devices
description: App Control for Business restricts which applications users are allowed to run and the code that runs in system core.
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 09/11/2024
---

# Create an App Control policy for fully managed devices

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

This section outlines the process to create an App Control for Business policy for **fully managed devices** within an organization. The key difference between this scenario and [lightly managed devices](create-appcontrol-policy-for-lightly-managed-devices.md) is that all software deployed to a fully managed device is managed by IT and users of the device can't install arbitrary apps. Ideally, all apps are deployed using a software distribution solution, such as Microsoft Intune. Additionally, users on fully managed devices should ideally run as standard user and only authorized IT pros have administrative access.

> [!NOTE]
> Some of the App Control for Business options described in this topic are only available on Windows 10 version 1903 and above, or Windows 11. When using this topic to plan your own organization's App Control policies, consider whether your managed clients can use all or some of these features and assess the impact for any features that may be unavailable on your clients. You may need to adapt this guidance to meet your specific organization's needs.

As described in [common App Control for Business deployment scenarios](common-appcontrol-use-cases.md), we'll use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of App Control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead tasked with the rollout of App Control.

Alice previously created a policy for the organization's lightly managed devices. Some devices, however, are more tightly managed and can benefit from a more constrained policy. In particular, certain job functions such as administrative staff and firstline workers aren't granted administrator level access to their devices. Similarly, shared kiosks are configured only with a managed set of apps and all users of the device except IT run as standard user. On these devices, all apps are deployed and installed by IT.

## Define the "circle-of-trust" for fully managed devices

Alice identifies the following key factors to arrive at the "circle-of-trust" for Lamna's fully managed devices:

- All clients are running Windows 10 version 1903 or above or Windows 11;
- All clients are managed by Configuration Manager or with Intune;
- Most, but not all, apps are deployed using Configuration Manager;
- Sometimes, IT staff install apps directly to these devices without using Configuration Manager;
- All users except IT are standard users on these devices.

Alice's team develops a simple console application, called *LamnaITInstaller.exe*, which will become the authorized way for IT staff to install apps directly to devices. *LamnaITInstaller.exe* allows the IT pro to launch another process, such as an app installer. Alice will configure *LamnaITInstaller.exe* as an extra managed installer for App Control and allows her to remove the need for filepath rules.

Based on the above, Alice defines the pseudo-rules for the policy:

1. **"Windows works"** rules that authorize:
   - Windows
   - WHQL (third-party kernel drivers)
   - Windows Store signed apps

2. **"ConfigMgr works"** rules that include signer and hash rules for Configuration Manager components to properly function.
3. **Allow Managed Installer** (Configuration Manager and *LamnaITInstaller.exe* configured as a managed installer)

The critical differences between this set of pseudo-rules and those pseudo-rules defined for Lamna's [lightly managed devices](create-appcontrol-policy-for-lightly-managed-devices.md#define-the-circle-of-trust-for-lightly-managed-devices) are:

- Removal of the Intelligent Security Graph (ISG) option; and
- Removal of filepath rules.

## Create a custom base policy using an example App Control base policy

Having defined the "circle-of-trust", Alice is ready to generate the initial policy for Lamna's fully managed devices and decides to use Configuration Manager to create the initial base policy and then customize it to meet Lamna's needs.

Alice follows these steps to complete this task:

> [!NOTE]
> If you do not use Configuration Manager or prefer to use a different [example App Control for Business base policy](example-appcontrol-base-policies.md) for your own policy, skip to step 2 and substitute the Configuration Manager policy path with your preferred example base policy.

1. [Use Configuration Manager to create and deploy an audit policy](/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager) to a client device running Windows 10 version 1903 or above, or Windows 11.

2. On the client device, run the following commands in an elevated Windows PowerShell session to initialize variables:

   ```powershell
   $PolicyPath=$env:userprofile+"\Desktop\"
   $PolicyName= "Lamna_FullyManagedClients_Audit"
   $LamnaPolicy=$PolicyPath+$PolicyName+".xml"
   $ConfigMgrPolicy=$env:windir+"\CCM\DeviceGuard\MergedPolicy_Audit_ISG.xml"
   ```

3. Copy the policy created by Configuration Manager to the desktop:

   ```powershell
   cp $ConfigMgrPolicy $LamnaPolicy
   ```

4. Give the new policy a unique ID, descriptive name, and initial version number:

   ```powershell
   Set-CIPolicyIdInfo -FilePath $LamnaPolicy -PolicyName $PolicyName -ResetPolicyID
   Set-CIPolicyVersion -FilePath $LamnaPolicy -Version "1.0.0.0"
   ```

5. Modify the copied policy to set policy rules:

   ```powershell
   Set-RuleOption -FilePath $LamnaPolicy -Option 3 # Audit Mode
   Set-RuleOption -FilePath $LamnaPolicy -Option 6 # Unsigned Policy
   Set-RuleOption -FilePath $LamnaPolicy -Option 9 # Advanced Boot Menu
   Set-RuleOption -FilePath $LamnaPolicy -Option 12 # Enforce Store Apps
   Set-RuleOption -FilePath $LamnaPolicy -Option 13 # Managed Installer
   Set-RuleOption -FilePath $LamnaPolicy -Option 16 # No Reboot
   Set-RuleOption -FilePath $LamnaPolicy -Option 17 # Allow Supplemental
   Set-RuleOption -FilePath $LamnaPolicy -Option 19 # Dynamic Code Security
   ```

6. If appropriate, add more signer or file rules to further customize the policy for your organization.

7. Use [ConvertFrom-CIPolicy](/powershell/module/configci/convertfrom-cipolicy) to convert the App Control for Business policy to a binary format:

   ```powershell
   [xml]$PolicyXML = Get-Content $LamnaPolicy
   $LamnaPolicyBin = Join-Path $PolicyPath "$($PolicyXML.SiPolicy.PolicyID).cip"
   ConvertFrom-CIPolicy $LamnaPolicy $LamnaPolicyBin
   ```

8. Upload your base policy XML and the associated binary to a source control solution such as [GitHub](https://github.com/) or a document management solution such as [Office 365 SharePoint](https://products.office.com/sharepoint/collaboration).

At this point, Alice now has an initial policy that is ready to deploy in audit mode to the managed clients within Lamna.

## Security considerations of this fully managed policy

Alice has defined a policy for Lamna's fully managed devices that makes some trade-offs between security and manageability for apps. Some of the trade-offs include:

- **Users with administrative access**

  Although applying to fewer users, Lamna still allows some IT staff to sign in to its fully managed devices as administrator. This privilege allows these users (or malware running with the user's privileges) to modify or remove altogether the App Control policy applied on the device. Additionally, administrators can configure any app they wish to operate as a managed installer that would allow them to gain persistent app authorization for whatever apps or binaries they wish.

  Possible mitigations:
  - Use signed App Control policies and UEFI BIOS access protection to prevent tampering of App Control policies.
  - Create and deploy signed catalog files as part of the app deployment process in order to remove the requirement for managed installer.
  - Use device attestation to detect the configuration state of App Control at boot time and use that information to condition access to sensitive corporate resources.

- **Unsigned policies**

  Unsigned policies can be replaced or removed without consequence by any process running as administrator. Unsigned base policies that also enable supplemental policies can have their "circle-of-trust" altered by any unsigned supplemental policy.

  Existing mitigations applied:
  - Limit who can elevate to administrator on the device.

  Possible mitigations:
  - Use signed App Control policies and UEFI BIOS access protection to prevent tampering of App Control policies.

- **Managed installer**

  See [security considerations with managed installer](configure-authorized-apps-deployed-with-a-managed-installer.md#security-considerations-with-managed-installer)

  Existing mitigations applied:
  - Limit who can elevate to administrator on the device.

  Possible mitigations:
  - Create and deploy signed catalog files as part of the app deployment process in order to remove the requirement for managed installer.

- **Supplemental policies**<br>

  Supplemental policies are designed to relax the associated base policy. Additionally allowing unsigned policies allows any administrator process to expand the "circle-of-trust" defined by the base policy without restriction.

  Possible mitigations:
  - Use signed App Control policies that allow authorized signed supplemental policies only.
  - Use a restrictive audit mode policy to audit app usage and augment vulnerability detection.

## Up next

- [Create an App Control for Business policy for fixed-workload devices using a reference computer](create-appcontrol-policy-using-reference-computer.md)
- [Prepare to deploy App Control for Business policies](../deployment/appcontrol-deployment-guide.md)
