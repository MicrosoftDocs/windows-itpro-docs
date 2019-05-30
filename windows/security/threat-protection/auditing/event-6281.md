---
title: 6281(F) Code Integrity determined that the page hashes of an image file are not valid. (Windows 10)
description: Describes security event 6281(F) Code Integrity determined that the page hashes of an image file are not valid.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# 6281(F): Code Integrity determined that the page hashes of an image file are not valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.

**Applies to**
-   Windows 10
-   Windows Server 2016
 

The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.

[Code Integrity](https://technet.microsoft.com/library/dd348642(v=ws.10).aspx) is a feature that improves the security of the operating system by validating the integrity of a driver or system file each time it is loaded into memory. Code Integrity detects whether an unsigned driver or system file is being loaded into the kernel, or whether a system file has been modified by malicious software that is being run by a user account with administrative permissions. On x64-based versions of the operating system, kernel-mode drivers must be digitally signed.

This event generates when [code Integrity](https://technet.microsoft.com/library/dd348642(v=ws.10).aspx) determined that the page hashes of an image file are not valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. This event also generates when signing certificate was revoked. The invalid hashes could indicate a potential disk device error.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*Code Integrity determined that the page hashes of an image file are not valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.*

*File Name:%1*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008 R2, Windows 7.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   We recommend monitoring for this event, especially on high value assets or computers, because it can be a sign of a software or configuration issue, or a malicious action.

