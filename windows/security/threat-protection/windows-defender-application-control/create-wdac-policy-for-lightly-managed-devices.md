---
title: Create a WDAC policy for lightly-managed devices (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
keywords: whitelisting, security, malware
ms.topic: conceptual
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 11/15/2019
---

# Create a WDAC policy for lightly-managed devices

**Applies to:**

-   Windows 10
-   Windows Server 2016 and above

This section outlines the process to create a WDAC policy for **lightly-managed devices** within an organization. Typically, organizations that are new to application control will be most successful if they start with a permissive policy like the one described in this topic. Organizations can choose to harden the policy over time to achieve a stronger overall security posture on their WDAC managed devices as described in later topics.

> [!NOTE]
> Some of the WDAC options described in this topic are only available on Windows 10 version 1903 and above. When using this topic to plan your own organization's WDAC policies, consider whether your managed clients can use all or some of these features and assess the impact for any features that may be unavailable on your clients. You may need to adapt this guidance to meet your specific organization's needs.

As in the [previous topic](types-of-devices.md), we will use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of application control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead tasked with the rollout of WDAC. Recognizing where Lamna is starting from, with very loose application usage policies and a culture of maximum app flexibility for users, Alice knows that she will need to take an incremental approach to application control and use different policies for different workloads.

For the majority of users and devices, Alice wants to create an initial policy that is as relaxed as possible in order to minimize user productivity impact, while still providing security value.

## Define the "circle-of-trust" for lightly-managed devices

Alice identifies the following key factors to arrive at the "circle-of-trust" for Lamna's lightly-managed devices, which currently includes most end-user devices:

- All clients are running Windows 10 version 1903 or above;
- All clients are managed by Microsoft Endpoint Manager (MEM) either with Configuration Manager (MEMCM) standalone or hybrid mode with Intune;

    > [!NOTE]
    > Microsoft Endpoint Configuration Manager was previously known as System Center Configuration Manager (SCCM). 

- Some, but not all, apps are deployed using MEMCM;
- Most users are local administrators on their devices;
- Some teams may need additional rules to authorize specific apps that don't apply generally to all other users.

Based on the above, Alice defines the pseudo-rules for the policy:

1. **“Windows works”** rules which authorizes:
   - Windows
   - WHQL (3rd party kernel drivers)
   - Windows Store signed apps

2. **"MEMCM works”** rules which includes signer and hash rules for MEMCM components to properly function
3. **Allow Managed Installer** (MEMCM configured as a managed installer)
4. **Allow Intelligent Security Graph (ISG)** (reputation-based authorization)
5. **Admin-only path rules** for the following locations:
   - C:\Program Files\*
   - C:\Program Files (x86)\*
   - %windir%\*

## Create a custom base policy using an example WDAC base policy

Having defined the "circle-of-trust", Alice is ready to generate the initial policy for Lamna's lightly-managed devices. She decides to use MEMCM to create the initial base policy and then customize it to meet Lamna's needs.

Alice follows these steps to complete this task:

> [!NOTE]
> If you do not use MEMCM or prefer to use a different [example WDAC base policy](example-wdac-base-policies.md) for your own policy, skip to step 2 and substitute the MEMCM policy path with your preferred example base policy.

1. [Use MEMCM to create and deploy an audit policy](https://docs.microsoft.com/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager) to a client device running Windows 10 version 1903 or above.

2. On the client device, run the following commands in an elevated Windows PowerShell session to initialize variables:

      ```powershell
      $PolicyName= "Lamna_LightlyManagedClients_Audit"
      $LamnaPolicy=$env:userprofile+"\Desktop\"+$PolicyName+".xml"
      $MEMCMPolicy=$env:windir+"\CCM\DeviceGuard\MergedPolicy_Audit_ISG.xml"
      ```

3. Copy the policy created by MEMCM to the desktop:

      ```powershell
      cp $MEMCMPolicy $LamnaPolicy
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
      Set-RuleOption -FilePath $LamnaPolicy -Option 14 # ISG
      Set-RuleOption -FilePath $LamnaPolicy -Option 16 # No Reboot
      Set-RuleOption -FilePath $LamnaPolicy -Option 17 # Allow Supplemental
      Set-RuleOption -FilePath $LamnaPolicy -Option 19 # Dynamic Code Security
      ```

6. Add rules to allow windir and Program Files directories:

      ```powershell
      $PathRules += New-CIPolicyRule -FilePathRule "%windir%\*"
      $PathRules += New-CIPolicyRule -FilePathRule "%OSDrive%\Program Files\*"
      $PathRules += New-CIPolicyRule -FilePathRule "%OSDrive%\Program Files (x86)\*"
      Merge-CIPolicy -OutputFilePath $LamnaPolicy -PolicyPaths $LamnaPolicy -Rules $PathRules
      ```

7. If appropriate, add additional signer or file rules to further customize the policy for your organization.

8. Use [ConvertFrom-CIPolicy](https://docs.microsoft.com/powershell/module/configci/convertfrom-cipolicy) to convert the WDAC policy to a binary format:

    > [!NOTE]
    > In the sample commands below, replace the string "{InsertPolicyID}" with the actual PolicyID GUID (including braces **{ }**) found in your policy XML file.

   ```powershell
   $WDACPolicyBin=$env:userprofile+"\Desktop\"+$PolicyName+"_{InsertPolicyID}.bin"
   ConvertFrom-CIPolicy $LamnaPolicy $WDACPolicyBin
   ```

9. Upload your base policy XML and the associated binary to a source control solution such as [GitHub](https://github.com/) or a document management solution such as [Office 365 SharePoint](https://products.office.com/sharepoint/collaboration).

At this point, Alice now has an initial policy that is ready to deploy in audit mode to the managed clients within Lamna.

## Security considerations of this lightly-managed policy

In order to minimize user productivity impact, Alice has defined a policy that makes several trade-offs between security and user app flexibility. Some of the trade-offs include:

- **Users with administrative access**<br>
    By far the most impactful security trade-off, this allows the device user (or malware running with the user's privileges) to modify or remove altogether the WDAC policy applied on the device. Additionally, administrators can configure any app they wish to operate as a managed installer which would allow them to gain persistent app authorization for whatever apps or binaries they wish.

    Possible mitigations:
  - Use signed WDAC policies and UEFI BIOS access protection to prevent tampering of WDAC policies.
  - Create and deploy signed catalog files as part of the app deployment process in order to remove the requirement for managed installer.
  - Use device attestation to detect the configuration state of WDAC at boot time and use that information to condition access to sensitive corporate resources.
- **Unsigned policies**<br>
    Unsigned policies can be replaced or removed without consequence by any process running as administrator. Unsigned base policies that also enable supplemental policies can have their "circle-of-trust" altered by any unsigned supplemental policy.

    Possible mitigations:
  - Use signed WDAC policies and UEFI BIOS access protection to prevent tampering of WDAC policies.
  - Limit who can elevate to administrator on the device.
- **Managed installer**<br>
    See [security considerations with managed installer](use-windows-defender-application-control-with-managed-installer.md#security-considerations-with-managed-installer)

    Possible mitigations:
  - Create and deploy signed catalog files as part of the app deployment process in order to remove the requirement for managed installer.
  - Limit who can elevate to administrator on the device.
- **Intelligent Security Graph (ISG)**<br>
    See [security considerations with the Intelligent Security Graph](use-windows-defender-application-control-with-intelligent-security-graph.md#security-considerations-with-the-intelligent-security-graph)

    Possible mitigations:
  - Implement policies requiring apps are managed by IT; audit existing app usage and deploy authorized apps using a software distribution solution such as Microsoft Endpoint Manager; move from ISG to managed installer or signature based rules.
  - Use a restrictive audit mode policy to audit app usage and augment vulnerability detection.
- **Supplemental policies**<br>
    Supplemental policies are designed to relax the associated base policy. Additionally allowing unsigned policies allows any administrator process to expand the "circle-of-trust" defined by the base policy without restriction.

    Possible mitigations:
  - Use signed WDAC policies which allow authorized signed supplemental policies only.
  - Use a restrictive audit mode policy to audit app usage and augment vulnerability detection.
- **FilePath rules**<br>
    See [more information about filepath rules](select-types-of-rules-to-create.md#more-information-about-filepath-rules)

    Possible mitigations:
  - Limit who can elevate to administrator on the device.
  - Migrate from filepath rules to managed installer or signature-based rules.

## Up next

- [Create a WDAC policy for fully-managed devices](create-wdac-policy-for-fully-managed-devices.md)
- [Prepare to deploy WDAC policies](windows-defender-application-control-deployment-guide.md)
