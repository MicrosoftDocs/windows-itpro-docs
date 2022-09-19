---
title: Personal Data Encryption (PDE) FAQ
description: Personal Data Encryption (PDE) FAQ

author: frankroj
ms.author: frankroj
ms.reviewer: rafals
manager: aaroncz
ms.topic: how-to
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.date: 09/22/2022
---

<!-- Max 5963468 OS 32516487 -->

# Personal Data Encryption (PDE) FAQ

**Can PDE encrypt entire volumes or drives?** <br>
No. PDE only encrypts specified files.

**Is PDE a replacement for BitLocker?** <br>
No. It's still recommended to encrypt all volumes with BitLocker Drive Encryption for increased security.

**Can an IT admin specify which files should be encrypted?** <br>
Yes, but it can only be done using the [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager).

**Do I need to use OneDrive as my backup provider?** <br>
No. PDE doesn't have a requirement for a backup provider including OneDrive. However, backups are strongly recommended in case the encryption keys used by PDE are lost. OneDrive is a recommended backup provider.

**What is the relation between Windows Hello for Business and PDE?** <br>
Windows Hello for Business unlocks PDE encryption keys during user sign on.

**Can a file be encrypted with both PDE and EFS at the same time?** <br>
No. PDE and EFS are mutually exclusive.

**Can PDE encrypted files be accessed after signing on via a Remote Desktop connection (RDP)?** <br>
No. Accessing PDE encrypted files over RDP isn't currently supported.

**Can PDE encrypted files be access via a network share?** <br>
No. PDE encrypted files can only be accessed after signing on locally to Windows with Windows Hello for Business credentials.

**How can it be determined if a file is encrypted with PDE?** <br>
Encrypted files will show a padlock on the file's icon. Additionally, `cipher.exe` can be used to show the encryption state of the file.

**Can users manually encrypt and decrypt files with PDE?** <br>
Currently users can decrypt files manually but they can't encrypt files manually.

**If a user signs into Windows with a password instead of Windows Hello for Business, will they be able to access their PDE encrypted files?** <br>
No. PDE encryption keys are protected Windows Hello for Business credentials and will only be unlocked when signing on with Windows Hello for Business PIN or biometrics.

## See also
- [Personal Data Encryption (PDE)](overview-pde.md)
- [Configure Personal Data Encryption (PDE) polices in Intune](configure-pde-in-intune.md)