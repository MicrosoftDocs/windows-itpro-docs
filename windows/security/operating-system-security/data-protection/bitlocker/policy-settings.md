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

### Choose drive encryption method and cipher strength

With this policy you can configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually.
Recommended settings:

- For fixed and operating system drives: XTS-AES algorithm
- For removable drives: AES-CBC 128-bit or AES-CBC 256-bit

If you disable or do not configure this policy setting, BitLocker uses the default encryption method of XTS-AES 128-bit.

> [!WARNING]
> This policy doesn't apply to encrypted drives. Encrypted drives utilize their own algorithm, which is set by the drive during partitioning.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[EncryptionMethodByDriveType](/windows/client-management/mdm/bitlocker-csp#encryptionmethodbydrivetype)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |

### Configure Recovery Password Rotation

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[ConfigureRecoveryPasswordRotation](/windows/client-management/mdm/bitlocker-csp#configurerecoverypasswordrotation)|
| **GPO** | Not available |

### Disable new DMA devices when this computer is locked

This policy setting allows you to block direct memory access (DMA) for all Thunderbolt hot pluggable PCI downstream ports until a user logs into Windows. Once a user logs in, Windows will enumerate the PCI devices connected to the host Thunderbolt PCI ports. Every time the user locks the machine, DMA will be blocked on hot plug Thunderbolt PCI ports with no children devices, until the user logs in again. Devices which were already enumerated when the machine was unlocked will continue to function until unplugged or the system is rebooted or hibernated. This policy setting is only enforced when BitLocker or device encryption is enabled. Note: Some PCs may not be compatible with this policy if the system firmware enables DMA for newly attached Thunderbolt devices before exposing the new devices to Windows.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |

### Prevent memory overwrite on restart
This policy setting controls computer restart performance at the risk of exposing BitLocker secrets. BitLocker secrets include key material used to encrypt data. This policy setting applies only when BitLocker protection is enabled. If you enable this policy setting, memory will not be overwritten when the computer restarts. Preventing memory overwrite may improve restart performance but will increase the risk of exposing BitLocker secrets. If you disable or do not configure this policy setting, BitLocker secrets are removed from memory when the computer restarts.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |

### Provide the unique identifiers for your organization
This policy setting allows you to associate unique organizational identifiers to a new drive that is enabled with BitLocker. These identifiers are stored as the identification field and allowed identification field. The identification field allows you to associate a unique organizational identifier to BitLocker-protected drives. This identifier is automatically added to new BitLocker-protected drives and can be updated on existing BitLocker-protected drives using the manage-bde command-line tool. An identification field is required for management of certificate-based data recovery agents on BitLocker-protected drives and for potential updates to the BitLocker To Go Reader. BitLocker will only manage and update data recovery agents when the identification field on the drive matches the value configured in the identification field. In a similar manner, BitLocker will only update the BitLocker To Go Reader when the identification field on the drive matches the value configured for the identification field. The allowed identification field is used in combination with the "Deny write access to removable drives not protected by BitLocker" policy setting to help control the use of removable drives in your organization. It is a comma separated list of identification fields from your organization or other external organizations. You can configure the identification fields on existing drives by using manage-bde.exe. If you enable this policy setting, you can configure the identification field on the BitLocker-protected drive and any allowed identification field used by your organization. When a BitLocker-protected drive is mounted on another BitLocker-enabled computer the identification field and allowed identification field will be used to determine whether the drive is from an outside organization. If you disable or do not configure this policy setting, the identification field is not required. Note: Identification fields are required for management of certificate-based data recovery agents on BitLocker-protected drives. BitLocker will only manage and update certificate-based data recovery agents when the identification field is present on a drive and is identical to the value configured on the computer. The identification field can be any value of 260 characters or fewer.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[IdentificationField](/windows/client-management/mdm/bitlocker-csp#identificationfield) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |

### Validate smart card certificate usage rule compliance
This policy setting allows you to associate an object identifier from a smart card certificate to a BitLocker-protected drive. The object identifier is specified in the enhanced key usage (EKU) of a certificate. BitLocker can identify which certificates may be used to authenticate a user certificate to a BitLocker-protected drive by matching the object identifier in the certificate with the object identifier that is defined by this policy setting. Default object identifier is 1.3.6.1.4.1.311.67.1.1  Note:  BitLocker does not require that a certificate have an EKU attribute, but if one is configured for the certificate it must be set to an object identifier (OID) that matches the OID configured for BitLocker. If you enable this policy setting, the object identifier specified in the "Object identifier" box must match the object identifier in the smart card certificate. If you disable or do not configure this policy setting, a default object identifier is used.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** |

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

### Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN

This policy setting allows users on devices that are compliant with InstantGo or Microsoft Hardware Security Test Interface (HSTI) to not have a PIN for pre-boot authentication. This overrides the *Require startup PIN with TPM* and *Require startup key and PIN with TPM* options of the [*Require additional authentication at startup*](#require-additional-authentication-at-startup) policy on compliant hardware. If you enable this policy setting, users on InstantGo and HSTI compliant devices have the choice to turn on BitLocker without pre-boot authentication. If this policy is not enabled, the options of *Require additional authentication at startup* policy apply.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnablePreBootPinExceptionOnDECapableDevice](/windows/client-management/mdm/bitlocker-csp#systemdrivesenableprebootpinexceptionondecapabledevice) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Allow enhanced PINs for startup

This policy setting allows you to configure whether or not enhanced startup PINs are used with BitLocker. Enhanced startup PINs permit the use of characters including uppercase and lowercase letters, symbols, numbers, and spaces. If you enable this policy setting, all new BitLocker startup PINs set will be enhanced PINs. Note:   Not all computers may support enhanced PINs in the pre-boot environment. It is strongly recommended that users perform a system check during BitLocker setup. If you disable or do not configure this policy setting, enhanced PINs will not be used.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnhancedPIN](/windows/client-management/mdm/bitlocker-csp#systemdrivesenhancedpin) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Allow network unlock at startup

This policy setting controls whether a BitLocker-protected computer that is connected to a trusted wired Local Area Network (LAN) and joined to a domain can create and use Network Key Protectors on TPM-enabled computers to automatically unlock the operating system drive when the computer is started. If you enable this policy, clients configured with a BitLocker Network Unlock certificate will be able to create and use Network Key Protectors. To use a Network Key Protector to unlock the computer, both the computer and the BitLocker Drive Encryption Network Unlock server must be provisioned with a Network Unlock certificate. The Network Unlock certificate is used to create Network Key Protectors, and protects the information exchanged with the server to unlock the computer. You can use the group policy setting "Computer Configuration\Windows Settings\Security Settings\Public Key Policies\BitLocker Drive Encryption Network Unlock Certificate" on the domain controller to distribute this certificate to computers in your organization. This unlock method uses the TPM on the computer, so computers that do not have a TPM cannot create Network Key Protectors to automatically unlock with Network Unlock. If you disable or do not configure this policy setting, BitLocker clients will not be able to create and use Network Key Protectors. Note: For reliability and security, computers should also have a TPM startup PIN that can be used when the computer is disconnected from the wired network or the server at startup.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Allow Secure Boot for integrity validation

This policy setting allows you to configure whether Secure Boot will be allowed as the platform integrity provider for BitLocker operating system drives. Secure Boot ensures that the PC's pre-boot environment only loads firmware that is digitally signed by authorized software publishers. Secure Boot also provides more flexibility for managing pre-boot configuration than legacy BitLocker integrity checks. If you enable or do not configure this policy setting, BitLocker will use Secure Boot for platform integrity if the platform is capable of Secure Boot-based integrity validation. If you disable this policy setting, BitLocker will use legacy platform integrity validation, even on systems capable of Secure Boot-based integrity validation. When this policy is enabled and the hardware is capable of using Secure Boot for BitLocker scenarios, the "Use enhanced Boot Configuration Data validation profile" group policy setting is ignored and Secure Boot verifies BCD settings according to the Secure Boot policy setting, which is configured separately from BitLocker. Note: If the group policy setting "Configure TPM platform validation profile for native UEFI firmware configurations" is enabled and has PCR 7 omitted, Bitlocker will be prevented from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation. Warning: Disabling this policy may result in BitLocker recovery when firmware is updated. If you disable this policy, suspend BitLocker prior to applying firmware updates.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Allow Warning For Other Disk Encryption

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[AllowWarningForOtherDiskEncryption](/windows/client-management/mdm/bitlocker-csp#allowwarningforotherdiskencryption) |
| **GPO** | Not available |

### Choose how BitLocker-protected operating system drives can be recovered

This policy setting allows you to control how BitLocker-protected operating system drives are recovered in the absence of the required startup key information. The "Allow certificate-based data recovery agent" check box is used to specify whether a data recovery agent can be used with BitLocker-protected operating system drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents. In "Configure user storage of BitLocker recovery information" select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key. Select "Omit recovery options from the BitLocker setup wizard" to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting. In "Save BitLocker recovery information to Active Directory Domain Services", choose which BitLocker recovery information to store in AD DS for operating system drives. If you select "Backup recovery password and key package", both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select "Backup recovery password only," only the recovery password is stored in AD DS. Select the "Do not enable BitLocker until recovery information is stored in AD DS for operating system drives" check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds. Note: If the "Do not enable BitLocker until recovery information is stored in AD DS for operating system drives" check box is selected, a recovery password is automatically generated. If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected operating system drives. If this policy setting is disabled or not configured, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesRecoveryOptions](/windows/client-management/mdm/bitlocker-csp#systemdrivesrecoveryoptions)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Configure minimum PIN length for startup

This policy setting allows you to configure a minimum length for a Trusted Platform Module (TPM) startup PIN. The startup PIN must have a minimum length of 4 digits and can have a maximum length of 20 digits. If you enable this policy setting, you can require a minimum number of digits to be used when setting the startup PIN. If you disable or do not configure this policy setting, users can configure a startup PIN of any length between 6 and 20 digits. NOTE: If minimum PIN length is set below 6 digits, Windows will attempt to update the TPM 2.0 lockout period to be greater than the default when a PIN is changed. If successful, Windows will only reset the TPM lockout period back to default if the TPM is reset.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesMinimumPINLength](/windows/client-management/mdm/bitlocker-csp#systemdrivesminimumpinlength) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Configure pre-boot recovery message and URL

This policy setting lets you configure the entire recovery message or replace the existing URL that are displayed on the pre-boot key recovery screen when the OS drive is locked. If you select the "Use default recovery message and URL" option, the default BitLocker recovery message and URL will be displayed in the pre-boot key recovery screen. If you have previously configured a custom recovery message or URL and want to revert to the default message, you must keep the policy enabled and select the "Use default recovery message and URL" option. If you select the "Use custom recovery message" option, the message you type in the "Custom recovery message option" text box will be displayed in the pre-boot key recovery screen. If a recovery URL is available, include it in the message. If you select the "Use custom recovery URL" option, the URL you type in the "Custom recovery URL option" text box will replace the default URL in the default recovery message, which will be displayed in the pre-boot key recovery screen. Note: Not all characters and languages are supported in pre-boot. It is strongly recommended that you test that the characters you use for the custom message or URL appear correctly on the pre-boot recovery screen.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesRecoveryMessage](/windows/client-management/mdm/bitlocker-csp#systemdrivesrecoverymessage) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Configure TPM platform validation profile for BIOS-based firmware configurations

This policy setting allows you to configure how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection. Important: This group policy only applies to computers with BIOS configurations or to computers with UEFI firmware with a Compatibility Service Module (CSM) enabled. Computers using a native UEFI firmware configuration store different values into the Platform Configuration Registers (PCRs). Use the "Configure TPM platform validation profile for native UEFI firmware configurations" group policy setting to configure the TPM PCR profile for computers using native UEFI firmware. If you enable this policy setting before turning on BitLocker, you can configure the boot components that the TPM will validate before unlocking access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM will not release the encryption key to unlock the drive and the computer will instead display the BitLocker Recovery console and require that either the recovery password or recovery key be provided to unlock the drive. If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile or the platform validation profile specified by the setup script. A platform validation profile consists of a set of Platform Configuration Register (PCR) indices ranging from 0 to 23. The default platform validation profile secures the encryption key against changes to the Core Root of Trust of Measurement (CRTM), BIOS, and Platform Extensions (PCR 0), the Option ROM Code (PCR 2), the Master Boot Record (MBR) Code (PCR 4), the NTFS Boot Sector (PCR 8), the NTFS Boot Block (PCR 9), the Boot Manager (PCR 10), and the BitLocker Access Control (PCR 11). Warning: Changing from the default platform validation profile affects the security and manageability of your computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending upon inclusion or exclusion (respectively) of the PCRs.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Configure TPM platform validation profile for native UEFI firmware configurations

This policy setting allows you to configure how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection. Important: This group policy only applies to computers with a native UEFI firmware configuration. Computers with BIOS or UEFI firmware with a Compatibility Service Module (CSM) enabled store different values into the Platform Configuration Registers (PCRs). Use the "Configure TPM platform validation profile for BIOS-based firmware configurations" group policy setting to configure the TPM PCR profile for computers with BIOS configurations or computers with UEFI firmware with a CSM enabled. If you enable this policy setting before turning on BitLocker, you can configure the boot components that the TPM will validate before unlocking access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM will not release the encryption key to unlock the drive and the computer will instead display the BitLocker Recovery console and require that either the recovery password or recovery key be provided to unlock the drive. If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile for the available hardware or the platform validation profile specified by the setup script. A platform validation profile consists of a set of Platform Configuration Register (PCR) indices ranging from 0 to 23. On PCs that lack Secure Boot State (PCR 7) support, the default platform validation profile secures the encryption key against changes to the core system firmware executable code (PCR 0), extended or pluggable executable code (PCR 2), boot manager (PCR 4), and the BitLocker access control (PCR 11). When Secure Boot State (PCR7) support is available, the default platform validation profile secures the encryption key using Secure Boot State (PCR 7) and the BitLocker access control (PCR 11). Warning: Changing from the default platform validation profile affects the security and manageability of your computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending upon inclusion or exclusion (respectively) of the PCRs. Specifically, setting this policy with PCR 7 omitted, will override the "Allow Secure Boot for integrity validation" group policy, preventing BitLocker from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation. Setting this policy may result in BitLocker recovery when firmware is updated. If you set this policy to include PCR 0, suspend BitLocker prior to applying firmware updates. It is recommended to not configure this policy, to allow Windows to select the PCR profile for the best combination of security and usability based on the available hardware on each PC.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Configure use of hardware-based encryption for operating system drives

This policy setting allows you to manage BitLocker's use of hardware-based encryption on operating system drives and specify which encryption algorithms it can use with hardware-based encryption. Using hardware-based encryption can improve performance of drive operations that involve frequent reading or writing of data to the drive. If you enable this policy setting, you can specify additional options that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that do not support hardware-based encryption and whether you want to restrict the encryption algorithms and cipher suites used with hardware-based encryption. If you disable this policy setting, BitLocker cannot use hardware-based encryption with operating system drives and BitLocker software-based encryption will be used by default when the drive is encrypted. If you do not configure this policy setting, BitLocker will use software-based encryption irrespective of hardware-based encryption availability. Note: The "Choose drive encryption method and cipher strength" policy setting does not apply to hardware-based encryption. The encryption algorithm used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm configured on the drive to encrypt the drive. The "Restrict encryption algorithms and cipher suites allowed for hardware-based encryption" option enables you to restrict the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm set for the drive is not available, BitLocker will disable the use of hardware-based encryption. Encryption algorithms are specified by object identifiers (OID). For example:  - AES 128 in CBC mode OID: 2.16.840.1.101.3.4.1.2  - AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Configure use of passwords for operating system drives

This policy setting specifies the constraints for passwords used to unlock BitLocker-protected operating system drives. If non-TPM protectors are allowed on operating system drives, you can provision a password, enforce complexity requirements on the password, and configure a minimum length for the password. For the complexity requirement setting to be effective the Group Policy setting "Password must meet complexity requirements" located in Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\ must be also enabled. Note: These settings are enforced when turning on BitLocker, not when unlocking a volume. BitLocker will allow unlocking a drive with any of the protectors available on the drive. If you enable this policy setting, users can configure a password that meets the requirements you define. To enforce complexity requirements on the password, select "Require complexity". When set to "Require complexity" a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password. When set to "Allow complexity" a connection to a domain controller will be attempted to validate the complexity adheres to the rules set by the policy, but if no domain controllers are found the password will still be accepted regardless of actual password complexity and the drive will be encrypted using that password as a protector. When set to "Do not allow complexity", no password complexity validation will be done. Passwords must be at least 8 characters. To configure a greater minimum length for the password, enter the desired number of characters in the "Minimum password length" box. If you disable or do not configure this policy setting, the default length constraint of 8 characters will apply to operating system drive passwords and no complexity checks will occur. Note: Passwords cannot be used if FIPS-compliance is enabled. The "System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing" policy setting in Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options specifies whether FIPS-compliance is enabled.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Disallow standard users from changing the PIN or password

This policy setting allows you to configure whether or not standard users are allowed to change BitLocker volume PINs, provided they are able to provide the existing PIN first.  If you enable this policy setting, standard users will not be allowed to change BitLocker PINs or passwords. If you disable or do not configure this policy setting, standard users will be permitted to change BitLocker PINs and passwords.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesDisallowStandardUsersCanChangePIN](/windows/client-management/mdm/bitlocker-csp#systemdrivesdisallowstandarduserscanchangepin) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Enable use of BitLocker authentication requiring preboot keyboard input on slates

This policy setting allows users to turn on authentication options that require user input from the pre-boot environment, even if the platform lacks pre-boot input capability. The Windows touch keyboard (such as that used by tablets) isn't available in the pre-boot environment where BitLocker requires additional information such as a PIN or Password. If you enable this policy setting, devices must have an alternative means of pre-boot input (such as an attached USB keyboard). If this policy is not enabled, the Windows Recovery Environment must be enabled on tablets to support the entry of the BitLocker recovery password. When the Windows Recovery Environment is not enabled and this policy is not enabled, you cannot turn on BitLocker on a device that uses the Windows touch keyboard. Note that if you do not enable this policy setting, options in the "Require additional authentication at startup" policy might not be available on such devices. These options include:  - Configure TPM startup PIN: Required/Allowed  - Configure TPM startup key and PIN: Required/Allowed  - Configure use of passwords for operating system drives.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEnablePrebootInputProtectorsOnSlates](/windows/client-management/mdm/bitlocker-csp#systemdrivesenableprebootinputprotectorsonslates) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Enforce drive encryption type on operating system drives

This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on. If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option will not be presented in the BitLocker setup wizard. If you disable or do not configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesEncryptionType](/windows/client-management/mdm/bitlocker-csp#systemdrivesencryptiontype) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Require additional authentication at startup

This policy setting allows you to configure whether BitLocker requires additional authentication each time the computer starts and whether you are using BitLocker with or without a Trusted Platform Module (TPM). Note: Only one of the additional authentication options can be required at startup, otherwise a policy error occurs. If you want to use BitLocker on a computer without a TPM, select the "Allow BitLocker without a compatible TPM" check box. In this mode either a password or a USB drive is required for start-up. When using a startup key, the key information used to encrypt the drive is stored on the USB drive, creating a USB key. When the USB key is inserted the access to the drive is authenticated and the drive is accessible. If the USB key is lost or unavailable or if you have forgotten the password then you will need to use one of the BitLocker recovery options to access the drive. On a computer with a compatible TPM, four types of authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can use only the TPM for authentication, or it can also require insertion of a USB flash drive containing a startup key, the entry of a 6-digit to 20-digit personal identification number (PIN), or both. If you enable this policy setting, users can configure advanced startup options in the BitLocker setup wizard. If you disable or do not configure this policy setting, users can configure only basic options on computers with a TPM. Note: If you want to require the use of a startup PIN and a USB flash drive, you must configure BitLocker settings using the command-line tool manage-bde instead of the BitLocker Drive Encryption setup wizard.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesRequireStartupAuthentication](/windows/client-management/mdm/bitlocker-csp#systemdrivesrequirestartupauthentication) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Require Device Encryption

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RequireDeviceEncryption](/windows/client-management/mdm/bitlocker-csp#requiredeviceencryption) |
| **GPO** | Not available |

### Reset platform validation data after BitLocker recovery

This policy setting allows you to control whether or not platform validation data is refreshed when Windows is started following BitLocker recovery. If you enable this policy setting, platform validation data will be refreshed when Windows is started following BitLocker recovery. If you disable this policy setting, platform validation data will not be refreshed when Windows is started following BitLocker recovery. If you do not configure this policy setting, platform validation data will be refreshed when Windows is started following BitLocker recovery.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

### Use enhanced Boot Configuration Data validation profile

This policy setting allows you to choose specific Boot Configuration Data (BCD) settings to verify during platform validation. If you enable this policy setting, you will be able to add additional settings, remove the default settings, or both. If you disable this policy setting, the computer will revert to a BCD profile similar to the default BCD profile used by Windows 7. If you do not configure this policy setting, the computer will verify the default Windows BCD settings. Note: When BitLocker is using Secure Boot for platform and Boot Configuration Data (BCD) integrity validation, as defined by the "Allow Secure Boot for integrity validation" group policy, the "Use enhanced Boot Configuration Data validation profile" group policy is ignored. The setting that controls boot debugging (0x16000010) will always be validated and will have no effect if it is included in the provided fields.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |

#### [:::image type="icon" source="images/unlocked-drive.svg"::: **Fixed data drives**](#tab/fixed)

|Policy name| CSP | GPO |
|-|-|-|
|[Choose how BitLocker-protected fixed drives can be recovered](#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)|✅|✅|
|[Configure use of hardware-based encryption for fixed data drives](#configure-use-of-hardware-based-encryption-for-fixed-data-drives)|❌|✅|
|[Configure use of passwords for fixed data drives](#configure-use-of-passwords-for-fixed-data-drives)|❌|✅|
|[Configure use of smart cards on fixed data drives](#configure-use-of-smart-cards-on-fixed-data-drives)|❌|✅|
|[Deny write access to fixed drives not protected by BitLocker](#deny-write-access-to-fixed-drives-not-protected-by-bitlocker)|✅|✅|
|[Enforce drive encryption type on fixed data drives](#enforce-drive-encryption-type-on-fixed-data-drives)|✅|✅|

### Choose how BitLocker-protected fixed drives can be recovered

This policy setting allows you to control how BitLocker-protected fixed data drives are recovered in the absence of the required credentials. The "Allow data recovery agent" check box is used to specify whether a data recovery agent can be used with BitLocker-protected fixed data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents. In "Configure user storage of BitLocker recovery information" select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key. Select "Omit recovery options from the BitLocker setup wizard" to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting. In "Save BitLocker recovery information to Active Directory Domain Services" choose which BitLocker recovery information to store in AD DS for fixed data drives. If you select "Backup recovery password and key package", both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select "Backup recovery password only," only the recovery password is stored in AD DS. Select the "Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds. Note: If the "Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" check box is selected, a recovery password is automatically generated. If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected fixed data drives. If this policy setting is not configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[FixedDrivesRecoveryOptions](/windows/client-management/mdm/bitlocker-csp#fixeddrivesrecoveryoptions) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |

### Configure use of hardware-based encryption for fixed data drives

This policy setting allows you to manage BitLocker's use of hardware-based encryption on fixed data drives and specify which encryption algorithms it can use with hardware-based encryption. Using hardware-based encryption can improve performance of drive operations that involve frequent reading or writing of data to the drive. If you enable this policy setting, you can specify additional options that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that do not support hardware-based encryption and whether you want to restrict the encryption algorithms and cipher suites used with hardware-based encryption. If you disable this policy setting, BitLocker cannot use hardware-based encryption with operating system drives and BitLocker software-based encryption will be used by default when the drive is encrypted. If you do not configure this policy setting, BitLocker will use software-based encryption irrespective of hardware-based encryption availability. Note: The "Choose drive encryption method and cipher strength" policy setting does not apply to hardware-based encryption. The encryption algorithm used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm configured on the drive to encrypt the drive. The "Restrict encryption algorithms and cipher suites allowed for hardware-based encryption" option enables you to restrict the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm set for the drive is not available, BitLocker will disable the use of hardware-based encryption. Encryption algorithms are specified by object identifiers (OID). For example:  - AES 128 in CBC mode OID: 2.16.840.1.101.3.4.1.2  - AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |

### Configure use of passwords for fixed data drives

This policy setting specifies whether a password is required to unlock BitLocker-protected fixed data drives. If you choose to permit the use of a password, you can require that a password be used, enforce complexity requirements on the password, and configure a minimum length for the password. For the complexity requirement setting to be effective the Group Policy setting "Password must meet complexity requirements" located in Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\ must be also enabled. Note: These settings are enforced when turning on BitLocker, not when unlocking a volume. BitLocker will allow unlocking a drive with any of the protectors available on the drive. If you enable this policy setting, users can configure a password that meets the requirements you define. To require the use of a password, select "Require password for fixed data drive". To enforce complexity requirements on the password, select "Require complexity". When set to "Require complexity" a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password. When set to "Allow complexity" a connection to a domain controller will be attempted to validate the complexity adheres to the rules set by the policy, but if no domain controllers are found the password will still be accepted regardless of actual password complexity and the drive will be encrypted using that password as a protector. When set to "Do not allow complexity", no password complexity validation will be done. Passwords must be at least 8 characters. To configure a greater minimum length for the password, enter the desired number of characters in the "Minimum password length" box. If you disable this policy setting, the user is not allowed to use a password. If you do not configure this policy setting, passwords will be supported with the default settings, which do not include password complexity requirements and require only 8 characters. Note: Passwords cannot be used if FIPS-compliance is enabled. The "System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing" policy setting in Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options specifies whether FIPS-compliance is enabled.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |

### Configure use of smart cards on fixed data drives

This policy setting allows you to specify whether smart cards can be used to authenticate user access to the BitLocker-protected fixed data drives on a computer. If you enable this policy setting smart cards can be used to authenticate user access to the drive. You can require a smart card authentication by selecting the "Require use of smart cards on fixed data drives" check box. Note:  These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker will allow unlocking a drive with any of the protectors available on the drive. If you disable this policy setting, users are not allowed to use smart cards to authenticate their access to BitLocker-protected fixed data drives. If you do not configure this policy setting, smart cards can be used to authenticate user access to a BitLocker-protected drive.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |

### Deny write access to fixed drives not protected by BitLocker

This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer. If you enable this policy setting, all fixed data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access. If you disable or do not configure this policy setting, all fixed data drives on the computer will be mounted with read and write access.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[FixedDrivesRequireEncryption](/windows/client-management/mdm/bitlocker-csp#fixeddrivesrequireencryption) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |

### Enforce drive encryption type on fixed data drives

This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on. If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option will not be presented in the BitLocker setup wizard. If you disable or do not configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.

|  | Path |
|--|--|
| **CSP** | ``./Device/Vendor/MSFT/BitLocker/`[FixedDrivesEncryptionType](/windows/client-management/mdm/bitlocker-csp#fixeddrivesencryptiontype) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |

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


### Choose how BitLocker-protected removable drives can be recovered

This policy setting allows you to control how BitLocker-protected removable data drives are recovered in the absence of the required credentials. The "Allow data recovery agent" check box is used to specify whether a data recovery agent can be used with BitLocker-protected removable data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents. In "Configure user storage of BitLocker recovery information" select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key. Select "Omit recovery options from the BitLocker setup wizard" to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting. In "Save BitLocker recovery information to Active Directory Domain Services" choose which BitLocker recovery information to store in AD DS for removable data drives. If you select "Backup recovery password and key package", both the BitLocker recovery password and key package are stored in AD DS. If you select "Backup recovery password only" only the recovery password is stored in AD DS. Select the "Do not enable BitLocker until recovery information is stored in AD DS for removable data drives" check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds. Note: If the "Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" check box is selected, a recovery password is automatically generated. If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected removable data drives. If this policy setting is not configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |

### Configure use of hardware-based encryption for removable data drives

This policy setting allows you to manage BitLocker's use of hardware-based encryption on removable data drives and specify which encryption algorithms it can use with hardware-based encryption. Using hardware-based encryption can improve performance of drive operations that involve frequent reading or writing of data to the drive. If you enable this policy setting, you can specify additional options that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that do not support hardware-based encryption and whether you want to restrict the encryption algorithms and cipher suites used with hardware-based encryption. If you disable this policy setting, BitLocker cannot use hardware-based encryption with operating system drives and BitLocker software-based encryption will be used by default when the drive is encrypted. If you do not configure this policy setting, BitLocker will use software-based encryption irrespective of hardware-based encryption availability. Note: The "Choose drive encryption method and cipher strength" policy setting does not apply to hardware-based encryption. The encryption algorithm used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm configured on the drive to encrypt the drive. The "Restrict encryption algorithms and cipher suites allowed for hardware-based encryption" option enables you to restrict the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm set for the drive is not available, BitLocker will disable the use of hardware-based encryption. Encryption algorithms are specified by object identifiers (OID). For example:  - AES 128 in CBC mode OID: 2.16.840.1.101.3.4.1.2  - AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |

### Configure use of passwords for removable data drives

This policy setting specifies whether a password is required to unlock BitLocker-protected removable data drives. If you choose to allow use of a password, you can require a password to be used, enforce complexity requirements, and configure a minimum length. For the complexity requirement setting to be effective the Group Policy setting "Password must meet complexity requirements" located in Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\ must be also enabled. Note: These settings are enforced when turning on BitLocker, not when unlocking a volume. BitLocker will allow unlocking a drive with any of the protectors available on the drive. If you enable this policy setting, users can configure a password that meets the requirements that you define. To require the use of a password, select "Require password for removable data drive". To enforce complexity requirements on the password, select "Require complexity". When set to "Require complexity" a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password. When set to "Allow complexity" a connection to a domain controller will be attempted to validate the complexity adheres to the rules set by the policy, but if no domain controllers are found the password will still be accepted regardless of actual password complexity and the drive will be encrypted using that password as a protector. When set to "Do not allow complexity", no password complexity validation will be done. Passwords must be at least 8 characters. To configure a greater minimum length for the password, enter the desired number of characters in the "Minimum password length" box. If you disable this policy setting, the user is not allowed to use a password. If you do not configure this policy setting, passwords will be supported with the default settings, which do not include password complexity requirements and require only 8 characters. Note: Passwords cannot be used if FIPS-compliance is enabled. The "System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing" policy setting in Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options specifies whether FIPS-compliance is enabled.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |

### Configure use of smart cards on removable data drives

This policy setting allows you to specify whether smart cards can be used to authenticate user access to BitLocker-protected removable data drives on a computer. If you enable this policy setting smart cards can be used to authenticate user access to the drive. You can require a smart card authentication by selecting the "Require use of smart cards on removable data drives" check box. Note:  These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker will allow unlocking a drive with any of the protectors available on the drive. If you disable this policy setting, users are not allowed to use smart cards to authenticate their access to BitLocker-protected removable data drives. If you do not configure this policy setting, smart cards are available to authenticate user access to a BitLocker-protected removable data drive.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |

### Control use of BitLocker on removable drives

This policy setting controls the use of BitLocker on removable data drives. When this policy setting is enabled you can select property settings that control how users can configure BitLocker. Choose "Allow users to apply BitLocker protection on removable data drives" to permit the user to run the BitLocker setup wizard on a removable data drive. Choose "Allow users to suspend and decrypt BitLocker on removable data drives" to permit the user to remove BitLocker Drive encryption from the drive or suspend the encryption while maintenance is performed. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information on suspending BitLocker protection. If you do not configure this policy setting, users can use BitLocker on removable disk drives. If you disable this policy setting, users cannot use BitLocker on removable disk drives.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesConfigureBDE](/windows/client-management/mdm/bitlocker-csp#removabledrivesconfigurebde) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |

### Deny write access to removable drives not protected by BitLocker

This policy setting configures whether BitLocker protection is required for a computer to be able to write data to a removable data drive. If you enable this policy setting, all removable data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access. If the "Deny write access to devices configured in another organization" option is selected, only drives with identification fields matching the computer's identification fields will be given write access. When a removable data drive is accessed it will be checked for valid identification field and allowed identification fields. These fields are defined by the "Provide the unique identifiers for your organization" policy setting. If you disable or do not configure this policy setting, all removable data drives on the computer will be mounted with read and write access. Note: This policy setting can be overridden by the policy settings under User Configuration\Administrative Templates\System\Removable Storage Access. If the "Removable Disks: Deny write access" policy setting is enabled this policy setting will be ignored.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesRequireEncryption](/windows/client-management/mdm/bitlocker-csp#removabledrivesrequireencryption) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |

### Enforce drive encryption type on removable data drives

This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on. If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option will not be presented in the BitLocker setup wizard. If you disable or do not configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesEncryptionType](/windows/client-management/mdm/bitlocker-csp#removabledrivesencryptiontype) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |

### Removable Drives Excluded From Encryption

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesExcludedFromEncryption](/windows/client-management/mdm/bitlocker-csp#removabledrivesexcludedfromencryption) |
| **GPO** | Not available |

---
