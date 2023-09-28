---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/24/2023
ms.topic: include
---

### Enforce drive encryption type on removable data drives

This policy setting controls the use of BitLocker on removable data drives.

If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option will not be presented in the BitLocker setup wizard:

- Choose **full encryption** to require that the entire drive be encrypted when BitLocker is turned on
- Choose **used space only encryption** to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on

If you disable or don't configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.

> [!NOTE]
> Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress.
>
> This policy is ignored when shrinking or expanding a volume, and the BitLocker driver uses the current encryption method. For example, when a drive that is using *Used Space Only encryption* is expanded, the new free space isn't wiped as it would be for a drive that uses *Full encryption*. The user could wipe the free space on a *Used Space Only* drive by using the following command: `manage-bde.exe -w`. If the volume is shrunk, no action is taken for the new free space.

|  | Path |
|--|--|
| **CSP** | `./Device/Vendor/MSFT/BitLocker/`[RemovableDrivesEncryptionType](/windows/client-management/mdm/bitlocker-csp#removabledrivesencryptiontype) |
| **GPO** | **Computer Configuration** > **Administrative Templates** > **Windows Components** > **BitLocker Drive Encryption** > **Removable Data Drives** |
