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
author: dansimp
ms.author: dansimp
ms.date: 09/03/2018
---

# Use PowerShell cmdlets to configure and manage Windows Defender Antivirus

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

You can use PowerShell to perform various functions in Windows Defender. Similar to the command prompt or command line, PowerShell is a task-based command-line shell and scripting language designed especially for system administration, and you can read more about it at the [PowerShell hub on MSDN](https://msdn.microsoft.com/powershell/mt173057.aspx).

For a list of the cmdlets and their functions and available parameters, see the [Defender cmdlets](https://technet.microsoft.com/library/dn433280.aspx) topic.

PowerShell cmdlets are most useful in Windows Server environments that don't rely on a graphical user interface (GUI) to configure software. 

> [!NOTE]
> PowerShell cmdlets should not be used as a replacement for a full network policy management infrastructure, such as [System Center Configuration Manager](https://technet.microsoft.com/library/gg682129.aspx), [Group Policy Management Console](https://technet.microsoft.com/library/cc731212.aspx), or [Windows Defender Antivirus Group Policy ADMX templates](https://support.microsoft.com/kb/927367).

Changes made with PowerShell will affect local settings on the endpoint where the changes are deployed or made. This means that deployments of policy with Group Policy, System Center Configuration Manager, or Microsoft Intune can overwrite changes made with PowerShell. 

You can [configure which settings can be overridden locally with local policy overrides](configure-local-policy-overrides-windows-defender-antivirus.md).

PowerShell is typically installed under the folder _%SystemRoot%\system32\WindowsPowerShell_.


**Use Windows Defender Antivirus PowerShell cmdlets:**

1. Click **Start**, type **powershell**, and press **Enter**.
2. Click **Windows PowerShell** to open the interface. 
3. Enter the command and parameters.

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
