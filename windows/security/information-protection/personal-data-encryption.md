---
title: Personal Data Encryption (PDE)
description: Personal Data Encryption unlocks user encrypted data at user logon instead of at boot
ms.reviewer: 
manager: aaroncz
ms.author: frankroj
ms.prod: m365-security
author: frankroj
ms.date: 09/22/2022
---


# Personal Data Encryption
<!-- Max 5963468 OS 32516487 -->
(*Applies to: Windows 11, version 22H2 and later*)

Personal data encryption (PDE) is a security feature introduced in Windows 11, version 22H2 that provides encryption of individual user files. PDE occurs in addition to other encryption methods such as BitLocker.

PDE utilizes Windows Hello for Business to link data encryption keys with user credentials. This can minimizes the amount of credentials the user has to remember to gain access to files. It is also an alternative to BitLocker + PIN when requiring user authentication before releasing encryption keys and decrypting files.

Unlike BitLocker which unlocks data encryption keys at boot, PDE does not release data encryption keys until a user logs via Windows Hello for Business.

> [!NOTE]
> PDE is currently only available to developers via [APIs](/uwp/api/windows.security.dataprotection.userdataprotectionmanager.md). There is no user interface in Windows or administrative policies that can be pushed to devices to encrypt files via PDE.

## Prerequisites

- **Required**
  - [Azure AD joined device](/azure/active-directory/devices/concept-azure-ad-join.md)
  - [Windows Hello for Business](/security/identity-protection/hello-for-business/hello-overview.md)
  - [FIDO/security key authentication](/security/identity-protection/hello-for-business/microsoft-compatible-security-key.md) not enabled
  - Winlogon automatic restart sign-on feature not enabled
  - Windows Information Protection (WIP) not enabled
  
- **Recommended**
  - [BitLocker Drive Encryption](/security/information-protection/bitlocker/bitlocker-overview.md) enabled
  - Kernel and user mode crash dumps disabled
  - Hibernation disabled
  - [Windows Hello for Business PIN reset service](/security/identity-protection/hello-for-business/hello-feature-pin-reset.md)
  - Secure Biometrics when using Windows Hello for Business

> [!NOTE]
> Only [Azure AD joined device](/azure/active-directory/devices/concept-azure-ad-join.md) are supported. [Hybrid Azure AD joined devices](/azure/active-directory/devices/concept-azure-ad-join-hybrid.md) do not support PDE.

## Differences between PDE and BitLocker


| Item | PDE | BitLocker |
|--|--|--|
| Release of encryption keys | At user logon via WHfB | At boot |
| Encryption keys discarded | At user logoff | At reboot |
| Files encrypted | User known folders of Documents, Pictures, and Desktop | Entire volume/drive |

## How to enable

## Next steps