---
title: Personal Data Encryption (PDE) description
description: Personal Data Encryption (PDE) description include file

author: frankroj
ms.author: frankroj
ms.reviewer: rhonnegowda
manager: aaroncz
ms.topic: how-to
ms.prod: windows-client
ms.technology: itpro-security
ms.localizationpriority: medium
ms.date: 12/13/2022
---

<!-- Max 5963468 OS 32516487 -->
<!-- Max 6946251 -->

Personal data encryption (PDE) is a security feature introduced in Windows 11, version 22H2 that provides additional encryption features to Windows. PDE differs from BitLocker in that it  encrypts individual files instead of whole volumes and disks. PDE occurs in addition to other encryption methods such as BitLocker.

PDE utilizes Windows Hello for Business to link data encryption keys with user credentials. This feature can minimize the number of credentials the user has to remember to gain access to files. For example, when using BitLocker with PIN, a user would need to authenticate twice - once with the BitLocker PIN and a second time with Windows credentials. This requirement requires users to remember two different credentials. With PDE, users only need to enter one set of credentials via Windows Hello for Business.

Because PDE utilizes Windows Hello for Business, PDE is also accessibility friendly due to the accessibility features available when using Windows Hello for Business.

Unlike BitLocker that releases data encryption keys at boot, PDE doesn't release data encryption keys until a user signs in using Windows Hello for Business. Users will only be able to access their PDE protected files once they've signed into Windows using Windows Hello for Business. Additionally, PDE has the ability to also discard the encryption keys when the device is locked.

> [!NOTE]
> PDE can be enabled using MDM policies. The files to be protected by PDE can be specified using [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). There is no user interface in Windows to either enable PDE or protect files using PDE.
