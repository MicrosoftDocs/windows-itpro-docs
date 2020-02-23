---
title: Use PowerShell cmdlets to configure and run Windows Defender AV
description: In Windows 10, you can use PowerShell cmdlets to run scans, update Security intelligence, and change settings in Windows Defender Antivirus.
keywords: scan, command line, mpcmdrun, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: denisebmsft
ms.author: deniseb
ms.custom: nextgen
ms.date: 09/03/2018
ms.reviewer: 
manager: dansimp
---

# Use PowerShell cmdlets to configure and manage Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can use PowerShell to perform various functions in Windows Defender. Similar to the command prompt or command line, PowerShell is a task-based command-line shell and scripting language designed especially for system administration. You can read more about it at the [PowerShell hub on MSDN](https://docs.microsoft.com/previous-versions/msdn10/mt173057(v=msdn.10)).

For a list of the cmdlets and their functions and available parameters, see the [Defender cmdlets](https://docs.microsoft.com/powershell/module/defender) topic.

PowerShell cmdlets are most useful in Windows Server environments that don't rely on a graphical user interface (GUI) to configure software.

> [!NOTE]
> PowerShell cmdlets should not be used as a replacement for a full network policy management infrastructure, such as [Microsoft Endpoint Configuration Manager](https://docs.microsoft.com/configmgr), [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), or [Windows Defender Antivirus Group Policy ADMX templates](https://www.microsoft.com/download/100591).

Changes made with PowerShell will affect local settings on the endpoint where the changes are deployed or made. This means that deployments of policy with Group Policy, Microsoft Endpoint Configuration Manager, or Microsoft Intune can overwrite changes made with PowerShell.

You can [configure which settings can be overridden locally with local policy overrides](configure-local-policy-overrides-windows-defender-antivirus.md).

PowerShell is typically installed under the folder _%SystemRoot%\system32\WindowsPowerShell_.

## Use Windows Defender Antivirus PowerShell cmdlets

1. In the Windows search bar, type **powershell**.
2. Select **Windows PowerShell** from the results to open the interface.
3. Enter the PowerShell command and any parameters.

> [!NOTE]
> You may need to open an administrator-level version of PowerShell. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.

To open online help for any of the cmdlets type the following:

```PowerShell
Get-Help <cmdlet> -Online
```

Omit the `-online` parameter to get locally cached help.

## Related topics

- [Reference topics for management and configuration tools](configuration-management-reference-windows-defender-antivirus.md)
- [Windows Defender Antivirus in Windows 10](windows-defender-antivirus-in-windows-10.md)
