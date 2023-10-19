---
title: Repair tool
description: Learn how to recover BitLocker keys from Microsoft Entra ID and Active Directory Domain Services (AD DS).
ms.collection: 
  - highpri
  - tier1
ms.topic: how-to
ms.date: 09/29/2023
---


## BitLocker key package

The BitLocker key package isn't saved by default. To save the package along with the recovery password in AD DS, the **Backup recovery password and key package** policy setting must be selected in the policy that controls the recovery method. The key package can also be exported from a working volume.

If recovery information is not backed up to AD DS, or if you want to save a key package in an alternative location, use the following command to generate a key package for a volume:

 ``` cmd
manage-bde.exe -KeyPackage C: -id <id> -path <path>
```

A file with a `.kpg` extension is created in the specified path.

> [!NOTE]
> To export a new key package from an unlocked, BitLocker-protected volume, local administrator access to the working volume is required before any damage occurrs to the volume.



## BitLocker Repair tool

If the recovery methods discussed earlier in this document don't unlock the volume, the *BitLocker Repair tool* (`repair-bde.exe`) can be used to decrypt the volume at the block level. The tool uses the *BitLocker key package* to help recover encrypted data from severely damaged drives.

> [!IMPORTANT]
> The *BitLocker key package* can be stored in Active Directory Domain Services (AD DS), not in Microsoft Entra ID.

The recovered data can then be used to salvage encrypted data, even if the correct recovery password fails to unlock the damaged volume. It's recommended to still save the recovery password, as a key package can't be used without the corresponding recovery password.

### Retrieve the BitLocker key package

To export a previously saved key package from AD DS, it's required to have read access to the BitLocker recovery passwords and key packages that are stored in AD DS. By default, only Domain Admins have access to BitLocker recovery information, but [access can be delegated to others](/archive/blogs/craigf/delegating-access-in-ad-to-bitlocker-recovery-information).

To learn more about the BitLocker attributes stored in AD DS, review the following articles:

- [ms-FVE-KeyPackage attribute](/windows/win32/adschema/a-msfve-keypackage)
- [ms-FVE-RecoveryPassword attribute](/windows/win32/adschema/a-msfve-recoverypassword)

## BitLocker Repair tool

The Repair Tool can reconstruct critical parts of a drive and salvage recoverable data, as long as a valid recovery password or recovery key is used to decrypt the data. If the BitLocker metadata data on the drive is corrupt, the backup key package in addition to the recovery password or recovery key must be supplied. With the key package and either the recovery password or recovery key, portions of a corrupted BitLocker-protected drive can be decrypted. Each key package works only for a drive that has the corresponding drive identifier.

Use the Repair tool in the following conditions:

- The drive is encrypted using BitLocker
- Windows doesn't start, or the BitLocker recovery screen doesn't start
- There isn't a backup copy of the data that is contained on the encrypted drive

> [!NOTE]
> Damage to the drive may not be related to BitLocker. Therefore, it's recommended to try other tools to help diagnose and resolve the problem with the drive before using the BitLocker Repair Tool. The Windows Recovery Environment (Windows RE) provides more options to repair Windows.

The following limitations exist for Repair-bde:

- it can't repair a drive that failed *during* the encryption or decryption process
- it assumes that if the drive has any encryption, then the drive is fully encrypted

For a complete list of the `repair-bde.exe` options, see the [Repair-bde reference](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/ff829851(v=ws.11)).

