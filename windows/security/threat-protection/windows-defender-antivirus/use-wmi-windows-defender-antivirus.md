---
title: Configure Windows Defender Antivirus with WMI
description: Use WMI scripts to configure Windows Defender AV.
keywords: wmi, scripts, windows management instrumentation, configuration
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: justinha
ms.author: v-anbic
ms.date: 09/03/2018
---

# Use Windows Management Instrumentation (WMI) to configure and manage Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Management Instrumentation (WMI) is a scripting interface that allows you to retrieve, modify, and update settings.

Read more about WMI at the [Microsoft Developer Network System Administration library](https://msdn.microsoft.com/library/aa394582(v=vs.85).aspx).

Windows Defender Antivirus has a number of specific WMI classes that can be used to perform most of the same functions as Group Policy and other management tools. Many of the classes are analogous to [Defender PowerShell cmdlets](use-powershell-cmdlets-windows-defender-antivirus.md).

The [MSDN Windows Defender WMIv2 Provider reference library](https://msdn.microsoft.com/library/dn439477(v=vs.85).aspx) lists the available WMI classes for Windows Defender Antivirus, and includes example scripts.

Changes made with WMI will affect local settings on the endpoint where the changes are deployed or made. This means that deployments of policy with Group Policy, System Center Configuration Manager, or Microsoft Intune can overwrite changes made with WMI. 

You can [configure which settings can be overridden locally  with local policy overrides](configure-local-policy-overrides-windows-defender-antivirus.md).

## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)