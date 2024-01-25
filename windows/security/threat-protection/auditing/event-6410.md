---
title: 6410(F) Code integrity determined that a file doesn't meet the security requirements to load into a process. 
description: Describes security event 6410(F) Code integrity determined that a file doesn't meet the security requirements to load into a process.
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

# 6410(F): Code integrity determined that a file does not meet the security requirements to load into a process.


[Code Integrity](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/dd348642(v=ws.10)) is a feature that improves the security of the operating system by validating the integrity of a driver or system file each time it's loaded into memory. Code Integrity detects whether an unsigned driver or system file is being loaded into the kernel, or whether a system file has been modified by malicious software that is being run by a user account with administrative permissions. On x64-based versions of the operating system, kernel-mode drivers must be digitally signed.

This event generates due to writable [shared sections](/previous-versions/windows/desktop/cc307397(v=msdn.10)) being present in a file image.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit System Integrity](audit-system-integrity.md)

***Event Schema:***

*Code integrity determined that a file does not meet the security requirements to load into a process. This could be due to the use of shared sections or other issues.*

*File Name:%1*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2012 R2, Windows 8.1.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   We recommend monitoring for this event, especially on high value assets or computers, because it can be a sign of a software or configuration issue, or a malicious action.