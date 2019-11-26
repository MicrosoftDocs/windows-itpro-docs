---
title: Create a WDAC policy for fully-managed devices (Windows 10)
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
ms.date: 11/20/2019
---

# Create a WDAC policy for fully-managed devices

**Applies to:**

-   Windows 10
-   Windows Server 2016 and above

This section outlines the process to create a WDAC policy for **fully-managed devices** within an organization. The key difference between this scenario and [lightly-managed devices](create-wdac-policy-for-lightly-managed-devices.md) is that all software deployed to a fully-managed device is managed by IT and users of the device cannot install arbitrary apps. Ideally, all apps are deployed using a software distribution solution, such as Microsoft Endpoint Manager (MEM). Additionally, users on fully-managed devices should ideally run as standard user and only authorized IT pros have administrative access.

> [!NOTE]
> Some of the WDAC options described in this topic are only available on Windows 10 version 1903 and above. When using this topic to plan your own organization's WDAC policies, consider whether your managed clients can use all or some of these features and assess the impact for any features that may be unavailable on your clients. You may need to adapt this guidance to meet your specific organization's needs.

As described in [common WDAC deployment scenarios](types-of-devices.md), we will use the example of **Lamna Healthcare Company (Lamna)** to illustrate this scenario. Lamna is attempting to adopt stronger application policies, including the use of application control to prevent unwanted or unauthorized applications from running on their managed devices.

**Alice Pena** is the IT team lead tasked with the rollout of WDAC.

Alice previously created a policy for the organization's lightly-managed devices. Some devices, however, are more tightly managed and can benefit from a more constrained policy. In particular, certain job functions such as administrative staff and task-workers are not granted administrator level access to their devices. Similarly, shared kiosks are configured only with a managed set of apps and all users of the device except IT run as standard user. On these devices, all apps are deployed and installed by IT.

## Define the "circle-of-trust" for fully-managed devices

Alice identifies the following key factors to arrive at the "circle-of-trust" for Lamna's fully-managed devices:

- All clients are running Windows 10 version 1903 or above;
- All clients are managed by Microsoft Endpoint Manager (MEM) either with Configuration Manager (MEMCM) standalone or hybrid mode with Intune;

> [!NOTE]
> Microsoft Endpoint Configuration Manager was previously known as System Center Configuration Manager (SCCM) 

- Most, but not all, apps are deployed using MEMCM;
- Sometimes, IT staff install apps directly to these devices without using MEMCM;
- All users except IT are standard users on these devices.

Alice's team develops a simple console application, called *LamnaITInstaller.exe*, which will become the authorized way for IT staff to install apps directly to devices. *LamnaITInstaller.exe* allows the IT pro to launch another process, such as an app installer. Alice will configure *LamnaITInstaller.exe* as an additional managed installer for WDAC and allows her to remove the need for filepath rules.

Based on the above, Alice defines the pseudo-rules for the policy:

1. **“Windows works”** rules which authorizes:
   - Windows
   - WHQL (3rd party kernel drivers)
   - Windows Store signed apps

2. **"MEMCM works”** rules which includes signer and hash rules for MEMCM components to properly function
3. **Allow Managed Installer** (MEMCM and *LamnaITInstaller.exe* configured as a managed installer)

The critical differences between this set of pseudo-rules and those defined for Lamna's [lightly-managed devices](create-wdac-policy-for-lightly-managed-devices.md#define-the-circle-of-trust-for-lightly-managed-devices) are:

- Removal of the Intelligent Security Graph (ISG) option; and
- Removal of filepath rules.

## Create a custom base policy using an example WDAC base policy

Having defined the "circle-of-trust", Alice is ready to generate the initial policy for Lamna's fully-managed devices. She decides to use MEMCM to create the initial base policy and then customize it to meet Lamna's needs.

Alice follows these steps to complete this task:

> [!NOTE]
> If you do not use MEMCM or prefer to use a different [example WDAC base policy](example-wdac-base-policies.md) for your own policy, skip to step 2 and substitute the MEMCM policy path with your preferred example base policy.

