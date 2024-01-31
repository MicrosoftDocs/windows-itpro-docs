---
title: 5038(F) Code integrity determined that the image hash of a file is not valid. 
description: Describes security event 5038(F) Code integrity determined that the image hash of a file isn't valid.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 5038(F): Code integrity determined that the image hash of a file is not valid. The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.


The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.

This event generates by [Code Integrity](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd348642(v=ws.10)) feature, if signature of a file isn't valid.

Code Integrity is a feature that improves the security of the operating system by validating the integrity of a driver or system file each time it's loaded into memory. Code Integrity detects whether an unsigned driver or system file is being loaded into the kernel, or whether a system file has been modified by malicious software that is being run by a user account with administrative permissions. On x64-based versions of the operating system, kernel-mode drivers must be digitally signed.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*Code integrity determined that the image hash of a file is not valid. The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.*

*File Name: %filepath\\filename%*

## Security Monitoring Recommendations

-   We recommend monitoring for this event, especially on high value assets or computers, because it can be a sign of a software or configuration issue, or a malicious action.