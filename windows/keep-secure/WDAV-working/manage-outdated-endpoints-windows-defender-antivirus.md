---
title: Apply Windows Defender AV protection updates to out of date endpoints
description: Define when and how updates should be applied for endpoints that have not updated in a while.
keywords: updates, protection, out-of-date, outdated, old, catch-up
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: medium
author: iaanw
---

# Manage updates for endpoints that are out of date

**Applies to**
-   Windows 10

**Audience**

- Network administrators

**Manageability available with**

- Group Policy
- System Center Configuration Manager
- PowerShell cmdlets
- Windows Management Instruction (WMI)



Windows Defender AV lets you define how long an endpoint can avoid an update before it is required to update and scan itself. This is especially useful in environments where devices are not often connected to a corporate or external network, or devices that are not used on a daily basis.

You can manage the following options with Group Policy, System Center Configuration Manager, Powershell cmdlets, and WMI classes:

- Define the number of days before an endpoint has outdated protection (PS WMI)
- Define the number of days after which a catch-up update must occur (PS WMI)






## Related topics

- [Manage Windows Defender Antivirus updates and apply baselines](manage-updates-baselines-windows-defender-antivirus.md)
- [Update and manage Windows Defender in Windows 10](get-started-with-windows-defender-for-windows-10.md)
- [Troubleshoot Windows Defender in Windows 10](troubleshoot-windows-defender-in-windows-10.md)
