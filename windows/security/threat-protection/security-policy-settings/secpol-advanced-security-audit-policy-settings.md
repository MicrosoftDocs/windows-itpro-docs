---
title: Advanced security audit policy settings in brief (Windows 10)
description: Provides information about the advanced security audit policy settings that are available in Windows and the audit events that they generate.
ms.assetid: 6BF9A642-DBC3-4101-94A3-B2316C553CE3
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
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Advanced security audit policy settings for Windows 10

**Applies to**
-   Windows 11
-   Windows 10

Provides information about the advanced security audit policy settings that are available in Windows and the audit events that they generate.

The security audit policy settings under **Security Settings\\Advanced Audit Policy Configuration** can help your organization audit compliance with important business-related and security-related rules by tracking precisely defined activities, such as:

-   A group administrator has modified settings or data on servers that contain finance information.
-   An employee within a defined group has accessed an important file.
-   The correct system access control list (SACL) is applied to every file and folder or registry key on a computer or file share as a verifiable safeguard against undetected access.

You can access these audit policy settings through the Local Security Policy snap-in (secpol.msc) on the local device or by using Group Policy.

These Advanced Audit policy settings allow you to select only the behaviors that you want to monitor. You can exclude audit results for behaviors that are of little or no concern to you, or behaviors that create an excessive number of log entries. In addition, because security audit policies can be applied by using domain Group Policy Objects, audit policy settings can be modified, tested, and deployed to selected users and groups with relative simplicity.

For more info, see [Advanced security audit policies](../auditing/advanced-security-auditing.md).
