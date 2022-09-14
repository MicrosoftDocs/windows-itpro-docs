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

Personal data encryption (PDE) is a security feature introduced in Windows 11, version 22H2 that provides encryption of individual user files in the known user folders of **Documents**, **Pictures**, and **Desktop**. PDE occurs in addition to other encryption methods such as BitLocker.

PDE utilizes Windows Hello for Business (WHfB) to link data encryption keys with user credentials. This can minimizes the amount of credentials the user has to remember to gain access to files. Unlike BitLocker which unlocks data encryption keys at boot, PDE does not unlock data encryption keys until a user logs via WHfB.

## Differences between PDE and BitLocker


| Item | PDE | BitLocker |
|--|--|--|
| Release of encryption keys | At user logon via WHfB | At boot |
| Encryption keys discarded | At user logoff | At reboot |
| Files encrypted | User known folders of Documents, Pictures, and Desktop | Entire volume/drive |

## Prerequisites

- **Required**
  - Azure AD joined device
  - Windows Hello for Business
  - FIDO authentication not enabled
  - Winlogon automatic restart sign-on feature not enabled
  - Windows Information Protection (WIP) not enabled
  - OneDrive for user data backup
  - Windows Hello for Business PIN reset service
  
- **Recommended**
  - BitLocker Drive Encryption enabled
  - Kernel and user mode crash dumps disabled
  - Hibernation disabled
  - Windows Hello for Business PIN or Secure Biometrics

> [!NOTE]
> Only native Azure AD joined devices are supported. Hybrid Azure AD joined devices do not support PDE.


## How to enable

## Next steps