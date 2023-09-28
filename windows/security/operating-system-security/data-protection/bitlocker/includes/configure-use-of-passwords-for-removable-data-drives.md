---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Configure use of passwords for removable data drives

This policy setting specifies whether a password is required to unlock BitLocker-protected removable data drives. If you choose to allow the use of a password, you can require that a password be used, enforce complexity requirements, and configure a minimum length.

> [!IMPORTANT]
> For the complexity requirement setting to be effective, the group policy setting **Password must meet complexity requirements** located in **Computer Configuration** > **Windows Settings** > **Security Settings** > **Account Policies** > **Password Policy**, must be also enabled.

If you enable this policy setting, users can configure a password that meets the requirements you define. To enforce complexity requirements on the password, select **Require complexity**:

- When set to **Require complexity** a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password
- When set to **Allow complexity** connection to a domain controller will be attempted to validate the complexity adheres to the rules set by the policy, but if no domain controllers are found the password will still be accepted regardless of actual password complexity and the drive will be encrypted using that password as a protector
- When set to **Do not allow complexity**, password complexity isn't validated

Passwords must be at least 8 characters. To configure a greater minimum length for the password, specify the desired number of characters under **Minimum password length**

If you disable or do not configure this policy setting, the default length constraint of 8 characters applies to operating system drive passwords and no complexity checks occur.

> [!IMPORTANT]
> Passwords can't be used if FIPS-compliance is enabled.
>
> The **System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing** policy setting, which is located at **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **Security Options** specifies whether FIPS-compliance is enabled.

|  | Path |
|--|--|
| **CSP** | Not available |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |