---
title: File System (Global Object Access Auditing) (Windows 10)
description: The policy setting, File System (Global Object Access Auditing), enables you to configure a global system access control list (SACL) for an entire computer.
ms.assetid: 4f215d61-0e23-46e4-9e58-08511105d25b
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/09/2021
ms.technology: itpro-security
---

# File System (Global Object Access Auditing)


This topic for the IT professional describes the Advanced Security Audit policy setting, **File System (Global Object Access Auditing)**, which enables you to configure a global system access control list (SACL) on the file system for an entire computer.

If you select the **Configure security** check box on the policy’s property page, you can add a user or group to the global SACL. This user/group addition enables you to define computer system access control lists (SACLs) per object type for the file system. The specified SACL is then automatically applied to every file system object type.

If both a file or folder SACL and a global SACL are configured on a computer, the effective SACL is derived by combining the file or folder SACL and the global SACL. This SACL (of such a constitution) means that an audit event is generated if an activity matches either the file or folder SACL or the global SACL.
This policy setting must be used in combination with the **File System** security policy setting under Object Access. For more information, see [Audit File System](audit-file-system.md).

## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
