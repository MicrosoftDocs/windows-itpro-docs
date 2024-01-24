---
title: 6281(F) Code Integrity determined that the page hashes of an image file aren't valid. 
description: Describes security event 6281(F) Code Integrity determined that the page hashes of an image file aren't valid.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/09/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 6281(F): Code Integrity determined that the page hashes of an image file aren't valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.


The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.

[Code Integrity](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd348642(v=ws.10)) is a feature that improves the security of the operating system by validating the integrity of a driver or system file each time it's loaded into memory. Code Integrity detects whether an unsigned driver or system file is being loaded into the kernel, or whether a system file has been modified by malicious software that is being run by a user account with administrative permissions. On x64-based versions of the operating system, kernel-mode drivers must be digitally signed.

This event generates when [code Integrity](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd348642(v=ws.10)) determined that the page hashes of an image file aren't valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. This event also generates when signing certificate was revoked. The invalid hashes could indicate a potential disk device error.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*Code Integrity determined that the page hashes of an image file are not valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.*

*File Name:%1*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008 R2, Windows 7.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   We recommend monitoring for this event, especially on high value assets or computers, because it can be a sign of a software or configuration issue, or a malicious action.