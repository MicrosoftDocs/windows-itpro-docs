---
title: BitLocker settings list 
description: Learn about the settings to configure BitLocker.
ms.collection: 
  - highpri
  - tier1
ms.topic: reference
ms.date: 09/19/2023
---

# BitLocker settings list

## TEST 1

### Allow devices with Secure Boot and protected DMA ports to opt out of preboot PIN

With this policy setting, it can be configured whether BitLocker requires additional authentication each time the computer starts and whether BitLocker will be used with a Trusted Platform Module (TPM). This policy setting is applied when BitLocker is turned on.

|                  | Setting                                                                                                          |
|------------------|------------------------------------------------------------------------------------------------------------------|
| **CSP**          | ./[Device/User]/Vendor/MSFT/Policy/Config/Start/[HideCopilotButton](mdm/policy-csp-start.md#hidecopilotbutton)   |
| **Group policy** | Computer or User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button** |

### Allow network unlock at startup

With this policy setting, it can be configured whether BitLocker requires additional authentication each time the computer starts and whether BitLocker will be used with a Trusted Platform Module (TPM). This policy setting is applied when BitLocker is turned on.

|                  | Setting                                                                                                          |
|------------------|------------------------------------------------------------------------------------------------------------------|
| **CSP**          | ./[Device/User]/Vendor/MSFT/Policy/Config/Start/[HideCopilotButton](mdm/policy-csp-start.md#hidecopilotbutton)   |
| **Group policy** | Computer or User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button** |

### Require additional authentication at startup

With this policy setting, it can be configured whether BitLocker requires additional authentication each time the computer starts and whether BitLocker will be used with a Trusted Platform Module (TPM). This policy setting is applied when BitLocker is turned on.

|                  | Setting                                                                                                          |
|------------------|------------------------------------------------------------------------------------------------------------------|
| **CSP**          | ./[Device/User]/Vendor/MSFT/Policy/Config/Start/[HideCopilotButton](mdm/policy-csp-start.md#hidecopilotbutton)   |
| **Group policy** | Computer or User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button** |

## TEST 2

### Allow devices with Secure Boot and protected DMA ports to opt out of preboot PIN 1

With this policy setting, it can be configured whether BitLocker requires additional authentication each time the computer starts and whether BitLocker will be used with a Trusted Platform Module (TPM). This policy setting is applied when BitLocker is turned on.

#### [:::image type="icon" source="../../../images/icons/intune.svg"::: **Intune**](#tab/intune) 

./[Device/User]/Vendor/MSFT/Policy/Config/Start/[HideCopilotButton](mdm/policy-csp-start.md#hidecopilotbutton)

#### [:::image type="icon" source="../../../images/icons/group-policy.svg"::: **CSP**](#tab/csp)

Computer or User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button**

---

### Allow network unlock at startup 1

With this policy setting, it can be configured whether BitLocker requires additional authentication each time the computer starts and whether BitLocker will be used with a Trusted Platform Module (TPM). This policy setting is applied when BitLocker is turned on.

#### [:::image type="icon" source="../../../images/icons/intune.svg"::: **Intune**](#tab/intune) 

./[Device/User]/Vendor/MSFT/Policy/Config/Start/[HideCopilotButton](mdm/policy-csp-start.md#hidecopilotbutton)

#### [:::image type="icon" source="../../../images/icons/group-policy.svg"::: **CSP**](#tab/csp)

Computer or User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button**

---

### Require additional authentication at startup 1

With this policy setting, it can be configured whether BitLocker requires additional authentication each time the computer starts and whether BitLocker will be used with a Trusted Platform Module (TPM). This policy setting is applied when BitLocker is turned on.

#### [:::image type="icon" source="../../../images/icons/intune.svg"::: **Intune**](#tab/intune) 

./[Device/User]/Vendor/MSFT/Policy/Config/Start/[HideCopilotButton](mdm/policy-csp-start.md#hidecopilotbutton)

#### [:::image type="icon" source="../../../images/icons/group-policy.svg"::: **CSP**](#tab/csp)

Computer or User Configuration > Administrative Templates > Start Menu and Taskbar > **Hide the Copilot button**

---

## TEST 3

#### [:::image type="icon" source="images/locked-drive.svg"::: **Common settings**](#tab/common) 

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |

#### [:::image type="icon" source="images/os-drive.svg"::: **OS data drive**](#tab/os)

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |

#### [:::image type="icon" source="images/os-drive.svg"::: **Fixed data drive**](#tab/fixed)

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |

#### [:::image type="icon" source="images/os-drive.svg"::: **Removable data drive**](#tab/removable)

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |
|Choose how BitLocker-protected removable drives can be recovered|This policy setting allows you to control how BitLocker-protected removable data drives are recovered in the absence of the required credentials. This policy setting is applied when you turn on BitLocker.  The "Allow data recovery agent" check box is used to specify whether a data recovery agent can be used with BitLocker-protected removable data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.  In "Configure user storage of BitLocker recovery information" select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.  Select "Omit recovery options from the BitLocker setup wizard" to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.  In "Save BitLocker recovery information to Active Directory Domain Services" choose which BitLocker recovery information to store in AD DS for removable data drives. If you select "Backup recovery password and key package", both the BitLocker recovery password and key package are stored in AD DS. If you select "Backup recovery password only" only the recovery password is stored in AD DS.  Select the "Do not enable BitLocker until recovery information is stored in AD DS for removable data drives" check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.  Note: If the "Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" check box is selected, a recovery password is automatically generated.  If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected removable data drives.  If this policy setting is not configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS|
|Configure use of hardware-based encryption for removable data drives|This policy setting allows you to manage BitLocker's use of hardware-based encryption on removable data drives and specify which encryption algorithms it can use with hardware-based encryption. Using hardware-based encryption can improve performance of drive operations that involve frequent reading or writing of data to the drive.  If you enable this policy setting, you can specify additional options that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that do not support hardware-based encryption and whether you want to restrict the encryption algorithms and cipher suites used with hardware-based encryption.  If you disable this policy setting, BitLocker cannot use hardware-based encryption with operating system drives and BitLocker software-based encryption will be used by default when the drive is encrypted.  If you do not configure this policy setting, BitLocker will use software-based encryption irrespective of hardware-based encryption availability.  Note: The "Choose drive encryption method and cipher strength" policy setting does not apply to hardware-based encryption. The encryption algorithm used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm configured on the drive to encrypt the drive. The "Restrict encryption algorithms and cipher suites allowed for hardware-based encryption" option enables you to restrict the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm set for the drive is not available, BitLocker will disable the use of hardware-based encryption.  Encryption algorithms are specified by object identifiers (OID). For example:  - AES 128 in CBC mode OID: 2.16.840.1.101.3.4.1.2  - AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42|

---

## TEST 4

### Common settings

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |


### OS data drive settings

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |

### Fixed data drive settings

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |

### Removable data drive settings

| Title | Description |
|-|-|
|Choose default folder for recovery password| This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.  If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.  If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.  Note: This policy setting does not prevent the user from saving the recovery password in another folder.|
|Choose drive encryption method and cipher strength| This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.  If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).  If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script." |

---

## Old


The following sections provide a comprehensive list of BitLocker group policy settings that are organized by usage. BitLocker group policy settings include settings for specific drive types (operating system drives, fixed data drives, and removable data drives) and settings that are applied to all drives.

The following policy settings can be used to determine how a BitLocker-protected drive can be unlocked.

- [Allow devices with Secure Boot and protected DMA ports to opt out of preboot PIN](#allow-devices-with-secure-boot-and-protected-dma-ports-to-opt-out-of-preboot-pin)
- [Allow network unlock at startup](#allow-network-unlock-at-startup)
- [Require additional authentication at startup](#require-additional-authentication-at-startup)
- [Allow enhanced PINs for startup](#allow-enhanced-pins-for-startup)
- [Configure minimum PIN length for startup](#configure-minimum-pin-length-for-startup)
- [Disable new DMA devices when this computer is locked](#disable-new-dma-devices-when-this-computer-is-locked)
- [Disallow standard users from changing the PIN or password](#disallow-standard-users-from-changing-the-pin-or-password)
- [Configure use of passwords for operating system drives](#configure-use-of-passwords-for-operating-system-drives)
- [Require additional authentication at startup (Windows Server 2008 and Windows Vista)](#require-additional-authentication-at-startup-windows-server-2008-and-windows-vista)
- [Configure use of smart cards on fixed data drives](#configure-use-of-smart-cards-on-fixed-data-drives)
- [Configure use of passwords on fixed data drives](#configure-use-of-passwords-on-fixed-data-drives)
- [Configure use of smart cards on removable data drives](#configure-use-of-smart-cards-on-removable-data-drives)
- [Configure use of passwords on removable data drives](#configure-use-of-passwords-on-removable-data-drives)
- [Validate smart card certificate usage rule compliance](#validate-smart-card-certificate-usage-rule-compliance)
- [Enable use of BitLocker authentication requiring preboot keyboard input on slates](#enable-use-of-bitlocker-authentication-requiring-preboot-keyboard-input-on-slates)

The following policy settings are used to control how users can access drives and how they can use BitLocker on their computers.

- [Deny write access to fixed drives not protected by BitLocker](#deny-write-access-to-fixed-drives-not-protected-by-bitlocker)
- [Deny write access to removable drives not protected by BitLocker](#deny-write-access-to-removable-drives-not-protected-by-bitlocker)
- [Control use of BitLocker on removable drives](#control-use-of-bitlocker-on-removable-drives)

The following policy settings determine the encryption methods and encryption types that are used with BitLocker.

- [Choose drive encryption method and cipher strength](#choose-drive-encryption-method-and-cipher-strength)
- [Configure use of hardware-based encryption for fixed data drives](#configure-use-of-hardware-based-encryption-for-fixed-data-drives)
- [Configure use of hardware-based encryption for operating system drives](#configure-use-of-hardware-based-encryption-for-operating-system-drives)
- [Configure use of hardware-based encryption for removable data drives](#configure-use-of-hardware-based-encryption-for-removable-data-drives)
- [Enforce drive encryption type on fixed data drives](#enforce-drive-encryption-type-on-fixed-data-drives)
- [Enforce drive encryption type on operating system drives](#enforce-drive-encryption-type-on-operating-system-drives)
- [Enforce drive encryption type on removable data drives](#enforce-drive-encryption-type-on-removable-data-drives)

The following policy settings define the recovery methods that can be used to restore access to a BitLocker-protected drive if an authentication method fails or is unable to be used.

- [Choose how BitLocker-protected operating system drives can be recovered](#choose-how-bitlocker-protected-operating-system-drives-can-be-recovered)
- [Choose how users can recover BitLocker-protected drives (Windows Server 2008 and Windows Vista)](#choose-how-users-can-recover-bitlocker-protected-drives-windows-server-2008-and-windows-vista)
- [Store BitLocker recovery information in Active Directory Domain Services (Windows Server 2008 and Windows Vista)](#store-bitlocker-recovery-information-in-active-directory-domain-services-windows-server-2008-and-windows-vista)
- [Choose default folder for recovery password](#choose-default-folder-for-recovery-password)
- [Choose how BitLocker-protected fixed drives can be recovered](#choose-how-bitlocker-protected-fixed-drives-can-be-recovered)
- [Choose how BitLocker-protected removable drives can be recovered](#choose-how-bitlocker-protected-removable-drives-can-be-recovered)
- [Configure the pre-boot recovery message and URL](#configure-the-pre-boot-recovery-message-and-url)

The following policies are used to support customized deployment scenarios in an organization.

- [Allow Secure Boot for integrity validation](#allow-secure-boot-for-integrity-validation)
- [Provide the unique identifiers for your organization](#provide-the-unique-identifiers-for-your-organization)
- [Prevent memory overwrite on restart](#prevent-memory-overwrite-on-restart)
- [Configure TPM platform validation profile for BIOS-based firmware configurations](#configure-tpm-platform-validation-profile-for-bios-based-firmware-configurations)
- [Configure TPM platform validation profile (Windows Vista, Windows Server 2008, Windows 7, Windows Server 2008 R2)](#configure-tpm-platform-validation-profile-windows-vista-windows-server-2008-windows-7-windows-server-2008-r2)
- [Configure TPM platform validation profile for native UEFI firmware configurations](#configure-tpm-platform-validation-profile-for-native-uefi-firmware-configurations)
- [Reset platform validation data after BitLocker recovery](#reset-platform-validation-data-after-bitlocker-recovery)
- [Use enhanced Boot Configuration Data validation profile](#use-enhanced-boot-configuration-data-validation-profile)
- [Allow access to BitLocker-protected fixed data drives from earlier versions of Windows](#allow-access-to-bitlocker-protected-fixed-data-drives-from-earlier-versions-of-windows)
- [Allow access to BitLocker-protected removable data drives from earlier versions of Windows](#allow-access-to-bitlocker-protected-removable-data-drives-from-earlier-versions-of-windows)

### Allow devices with secure boot and protected DMA ports to opt out of preboot PIN

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, TPM-only protection can be allowed for newer, more secure devices, such as devices that support Modern Standby or HSTI, while requiring PIN on older devices.|
|**Introduced**|Windows 10, version 1703|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|This setting overrides the **Require startup PIN with TPM** option of the [Require additional authentication at startup](#require-additional-authentication-at-startup) policy on compliant hardware.|
|**When enabled**|Users on Modern Standby and HSTI compliant devices will have the choice to turn on BitLocker without preboot authentication.|
|**When disabled or not configured**|The options of the [Require additional authentication at startup](#require-additional-authentication-at-startup) policy apply.|

#### Reference: Allow devices with secure boot and protected DMA ports to opt out of preboot PIN

The preboot authentication option **Require startup PIN with TPM** of the [Require additional authentication at startup](#require-additional-authentication-at-startup) policy is often enabled to help ensure security for older devices that don't support Modern Standby. But visually impaired users have no audible way to know when to enter a PIN.
This setting enables an exception to the PIN-required policy on secure hardware.

### Allow network unlock at startup

This policy controls a portion of the behavior of the Network Unlock feature in BitLocker. This policy is required to enable BitLocker Network Unlock on a network because it allows clients running BitLocker to create the necessary network key protector during encryption.

This policy is used with the BitLocker Drive Encryption Network Unlock Certificate security policy (located in the **Public Key Policies** folder of Local Computer Policy) to allow systems that are connected to a trusted network to properly utilize the Network Unlock feature.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled whether a BitLocker-protected computer that is connected to a trusted local area network and joined to a domain can create and use network key protectors on TPM-enabled computers to automatically unlock the operating system drive when the computer is started.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|Clients configured with a BitLocker Network Unlock certificate can create and use Network Key Protectors.|
|**When disabled or not configured**|Clients can't create and use Network Key Protectors.|

#### Reference: Allow network unlock at startup

To use a network key protector to unlock the computer, the computer and the server that hosts BitLocker Drive Encryption Network Unlock must be provisioned with a Network Unlock certificate. The Network Unlock certificate is used to create a network key protector and to protect the information exchange with the server to unlock the computer. The Group Policy setting **Computer Configuration** > **Windows Settings** > **Security Settings** > **Public Key Policies** > **BitLocker Drive Encryption Network Unlock Certificate** can be used on the domain controller to distribute this certificate to computers in the organization. This unlock method uses the TPM on the computer, so computers that don't have a TPM can't create network key protectors to automatically unlock by using Network Unlock.

> [!NOTE]
> For reliability and security, computers should also have a TPM startup PIN that can be used when the computer is disconnected from the wired network or can't connect to the domain controller at startup.

For more information about Network Unlock feature, see [BitLocker: How to enable Network Unlock](bitlocker-how-to-enable-network-unlock.md).

### Require additional authentication at startup

This policy setting is used to control which unlock options are available for operating system drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured whether BitLocker requires additional authentication each time the computer starts and whether BitLocker will be used with a Trusted Platform Module (TPM). This policy setting is applied when BitLocker is turned on.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|If one authentication method is required, the other methods can't be allowed. Use of BitLocker with a TPM startup key or with a TPM startup key and a PIN must be disallowed if the **Deny write access to removable drives not protected by BitLocker** policy setting is enabled.|
|**When enabled**|Users can configure advanced startup options in the BitLocker Setup Wizard.|
|**When disabled or not configured**|Users can configure only basic options on computers with a TPM. <br><br>Only one of the additional authentication options can be required at startup; otherwise, a policy error occurs.|

#### Reference: Require additional authentication at startup

If BitLocker needs to be used on a computer without a TPM, select **Allow BitLocker without a compatible TPM**. In this mode, a password or USB drive is required for startup. The USB drive stores the startup key that is used to encrypt the drive. When the USB drive is inserted, the startup key is authenticated, and the operating system drive is accessible. If the USB drive is lost or unavailable, BitLocker recovery is required to access the drive.

On a computer with a compatible TPM, additional authentication methods can be used at startup to improve protection for encrypted data. When the computer starts, it can use:

- Only the TPM
- Insertion of a USB flash drive containing the startup key
- The entry of a 4-digit to 20-digit personal identification number (PIN)
- A combination of the PIN and the USB flash drive

There are four options for TPM-enabled computers or devices:

- Configure TPM startup
  - Allow TPM
  - Require TPM
  - Do not allow TPM
- Configure TPM startup PIN

  - Allow startup PIN with TPM
  - Require startup PIN with TPM
  - Do not allow startup PIN with TPM

- Configure TPM startup key
  - Allow startup key with TPM
  - Require startup key with TPM
  - Do not allow startup key with TPM

- Configure TPM startup key and PIN
  - Allow TPM startup key with PIN
  - Require startup key and PIN with TPM
  - Do not allow TPM startup key with PIN

### Allow enhanced PINs for startup

This policy setting permits the use of enhanced PINs when an unlock method that includes a PIN is used.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured whether enhanced startup PINs are used with BitLocker.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|All new BitLocker startup PINs that are set will be enhanced PINs. Existing drives that were protected by using standard startup PINs aren't affected.|
|**When disabled or not configured**|Enhanced PINs won't be used.|

#### Reference: Allow enhanced PINs for startup

Enhanced startup PINs permit the use of characters (including uppercase and lowercase letters, symbols, numbers, and spaces). This policy setting is applied when BitLocker is turned on.

> [!IMPORTANT]
> Not all computers support enhanced PIN characters in the preboot environment. It's strongly recommended that users perform a system check during the BitLocker setup to verify that enhanced PIN characters can be used.

### Configure minimum PIN length for startup

This policy setting is used to set a minimum PIN length when an unlock method that includes a PIN is used.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured a minimum length for a TPM startup PIN. This policy setting is applied when BitLocker is turned on. The startup PIN must have a minimum length of four digits, and it can have a maximum length of 20 digits. By default, the minimum PIN length is 6.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|The required minimum length of startup PINs set by users can be set between 4 and 20 digits.|
|**When disabled or not configured**|Users can configure a startup PIN of any length between 6 and 20 digits.|

#### Reference: Configure minimum PIN length for startup

This policy setting is applied when BitLocker is turned on. The startup PIN must have a minimum length of four digits and can have a maximum length of 20 digits.

Originally, BitLocker allowed a length from 4 to 20 characters for a PIN. Windows Hello has its own PIN for sign-in, length of which can be 4 to 127 characters. Both BitLocker and Windows Hello use the TPM to prevent PIN brute-force attacks.

The TPM can be configured to use Dictionary Attack Prevention parameters ([lockout threshold and lockout duration](../../../hardware-security/tpm/trusted-platform-module-services-group-policy-settings.md) to control how many failed authorizations attempts are allowed before the TPM is locked out, and how much time must elapse before another attempt can be made.

The Dictionary Attack Prevention Parameters provide a way to balance security needs with usability. For example, when BitLocker is used with a TPM + PIN configuration, the number of PIN guesses is limited over time. A TPM 2.0 in this example could be configured to allow only 32 PIN guesses immediately, and then only one more guess every two hours. This number of attempts totals to a maximum of about 4415 guesses per year. If the PIN is four digits, all 9999 possible PIN combinations could be attempted in a little over two years.

Increasing the PIN length requires a greater number of guesses for an attacker. In that case, the lockout duration between each guess can be shortened to allow legitimate users to retry a failed attempt sooner, while maintaining a similar level of protection.

Beginning with Windows 10, version 1703, the minimum length for the BitLocker PIN was increased to six characters to better align with other Windows features that use TPM 2.0, including Windows Hello. To help organizations with the transition, beginning with Windows 10, version 1709 and Windows 10, version 1703 with the October 2017 [cumulative update](https://support.microsoft.com/help/4018124) installed, the BitLocker PIN length is six characters by default, but it can be reduced to four characters. If the minimum PIN length is reduced from the default of six characters, then the TPM 2.0 lockout period will be extended.

### Disable new DMA devices when this computer is locked

This policy setting allows blocking of direct memory access (DMA) for all hot pluggable PCI ports until a user signs in to Windows.

|  Item  | Info |
|:---|:---|
|**Policy description**|This setting helps prevent attacks that use external PCI-based devices to access BitLocker keys.|
|**Introduced**|Windows 10, version 1703|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|None|
|**When enabled**|Every time the user locks the screen, DMA will be blocked on hot pluggable PCI ports until the user signs in again.|
|**When disabled or not configured**|DMA is available on hot pluggable PCI devices if the device is turned on, regardless of whether a user is signed in.|

#### Reference: Disable new DMA devices when this computer is locked

This policy setting is only enforced when BitLocker or device encryption is enabled. As explained in the [Microsoft Security Guidance blog](/archive/blogs/secguide/issue-with-bitlockerdma-setting-in-windows-10-fall-creators-update-v1709), in some cases when this setting is enabled, internal, PCI-based peripherals can fail, including wireless network drivers and input and audio peripherals. This problem is fixed in the [April 2018 quality update](https://support.microsoft.com/help/4093105).

### Disallow standard users from changing the PIN or password

This policy setting allows configuration of whether standard users are allowed to change the PIN or password that is used to protect the operating system drive.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured whether standard users are allowed to change the PIN or password used to protect the operating system drive.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|Standard users aren't allowed to change BitLocker PINs or passwords.|
|**When disabled or not configured**|Standard users are permitted to change BitLocker PINs or passwords.|

#### Reference: Disallow standard users from changing the PIN or password

To change the PIN or password, the user must be able to provide the current PIN or password. This policy setting is applied when BitLocker is turned on.

### Configure use of passwords for operating system drives

This policy controls how non-TPM based systems utilize the password protector. Used with the **Password must meet complexity requirements** policy, this policy allows administrators to require password length and complexity for using the password protector. By default, passwords must be eight characters in length. Complexity configuration options determine how important domain connectivity is for the client. For the strongest password security, administrators should choose **Require password complexity** because it requires domain connectivity, and it requires that the BitLocker password meets the same password complexity requirements as domain sign-in passwords.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, the constraints for passwords that are used to unlock operating system drives that are protected with BitLocker can be specified.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|Passwords can't be used if FIPS-compliance is enabled.<br/><div class="alert"> **NOTE:** The **System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing** policy setting, which is located at *Computer Configuration* > *Windows Settings* > *Security Settings* > *Local Policies* > *Security Options* specifies whether FIPS-compliance is enabled.</div>|
|**When enabled**|Users can configure a password that meets the defined requirements. To enforce complexity requirements for the password, select **Require complexity**.|
|**When disabled or not configured**|The default length constraint of eight characters will apply to operating system drive passwords and no complexity checks will occur.|

#### Reference: Configure use of passwords for operating system drives

If non-TPM protectors are allowed on operating system drives, a password, enforcement of complexity requirements on the password, and configuration of a minimum length for the password can all be provisioned. For the complexity requirement setting to be effective, the group policy setting **Password must meet complexity requirements**, which is located at *Computer Configuration* > *Windows Settings* > *Security Settings* > *Account Policies* > *Password Policy*, must be also enabled.

> [!NOTE]
> These settings are enforced when turning on BitLocker, not when unlocking a volume. BitLocker allows unlocking a drive with any of the protectors that are available on the drive.

When set to **Require complexity**, a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password. When set to **Allow complexity**, a connection to a domain controller is attempted to validate that the complexity adheres to the rules set by the policy. If no domain controllers are found, the password will be accepted regardless of actual password complexity, and the drive will be encrypted by using that password as a protector. When set to **Do not allow complexity**, there's no password complexity validation.

Passwords must be at least eight characters. To configure a greater minimum length for the password, enter the desired number of characters in the **Minimum password length** box.

When this policy setting is enabled, the option **Configure password complexity for operating system drives** can be set to:

- Allow password complexity
- Deny password complexity
- Require password complexity

### Require additional authentication at startup (Windows Server 2008 and Windows Vista)

This policy setting is used to control what unlock options are available for computers running Windows Server 2008 or Windows Vista.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled whether the BitLocker Setup Wizard on computers running Windows Vista or Windows Server 2008 can set up an additional authentication method that is required each time the computer starts.|
|**Introduced**|Windows Server 2008 and Windows Vista|
|**Drive type**|Operating system drives (Windows Server 2008 and Windows Vista)|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|If an additional authentication method is chosen, other authentication methods can't be allowed.|
|**When enabled**|The BitLocker Setup Wizard displays the page that allows the user to configure advanced startup options for BitLocker. Setting options can be further configured for computers with or without a TPM.|
|**When disabled or not configured**|The BitLocker Setup Wizard displays basic steps that allow users to enable BitLocker on computers with a TPM. In this basic wizard, no additional startup key or startup PIN can be configured.|

#### Reference: Require additional authentication at startup (Windows Server 2008 and Windows Vista)

On a computer with a compatible TPM, two authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can prompt users to insert a USB drive that contains a startup key. It can also prompt users to enter a startup PIN with a length between 6 and 20 digits.

A USB drive that contains a startup key is needed on computers without a compatible TPM. Without a TPM, BitLocker-encrypted data is protected solely by the key material that is on this USB drive.

There are two options for TPM-enabled computers or devices:

- Configure TPM startup PIN
  - Allow startup PIN with TPM
  - Require startup PIN with TPM
  - Do not allow startup PIN with TPM

- Configure TPM startup key
  - Allow startup key with TPM
  - Require startup key with TPM
  - Do not allow startup key with TPM

These options are mutually exclusive. If a startup key is required, a startup PIN isn't allowed. If startup PIN is required, startup key isn't allowed. If these policies are in conflict, a policy error will occur.

To hide the advanced page on a TPM-enabled computer or device, set these options to **Do not allow** for the startup key and for the startup PIN.

### Configure use of smart cards on fixed data drives

This policy setting is used to require, allow, or deny the use of smart cards with fixed data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting can be used to specify whether smart cards can be used to authenticate user access to the BitLocker-protected fixed data drives on a computer.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|To use smart cards with BitLocker, the object identifier setting in the **Computer Configuration\Administrative Templates\BitLocker Drive Encryption\Validate smart card certificate usage rule compliance** policy setting may need to be modified to match the object identifier of the smart card certificates.|
|**When enabled**|Smart cards can be used to authenticate user access to the drive. Smart card authentication can be required by selecting the **Require use of smart cards on fixed data drives** check box.|
|**When disabled**|Users can't use smart cards to authenticate their access to BitLocker-protected fixed data drives.|
|**When not configured**|Smart cards can be used to authenticate user access to a BitLocker-protected drive.|

#### Reference: Configure use of smart cards on fixed data drives

> [!NOTE]
> These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker allows unlocking a drive by using any of the protectors that are available on the drive.

### Configure use of passwords on fixed data drives

This policy setting is used to require, allow, or deny the use of passwords with fixed data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be specified whether a password is required to unlock BitLocker-protected fixed data drives.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|To use password complexity, the **Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\Password must meet complexity requirements** policy setting must also be enabled.|
|**When enabled**|Users can configure a password that meets the defined requirements. To require the use of a password, select **Require password for fixed data drive**. To enforce complexity requirements on the password, select **Require complexity**.|
|**When disabled**|The user isn't allowed to use a password.|
|**When not configured**|Passwords are supported with the default settings, which don't include password complexity requirements and require only eight characters.|

#### Reference: Configure use of passwords on fixed data drives

When set to **Require complexity**, a connection to a domain controller is necessary to validate the complexity of the password when BitLocker is enabled.

When set to **Allow complexity**, a connection to a domain controller is attempted to validate that the complexity adheres to the rules set by the policy. However, if no domain controllers are found, the password is accepted regardless of the actual password complexity, and the drive is encrypted by using that password as a protector.

When set to **Do not allow complexity**, no password complexity validation is performed.

Passwords must be at least eight characters. To configure a greater minimum length for the password, enter the desired number of characters in the **Minimum password length** box.

> [!NOTE]
> These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker allows unlocking a drive with any of the protectors that are available on the drive.

For the complexity requirement setting to be effective, the Group Policy setting **Computer Configuration** > **Windows Settings** > **Security Settings** > **Account Policies** > **Password Policy** > **Password must meet complexity requirements** must also be enabled. This policy setting is configured on a per-computer basis. The policy setting also applies to both local user accounts and domain user accounts. Because the password filter that's used to validate password complexity is located on the domain controllers, local user accounts can't access the password filter because they're not authenticated for domain access. When this policy setting is enabled, if a local user account signs in, and a drive is attempted to be encrypted or a password changed on an existing BitLocker-protected drive, an **Access denied** error message is displayed. In this situation, the password key protector can't be added to the drive.

Enabling this policy setting requires that a device is connected to a domain before adding a password key protector to a BitLocker-protected drive. Users who work remotely and have periods of time in which they can't connect to the domain should be made aware of this requirement so that they can schedule a time when they'll be connected to the domain to turn on BitLocker or to change a password on a BitLocker-protected data drive.

> [!IMPORTANT]
> Passwords can't be used if FIPS compliance is enabled. The **System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing** policy setting in *Computer Configuration* > *Windows Settings* > *Security Settings* > *Local Policies* > *Security Options* specifies whether FIPS compliance is enabled.

### Configure use of smart cards on removable data drives

This policy setting is used to require, allow, or deny the use of smart cards with removable data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting can be used to specify whether smart cards can be used to authenticate user access to BitLocker-protected removable data drives on a computer.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Removable data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|To use smart cards with BitLocker, the object identifier setting in the **Computer Configuration** > **Administrative Templates** > **BitLocker Drive Encryption** > **Validate smart card certificate usage rule compliance** policy setting may also need to be modified to match the object identifier of the smart card certificates.|
|**When enabled**|Smart cards can be used to authenticate user access to the drive. Smart card authentication can be required by selecting the **Require use of smart cards on removable data drives** check box.|
|**When disabled or not configured**|Users aren't allowed to use smart cards to authenticate their access to BitLocker-protected removable data drives.|
|**When not configured**|Smart cards are available to authenticate user access to a BitLocker-protected removable data drive.|

#### Reference: Configure use of smart cards on removable data drives

> [!NOTE]
> These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker allows unlocking a drive with any of the protectors that are available on the drive.

### Configure use of passwords on removable data drives

This policy setting is used to require, allow, or deny the use of passwords with removable data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be specified whether a password is required to unlock BitLocker-protected removable data drives.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Removable data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|To use password complexity, the **Password must meet complexity requirements** policy setting, which is located at **Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy** must also be enabled.|
|**When enabled**|Users can configure a password that meets the defined requirements. To require the use of a password, select **Require password for removable data drive**. To enforce complexity requirements on the password, select **Require complexity**.|
|**When disabled**|The user isn't allowed to use a password.|
|**When not configured**|Passwords are supported with the default settings, which don't include password complexity requirements and require only eight characters.|

#### Reference: Configure use of passwords on removable data drives

If use of passwords is allowed, requiring a password to be used, enforcement of password complexity requirements, and password minimum length can all be configured. For the complexity requirement setting to be effective, the group policy setting **Password must meet complexity requirements**, which is located at *Computer Configuration* > *Windows Settings* > *Security Settings* > *Account Policies* > *Password Policy*, must also be enabled.

> [!NOTE]
> These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker allows unlocking a drive with any of the protectors that are available on the drive.

Passwords must be at least eight characters. To configure a greater minimum length for the password, enter the wanted number of characters in the **Minimum password length** box.

When set to **Require complexity**, a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity of the password.

When set to **Allow complexity**, a connection to a domain controller is attempted to validate that the complexity adheres to the rules set by the policy. However, if no domain controllers are found, the password is still be accepted regardless of actual password complexity and the drive is encrypted by using that password as a protector.

When set to **Do not allow complexity**, no password complexity validation is done.

> [!NOTE]
> Passwords can't be used if FIPS compliance is enabled. The **System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing** policy setting in **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **Security Options** specifies whether FIPS compliance is enabled.

For information about this setting, see [System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing](../../../threat-protection/security-policy-settings/system-cryptography-use-fips-compliant-algorithms-for-encryption-hashing-and-signing.md).

### Validate smart card certificate usage rule compliance

This policy setting is used to determine what certificate to use with BitLocker.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, an object identifier from a smart card certificate can be associated to a BitLocker-protected drive.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Fixed and removable data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|None|
|**When enabled**|The object identifier that is specified in the **Object identifier** setting must match the object identifier in the smart card certificate.|
|**When disabled or not configured**|The default object identifier is used.|

#### Reference: Validate smart card certificate usage rule compliance

This policy setting is applied when BitLocker is turned on.

The object identifier is specified in the extended key usage (EKU) of a certificate. BitLocker can identify which certificates can be used to authenticate a user certificate to a BitLocker-protected drive by matching the object identifier in the certificate with the object identifier that is defined by this policy setting.

The default object identifier is 1.3.6.1.4.1.311.67.1.1.

> [!NOTE]
> BitLocker doesn't require that a certificate have an EKU attribute; however, if one is configured for the certificate, it must be set to an object identifier that matches the object identifier configured for BitLocker.

### Enable use of BitLocker authentication requiring preboot keyboard input on slates

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, users can be allowed to enable authentication options that require user input from the preboot environment, even if the platform indicates a lack of preboot input capability.|
|**Introduced**|Windows Server 2012 and Windows 8|
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

### Deny write access to fixed drives not protected by BitLocker

This policy setting is used to require encryption of fixed drives prior to granting Write access.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be set whether BitLocker protection is required for fixed data drives to be writable on a computer.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|See the Reference section for a description of conflicts.|
|**When enabled**|All fixed data drives that aren't BitLocker-protected are mounted as Read-only. If the drive is protected by BitLocker, it's mounted with Read and Write access.|
|**When disabled or not configured**|All fixed data drives on the computer are mounted with Read and Write access.|

#### Reference: Deny write access to fixed drives not protected by BitLocker

This policy setting is applied when BitLocker is turned on.

Conflict considerations include:

1. When this policy setting is enabled, users receive **Access denied** error messages when they try to save data to unencrypted fixed data drives. See the Reference section for additional conflicts.

2. If `BdeHdCfg.exe` is run on a computer when this policy setting is enabled, the following issues could be encountered:

    - If it was attempted to shrink a drive to create the system drive, the drive size is successfully reduced, and a raw partition is created. However, the raw partition isn't formatted. The following error message is displayed: **The new active drive cannot be formatted. You may need to manually prepare your drive for BitLocker.**

    - If it was attempted to use unallocated space to create the system drive, a raw partition will be created. However, the raw partition won't be formatted. The following error message is displayed: **The new active drive cannot be formatted. You may need to manually prepare your drive for BitLocker.**

    - If it was attempted to merge an existing drive into the system drive, the tool fails to copy the required boot file onto the target drive to create the system drive. The following error message is displayed: **BitLocker setup failed to copy boot files. You may need to manually prepare your drive for BitLocker.**

3. If this policy setting is enforced, a hard drive can't be repartitioned because the drive is protected. If computers are being upgrading in an organization from a previous version of Windows, and those computers were configured with a single partition, the required BitLocker system partition should be created before applying this policy setting to the computers.

### Deny write access to removable drives not protected by BitLocker

This policy setting is used to require that removable drives are encrypted prior to granting Write access, and to control whether BitLocker-protected removable drives that were configured in another organization can be opened with Write access.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured whether BitLocker protection is required for a computer to be able to write data to a removable data drive.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Removable data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|See the Reference section for a description of conflicts.|
|**When enabled**|All removable data drives that aren't BitLocker-protected are mounted as Read-only. If the drive is protected by BitLocker, it's mounted with Read and Write access.|
|**When disabled or not configured**|All removable data drives on the computer are mounted with Read and Write access.|

#### Reference: Deny write access to removable drives not protected by BitLocker

If the **Deny write access to devices configured in another organization** option is selected, only drives with identification fields that match the computer's identification fields are given Write access. When a removable data drive is accessed, it's checked for a valid identification field and allowed identification fields. These fields are defined by the **Provide the unique identifiers for your organization** policy setting.

> [!NOTE]
> This policy setting can be overridden with the policy settings under **User Configuration** > **Administrative Templates** > **System** > **Removable Storage Access**. If the **Removable Disks: Deny write access** policy setting is enabled, this policy setting will be ignored.

Conflict considerations include:

1. Use of BitLocker with the TPM plus a startup key or with the TPM plus a PIN and startup key must be disallowed if the **Deny write access to removable drives not protected by BitLocker** policy setting is enabled.

2. Use of recovery keys must be disallowed if the **Deny write access to removable drives not protected by BitLocker** policy setting is enabled.

3. The **Provide the unique identifiers for your organization** policy setting must be enabled if Write access needs to be denied to drives that were configured in another organization.

### Control use of BitLocker on removable drives

This policy setting is used to prevent users from turning BitLocker on or off on removable data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled the use of BitLocker on removable data drives.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Removable data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|None|
|**When enabled**|Property settings can be selected that control how users can configure BitLocker.|
|**When disabled**|Users can't use BitLocker on removable data drives.|
|**When not configured**|Users can use BitLocker on removable data drives.|

#### Reference: Control use of BitLocker on removable drives

This policy setting is applied when BitLocker is turned on.

For information about suspending BitLocker protection, see [BitLocker Basic Deployment](bitlocker-basic-deployment.md).

The options for choosing property settings that control how users can configure BitLocker are:

- **Allow users to apply BitLocker protection on removable data drives**   Enables the user to run the BitLocker Setup Wizard on a removable data drive.

- **Allow users to suspend and decrypt BitLocker on removable data drives**   Enables the user to remove BitLocker from the drive or to suspend the encryption while performing maintenance.

### Choose drive encryption method and cipher strength

This policy setting is used to control the encryption method and cipher strength.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled the encryption method and strength for drives.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|All drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|None|
|**When enabled**|An encryption algorithm and key cipher strength for BitLocker can be chosen to use to encrypt drives.|
|**When disabled or not configured**|Beginning with Windows 10, version 1511,  BitLocker uses the default encryption method of XTS-AES 128-bit or the encryption method that is specified by the setup script.

#### Reference: Choose drive encryption method and cipher strength

The values of this policy determine the strength of the cipher that BitLocker uses for encryption. Enterprises may want to control the encryption level for increased security (AES-256 is stronger than AES-128).

If this setting is enabled, it can be configured an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually.

- For fixed and operating system drives, it's recommended to use the XTS-AES algorithm.

- For removable drives, AES-CBC 128-bit or AES-CBC 256-bit should be used if the drive will be used in other devices that aren't running Windows 10, version 1511 or later.

Changing the encryption method has no effect if the drive is already encrypted or if encryption is in progress. In these cases, this policy setting is ignored.

> [!WARNING]
> This policy doesn't apply to encrypted drives. Encrypted drives utilize their own algorithm, which is set by the drive during partitioning.

When this policy setting is disabled or not configured, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method that is specified in the setup script.

### Configure use of hardware-based encryption for fixed data drives

This policy controls how BitLocker reacts to systems that are equipped with encrypted drives when they're used as fixed data volumes. Using hardware-based encryption can improve the performance of drive operations that involve frequent reading or writing of data to the drive.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting allows management of BitLocker's use of hardware-based encryption on fixed data drives and to specify which encryption algorithms BitLocker can use with hardware-based encryption.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|None|
|**When enabled**|Additional options can be specified that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that don't support hardware-based encryption. It can also be specified to restrict the encryption algorithms and cipher suites that are used with hardware-based encryption.|
|**When disabled**|BitLocker can't use hardware-based encryption with fixed data drives, and BitLocker software-based encryption is used by default when the drive in encrypted.|
|**When not configured**|BitLocker software-based encryption is used irrespective of hardware-based encryption ability.|

#### Reference: Configure use of hardware-based encryption for fixed data drives

> [!NOTE]
> The **Choose drive encryption method and cipher strength** policy setting doesn't apply to hardware-based encryption.

The encryption algorithm that is used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm that is configured on the drive to encrypt the drive. The **Restrict encryption algorithms and cipher suites allowed for hardware-based encryption** option of this setting enables restriction of the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm that is set for the drive isn't available, BitLocker disables the use of hardware-based encryption. Encryption algorithms are specified by object identifiers (OID), for example:

- Advanced Encryption Standard (AES) 128 in Cipher Block Chaining (CBC) mode OID: 2.16.840.1.101.3.4.1.2
- AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42

### Configure use of hardware-based encryption for operating system drives

This policy controls how BitLocker reacts when encrypted drives are used as operating system drives. Using hardware-based encryption can improve the performance of drive operations that involve frequent reading or writing of data to the drive.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting allows management of BitLocker's use of hardware-based encryption on operating system drives and specifies which encryption algorithms it can use with hardware-based encryption.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|Additional options can be specified that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that don't support hardware-based encryption. It can also be specified to restrict the encryption algorithms and cipher suites that are used with hardware-based encryption.|
|**When disabled**|BitLocker can't use hardware-based encryption with operating system drives, and BitLocker software-based encryption is used by default when the drive in encrypted.|
|**When not configured**|BitLocker software-based encryption is used irrespective of hardware-based encryption ability.|

#### Reference: Configure use of hardware-based encryption for operating system drives

If hardware-based encryption isn't available, BitLocker software-based encryption is used instead.

> [!NOTE]
> The **Choose drive encryption method and cipher strength** policy setting doesn't apply to hardware-based encryption.

The encryption algorithm that is used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm that is configured on the drive to encrypt the drive. The **Restrict encryption algorithms and cipher suites allowed for hardware-based encryption** option of this setting enables restriction of the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm that is set for the drive isn't available, BitLocker disables the use of hardware-based encryption. Encryption algorithms are specified by object identifiers (OID), for example:

- Advanced Encryption Standard (AES) 128 in Cipher Block Chaining (CBC) mode OID: 2.16.840.1.101.3.4.1.2
- AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42

### Configure use of hardware-based encryption for removable data drives

This policy controls how BitLocker reacts to encrypted drives when they're used as removable data drives. Using hardware-based encryption can improve the performance of drive operations that involve frequent reading or writing of data to the drive.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting allows management of BitLocker's use of hardware-based encryption on removable data drives and specifies which encryption algorithms it can use with hardware-based encryption.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Removable data drive|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|None|
|**When enabled**|Additional options can be specified that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that don't support hardware-based encryption. It can also be specified to restrict the encryption algorithms and cipher suites that are used with hardware-based encryption.|
|**When disabled**|BitLocker can't use hardware-based encryption with removable data drives, and BitLocker software-based encryption is used by default when the drive in encrypted.|
|**When not configured**|BitLocker software-based encryption is used irrespective of hardware-based encryption ability.|

#### Reference: Configure use of hardware-based encryption for removable data drives

If hardware-based encryption isn't available, BitLocker software-based encryption is used instead.

> [!NOTE]
> The **Choose drive encryption method and cipher strength** policy setting doesn't apply to hardware-based encryption.

The encryption algorithm that is used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm that is configured on the drive to encrypt the drive. The **Restrict encryption algorithms and cipher suites allowed for hardware-based encryption** option of this setting enables restriction of the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm that is set for the drive isn't available, BitLocker disables the use of hardware-based encryption. Encryption algorithms are specified by object identifiers (OID), for example:

- Advanced Encryption Standard (AES) 128 in Cipher Block Chaining (CBC) mode OID: 2.16.840.1.101.3.4.1.2
- AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42

### Enforce drive encryption type on fixed data drives

This policy controls whether fixed data drives utilize Used Space Only encryption or Full encryption. Setting this policy also causes the BitLocker Setup Wizard to skip the encryption options page so no encryption selection displays to the user.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured the encryption type that is used by BitLocker.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Fixed data drive|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|None|
|**When enabled**|This policy defines the encryption type that BitLocker uses to encrypt drives, and the encryption type option isn't presented in the BitLocker Setup Wizard.|
|**When disabled or not configured**|The BitLocker Setup Wizard asks the user to select the encryption type before turning on BitLocker.|

#### Reference: Enforce drive encryption type on fixed data drives

This policy setting is applied when BitLocker is turned on. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose Full encryption to make it mandatory for the entire drive to be encrypted when BitLocker is turned on. Choose Used Space Only encryption to make it mandatory to encrypt only that portion of the drive that is used to store data when BitLocker is turned on.

> [!NOTE]
> This policy is ignored when a volume is being shrunk or expanded and the BitLocker drive uses the current encryption method. For example, when a drive that is using Used Space Only encryption is expanded, the new free space isn't wiped as it would be for a drive that is using Full encryption. The user could wipe the free space on a Used Space Only drive by using the following command: `manage-bde.exe -w`. If the volume is shrunk, no action is taken for the new free space.

For more information about the tool to manage BitLocker, see [Manage-bde](/windows-server/administration/windows-commands/manage-bde).

### Enforce drive encryption type on operating system drives

This policy controls whether operating system drives utilize Full encryption or Used Space Only encryption. Setting this policy also causes the BitLocker Setup Wizard to skip the encryption options page, so no encryption selection displays to the user.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured the encryption type that is used by BitLocker.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Operating system drive|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|The encryption type that BitLocker uses to encrypt drives is defined by this policy, and the encryption type option isn't presented in the BitLocker Setup Wizard.|
|**When disabled or not configured**|The BitLocker Setup Wizard asks the user to select the encryption type before turning on BitLocker.|

#### Reference: Enforce drive encryption type on operating system drives

This policy setting is applied when BitLocker is turned on. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose Full encryption to make it mandatory for the entire drive to be encrypted when BitLocker is turned on. Choose Used Space Only encryption to make it mandatory to encrypt only that portion of the drive that is used to store data when BitLocker is turned on.

> [!NOTE]
> This policy is ignored when shrinking or expanding a volume, and the BitLocker driver uses the current encryption method. For example, when a drive that is using Used Space Only encryption is expanded, the new free space isn't wiped as it would be for a drive that uses Full encryption. The user could wipe the free space on a Used Space Only drive by using the following command: `manage-bde.exe -w`. If the volume is shrunk, no action is taken for the new free space.

For more information about the tool to manage BitLocker, see [Manage-bde](/windows-server/administration/windows-commands/manage-bde).

### Enforce drive encryption type on removable data drives

This policy controls whether fixed data drives utilize Full encryption or Used Space Only encryption. Setting this policy also causes the BitLocker Setup Wizard to skip the encryption options page, so no encryption selection displays to the user.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured the encryption type that is used by BitLocker.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Removable data drive|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|None|
|**When enabled**|The encryption type that BitLocker uses to encrypt drives is defined by this policy, and the encryption type option isn't presented in the BitLocker Setup Wizard.|
|**When disabled or not configured**|The BitLocker Setup Wizard asks the user to select the encryption type before turning on BitLocker.|

#### Reference: Enforce drive encryption type on removable data drives

This policy setting is applied when BitLocker is turned on. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose Full encryption to make it mandatory for the entire drive to be encrypted when BitLocker is turned on. Choose Used Space Only encryption to make it mandatory to encrypt only that portion of the drive that is used to store data when BitLocker is turned on.

> [!NOTE]
> This policy is ignored when shrinking or expanding a volume, and the BitLocker driver uses the current encryption method. For example, when a drive that is using Used Space Only encryption is expanded, the new free space isn't wiped as it would be for a drive that is using Full Encryption. The user could wipe the free space on a Used Space Only drive by using the following command: `manage-bde.exe -w`. If the volume is shrunk, no action is taken for the new free space.

For more information about the tool to manage BitLocker, see [Manage-bde](/windows-server/administration/windows-commands/manage-bde).

### Choose how BitLocker-protected operating system drives can be recovered

This policy setting is used to configure recovery methods for operating system drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled how BitLocker-protected operating system drives are recovered in the absence of the required startup key information.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|The use of recovery keys must be disallowed if the **Deny write access to removable drives not protected by BitLocker** policy setting is enabled. </br> </br>When using data recovery agents, the **Provide the unique identifiers for your organization** policy setting must be enabled.|
|**When enabled**|it can be controlled the methods that are available to users to recover data from BitLocker-protected operating system drives.|
|**When disabled or not configured**|The default recovery options are supported for BitLocker recovery. By default, a data recovery agent is allowed, the recovery options can be specified by the user (including the recovery password and recovery key), and recovery information isn't backed up to AD DS.|

#### Reference: Choose how BitLocker-protected operating system drives can be recovered

This policy setting is applied when BitLocker is turned on.

The **Allow data recovery agent** check box is used to specify whether a data recovery agent can be used with BitLocker-protected operating system drives. Before a data recovery agent can be used, it must be added from **Public Key Policies**, which is located in the Group Policy Management Console (GPMC) or in the Local Group Policy Editor.

For more information about adding data recovery agents, see [BitLocker basic deployment](bitlocker-basic-deployment.md).

In **Configure user storage of BitLocker recovery information**, select whether users are allowed, required, or not allowed to generate a 48-digit recovery password.

Select **Omit recovery options from the BitLocker setup wizard** to prevent users from specifying recovery options when they enable BitLocker on a drive. This policy setting means that which recovery option to use when BitLocker is enabled can't be specified. Instead, BitLocker recovery options for the drive are determined by the policy setting.

In **Save BitLocker recovery information to Active Directory Domain Services**, choose which BitLocker recovery information to store in Active Directory Domain Services (AD DS) for operating system drives. If **Store recovery password and key packages** is selected, the BitLocker recovery password and the key package are stored in AD DS. Storing the key package supports the recovery of data from a drive that is physically corrupted. If **Store recovery password only** is selected, only the recovery password is stored in AD DS.

Select the **Do not enable BitLocker until recovery information is stored in AD DS for operating system drives** check box if users need to be prevented from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

> [!NOTE]
> If the **Do not enable BitLocker until recovery information is stored in AD DS for operating system drives** check box is selected, a recovery password is automatically generated.

### Choose how users can recover BitLocker-protected drives (Windows Server 2008 and Windows Vista)

This policy setting is used to configure recovery methods for BitLocker-protected drives on computers running Windows Server 2008 or Windows Vista.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled whether the BitLocker Setup Wizard can display and specify BitLocker recovery options.|
|**Introduced**|Windows Server 2008 and Windows Vista|
|**Drive type**|Operating system drives and fixed data drives on computers running Windows Server 2008 and Windows Vista|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|This policy setting provides an administrative method of recovering data that is encrypted by BitLocker to prevent data loss due to lack of key information. If the **Do not allow** option is chosen for both user recovery options, the **Store BitLocker recovery information in Active Directory Domain Services (Windows Server 2008 and Windows Vista)** policy setting must be enabled to prevent a policy error.|
|**When enabled**|The options that the BitLocker Setup Wizard displays to users for recovering BitLocker encrypted data can be configured.|
|**When disabled or not configured**|The BitLocker Setup Wizard presents users with ways to store recovery options.|

#### Reference: Choose how users can recover BitLocker-protected drives (Windows Server 2008 and Windows Vista)

This policy is only applicable to computers running Windows Server 2008 or Windows Vista. This policy setting is applied when BitLocker is turned on.

Two recovery options can be used to unlock BitLocker-encrypted data in the absence of the required startup key information. Users can type a 48-digit numerical recovery password, or they can insert a USB drive that contains a 256-bit recovery key.

- Saving the recovery password to a USB drive stores the 48-digit recovery password as a text file and the 256-bit recovery key as a hidden file.
- Saving the recovery password to a folder stores the 48-digit recovery password as a text file.
- Printing the recovery password sends the 48-digit recovery password to the default printer.

For example, not allowing the 48-digit recovery password prevents users from printing or saving recovery information to a folder.

> [!IMPORTANT]
> If TPM initialization is performed during the BitLocker setup, TPM owner information is saved or printed with the BitLocker recovery information.
> The 48-digit recovery password isn't available in FIPS-compliance mode.

> [!IMPORTANT]
> To prevent data loss, there must be a way to recover BitLocker encryption keys. If both recovery options are not allowed, backup of BitLocker recovery information to AD DS must be enabled. Otherwise, a policy error occurs.

### Store BitLocker recovery information in Active Directory Domain Services (Windows Server 2008 and Windows Vista)

This policy setting is used to configure the storage of BitLocker recovery information in AD DS. This policy setting provides an administrative method of recovering data that is encrypted by BitLocker to prevent data loss due to lack of key information.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting allows management of the AD DS backup of BitLocker Drive Encryption recovery information.|
|**Introduced**|Windows Server 2008 and Windows Vista|
|**Drive type**|Operating system drives and fixed data drives on computers running Windows Server 2008 and Windows Vista.|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|None|
|**When enabled**|BitLocker recovery information is automatically and silently backed up to AD DS when BitLocker is turned on for a computer.|
|**When disabled or not configured**|BitLocker recovery information isn't backed up to AD DS.|

#### Reference: Store BitLocker recovery information in Active Directory Domain Services (Windows Server 2008 and Windows Vista)

This policy is only applicable to computers running Windows Server 2008 or Windows Vista.

This policy setting is applied when BitLocker is turned on.

BitLocker recovery information includes the recovery password and unique identifier data. A package that contains an encryption key for a BitLocker-protected drive can also be included. This key package is secured by one or more recovery passwords, and it can help perform specialized recovery when the disk is damaged or corrupted.

If **Require BitLocker backup to AD DS** is selected, BitLocker can't be turned on unless the computer is connected to the domain, and the backup of BitLocker recovery information to AD DS succeeds. This option is selected by default to help ensure that BitLocker recovery is possible.

A recovery password is a 48-digit number that unlocks access to a BitLocker-protected drive. A key package contains a drive's BitLocker encryption key, which is secured by one or more recovery passwords. Key packages may help perform specialized recovery when the disk is damaged or corrupted.

If the **Require BitLocker backup to AD DS** option isn't selected, AD DS backup is attempted, but network or other backup failures don't prevent the BitLocker setup. The Backup process isn't automatically retried, and the recovery password might not be stored in AD DS during BitLocker setup.
TPM initialization might be needed during the BitLocker setup. Enable the **Turn on TPM backup to Active Directory Domain Services** policy setting in **Computer Configuration** > **Administrative Templates** > **System** > **Trusted Platform Module Services** to ensure that TPM information is also backed up.

For more information about this setting, see [TPM Group Policy settings](/windows/device-security/tpm/trusted-platform-module-services-group-policy-settings).

### Choose default folder for recovery password

This policy setting is used to configure the default folder for recovery passwords.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, the default path that is displayed when the BitLocker Setup Wizard prompts the user to enter the location of a folder in which to save the recovery password can be specified.|
|**Introduced**|Windows Vista|
|**Drive type**|All drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|None|
|**When enabled**|The path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder can be specified. A fully qualified path can be specified. The target computer's environment variables can also be included in the path. If the path isn't valid, the BitLocker Setup Wizard displays the computer's top-level folder view.|
|**When disabled or not configured**|The BitLocker Setup Wizard displays the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.|

#### Reference: Choose default folder for recovery password

This policy setting is applied when BitLocker is turned on.

> [!NOTE]
> This policy setting doesn't prevent the user from saving the recovery password in another folder.

### Choose how BitLocker-protected fixed drives can be recovered

This policy setting is used to configure recovery methods for fixed data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled how BitLocker-protected fixed data drives are recovered in the absence of the required credentials.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|The use of recovery keys must be disallowed if the **Deny write access to removable drives not protected by BitLocker** policy setting is enabled. </br> </br>When using data recovery agents, the **Provide the unique identifiers for your organization** policy setting must be enabled.|
|**When enabled**|it can be controlled the methods that are available to users to recover data from BitLocker-protected fixed data drives.|
|**When disabled or not configured**|The default recovery options are supported for BitLocker recovery. By default, a data recovery agent is allowed, the recovery options can be specified by the user (including the recovery password and recovery key), and recovery information isn't backed up to AD DS.|

#### Reference: Choose how BitLocker-protected fixed drives can be recovered

This policy setting is applied when BitLocker is turned on.

The **Allow data recovery agent** check box is used to specify whether a data recovery agent can be used with BitLocker-protected fixed data drives. Before a data recovery agent can be used, it must be added from **Public Key Policies**, which is located in the Group Policy Management Console (GPMC) or in the Local Group Policy Editor.

In **Configure user storage of BitLocker recovery information**, select whether users can be allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.

Select **Omit recovery options from the BitLocker setup wizard** to prevent users from specifying recovery options when they enable BitLocker on a drive. This policy setting means that which recovery option to use when BitLocker is enabled can't be specified. Instead, BitLocker recovery options for the drive are determined by the policy setting.

In **Save BitLocker recovery information to Active Directory Domain Services**, choose which BitLocker recovery information to store in AD DS for fixed data drives. If **Backup recovery password and key package** is selected, the BitLocker recovery password and the key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. To recover this data, the `Repair-bde.exe` command-line tool can be used. If **Backup recovery password only** is selected, only the recovery password is stored in AD DS.

For more information about the BitLocker repair tool, see [Repair-bde](/windows-server/administration/windows-commands/repair-bde).

Select the **Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives** check box if users should be prevented from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

> [!NOTE]
> If the **Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives** check box is selected, a recovery password is automatically generated.

### Choose how BitLocker-protected removable drives can be recovered

This policy setting is used to configure recovery methods for removable data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled how BitLocker-protected removable data drives are recovered in the absence of the required credentials.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Removable data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|The use of recovery keys must be disallowed if the **Deny write access to removable drives not protected by BitLocker** policy setting is enabled. </br> </br>When using data recovery agents, the **Provide the unique identifiers for your organization** policy setting must be enabled.|
|**When enabled**|it can be controlled the methods that are available to users to recover data from BitLocker-protected removable data drives.|
|**When disabled or not configured**|The default recovery options are supported for BitLocker recovery. By default, a data recovery agent is allowed, the recovery options can be specified by the user (including the recovery password and recovery key), and recovery information isn't backed up to AD DS.|

#### Reference: Choose how BitLocker-protected removable drives can be recovered

This policy setting is applied when BitLocker is turned on.

The **Allow data recovery agent** check box is used to specify whether a data recovery agent can be used with BitLocker-protected removable data drives. Before a data recovery agent can be used, it must be added from **Public Key Policies** , which is accessed using the GPMC or the Local Group Policy Editor.

In **Configure user storage of BitLocker recovery information**, select whether users can be allowed, required, or not allowed to generate a 48-digit recovery password.

Select **Omit recovery options from the BitLocker setup wizard** to prevent users from specifying recovery options when they enable BitLocker on a drive. This policy setting means that which recovery option to use when BitLocker is enabled can't be specified. Instead, BitLocker recovery options for the drive are determined by the policy setting.

In **Save BitLocker recovery information to Active Directory Domain Services**, choose which BitLocker recovery information is to be stored in AD DS for removable data drives. If **Backup recovery password and key package** is selected, the BitLocker recovery password and the key package are stored in AD DS. If **Backup recovery password only** is selected, only the recovery password is stored in AD DS.

Select the **Do not enable BitLocker until recovery information is stored in AD DS for removable data drives** check box if users should be prevented from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.

> [!NOTE]
> If the **Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives** check box is selected, a recovery password is automatically generated.

### Configure the pre-boot recovery message and URL

This policy setting is used to configure the entire recovery message and to replace the existing URL that is displayed on the pre-boot recovery screen when the operating system drive is locked.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured the BitLocker recovery screen to display a customized message and URL.|
|**Introduced**|Windows|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives* > *Configure pre-boot recovery message and URL*|
|**Conflicts**|None|
|**When enabled**|The customized message and URL are displayed on the pre-boot recovery screen. If a custom recovery message and URL has been previously enabled and the message and URL need to be reverted back to the default message and URL, the policy setting must be enabled and the **Use default recovery message and URL** option selected.|
|**When disabled or not configured**|If the setting hasn't been previously enabled, then the default pre-boot recovery screen is displayed for BitLocker recovery. If the setting previously was enabled and is later disabled, then the last message in Boot Configuration Data (BCD) is displayed whether it was the default recovery message or the custom message.|

#### Reference: Configure the pre-boot recovery message and URL

Enabling the **Configure the pre-boot recovery message and URL** policy setting allows customization of the default recovery screen message and URL to assist customers in recovering their key.

Once the setting is enabled, three options are available:

- If the **Use default recovery message and URL** option is selected, the default BitLocker recovery message and URL will be displayed on the pre-boot recovery screen.
- If the **Use custom recovery message** option is selected, enter the custom message in the **Custom recovery message option** text box. The message that is entered in the **Custom recovery message option** text box is displayed on the pre-boot recovery screen. If a recovery URL is available, include it in the message.
- If the **Use custom recovery URL** option is selected, enter the custom message URL in the **Custom recovery URL option** text box. The URL that is entered in the **Custom recovery URL option** text box replaces the default URL in the default recovery message, which is displayed on the pre-boot recovery screen.

> [!IMPORTANT]
> Not all characters and languages are supported in the pre-boot environment. It is strongly recommended to verify the correct appearance of the characters that are used for the custom message and URL on the pre-boot recovery screen.

> [!IMPORTANT]
> Because BCDEdit commands can be altered manually before Group Policy settings have been set, the policy setting can't be returned to the default setting by selecting the **Not Configured** option after this policy setting has been configured. To return to the default pre-boot recovery screen leave the policy setting enabled and select the **Use default message** options from the **Choose an option for the pre-boot recovery message** drop-down list box.

### Allow Secure Boot for integrity validation

This policy controls how BitLocker-enabled system volumes are handled with the Secure Boot feature. Enabling this feature forces Secure Boot validation during the boot process and verifies Boot Configuration Data (BCD) settings according to the Secure Boot policy.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured whether Secure Boot will be allowed as the platform integrity provider for BitLocker operating system drives.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|All drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|If **Allow Secure Boot for integrity validation** is enabled, make sure the Configure TPM platform validation profile for native UEFI firmware configurations Group Policy setting isn't enabled, or include PCR 7 to allow BitLocker to use Secure Boot for platform or BCD integrity validation. <BR><BR> For more information about PCR 7, see [About the Platform Configuration Register (PCR)](#about-the-platform-configuration-register-pcr) in this article.|
|**When enabled or not configured**|BitLocker uses Secure Boot for platform integrity if the platform is capable of Secure Boot-based integrity validation.|
|**When disabled**|BitLocker uses legacy platform integrity validation, even on systems that are capable of Secure Boot-based integrity validation.|

#### Reference: Allow Secure Boot for integrity validation

Secure boot ensures that the computer's pre-boot environment loads only firmware that is digitally signed by authorized software publishers. Secure boot also started providing more flexibility for managing pre-boot configurations than BitLocker integrity checks prior to Windows Server 2012 and Windows 8.

When this policy is enabled and the hardware is capable of using secure boot for BitLocker scenarios, the **Use enhanced Boot Configuration Data validation profile** group policy setting is ignored, and secure boot verifies BCD settings according to the secure boot policy setting, which is configured separately from BitLocker.

> [!WARNING]
> Disabling this policy might result in BitLocker recovery when manufacturer-specific firmware is updated. If this policy is disabled, suspend BitLocker prior to applying firmware updates.

### Provide the unique identifiers for your organization

This policy setting is used to establish an identifier that is applied to all drives that are encrypted in an organization.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, unique organizational identifiers can be associated to a new drive that is enabled with BitLocker.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|All drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|Identification fields are required to manage certificate-based data recovery agents on BitLocker-protected drives. BitLocker manages and updates certificate-based data recovery agents only when the identification field is present on a drive and it's identical to the value that is configured on the computer.|
|**When enabled**|The identification field on the BitLocker-protected drive and any allowed identification field that is used by an organization can be configured.|
|**When disabled or not configured**|The identification field isn't required.|

#### Reference: Provide the unique identifiers for your organization

These identifiers are stored as the identification field and the allowed identification field. The identification field allows association of a unique organizational identifier to BitLocker-protected drives. This identifier is automatically added to new BitLocker-protected drives, and it can be updated on existing BitLocker-protected drives by using the [Manage-bde](/windows-server/administration/windows-commands/manage-bde) command-line tool.

An identification field is required to manage certificate-based data recovery agents on BitLocker-protected drives and for potential updates to the BitLocker To Go Reader. BitLocker manages and updates data recovery agents only when the identification field on the drive matches the value that is configured in the identification field. In a similar manner, BitLocker updates the BitLocker To Go Reader only when the identification field's value on the drive matches the value that is configured for the identification field.

For more information about the tool to manage BitLocker, see [Manage-bde](/windows-server/administration/windows-commands/manage-bde).

The allowed identification field is used in combination with the **Deny write access to removable drives not protected by BitLocker** policy setting to help control the use of removable drives in an organization. It's a comma-separated list of identification fields from an internal organization or external organizations.

The identification fields on existing drives can be configured by using the [Manage-bde](/windows-server/administration/windows-commands/manage-bde) command-line tool.

When a BitLocker-protected drive is mounted on another BitLocker-enabled computer, the identification field and the allowed identification field are used to determine whether the drive is from an external organization.

Multiple values separated by commas can be entered in the identification and allowed identification fields. The identification field can be any value upto 260 characters.

### Prevent memory overwrite on restart

This policy setting is used to control whether the computer's memory will be overwritten the next time the computer is restarted.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled computer restart performance at the risk of exposing BitLocker secrets.|
|**Introduced**|Windows Vista|
|**Drive type**|All drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption*|
|**Conflicts**|None|
|**When enabled**|The computer won't overwrite memory when it restarts. Preventing memory overwrite may improve restart performance, but it increases the risk of exposing BitLocker secrets.|
|**When disabled or not configured**|BitLocker secrets are removed from memory when the computer restarts.|

#### Reference: Prevent memory overwrite on restart

This policy setting is applied when BitLocker is turned on. BitLocker secrets include key material that is used to encrypt data. This policy setting applies only when BitLocker protection is enabled.

### Configure TPM platform validation profile for BIOS-based firmware configurations

This policy setting determines what values the TPM measures when it validates early boot components before it unlocks an operating system drive on a computer with a BIOS configuration or with UEFI firmware that has the Compatibility Support Module (CSM) enabled.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured how the computer's TPM security hardware secures the BitLocker encryption key.|
|**Introduced**|Windows Server 2012 and Windows 8|
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

### Configure TPM platform validation profile (Windows Vista, Windows Server 2008, Windows 7, Windows Server 2008 R2)

This policy setting determines what values the TPM measures when it validates early boot components before unlocking a drive on a computer running Windows Vista, Windows Server 2008, or Windows 7.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured how the computer's TPM security hardware secures the BitLocker encryption key.|
|**Introduced**|Windows Server 2008 and Windows Vista|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|The boot components that the TPM validates before unlocking access to the BitLocker-encrypted operating system drive can be configured. If any of these components change while BitLocker protection is in effect, the TPM doesn't release the encryption key to unlock the drive. Instead, the computer displays the BitLocker Recovery console and requires that the recovery password or the recovery key is provided to unlock the drive.|
|**When disabled or not configured**|The TPM uses the default platform validation profile or the platform validation profile that is specified by the setup script.|

#### Reference: Configure TPM platform validation profile (Windows Vista, Windows Server 2008, Windows 7, Windows Server 2008 R2)

This policy setting doesn't apply if the computer doesn't have a compatible TPM or if BitLocker is already turned on with TPM protection.

A platform validation profile consists of a set of PCR indices that range from 0 to 23. The default platform validation profile secures the encryption key against changes to the following PCRs:

- Core Root of Trust of Measurement (CRTM), BIOS, and Platform Extensions (PCR 0)
- Option ROM Code (PCR 2)
- Master Boot Record (MBR) Code (PCR 4)
- NTFS Boot Sector (PCR 8)
- NTFS Boot Block (PCR 9)
- Boot Manager (PCR 10)
- BitLocker Access Control (PCR 11)

> [!NOTE]
> The default TPM validation profile PCR settings for computers that use an Extensible Firmware Interface (EFI) are the PCRs 0, 2, 4, and 11 only.

The following list identifies all of the available PCRs:

- PCR 0: Core root-of-trust for measurement, EFI boot and run-time services, EFI drivers embedded in system ROM, ACPI static tables, embedded SMM code, and BIOS code
- PCR 1: Platform and motherboard configuration and data. Hand-off tables and EFI variables that affect system configuration
- PCR 2: Option ROM code
- PCR 3: Option ROM data and configuration
- PCR 4: Master Boot Record (MBR) code or code from other boot devices
- PCR 5: Master Boot Record (MBR) partition table. Various EFI variables and the GPT table
- PCR 6: State transition and wake events
- PCR 7: Computer manufacturer-specific
- PCR 8: NTFS boot sector
- PCR 9: NTFS boot block
- PCR 10: Boot manager
- PCR 11: BitLocker access control
- PCR 12 - 23: Reserved for future use

> [!WARNING]
> Changing from the default platform validation profile affects the security and manageability of a computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.

### Configure TPM platform validation profile for native UEFI firmware configurations

This policy setting determines what values the TPM measures when it validates early boot components before unlocking an operating system drive on a computer with native UEFI firmware configurations.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key.|
|**Introduced**|Windows Server 2012 and Windows 8|
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

    For more information about this PCR, see [About the Platform Configuration Register (PCR)](#about-the-platform-configuration-register-pcr) in this article.

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

### Reset platform validation data after BitLocker recovery

This policy setting determines if platform validation data should refresh when Windows is started following a BitLocker recovery. A platform validation data profile consists of the values in a set of Platform Configuration Register (PCR) indices that range from 0 to 23.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be controlled whether platform validation data is refreshed when Windows is started following a BitLocker recovery.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|None|
|**When enabled**|Platform validation data is refreshed when Windows is started following a BitLocker recovery.|
|**When disabled**|Platform validation data isn't refreshed when Windows is started following a BitLocker recovery.|
|**When not configured**|Platform validation data is refreshed when Windows is started following a BitLocker recovery.|

#### Reference: Reset platform validation data after BitLocker recovery

For more information about the recovery process, see the [BitLocker recovery guide](bitlocker-recovery-guide-plan.md).

### Use enhanced Boot Configuration Data validation profile

This policy setting determines specific Boot Configuration Data (BCD) settings to verify during platform validation. A platform validation uses the data in the platform validation profile, which consists of a set of Platform Configuration Register (PCR) indices that range from 0 to 23.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, Boot Configuration Data (BCD) settings to verify during platform validation can be specified.|
|**Introduced**|Windows Server 2012 and Windows 8|
|**Drive type**|Operating system drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|When BitLocker is using Secure Boot for platform and Boot Configuration Data integrity validation, the **Use enhanced Boot Configuration Data validation profile** Group Policy setting is ignored (as defined by the **Allow Secure Boot for integrity validation** Group Policy setting).|
|**When enabled**|Additional BCD settings can be added and specified BCD settings can be excluded. Also a customized BCD validation profile can be created by combining inclusion and exclusion lists. The customized BCD validation profile gives the ability to verify BCD settings.|
|**When disabled**|The computer reverts to a BCD profile validation similar to the default BCD profile that is used by Windows 7.|
|**When not configured**|The computer verifies the default BCD settings in Windows.|

#### Reference: Use enhanced Boot Configuration Data validation profile

> [!NOTE]
> The setting that controls boot debugging (0x16000010) is always validated, and it has no effect if it's included in the inclusion or the exclusion list.

### Allow access to BitLocker-protected fixed data drives from earlier versions of Windows

This policy setting is used to control whether access to drives is allowed by using the BitLocker To Go Reader, and whether BitLocker To Go Reader can be installed on the drive.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured whether fixed data drives that are formatted with the FAT file system can be unlocked and viewed on computers running Windows Vista, Windows XP with Service Pack 3 (SP3), or Windows XP with Service Pack 2 (SP2).|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|None|
|**When enabled and When not configured**|Fixed data drives that are formatted with the FAT file system can be unlocked on computers running Windows Server 2008, Windows Vista, Windows XP with SP3, or Windows XP with SP2, and their content can be viewed. These operating systems have Read-only access to BitLocker-protected drives.|
|**When disabled**|Fixed data drives that are formatted with the FAT file system and are BitLocker-protected can't be unlocked on computers running Windows Vista, Windows XP with SP3, or Windows XP with SP2. BitLocker To Go Reader (bitlockertogo.exe) isn't installed.|

#### Reference: Allow access to BitLocker-protected fixed data drives from earlier versions of Windows

> [!NOTE]
> This policy setting doesn't apply to drives that are formatted with the NTFS file system.

When this policy setting is enabled, select the **Do not install BitLocker To Go Reader on FAT formatted fixed drives** check box to help prevent users from running BitLocker To Go Reader from their fixed drives. If BitLocker To Go Reader (bitlockertogo.exe) is present on a drive that doesn't have an identification field specified, or if the drive has the same identification field as specified in the **Provide unique identifiers for your organization** policy setting, the user is prompted to update BitLocker, and BitLocker To Go Reader is deleted from the drive. In this situation, for the fixed drive to be unlocked on computers running Windows Vista, Windows XP with SP3, or Windows XP with SP2, BitLocker To Go Reader must be installed on the computer. If this check box isn't selected, then BitLocker To Go Reader will be installed on the fixed drive to enable users to unlock the drive on computers running Windows Vista, Windows XP with SP3, or Windows XP with SP2.

### Allow access to BitLocker-protected removable data drives from earlier versions of Windows

This policy setting controls access to removable data drives that are using the BitLocker To Go Reader and whether the BitLocker To Go Reader can be installed on the drive.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be configured whether removable data drives that are formatted with the FAT file system can be unlocked and viewed on computers running Windows Vista, Windows XP with SP3, or Windows XP with SP2.|
|**Introduced**|Windows Server 2008 R2 and Windows 7|
|**Drive type**|Removable data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Removable Data Drives*|
|**Conflicts**|None|
|**When enabled and When not configured**|Removable data drives that are formatted with the FAT file system can be unlocked on computers running Windows Vista, Windows XP with SP3, or Windows XP with SP2, and their content can be viewed. These operating systems have Read-only access to BitLocker-protected drives.|
|**When disabled**|Removable data drives that are formatted with the FAT file system that are BitLocker-protected can't be unlocked on computers running Windows Vista, Windows XP with SP3, or Windows XP with SP2. BitLocker To Go Reader (bitlockertogo.exe) isn't installed.|

#### Reference: Allow access to BitLocker-protected removable data drives from earlier versions of Windows

> [!NOTE]
> This policy setting doesn't apply to drives that are formatted with the NTFS file system.

When this policy setting is enabled, select the **Do not install BitLocker To Go Reader on FAT formatted removable drives** check box to help prevent users from running BitLocker To Go Reader from their removable drives. If BitLocker To Go Reader (bitlockertogo.exe) is present on a drive that doesn't have an identification field specified, or if the drive has the same identification field as specified in the **Provide unique identifiers for your organization** policy setting, the user will be prompted to update BitLocker, and BitLocker To Go Reader is deleted from the drive. In this situation, for the removable drive to be unlocked on computers running Windows Vista, Windows XP with SP3, or Windows XP with SP2, BitLocker To Go Reader must be installed on the computer. If this check box isn't selected, then BitLocker To Go Reader will be installed on the removable drive to enable users to unlock the drive on computers running Windows Vista or Windows XP that don't have BitLocker To Go Reader installed.

## FIPS setting

The Federal Information Processing Standard (FIPS) setting for FIPS compliance can be configured. As an effect of FIPS compliance, users can't create or save a BitLocker password for recovery or as a key protector. The use of a recovery key is permitted.

|  Item  | Info |
|:---|:---|
|**Policy description**|Notes|
|**Introduced**|Windows Server 2003 with SP1|
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

## About the Platform Configuration Register (PCR)

A platform validation profile consists of a set of PCR indices that range from 0 to 23. The scope of the values can be specific to the version of the operating system.

Changing from the default platform validation profile affects the security and manageability of a computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending on inclusion or exclusion (respectively) of the PCRs.

### About PCR 7

PCR 7 measures the state of Secure Boot. With PCR 7, BitLocker can use Secure Boot for integrity validation. Secure Boot ensures that the computer's preboot environment loads only firmware that is digitally signed by authorized software publishers. PCR 7 measurements indicate whether Secure Boot is on and which keys are trusted on the platform. If Secure Boot is on and the firmware measures PCR 7 correctly per the UEFI specification, BitLocker can bind to this information rather than to PCRs 0, 2, and 4, which have the measurements of the exact firmware and Bootmgr images loaded. This process reduces the likelihood of BitLocker starting in recovery mode as a result of firmware and image updates, and it provides with greater flexibility to manage the preboot configuration.

PCR 7 measurements must follow the guidance that is described in [Appendix A Trusted Execution Environment EFI Protocol](/windows-hardware/test/hlk/testref/trusted-execution-environment-efi-protocol).

PCR 7 measurements are a mandatory logo requirement for systems that support Modern Standby (also known as Always On, Always Connected PCs), such as the Microsoft Surface RT. On such systems, if the TPM with PCR 7 measurement and secure boot are correctly configured, BitLocker binds to PCR 7 and PCR 11 by default.

## Related articles

- [Trusted Platform Module](/windows/device-security/tpm/trusted-platform-module-overview)
- [TPM Group Policy settings](/windows/device-security/tpm/trusted-platform-module-services-group-policy-settings)
- [BitLocker frequently asked questions (FAQ)](faq.yml)
- [BitLocker overview](index.md)
- [Prepare your organization for BitLocker: Planning and policies](prepare-your-organization-for-bitlocker-planning-and-policies.md)
