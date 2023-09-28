---
title: BitLocker Group Policy settings 
description: This article for IT professionals describes the function, location, and effect of each Group Policy setting that is used to manage BitLocker Drive Encryption.
ms.collection: 
  - highpri
  - tier1
ms.topic: reference
ms.date: 11/08/2022
---

# BitLocker group policy settings

### Enable use of BitLocker authentication requiring preboot keyboard input on slates

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, users can be allowed to enable authentication options that require user input from the preboot environment, even if the platform indicates a lack of preboot input capability.|
|**Drive type**|Operating system drive|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|Devices must have an alternative means of preboot input (such as an attached USB keyboard).|
|**When disabled or not configured**|The Windows Recovery Environment must be enabled on tablets to support entering the BitLocker recovery password.|

#### Reference: Enable use of BitLocker authentication requiring preboot keyboard input on slates

The Windows touch keyboard (such as used by tablets) isn't available in the preboot environment where BitLocker requires additional information, such as a PIN or password.

It's recommended that administrators enable this policy only for devices that are verified to have an alternative means of preboot input, such as attaching a USB keyboard.

When the Windows Recovery Environment (WinRE) isn't enabled and this policy isn't enabled, BitLocker can't be turned on a device that uses the Windows touch keyboard.

If this policy setting isn't enabled, the following options in the **Require additional authentication at startup** policy might not be available:

- Configure TPM startup PIN: Required and Allowed
- Configure TPM startup key and PIN: Required and Allowed
- Configure use of passwords for operating system drives

### Configure TPM platform validation profile for BIOS-based firmware configurations

This policy setting determines what values the TPM measures when it validates early boot components before it unlocks an operating system drive on a computer with a BIOS configuration or with UEFI firmware that has the Compatibility Support Module (CSM) enabled.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured how the computer's TPM security hardware secures the BitLocker encryption key.|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|The boot components that the TPM validates before unlocking access to the BitLocker-encrypted operating system drive can be configured. If any of these components change while BitLocker protection is in effect, then the TPM doesn't release the encryption key to unlock the drive. Instead, the computer displays the BitLocker Recovery console and requires that the recovery password or the recovery key is provided to unlock the drive.|
|**When disabled or not configured**|The TPM uses the default platform validation profile or the platform validation profile that is specified by the setup script.|

#### Reference: Configure TPM platform validation profile for BIOS-based firmware configurations

This policy setting doesn't apply if the computer doesn't have a compatible TPM or if BitLocker has already been turned on with TPM protection.

> [!IMPORTANT]
> This Group Policy setting only applies to computers with BIOS configurations or to computers with UEFI firmware with the CSM enabled. Computers that use a native UEFI firmware configuration store different values in the Platform Configuration Registers (PCRs). Use the **Configure TPM platform validation profile for native UEFI firmware configurations** Group Policy setting to configure the TPM PCR profile for computers that use native UEFI firmware.

A platform validation profile consists of a set of PCR indices that range from 0 to 23. The default platform validation profile secures the encryption key against changes to the following PCRs:

- Core Root of Trust of Measurement (CRTM), BIOS, and Platform Extensions (PCR 0)
- Option ROM Code (PCR 2)
- Master Boot Record (MBR) Code (PCR 4)
- NTFS Boot Sector (PCR 8)
- NTFS Boot Block (PCR 9)
- Boot Manager (PCR 10)
- BitLocker Access Control (PCR 11)

> [!NOTE]
> Changing from the default platform validation profile affects the security and manageability of a computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.

The following list identifies all of the available PCRs:

- PCR 0: Core root-of-trust for measurement, BIOS, and platform extensions
- PCR 1: Platform and motherboard configuration and data.
- PCR 2: Option ROM code
- PCR 3: Option ROM data and configuration
- PCR 4: Master Boot Record (MBR) code
- PCR 5: Master Boot Record (MBR) partition table
- PCR 6: State transition and wake events
- PCR 7: Computer manufacturer-specific
- PCR 8: NTFS boot sector
- PCR 9: NTFS boot block
- PCR 10: Boot manager
- PCR 11: BitLocker access control
- PCR 12-23: Reserved for future use

### Configure TPM platform validation profile for native UEFI firmware configurations

This policy setting determines what values the TPM measures when it validates early boot components before unlocking an operating system drive on a computer with native UEFI firmware configurations.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key.|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|Setting this policy with PCR 7 omitted overrides the **Allow Secure Boot for integrity validation** Group Policy setting, and it prevents BitLocker from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation. <BR><BR> If an environment uses TPM and Secure Boot for platform integrity checks, this policy is configured. <BR><BR> For more information about PCR 7, see [About the Platform Configuration Register (PCR)](#about-the-platform-configuration-register-pcr) in this article.|
|**When enabled**|Before BitLocker is turned on, the boot components that the TPM validates before it unlocks access to the BitLocker-encrypted operating system drive can be configured. If any of these components change while BitLocker protection is in effect, the TPM doesn't release the encryption key to unlock the drive. Instead, the computer displays the BitLocker Recovery console and requires that the recovery password or the recovery key is provided to unlock the drive.|
|**When disabled or not configured**|BitLocker uses the default platform validation profile or the platform validation profile that is specified by the setup script.|

#### Reference: Configure TPM platform validation profile for native UEFI firmware configurations

This policy setting doesn't apply if the computer doesn't have a compatible TPM or if BitLocker is already turned on with TPM protection.

> [!IMPORTANT]
> This group policy setting only applies to computers with a native UEFI firmware configuration. Computers with BIOS or UEFI firmware with a Compatibility Support Module (CSM) enabled store different values in the Platform Configuration Registers (PCRs). Use the **Configure TPM platform validation profile for BIOS-based firmware configurations** Group Policy setting to configure the TPM PCR profile for computers with BIOS configurations or for computers with UEFI firmware with a CSM enabled.

A platform validation profile consists of a set of PCR indices ranging from 0 to 23. The default platform validation profile secures the encryption key against changes to the core system firmware executable code (PCR 0), extended or pluggable executable code (PCR 2), boot manager (PCR 4), and the BitLocker access control (PCR 11).

The following list identifies all of the available PCRs:

- PCR 0: Core System Firmware executable code
- PCR 1: Core System Firmware data
- PCR 2: Extended or pluggable executable code
- PCR 3: Extended or pluggable firmware data
- PCR 4: Boot Manager
- PCR 5: GPT/Partition Table
- PCR 6: Resume from S4 and S5 Power State Events
- PCR 7: Secure Boot State
- PCR 8: Initialized to 0 with no Extends (reserved for future use)
- PCR 9: Initialized to 0 with no Extends (reserved for future use)
- PCR 10: Initialized to 0 with no Extends (reserved for future use)
- PCR 11: BitLocker access control
- PCR 12: Data events and highly volatile events
- PCR 13: Boot Module Details
- PCR 14: Boot Authorities
- PCR 15 - 23: Reserved for future use

> [!WARNING]
> Changing from the default platform validation profile affects the security and manageability of a computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.

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

