---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure use of passwords for fixed data drives

This policy setting specifies whether a password is required to unlock BitLocker-protected fixed data drives. If you choose to permit the use of a password, you can require that a password be used, enforce complexity requirements on the password, and configure a minimum length for the password. For the complexity requirement setting to be effective the Group Policy setting "Password must meet complexity requirements" located in Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\ must be also enabled. Note: These settings are enforced when turning on BitLocker, not when unlocking a volume. BitLocker will allow unlocking a drive with any of the protectors available on the drive. If you enable this policy setting, users can configure a password that meets the requirements you define. To require the use of a password, select "Require password for fixed data drive". To enforce complexity requirements on the password, select "Require complexity". When set to "Require complexity" a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password. When set to "Allow complexity" a connection to a domain controller will be attempted to validate the complexity adheres to the rules set by the policy, but if no domain controllers are found the password will still be accepted regardless of actual password complexity and the drive will be encrypted using that password as a protector. When set to "Do not allow complexity", no password complexity validation will be done. Passwords must be at least 8 characters. To configure a greater minimum length for the password, enter the desired number of characters in the "Minimum password length" box. If you disable this policy setting, the user is not allowed to use a password. If you do not configure this policy setting, passwords will be supported with the default settings, which do not include password complexity requirements and require only 8 characters. Note: Passwords cannot be used if FIPS-compliance is enabled. The "System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing" policy setting in Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options specifies whether FIPS-compliance is enabled.

This policy setting is used to require, allow, or deny the use of passwords with fixed data drives.

To use password complexity, the **Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\Password must meet complexity requirements** policy setting must also be enabled.

Users can configure a password that meets the defined requirements. To require the use of a password, select **Require password for fixed data drive**. To enforce complexity requirements on the password, select **Require complexity**.

**When disabled** The user isn't allowed to use a password.
**When not configured** Passwords are supported with the default settings, which don't include password complexity requirements and require only eight characters.

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

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Fixed Data Drives** |
