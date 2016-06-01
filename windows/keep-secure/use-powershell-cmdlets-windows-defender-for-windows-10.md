---
title: Use PowerShell cmdlets to configure and run Windows Defender in Windows 10
description: In Windows 10, you can use PowerShell cmdlets to run scans, update definitions, and change settings in Windows Defender.
keywords: scan, command line, mpcmdrun, defender
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
author: iaanw
---

# Use PowerShell cmdlets to configure and run Windows Defender

**Applies to:**

- Windows 10

You can use PowerShell to perform various functions in Windows Defender. Similar to the command prompt or command line, PowerShell is a task-based command-line shell and scripting language designed especially for system administration, and you can read more about it at the [PowerShell hub on MSDN](https://msdn.microsoft.com/en-us/powershell/mt173057.aspx).

PowerShell cmdlets are most useful in Windows Server environments where that don't rely on a graphical user interface (GUI) to configure software. 

> **Note:**&nbsp;&nbsp;PowerShell cmdlets should not be used as a replacement for a full network policy management infrastructure, such as [System Center Configuration Manager](https://technet.microsoft.com/en-us/library/gg682129.aspx), [Group Policy Management Console](https://technet.microsoft.com/en-us/library/cc731212.aspx), or [Windows Defender Group Policy ADMX templates](https://support.microsoft.com/en-us/kb/927367).

PowerShell is typically installed under the folder _%SystemRoot%\system32\WindowsPowerShell_.


**To use Windows Defender PowerShell cmdlets**

1. Click **Start**, type **powershell**, and press **Enter**.
2. Click **Windows PowerShell** to open the shell. 
    > **Note:**&nbsp;&nbsp;You may need to open an administrator-level version of PowerShell. Right-click the item in the Start menu, click **Run as administrator** and click **Yes** at the permissions prompt.
3. Enter the command and parameters.

To open online help for any of the cmdlets type the following:

```text
Get-Help <cmdlet> -Online
```
Omit the `-online` parameter to get locally cached help.

For a list of the cmdlets and their functions and available parameters, see the [Defender cmdlets](https://technet.microsoft.com/en-us/library/dn433280.aspx).
