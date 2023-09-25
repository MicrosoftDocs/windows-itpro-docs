---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure use of passwords for operating system drives

This policy controls how non-TPM based systems utilize the password protector. Used with the **Password must meet complexity requirements** policy, this policy allows administrators to require password length and complexity for using the password protector. By default, passwords must be eight characters in length. Complexity configuration options determine how important domain connectivity is for the client. For the strongest password security, administrators should choose **Require password complexity** because it requires domain connectivity, and it requires that the BitLocker password meets the same password complexity requirements as domain sign-in passwords.

For the complexity requirement setting to be effective, the policy *Password must meet complexity requirements*, which is located at **Computer Configuration** > **Windows Settings** > **Security Settings** > **Account Policies** > **Password Policy**, must be also enabled.

> [!NOTE]
> These settings are enforced when turning on BitLocker, not when unlocking a volume. BitLocker allows unlocking a drive with any of the protectors that are available on the drive.

When set to **Require complexity**, a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password. When set to **Allow complexity**, a connection to a domain controller is attempted to validate that the complexity adheres to the rules set by the policy. If no domain controllers are found, the password will be accepted regardless of actual password complexity, and the drive will be encrypted by using that password as a protector. When set to **Do not allow complexity**, there's no password complexity validation.

Passwords must be at least eight characters. To configure a greater minimum length for the password, enter the desired number of characters in the **Minimum password length** box.

When this policy setting is enabled, the option **Configure password complexity for operating system drives** can be set to:

- Allow password complexity
- Deny password complexity
- Require password complexity

> [!IMPORTANT]
> Passwords can't be used if FIPS-compliance is enabled.
>
> The **System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing** policy setting, which is located at **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **Security Options** specifies whether FIPS-compliance is enabled.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
