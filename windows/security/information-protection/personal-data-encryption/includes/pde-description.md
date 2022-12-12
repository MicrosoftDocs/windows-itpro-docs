---
title: Personal Data Encryption (PDE) description
description: Personal Data Encryption (PDE) description include file

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

Personal data encryption (PDE) is a security feature introduced in Windows 11, version 22H2 that provides additional encryption features to Windows. PDE differs from BitLocker in that it  encrypts individual files instead of whole volumes and disks. PDE occurs in addition to other encryption methods such as BitLocker.

PDE utilizes Windows Hello for Business to link data encryption keys with user credentials. This feature can minimize the number of credentials the user has to remember to gain access to files. For example, when using BitLocker with PIN, a user would need to authenticate twice - once with the BitLocker PIN and a second time with Windows credentials. This requirement requires users to remember two different credentials. With PDE, users only need to enter one set of credentials via Windows Hello for Business.

PDE is also accessibility friendly. For example, The BitLocker PIN entry screen doesn't have accessibility options. PDE however uses Windows Hello for Business, which does have accessibility features.

Unlike BitLocker that releases data encryption keys at boot, PDE doesn't release data encryption keys until a user signs in using Windows Hello for Business. Users will only be able to access their PDE encrypted files once they've signed into Windows using Windows Hello for Business. Additionally, PDE has the ability to also discard the encryption keys when the device is locked.

> [!NOTE]
> PDE is currently only available to developers via [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). There is no user interface in Windows to either enable PDE or encrypt files via PDE. Also, although there is an MDM policy that can enable PDE, there are no MDM policies that can be used to encrypt files via PDE.
