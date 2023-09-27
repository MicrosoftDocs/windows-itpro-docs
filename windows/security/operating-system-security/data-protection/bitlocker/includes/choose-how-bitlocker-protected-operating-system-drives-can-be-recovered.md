---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Choose how BitLocker-protected operating system drives can be recovered

This policy setting allows you to control how BitLocker-protected operating system drives are recovered in the absence of the required startup key information. If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected operating system drives. Here are the available options:

- **Allow certificate-based data recovery agent**: specify whether a data recovery agent can be used with BitLocker-protected OS drives. Before a data recovery agent can be used, it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor
- **Configure user storage of BitLocker recovery information**: select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key
- **Omit recovery options from the BitLocker setup wizard**: prevent users from specifying recovery options when they turn on BitLocker for a drive. This means that users won't be able to specify which recovery option to use when they turn on BitLocker. BitLocker recovery options for the drive are determined by the policy setting
- **Save BitLocker recovery information to Active Directory Domain Services**: choose which BitLocker recovery information to store in AD DS for operating system drives. If you select **Backup recovery password and key package**, both the BitLocker recovery password and key package are stored in AD DS. Storing the key package supports recovering data from a drive that has been physically corrupted. If you select **Backup recovery password only**, only the recovery password is stored in AD DS
- **Do not enable BitLocker until recovery information is stored in AD DS for operating system drives**: prevents users from enabling BitLocker unless the device is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds. When using this option, a recovery password is automatically generated.

If this policy setting is disabled or not configured, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[SystemDrivesRecoveryOptions](/windows/client-management/mdm/bitlocker-csp#systemdrivesrecoveryoptions)|
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Operating Sytem Drives** |
