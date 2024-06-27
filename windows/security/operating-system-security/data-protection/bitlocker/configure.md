---
title: Configure BitLocker
description: Learn about the available options to configure BitLocker and how to configure them via Configuration Service Providers (CSP) or group policy (GPO).
ms.topic: how-to
ms.date: 06/18/2024
---

# Configure BitLocker

To configure BitLocker, you can use one of the following options:

- Configuration Service Provider (CSP): this option is commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. The [BitLocker CSP][WIN-1] is used to configure BitLocker, and to report the status of different BitLocker functions to the MDM solution. With Microsoft Intune, you can use the BitLocker status in [compliance policies][INT-1], combining them with [Conditional Access][ENTRA-1]. Conditional Access can prevent or grant access to services like Exchange Online and SharePoint Online, based on the status of BitLocker. To learn more about the Intune options to configure and monitor BitLocker, check the following articles:
    - [Manage BitLocker policy for Windows devices with Intune][INT-2]
    - [Monitor device encryption with Intune][INT-3]
    - [Use compliance policies to set rules for devices you manage with Intune][INT-4]
- Group policy (GPO): this option can be used for devices that are joined to an Active Directory domain and aren't managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor
- Microsoft Configuration Manager: this option can be used for devices that are managed by Microsoft Configuration Manager using the BitLocker management agent. To learn more about options to configure BitLocker via Microsoft Configuration Manager, see [Deploy BitLocker management][MCM-1]

> [!NOTE]
> Windows Server doesn't support the configuration of BitLocker using CSP or Microsoft Configuration Manager. Use GPO instead.

While many of the BitLocker policy settings can be configured using both CSP and GPO, there are some settings that are only available using one of the options. To learn about the policy settings available for both CSP and GPO, review the section [BitLocker policy settings](#bitlocker-policy-settings).

[!INCLUDE [bitlocker](../../../../../includes/licensing/bitlocker-management.md)]

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

If a device isn't compliant with the configured policy settings, BitLocker might not be turned on, or BitLocker configuration might be modified until the device is in a compliant state. When a drive becomes out of compliance with policy settings, only changes to the BitLocker configuration that will bring it into compliance are allowed. Such scenario could occur, for example, if a previously encrypted drive becomes noncompliant by a policy setting change.

If multiple changes are necessary to bring the drive into compliance, BitLocker protection might need to be suspended, the necessary changes made, and then protection resumed. Such situation could occur, for example, if a removable drive is initially configured for unlock with a password, and then policy settings are changed to require smart cards. In this scenario, BitLocker protection needs to be suspended, delete the password unlock method, and add the smart card method. After this process is complete, BitLocker is compliant with the policy setting, and BitLocker protection on the drive can be resumed.

In other scenarios, to bring the drive into compliance with a change in policy settings, BitLocker might need to be disabled and the drive decrypted followed by re-enabling BitLocker and then re-encrypting the drive. An example of this scenario is when the BitLocker encryption method or cipher strength is changed.

To learn more how to manage BitLocker, review the [BitLocker operations guide](operations-guide.md).

## Configure and manage servers

Servers are often deployed, configured, and managed using PowerShell. The recommendation is to use group policy settings to configure BitLocker on servers, and to manage BitLocker using PowerShell.

BitLocker is an optional component in Windows Server. Follow the directions in [Install BitLocker on Windows Server](install-server.md) to add the BitLocker optional component.

The Minimal Server Interface is a prerequisite for some of the BitLocker administration tools. On a [Server Core][WIN-2] installation, the necessary GUI components must be added first. The steps to add shell components to Server Core are described in [Using Features on Demand with Updated Systems and Patched Images][ARC-1] and [How to update local source media to add roles and features][ARC-2]. If a server is installed manually, then choosing [Server with Desktop Experience][WIN-3] is the easiest path because it avoids performing the steps to add a GUI to Server Core.

 Lights-out data centers can take advantage of the enhanced security of a second factor while avoiding the need for user intervention during reboots by optionally using a combination of BitLocker (TPM+PIN) and BitLocker Network Unlock. BitLocker Network Unlock brings together the best of hardware protection, location dependence, and automatic unlock, while in the trusted location. For the configuration steps, see [Network Unlock](network-unlock.md).

## Next steps

> [!div class="nextstepaction"]
> Review the BitLocker operations guide to learn how to use different tools to manage and operate BitLocker.
>
>
> [BitLocker operations guide >](operations-guide.md)

<!--links-->

[ARC-1]: /archive/blogs/server_core/using-features-on-demand-with-updated-systems-and-patched-images
[ARC-2]: /archive/blogs/joscon/how-to-update-local-source-media-to-add-roles-and-features
[ENTRA-1]: /entra/identity/conditional-access/overview
[INT-1]: /mem/intune/protect/compliance-policy-create-windows#encryption
[INT-2]: /mem/intune/protect/encrypt-devices#rotate-bitlocker-recovery-keys
[INT-3]: /mem/intune/protect/encryption-monitor
[INT-4]: /mem/intune/protect/device-compliance-get-started
[MCM-1]: /mem/configmgr/protect/deploy-use/bitlocker/deploy-management-agent
[WIN-1]: /windows/client-management/mdm/bitlocker-csp
[WIN-2]: /windows-server/get-started/getting-started-with-server-core/
[WIN-3]: /windows-server/get-started/getting-started-with-server-with-desktop-experience/
