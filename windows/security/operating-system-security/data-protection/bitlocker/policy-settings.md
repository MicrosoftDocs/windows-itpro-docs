---
title: BitLocker policy settings 
description: Learn about the policy settings to configure BitLocker.
ms.collection: 
  - tier1
ms.topic: reference
ms.date: 09/19/2023
---

# BitLocker policy settings

This reference article describes the policy settings to configure BitLocker via configuration service provider (CSP) and group policy (GPO).

The list of settings is sorted alphabetically and organized in four tabs:

- **Common settings**: settings applicable to all BitLocker-protected drives
- **Operating system drive**: settings applicable to the drive where Windows is installed
- **Fixed data drives**: settings applicable to any local drives, except the operating system drive
- **Removable data drives**: settings applicable to any removable drives

> [!IMPORTANT]
> Most of the BitLocker settings are applied when BitLocker is initially turned on for a drive. Encryption isn't restarted if settings change.

#### [:::image type="icon" source="images/locked-drive.svg"::: **Common settings**](#tab/common)

The following table lists the BitLocker policies applicable to all drive types, indicating if they're applicable via configuration service provider (CSP) and/or group policy (GPO). Select the policy name for more details.

|Policy name| CSP | GPO |
|-|-|-|
|[Allow Standard User Encryption](#allow-standard-user-encryption)|✅|❌|
|[Allow Suspension Of BitLocker Protection](#allow-suspension-of-bitlocker-protection)|✅|❌|
|[Choose default folder for recovery password](#choose-default-folder-for-recovery-password)|❌|✅|
|[Choose drive encryption method and cipher strength](#choose-drive-encryption-method-and-cipher-strength)|✅|✅|
|[Configure Recovery Password Rotation](#configure-recovery-password-rotation)|✅|❌|
|[Disable new DMA devices when this computer is locked](#disable-new-dma-devices-when-this-computer-is-locked)|❌|✅|
|[Prevent memory overwrite on restart](#prevent-memory-overwrite-on-restart)|❌|✅|
|[Provide the unique identifiers for your organization](#provide-the-unique-identifiers-for-your-organization)|✅|✅|
|[Validate smart card certificate usage rule compliance](#validate-smart-card-certificate-usage-rule-compliance)|❌|✅|

[!INCLUDE [allow-standard-user-encryption](includes/allow-standard-user-encryption.md)]
[!INCLUDE [allow-suspension-of-bitlocker-protection](includes/allow-suspension-of-bitlocker-protection.md)]
[!INCLUDE [choose-default-folder-for-recovery-password](includes/choose-default-folder-for-recovery-password.md)]
[!INCLUDE [choose-drive-encryption-method-and-cipher-strength](includes/choose-drive-encryption-method-and-cipher-strength.md)]
[!INCLUDE [configure-recovery-password-rotation](includes/configure-recovery-password-rotation.md)]
[!INCLUDE [disable-new-dma-devices-when-this-computer-is-locked](includes/disable-new-dma-devices-when-this-computer-is-locked.md)]
[!INCLUDE [prevent-memory-overwrite-on-restart](includes/prevent-memory-overwrite-on-restart.md)]
[!INCLUDE [provide-the-unique-identifiers-for-your-organization](includes/provide-the-unique-identifiers-for-your-organization.md)]
[!INCLUDE [validate-smart-card-certificate-usage-rule-compliance](includes/validate-smart-card-certificate-usage-rule-compliance.md)]

#### [:::image type="icon" source="images/os-drive.svg"::: **Operating system drive**](#tab/os)

|Policy name| CSP | GPO |
|-|-|-|
|[Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN](#allow-devices-compliant-with-instantgo-or-hsti-to-opt-out-of-pre-boot-pin)|✅|✅|
|[Allow enhanced PINs for startup](#allow-enhanced-pins-for-startup)|✅|✅|
|[Allow network unlock at startup](#allow-network-unlock-at-startup)|❌|✅|
|[Allow Secure Boot for integrity validation](#allow-secure-boot-for-integrity-validation)|❌|✅|
|[Allow Warning For Other Disk Encryption](#allow-warning-for-other-disk-encryption)|✅|❌|
|[Choose how BitLocker-protected operating system drives can be recovered](#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)|✅|✅|
|[Configure minimum PIN length for startup](#configure-minimum-pin-length-for-startup)|✅|✅|
|[Configure pre-boot recovery message and URL](#configure-pre-boot-recovery-message-and-url)|✅|✅|
|[Configure TPM platform validation profile for BIOS-based firmware configurations](#configure-tpm-platform-validation-profile-for-bios-based-firmware-configurations)|❌|✅|
|[Configure TPM platform validation profile for native UEFI firmware configurations](#configure-tpm-platform-validation-profile-for-native-uefi-firmware-configurations)|❌|✅|
|[Configure use of hardware-based encryption for operating system drives](#configure-use-of-hardware-based-encryption-for-operating-system-drives)|❌|✅|
|[Configure use of passwords for operating system drives](#configure-use-of-passwords-for-operating-system-drives)|❌|✅|
|[Disallow standard users from changing the PIN or password](#disallow-standard-users-from-changing-the-pin-or-password)|✅|✅|
|[Enable use of BitLocker authentication requiring preboot keyboard input on slates](#enable-use-of-bitlocker-authentication-requiring-preboot-keyboard-input-on-slates)|✅|✅|
|[Enforce drive encryption type on operating system drives](#enforce-drive-encryption-type-on-operating-system-drives)|✅|✅|
|[Require additional authentication at startup](#require-additional-authentication-at-startup)|✅|✅|
|[Require Device Encryption](#require-device-encryption)|✅|❌|
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
[!INCLUDE [require-device-encryption](includes/require-device-encryption.md)]
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
