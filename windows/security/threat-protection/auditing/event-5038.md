---
title: 5038(F) Code integrity determined that the image hash of a file is not valid. (Windows 10)
description: Describes security event 5038(F) Code integrity determined that the image hash of a file is not valid.
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

# 5038(F): Code integrity determined that the image hash of a file is not valid. The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.

**Applies to**
-   Windows 10
-   Windows Server 2016
 

The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.

This event generates by [Code Integrity](https://technet.microsoft.com/library/dd348642(v=ws.10).aspx) feature, if signature of a file is not valid.

Code Integrity is a feature that improves the security of the operating system by validating the integrity of a driver or system file each time it is loaded into memory. Code Integrity detects whether an unsigned driver or system file is being loaded into the kernel, or whether a system file has been modified by malicious software that is being run by a user account with administrative permissions. On x64-based versions of the operating system, kernel-mode drivers must be digitally signed.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*Code integrity determined that the image hash of a file is not valid. The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.*

*File Name: %filepath\\filename%*

## Security Monitoring Recommendations

-   We recommend monitoring for this event, especially on high value assets or computers, because it can be a sign of a software or configuration issue, or a malicious action.

