---
title: Configure BitLocker
description: Learn about the available options to configure BitLocker and how to configure them via Configuration Service Providers (CSP) or group policy (GPO).
ms.topic: how-to
ms.date: 10/03/2023
---

# Configure BitLocker

To configure BitLocker, you can use one of the following options:

- Configuration Service Provider (CSP): this option is commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune
- Group policy (GPO): this option can be used for devices that are joined to an Active Directory domain and aren't managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor
- Microsoft Configuration Manager: this option can be used for devices that are managed by Microsoft Configuration Manager using the BitLocker management agent

> [!NOTE]
> Windows Server doesn't support the configuration of BitLocker using CSP or Microsoft Configuration Manager. Use GPO instead.

While many of the BitLocker policy settings can be configured using both CSP and GPO, there are some settings that are only available using one of the options. To learn about the policy settings available for both CSP and GPO, review the reference article [BitLocker policy settings](configure.md).

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-management.md)]

## Configure devices using CSP

The configuration of devices using CSP is a good option for devices that managed by an MDM solution, like Microsoft Intune. These are *Microsoft Entra joined*, *Microsoft Entra registered* or *Microsoft Entra hybrid joined* devices.

The [BitLocker CSP](/windows/client-management/mdm/bitlocker-csp) is used to configure BitLocker, and to report the status of different BitLocker functions to the MDM solution. With Microsoft Intune, you can use the BitLocker status in [compliance polices](/mem/intune/protect/compliance-policy-create-windows#encryption), combining them with [Conditional Access](/azure/active-directory/conditional-access/overview). Conditional Access can prevent or grant access to services like Exchange Online and SharePoint Online, based on the status of BitLocker.

> [!NOTE]
> For hardware that is compliant with Modern Standby and HSTI, [device encryption](index.md#device-encryption) is automatically turned on whenever a user Microsoft Entra joins a device. Microsoft Entra ID provides a portal where recovery keys are also backed up, so users can retrieve their own recovery keys for self-service, if necessary.

To learn more about the Intune options to configure and monitor BitLocker, check the following articles:

- [Manage BitLocker policy for Windows devices with Intune](/mem/intune/protect/encrypt-devices#rotate-bitlocker-recovery-keys)
- [Monitor device encryption with Intune](/mem/intune/protect/encryption-monitor)
- [Use compliance policies to set rules for devices you manage with Intune](/mem/intune/protect/device-compliance-get-started)

## Configure devices using GPO


To learn more about options to configure BitLocker via Microsoft Configuration Manager, see [Deploy BitLocker management](/mem/configmgr/protect/deploy-use/bitlocker/deploy-management-agent).

> [!TIP]
> Organizations that image their device using Configuration Manager can use an existing task sequence to [pre-provision BitLocker](/configmgr/osd/understand/task-sequence-steps#BKMK_PreProvisionBitLocker) encryption while in Windows Preinstallation Environment (WinPE), and can then [enable protection](/configmgr/osd/understand/task-sequence-steps#BKMK_EnableBitLocker). These steps during an operating system deployment can help ensure that computers are encrypted from the start, even before users receive them. As part of the imaging process, an organization could also decide to use Configuration Manager to pre-set any desired [BitLocker policy settings](configure.md).

## BitLocker policy settings

This section describes the policy settings to configure BitLocker via configuration service provider (CSP) and group policy (GPO).

> [!IMPORTANT]
> Most of the BitLocker policy settings are enforced when BitLocker is initially turned on for a drive. Encryption isn't restarted if settings change.

### Policy settings list

The list of settings is sorted alphabetically and organized in four categories:

- **Common settings**: settings applicable to all BitLocker-protected drives
- **Operating system drive**: settings applicable to the drive where Windows is installed
- **Fixed data drives**: settings applicable to any local drives, except the operating system drive
- **Removable data drives**: settings applicable to any removable drives

Select one of the tabs to see the list of available settings:

#### [:::image type="icon" source="images/locked-drive.svg"::: **Common settings**](#tab/common)

The following table lists the BitLocker policies applicable to all drive types, indicating if they're applicable via configuration service provider (CSP) and/or group policy (GPO). Select the policy name for more details.

|Policy name| CSP | GPO |
|-|-|-|
|[Allow standard user encryption](#allow-standard-user-encryption)|✅|❌|
|[Choose default folder for recovery password](#choose-default-folder-for-recovery-password)|❌|✅|
|[Choose drive encryption method and cipher strength](#choose-drive-encryption-method-and-cipher-strength)|✅|✅|
|[Configure recovery password rotation](#configure-recovery-password-rotation)|✅|❌|
|[Disable new DMA devices when this computer is locked](#disable-new-dma-devices-when-this-computer-is-locked)|❌|✅|
|[Prevent memory overwrite on restart](#prevent-memory-overwrite-on-restart)|❌|✅|
|[Provide the unique identifiers for your organization](#provide-the-unique-identifiers-for-your-organization)|✅|✅|
|[Require device encryption](#require-device-encryption)|✅|❌|
|[Validate smart card certificate usage rule compliance](#validate-smart-card-certificate-usage-rule-compliance)|❌|✅|

[!INCLUDE [allow-standard-user-encryption](includes/allow-standard-user-encryption.md)]
[!INCLUDE [choose-default-folder-for-recovery-password](includes/choose-default-folder-for-recovery-password.md)]
[!INCLUDE [choose-drive-encryption-method-and-cipher-strength](includes/choose-drive-encryption-method-and-cipher-strength.md)]
[!INCLUDE [configure-recovery-password-rotation](includes/configure-recovery-password-rotation.md)]
[!INCLUDE [disable-new-dma-devices-when-this-computer-is-locked](includes/disable-new-dma-devices-when-this-computer-is-locked.md)]
[!INCLUDE [prevent-memory-overwrite-on-restart](includes/prevent-memory-overwrite-on-restart.md)]
[!INCLUDE [provide-the-unique-identifiers-for-your-organization](includes/provide-the-unique-identifiers-for-your-organization.md)]
[!INCLUDE [require-device-encryption](includes/require-device-encryption.md)]
[!INCLUDE [validate-smart-card-certificate-usage-rule-compliance](includes/validate-smart-card-certificate-usage-rule-compliance.md)]

#### [:::image type="icon" source="images/os-drive.svg"::: **Operating system drive**](#tab/os)

|Policy name| CSP | GPO |
|-|-|-|
|[Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN](#allow-devices-compliant-with-instantgo-or-hsti-to-opt-out-of-preboot-pin)|✅|✅|
|[Allow enhanced PINs for startup](#allow-enhanced-pins-for-startup)|✅|✅|
|[Allow network unlock at startup](#allow-network-unlock-at-startup)|❌|✅|
|[Allow Secure Boot for integrity validation](#allow-secure-boot-for-integrity-validation)|❌|✅|
|[Allow Warning For Other Disk Encryption](#allow-warning-for-other-disk-encryption)|✅|❌|
|[Choose how BitLocker-protected operating system drives can be recovered](#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)|✅|✅|
|[Configure minimum PIN length for startup](#configure-minimum-pin-length-for-startup)|✅|✅|
|[Configure pre-boot recovery message and URL](#configure-preboot-recovery-message-and-url)|✅|✅|
|[Configure TPM platform validation profile for BIOS-based firmware configurations](#configure-tpm-platform-validation-profile-for-bios-based-firmware-configurations)|❌|✅|
|[Configure TPM platform validation profile for native UEFI firmware configurations](#configure-tpm-platform-validation-profile-for-native-uefi-firmware-configurations)|❌|✅|
|[Configure use of hardware-based encryption for operating system drives](#configure-use-of-hardware-based-encryption-for-operating-system-drives)|❌|✅|
|[Configure use of passwords for operating system drives](#configure-use-of-passwords-for-operating-system-drives)|❌|✅|
|[Disallow standard users from changing the PIN or password](#disallow-standard-users-from-changing-the-pin-or-password)|✅|✅|
|[Enable use of BitLocker authentication requiring preboot keyboard input on slates](#enable-use-of-bitlocker-authentication-requiring-preboot-keyboard-input-on-slates)|✅|✅|
|[Enforce drive encryption type on operating system drives](#enforce-drive-encryption-type-on-operating-system-drives)|✅|✅|
|[Require additional authentication at startup](#require-additional-authentication-at-startup)|✅|✅|
|[Reset platform validation data after BitLocker recovery](#reset-platform-validation-data-after-bitlocker-recovery)|❌|✅|
|[Use enhanced Boot Configuration Data validation profile](#use-enhanced-boot-configuration-data-validation-profile)|❌|✅|

[!INCLUDE [allow-devices-compliant-with-instantgo-or-hsti-to-opt-out-of-pre-boot-pin](includes/allow-devices-compliant-with-instantgo-or-hsti-to-opt-out-of-pre-boot-pin.md)]
[!INCLUDE [allow-enhanced-pins-for-startup](includes/allow-enhanced-pins-for-startup.md)]
[!INCLUDE [allow-network-unlock-at-startup](includes/allow-network-unlock-at-startup.md)]
[!INCLUDE [allow-secure-boot-for-integrity-validation](includes/allow-secure-boot-for-integrity-validation.md)]
[!INCLUDE [allow-warning-for-other-disk-encryption](includes/allow-warning-for-other-disk-encryption.md)]
[!INCLUDE [choose-how-bitlocker-protected-operating-system-drives-can-be-recovered](includes/choose-how-bitlocker-protected-operating-system-drives-can-be-recovered.md)]
[!INCLUDE [configure-minimum-pin-length-for-startup](includes/configure-minimum-pin-length-for-startup.md)]
[!INCLUDE [configure-pre-boot-recovery-message-and-url](includes/configure-pre-boot-recovery-message-and-url.md)]
[!INCLUDE [configure-tpm-platform-validation-profile-for-bios-based-firmware-configurations](includes/configure-tpm-platform-validation-profile-for-bios-based-firmware-configurations.md)]
[!INCLUDE [configure-tpm-platform-validation-profile-for-native-uefi-firmware-configurations](includes/configure-tpm-platform-validation-profile-for-native-uefi-firmware-configurations.md)]
[!INCLUDE [configure-use-of-hardware-based-encryption-for-operating-system-drives](includes/configure-use-of-hardware-based-encryption-for-operating-system-drives.md)]
[!INCLUDE [configure-use-of-passwords-for-operating-system-drives](includes/configure-use-of-passwords-for-operating-system-drives.md)]
[!INCLUDE [disallow-standard-users-from-changing-the-pin-or-password](includes/disallow-standard-users-from-changing-the-pin-or-password.md)]
[!INCLUDE [enable-use-of-bitlocker-authentication-requiring-preboot-keyboard-input-on-slates](includes/enable-use-of-bitlocker-authentication-requiring-preboot-keyboard-input-on-slates.md)]
[!INCLUDE [enforce-drive-encryption-type-on-operating-system-drives](includes/enforce-drive-encryption-type-on-operating-system-drives.md)]
[!INCLUDE [require-additional-authentication-at-startup](includes/require-additional-authentication-at-startup.md)]
[!INCLUDE [reset-platform-validation-data-after-bitlocker-recovery](includes/reset-platform-validation-data-after-bitlocker-recovery.md)]
[!INCLUDE [use-enhanced-boot-configuration-data-validation-profile](includes/use-enhanced-boot-configuration-data-validation-profile.md)]

#### [:::image type="icon" source="images/unlocked-drive.svg"::: **Fixed data drives**](#tab/fixed)

|Policy name| CSP | GPO |
|-|-|-|
|[Choose how BitLocker-protected fixed drives can be recovered](#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)|✅|✅|
|[Configure use of hardware-based encryption for fixed data drives](#configure-use-of-hardware-based-encryption-for-fixed-data-drives)|❌|✅|
|[Configure use of passwords for fixed data drives](#configure-use-of-passwords-for-fixed-data-drives)|❌|✅|
|[Configure use of smart cards on fixed data drives](#configure-use-of-smart-cards-on-fixed-data-drives)|❌|✅|
|[Deny write access to fixed drives not protected by BitLocker](#deny-write-access-to-fixed-drives-not-protected-by-bitlocker)|✅|✅|
|[Enforce drive encryption type on fixed data drives](#enforce-drive-encryption-type-on-fixed-data-drives)|✅|✅|

[!INCLUDE [choose-how-bitlocker-protected-fixed-drives-can-be-recovered](includes/choose-how-bitlocker-protected-fixed-drives-can-be-recovered.md)]
[!INCLUDE [configure-use-of-hardware-based-encryption-for-fixed-data-drives](includes/configure-use-of-hardware-based-encryption-for-fixed-data-drives.md)]
[!INCLUDE [configure-use-of-passwords-for-fixed-data-drives](includes/configure-use-of-passwords-for-fixed-data-drives.md)]
[!INCLUDE [configure-use-of-smart-cards-on-fixed-data-drives](includes/configure-use-of-smart-cards-on-fixed-data-drives.md)]
[!INCLUDE [deny-write-access-to-fixed-drives-not-protected-by-bitlocker](includes/deny-write-access-to-fixed-drives-not-protected-by-bitlocker.md)]
[!INCLUDE [enforce-drive-encryption-type-on-fixed-data-drives](includes/enforce-drive-encryption-type-on-fixed-data-drives.md)]

#### [:::image type="icon" source="images/unlocked-drive.svg"::: **Removable data drives**](#tab/removable)

|Policy name| CSP | GPO |
|-|-|-|
|[Choose how BitLocker-protected removable drives can be recovered](#choose-how-bitlocker-protected-removable-drives-can-be-recovered)|❌|✅|
|[Configure use of hardware-based encryption for removable data drives](#configure-use-of-hardware-based-encryption-for-removable-data-drives)|❌|✅|
|[Configure use of passwords for removable data drives](#configure-use-of-passwords-for-removable-data-drives)|❌|✅|
|[Configure use of smart cards on removable data drives](#configure-use-of-smart-cards-on-removable-data-drives)|❌|✅|
|[Control use of BitLocker on removable drives](#control-use-of-bitlocker-on-removable-drives)|✅|✅|
|[Deny write access to removable drives not protected by BitLocker](#deny-write-access-to-removable-drives-not-protected-by-bitlocker)|✅|✅|
|[Enforce drive encryption type on removable data drives](#enforce-drive-encryption-type-on-removable-data-drives)|✅|✅|
|[Removable Drives Excluded From Encryption](#removable-drives-excluded-from-encryption)|✅|❌|

[!INCLUDE [choose-how-bitlocker-protected-removable-drives-can-be-recovered](includes/choose-how-bitlocker-protected-removable-drives-can-be-recovered.md)]
[!INCLUDE [configure-use-of-hardware-based-encryption-for-removable-data-drives](includes/configure-use-of-hardware-based-encryption-for-removable-data-drives.md)]
[!INCLUDE [configure-use-of-passwords-for-removable-data-drives](includes/configure-use-of-passwords-for-removable-data-drives.md)]
[!INCLUDE [configure-use-of-smart-cards-on-removable-data-drives](includes/configure-use-of-smart-cards-on-removable-data-drives.md)]
[!INCLUDE [control-use-of-bitlocker-on-removable-drives](includes/control-use-of-bitlocker-on-removable-drives.md)]
[!INCLUDE [deny-write-access-to-removable-drives-not-protected-by-bitlocker](includes/deny-write-access-to-removable-drives-not-protected-by-bitlocker.md)]
[!INCLUDE [enforce-drive-encryption-type-on-removable-data-drives](includes/enforce-drive-encryption-type-on-removable-data-drives.md)]
[!INCLUDE [removable-drives-excluded-from-encryption](includes/removable-drives-excluded-from-encryption.md)]

---

## BitLocker and policy settings compliance

If a device isn't compliant with the configured policy settings, BitLocker may not be turned on, or BitLocker configuration may be modified until the device is in a compliant state. When a drive becomes out of compliance with policy settings, only changes to the BitLocker configuration that will bring it into compliance are allowed. Such scenario could occur, for example, if a previously encrypted drive becomes noncompliant by a policy setting change.

If multiple changes are necessary to bring the drive into compliance, BitLocker protection may need to be suspended, the necessary changes made, and then protection resumed. Such situation could occur, for example, if a removable drive is initially configured for unlock with a password, and then policy settings are changed to require smart cards. In this scenario, BitLocker protection needs to be suspended by using the [`manage-bde.exe`](/windows-server/administration/windows-commands/manage-bde) command-line tool, delete the password unlock method, and add the smart card method. After this process is complete, BitLocker is compliant with the policy setting, and BitLocker protection on the drive can be resumed.

In other scenarios, to bring the drive into compliance with a change in policy settings, BitLocker may need to be disabled and the drive decrypted followed by re-enabling BitLocker and then re-encrypting the drive. An example of this scenario is when the BitLocker encryption method or cipher strength is changed. The [`manage-bde.exe`](/windows-server/administration/windows-commands/manage-bde) command-line can also be used in this scenario to help bring the device into compliance.

## Configure and manage servers

Servers are often installed, configured, and deployed using PowerShell; therefore, the recommendation is to also use [PowerShell to enable BitLocker on a server](operations-guide.md), ideally as part of the initial setup. BitLocker is an Optional Component (OC) in Windows Server; therefore, follow the directions in [BitLocker: How to deploy on Windows Server](bitlocker-how-to-deploy-on-windows-server.md) to add the BitLocker OC.

The Minimal Server Interface is a prerequisite for some of the BitLocker administration tools. On a [Server Core](/windows-server/get-started/getting-started-with-server-core/) installation, the necessary GUI components must be added first. The steps to add shell components to Server Core are described in [Using Features on Demand with Updated Systems and Patched Images](/archive/blogs/server_core/using-features-on-demand-with-updated-systems-and-patched-images) and [How to update local source media to add roles and features](/archive/blogs/joscon/how-to-update-local-source-media-to-add-roles-and-features).  

If a server is being installed manually, such as a stand-alone server, then choosing [Server with Desktop Experience](/windows-server/get-started/getting-started-with-server-with-desktop-experience/) is the easiest path because it avoids performing the steps to add a GUI to Server Core.

 Additionally, lights-out data centers can take advantage of the enhanced security of a second factor while avoiding the need for user intervention during reboots by optionally using a combination of BitLocker (TPM+PIN) and BitLocker Network Unlock. BitLocker Network Unlock brings together the best of hardware protection, location dependence, and automatic unlock, while in the trusted location. For the configuration steps, see [BitLocker: How to enable Network Unlock](network-unlock.md).

## Next steps

> [!div class="nextstepaction"]
> Review the BitLocker operations guide to learn how to use different tools to manage and operate BitLocker.
>
>
> [BitLocker operations guide >](operations-guide.md)
