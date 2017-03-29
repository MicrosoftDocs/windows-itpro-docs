---
title: Configure Windows Defender AV with WMI
description: Use WMI scripts to configure Windows Defender AV.
keywords: wmi, scripts, windows management instrumentation, configuration
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Use Windows Management Instrumentation (WMI) to configure and manage Windows Defender AV

**Applies to:**

- Windows 10

Windows Management Instrumentation (WMI) is a scripting interface that allows you to retrieve, modify, and update settings.

Read more about WMI at the [Microsoft Develop Network System Administration library](https://msdn.microsoft.com/en-us/library/aa394582(v=vs.85).aspx).

Windows Defender AV has a number of specific WMI classes that can be used to perform most of the same functions as Group Policy and other management tools. Many of the classes are analogous to [Defender PowerShell cmdlets](use-powershell-cmdlets-windows-defender-antivirus.md).

The [MSDN Windows Defender WMIv2 Provider reference library](https://msdn.microsoft.com/en-us/library/dn439477(v=vs.85).aspx) lists the available WMI classes for Windows Defender AV, and includes example scripts.



## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)