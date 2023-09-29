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

## BitLocker and policies compliance

If a device isn't compliant with the existing policies, BitLocker may not be turned on, or BitLocker configuration may be modified until the computer is in a compliant state. When a drive becomes out of compliance with policy settings, only changes to the BitLocker configuration that will bring it into compliance are allowed. Such scenario could occur, for example, if a previously encrypted drive was brought out of compliance by change in policy settings.

If multiple changes are necessary to bring the drive into compliance, BitLocker protection may need to be suspended, the necessary changes made, and then protection resumed. Such situation could occur, for example, if a removable drive is initially configured for unlock with a password but then policy settings are changed to disallow passwords and require smart cards. In this situation, BitLocker protection needs to be suspended by using the [`manage-bde`](/windows-server/administration/windows-commands/manage-bde) command-line tool, delete the password unlock method, and add the smart card method. After this process is complete, BitLocker is compliant with the policy setting, and BitLocker protection on the drive can be resumed.

In other scenarios, to bring the drive into compliance with a change in policy settings, BitLocker may need to be disabled and the drive decrypted followed by re-enabling BitLocker and then re-encrypting the drive. An example of this scenario is when the BitLocker encryption method or cipher strength is changed. The [`manage-bde`](/windows-server/administration/windows-commands/manage-bde) command-line can also be used in this scenario to help bring the device into compliance.

> [!IMPORTANT]
> Most of the BitLocker policy settings are enforced when BitLocker is initially turned on for a drive. Encryption isn't restarted if settings change.

## Settings list

The list of settings is sorted alphabetically and organized in four tabs:

- **Common settings**: settings applicable to all BitLocker-protected drives
- **Operating system drive**: settings applicable to the drive where Windows is installed
- **Fixed data drives**: settings applicable to any local drives, except the operating system drive
- **Removable data drives**: settings applicable to any removable drives

#### [:::image type="icon" source="images/locked-drive.svg"::: **Common settings**](#tab/common)

The following table lists the BitLocker policies applicable to all drive types, indicating if they're applicable via configuration service provider (CSP) and/or group policy (GPO). Select the policy name for more details.

|Policy name| CSP | GPO |
|-|-|-|
|[Allow standard user encryption](#allow-standard-user-encryption)|✅|❌|
|[Allow suspension of BitLocker protection](#allow-suspension-of-bitlocker-protection)|✅|❌|
|[Choose default folder for recovery password](#choose-default-folder-for-recovery-password)|❌|✅|
|[Choose drive encryption method and cipher strength](#choose-drive-encryption-method-and-cipher-strength)|✅|✅|
|[Configure recovery password rotation](#configure-recovery-password-rotation)|✅|❌|
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
|[Require device encryption](#require-device-encryption)|✅|❌|
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

## Platform Configuration Register (PCR)

A platform validation profile consists of a set of PCR indices that range from 0 to 23. The scope of the values can be specific to the version of the operating system.

Changing from the default platform validation profile affects the security and manageability of a computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.

### About PCR 7

PCR 7 measures the state of Secure Boot. With PCR 7, BitLocker can use Secure Boot for integrity validation. Secure Boot ensures that the computer's preboot environment loads only firmware that is digitally signed by authorized software publishers. PCR 7 measurements indicate whether Secure Boot is on and which keys are trusted on the platform. If Secure Boot is on and the firmware measures PCR 7 correctly per the UEFI specification, BitLocker can bind to this information rather than to PCRs 0, 2, and 4, which have the measurements of the exact firmware and Bootmgr images loaded. This process reduces the likelihood of BitLocker starting in recovery mode as a result of firmware and image updates, and it provides with greater flexibility to manage the preboot configuration.

PCR 7 measurements must follow the guidance that is described in [Appendix A Trusted Execution Environment EFI Protocol](/windows-hardware/test/hlk/testref/trusted-execution-environment-efi-protocol).

PCR 7 measurements are a mandatory logo requirement for systems that support Modern Standby (also known as Always On, Always Connected PCs), such as the Microsoft Surface RT. On such systems, if the TPM with PCR 7 measurement and secure boot are correctly configured, BitLocker binds to PCR 7 and PCR 11 by default.

## FIPS setting

The Federal Information Processing Standard (FIPS) setting for FIPS compliance can be configured. As an effect of FIPS compliance, users can't create or save a BitLocker password for recovery or as a key protector. The use of a recovery key is permitted.

|  Item  | Info |
|:---|:---|
|**Policy description**|Notes|
|**Drive type**|System-wide|
|**Policy path**|*Local Policies* > *Security Options* > *System cryptography*: **Use FIPS compliant algorithms for encryption, hashing, and signing**|
|**Conflicts**|Some applications, such as Terminal Services, don't support FIPS-140 on all operating systems.|
|**When enabled**|Users will be unable to save a recovery password to any location. This policy setting includes AD DS and network folders. Also, WMI or the BitLocker Drive Encryption Setup wizard can't be used to create a recovery password.|
|**When disabled or not configured**|No BitLocker encryption key is generated|

### Reference: FIPS setting

This policy must be enabled before any encryption key is generated for BitLocker. When this policy is enabled, BitLocker prevents creating or using recovery passwords, so recovery keys should be used instead.

The optional recovery key can be saved to a USB drive. Because recovery passwords can't be saved to AD DS when FIPS is enabled, an error is caused if AD DS backup is required by Group Policy.

The FIPS setting can be edited by using the Security Policy Editor (`Secpol.msc`) or by editing the Windows registry. Only administrators can perform these procedures.

For more information about setting this policy, see [System cryptography: Use FIPS compliant algorithms for encryption, hashing, and signing](../../../threat-protection/security-policy-settings/system-cryptography-use-fips-compliant-algorithms-for-encryption-hashing-and-signing.md).

## Power management group policy settings: Sleep and Hibernate

PCs default power settings for a computer will cause the computer to enter Sleep mode frequently to conserve power when idle and to help extend the system's battery life. When a computer transitions to Sleep, open programs and documents are persisted in memory. When a computer resumes from Sleep, users aren't required to reauthenticate with a PIN or USB startup key to access encrypted data. Not needing to reauthenticate when resuming from Sleep might lead to conditions where data security is compromised.

However, when a computer hibernates the drive is locked, and when it resumes from hibernation the drive is unlocked, which means that users will need to provide a PIN or a startup key if using multifactor authentication with BitLocker. Therefore, organizations that use BitLocker may want to use Hibernate instead of Sleep for improved security. This setting doesn't have an impact on TPM-only mode, because it provides a transparent user experience at startup and when resuming from the Hibernate states.

To disable all available sleep states, disable the Group Policy settings located in **Computer Configuration** > **Administrative Templates** > **System** > **Power Management** :

- **Allow Standby States (S1-S3) When Sleeping (Plugged In)**
- **Allow Standby States (S1-S3) When Sleeping (Battery)**

