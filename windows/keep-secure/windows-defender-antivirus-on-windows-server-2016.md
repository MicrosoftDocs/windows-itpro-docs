---
title: Windows Defender Antivirus on Windows Server 2016
description: Compare the differences when Windows Defender AV is on a Windows Server SKU versus a Windows 10 endpoint
keywords: windows defender, server, scep, system center endpoint protection, server 2016, current branch, server 2012
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---


# Windows Defender Antivirus on Windows Server


**Applies to:**

- Windows Server 2016

**Audience**

- Enterprise security administrators
- Network administrators


**Manageability available with**

- Group Policy
- System Center Configuration Manager 
- PowerShell
- Windows Management Instrumentation (WMI)


Windows Defender Antivirus is available on Windows Server 2016. In some instances it is referred to as Endpoint Protection - however, the protection engine is the same.

See [Windows Defender Overview for Windows Server](https://technet.microsoft.com/windows-server-docs/security/windows-defender/windows-defender-overview-windows-server) for more information on enabling the client interface and configuring roles and specific server features.

While the functionality, configuration, and management is largely the same for Windows Defender AV either on Windows 10 or Windows Server 2016, there are a few key differences:

- In Windows Server 2016, [automatic exclusions](configure-server-exclusions-windows-defender-antivirus.md) are applied based on your defined Server Role.
- In Windows Server 2016, [Windows Defender AV will not disable itself if you are running another antivirus product](windows-defender-antivirus-on-windows-server-2016.md#sysreq).


## Related topics

- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
- [Deploy, manage updates, and report on Windows Defender Antivirus](deploy-manage-report-windows-defender-antivirus.md)