1. [Use MEMCM to create and deploy an audit policy](https://docs.microsoft.com/configmgr/protect/deploy-use/use-device-guard-with-configuration-manager) to a client device running Windows 10 version 1903 or above.

2. On the client device, run the following commands in an elevated Windows PowerShell session to initialize variables:

      ```powershell
      $PolicyName= "Lamna_FullyManagedClients_Audit"
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
      Set-RuleOption -FilePath $LamnaPolicy -Option 16 # No Reboot
      Set-RuleOption -FilePath $LamnaPolicy -Option 17 # Allow Supplemental
      Set-RuleOption -FilePath $LamnaPolicy -Option 19 # Dynamic Code Security
      ```

6. If appropriate, add additional signer or file rules to further customize the policy for your organization.

7. Use [ConvertFrom-CIPolicy](https://docs.microsoft.com/powershell/module/configci/convertfrom-cipolicy) to convert the WDAC policy to a binary format:

    > [!NOTE]
    > In the sample commands below, replace the string "{InsertPolicyID}" with the actual PolicyID GUID (including braces **{ }**) found in your policy XML file.

   ```powershell
   $WDACPolicyBin=$env:userprofile+"\Desktop\"+$PolicyName+"_{InsertPolicyID}.bin"
   ConvertFrom-CIPolicy $LamnaPolicy $WDACPolicyBin
   ```

8. Upload your base policy XML and the associated binary to a source control solution such as [GitHub](https://github.com/) or a document management solution such as [Office 365 SharePoint](https://products.office.com/sharepoint/collaboration).

At this point, Alice now has an initial policy that is ready to deploy in audit mode to the managed clients within Lamna.

## Security considerations of this fully-managed policy

Alice has defined a policy for Lamna's fully-managed devices that makes some trade-offs between security and manageability for apps. Some of the trade-offs include:

- **Users with administrative access**<br>
    Although applying to fewer users, Lamna still allows some IT staff to log in to its fully-managed devices as administrator. This allows these admin users (or malware running with the user's privileges) to modify or remove altogether the WDAC policy applied on the device. Additionally, administrators can configure any app they wish to operate as a managed installer which would allow them to gain persistent app authorization for whatever apps or binaries they wish.

   Possible mitigations:
  - Use signed WDAC policies and UEFI BIOS access protection to prevent tampering of WDAC policies.
  - Create and deploy signed catalog files as part of the app deployment process in order to remove the requirement for managed installer.
  - Use device attestation to detect the configuration state of WDAC at boot time and use that information to condition access to sensitive corporate resources.
- **Unsigned policies**<br>
    Unsigned policies can be replaced or removed without consequence by any process running as administrator. Unsigned base policies that also enable supplemental policies can have their "circle-of-trust" altered by any unsigned supplemental policy.

   Existing mitigations applied:
  - Limit who can elevate to administrator on the device.

   Possible mitigations:
  - Use signed WDAC policies and UEFI BIOS access protection to prevent tampering of WDAC policies.
- **Managed installer**<br>
    See [security considerations with managed installer](use-windows-defender-application-control-with-managed-installer.md#security-considerations-with-managed-installer)

   Existing mitigations applied:
  - Limit who can elevate to administrator on the device.

   Possible mitigations:
  - Create and deploy signed catalog files as part of the app deployment process in order to remove the requirement for managed installer.
- **Supplemental policies**<br>
    Supplemental policies are designed to relax the associated base policy. Additionally allowing unsigned policies allows any administrator process to expand the "circle-of-trust" defined by the base policy without restriction.

   Possible mitigations:
  - Use signed WDAC policies which allow authorized signed supplemental policies only.
  - Use a restrictive audit mode policy to audit app usage and augment vulnerability detection.

## Up next

- [Create a WDAC policy for fixed-workload devices using a reference computer](create-initial-default-policy.md)
- [Prepare to deploy WDAC policies](windows-defender-application-control-deployment-guide.md)
