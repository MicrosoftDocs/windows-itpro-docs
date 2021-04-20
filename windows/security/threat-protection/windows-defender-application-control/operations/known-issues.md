---
title: WDAC Admin Tips & Known Issues
description: WDAC Known Issues
keywords: security, malware
ms.prod: m365-security
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: jogeurte
ms.author: deniseb
manager: dansimp
ms.date: 04/09/2021
ms.custom: asr
ms.technology: mde
---

# WDAC Admin Tips & Known Issues

**Applies to:**

- Windows 10
- Windows Server 2016 and above

This topic covers tips and tricks for admins as well as known issues with WDAC.
Test this configuration in your lab before enabling it in production.

## .NET native images may generate false positive block events

In some cases, the code integrity logs where WDAC errors and warnings are written will contain error events for native images generated for .NET assemblies. Typically, native image blocks are functionally benign as a blocked native image will fallback to its corresponding assembly and .NET will regenerate the native image at its next scheduled maintenance window.

## MSI Installations launched directly from the internet are blocked by WDAC

Installing .msi files directly from the internet to a computer protected by WDAC will fail.
For example, this command will not work:

```code
msiexec –i https://download.microsoft.com/download/2/E/3/2E3A1E42-8F50-4396-9E7E-76209EA4F429/Windows10_Version_1511_ADMX.msi
```

As a workaround, download the MSI file and run it locally:

```code
msiexec –i c:\temp\Windows10_Version_1511_ADMX.msi  
```
