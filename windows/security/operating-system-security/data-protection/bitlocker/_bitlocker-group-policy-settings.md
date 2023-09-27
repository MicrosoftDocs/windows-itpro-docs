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

### Configure minimum PIN length for startup



This policy setting is applied when BitLocker is turned on. The startup PIN must have a minimum length of four digits and can have a maximum length of 20 digits.

Originally, BitLocker allowed a length from 4 to 20 characters for a PIN. Windows Hello has its own PIN for sign-in, length of which can be 4 to 127 characters. Both BitLocker and Windows Hello use the TPM to prevent PIN brute-force attacks.

The TPM can be configured to use Dictionary Attack Prevention parameters ([lockout threshold and lockout duration](../../../hardware-security/tpm/trusted-platform-module-services-group-policy-settings.md) to control how many failed authorizations attempts are allowed before the TPM is locked out, and how much time must elapse before another attempt can be made.

The Dictionary Attack Prevention Parameters provide a way to balance security needs with usability. For example, when BitLocker is used with a TPM + PIN configuration, the number of PIN guesses is limited over time. A TPM 2.0 in this example could be configured to allow only 32 PIN guesses immediately, and then only one more guess every two hours. This number of attempts totals to a maximum of about 4415 guesses per year. If the PIN is four digits, all 9999 possible PIN combinations could be attempted in a little over two years.

Increasing the PIN length requires a greater number of guesses for an attacker. In that case, the lockout duration between each guess can be shortened to allow legitimate users to retry a failed attempt sooner, while maintaining a similar level of protection.

### Configure use of smart cards on fixed data drives

This policy setting is used to require, allow, or deny the use of smart cards with fixed data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting can be used to specify whether smart cards can be used to authenticate user access to the BitLocker-protected fixed data drives on a computer.|
|**Drive type**|Fixed data drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Fixed Data Drives*|
|**Conflicts**|To use smart cards with BitLocker, the object identifier setting in the **Computer Configuration\Administrative Templates\BitLocker Drive Encryption\Validate smart card certificate usage rule compliance** policy setting may need to be modified to match the object identifier of the smart card certificates.|
|**When enabled**|Smart cards can be used to authenticate user access to the drive. Smart card authentication can be required by selecting the **Require use of smart cards on fixed data drives** check box.|
|**When disabled**|Users can't use smart cards to authenticate their access to BitLocker-protected fixed data drives.|
|**When not configured**|Smart cards can be used to authenticate user access to a BitLocker-protected drive.|

#### Reference: Configure use of smart cards on fixed data drives

> [!NOTE]
> These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker allows unlocking a drive by using any of the protectors that are available on the drive.

### Configure use of smart cards on removable data drives

This policy setting is used to require, allow, or deny the use of smart cards with removable data drives.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting can be used to specify whether smart cards can be used to authenticate user access to BitLocker-protected removable data drives on a computer.|
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

### Deny write access to fixed drives not protected by BitLocker

This policy setting is used to require encryption of fixed drives prior to granting Write access.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, it can be set whether BitLocker protection is required for fixed data drives to be writable on a computer.|
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

### Configure use of hardware-based encryption for fixed data drives

This policy controls how BitLocker reacts to systems that are equipped with encrypted drives when they're used as fixed data volumes. Using hardware-based encryption can improve the performance of drive operations that involve frequent reading or writing of data to the drive.

|  Item  | Info |
|:---|:---|
|**Policy description**|This policy setting allows management of BitLocker's use of hardware-based encryption on fixed data drives and to specify which encryption algorithms BitLocker can use with hardware-based encryption.|
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
|**Drive type**|All drives|
|**Policy path**|*Computer Configuration* > *Administrative Templates* > *Windows Components* > *BitLocker Drive Encryption* > *Operating System Drives*|
|**Conflicts**|If **Allow Secure Boot for integrity validation** is enabled, make sure the Configure TPM platform validation profile for native UEFI firmware configurations Group Policy setting isn't enabled, or include PCR 7 to allow BitLocker to use Secure Boot for platform or BCD integrity validation. <BR><BR> For more information about PCR 7, see [About the Platform Configuration Register (PCR)](#about-the-platform-configuration-register-pcr) in this article.|
|**When enabled or not configured**|BitLocker uses Secure Boot for platform integrity if the platform is capable of Secure Boot-based integrity validation.|
|**When disabled**|BitLocker uses legacy platform integrity validation, even on systems that are capable of Secure Boot-based integrity validation.|

#### Reference: Allow Secure Boot for integrity validation

Secure boot ensures that the computer's pre-boot environment loads only firmware that is digitally signed by authorized software publishers.

When this policy is enabled and the hardware is capable of using secure boot for BitLocker scenarios, the **Use enhanced Boot Configuration Data validation profile** group policy setting is ignored, and secure boot verifies BCD settings according to the secure boot policy setting, which is configured separately from BitLocker.

> [!WARNING]
> Disabling this policy might result in BitLocker recovery when manufacturer-specific firmware is updated. If this policy is disabled, suspend BitLocker prior to applying firmware updates.

### Provide the unique identifiers for your organization

This policy setting is used to establish an identifier that is applied to all drives that are encrypted in an organization.

|  Item  | Info |
|:---|:---|
|**Policy description**|With this policy setting, unique organizational identifiers can be associated to a new drive that is enabled with BitLocker.|
|**Conflicts**|Identification fields are required to manage certificate-based data recovery agents on BitLocker-protected drives. BitLocker manages and updates certificate-based data recovery agents only when the identification field is present on a drive and it's identical to the value that is configured on the computer.|
|**When enabled**|The identification field on the BitLocker-protected drive and any allowed identification field that is used by an organization can be configured.|

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

