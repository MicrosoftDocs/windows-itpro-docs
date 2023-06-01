---
ms.topic: include
ms.date: 03/13/2023
---

<!-- Max 5963468 OS 32516487 -->
<!-- Max 6946251 -->

Starting in Windows 11, version 22H2, Personal Data Encryption (PDE) is a security feature that provides more encryption capabilities to Windows.

PDE differs from BitLocker in that it  encrypts individual files and content instead of whole volumes and disks. PDE occurs in addition to other encryption methods such as BitLocker.

PDE utilizes Windows Hello for Business to link data encryption keys with user credentials. This feature can minimize the number of credentials the user has to remember to gain access to content. For example, when using BitLocker with PIN, a user would need to authenticate twice - once with the BitLocker PIN and a second time with Windows credentials. This requirement requires users to remember two different credentials. With PDE, users only need to enter one set of credentials via Windows Hello for Business.

Because PDE utilizes Windows Hello for Business, PDE is also accessibility friendly due to the accessibility features available when using Windows Hello for Business.

Unlike BitLocker that releases data encryption keys at boot, PDE doesn't release data encryption keys until a user signs in using Windows Hello for Business. Users will only be able to access their PDE protected content once they've signed into Windows using Windows Hello for Business. Additionally, PDE has the ability to also discard the encryption keys when the device is locked.

> [!NOTE]
> PDE can be enabled using MDM policies. The content to be protected by PDE can be specified using [PDE APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager). There is no user interface in Windows to either enable PDE or protect content using PDE.
