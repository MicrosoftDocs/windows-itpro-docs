---
title: Use VAMT in Windows PowerShell (Windows 10)
description: Use VAMT in Windows PowerShell
ms.assetid: 13e0ceec-d827-4681-a5c3-8704349e3ba9
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: activation
audience: itpro
author: greg-lindsay
ms.date: 04/25/2017
ms.topic: article
---

# Use VAMT in Windows PowerShell

The Volume Activation Management Tool (VAMT) PowerShell cmdlets can be used to perform the same functions as the Vamt.exe command-line tool.
**To install PowerShell 3.0**
- VAMT PowerShell cmdlets require Windows PowerShell, which is included in Windows 10, Windows 8 and Windows Server® 2012. You can download PowerShell for Windows 7 or other operating systems from the [Microsoft Download Center](https://go.microsoft.com/fwlink/p/?LinkId=218356).
  **To install the Windows Assessment and Deployment Kit**
- In addition to PowerShell, you must import the VAMT PowerShell module. The module is included in the VAMT 3.0 folder after you install the Windows Assessment and Deployment Kit (Windows ADK).
  **To prepare the VAMT PowerShell environment**
- To open PowerShell with administrative credentials, click **Start** and type “PowerShell” to locate the program. Right-click **Windows PowerShell**, and then click **Run as administrator**. To open PowerShell in Windows 7, click **Start**, click **All Programs**, click **Accessories**, click **Windows PowerShell**, right-click **Windows PowerShell**, and then click **Run as administrator**.

  **Important**  
  If you are using a computer that has an 64-bit processor, select **Windows PowerShell (x86)**. VAMT PowerShell cmdlets are supported for the x86 architecture only. You must use an x86 version of Windows PowerShell to import the VAMT module, which are available in these directories:
  -   The x86 version of PowerShell is available in C:\\Windows\\SysWOW64\\WindowsPowerShell\\v1.0\\powershell.exe
  -   The x86 version of the PowerShell ISE is available in C:\\Windows\\SysWOW64\\WindowsPowerShell\\v1.0\\powershell\_ise.exe
- For all supported operating systems you can use the VAMT PowerShell module included with the Windows ADK. By default, the module is installed with the Windows ADK in the VAMT folder. Change directories to the directory where VAMT is located.

  For example, if the Windows ADK is installed in the default location of `C:\Program Files(x86)\Windows Kits\10`, type:
    
  ``` powershell
  cd “C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\VAMT 3.0”
  ```
- Import the VAMT PowerShell module. To import the module, type the following at a command prompt:
  ``` powershell
  Import-Module .\VAMT.psd1
  ```
  Where **Import-Module** imports a module only into the current session. To import the module into all sessions, add an **Import-Module** command to a Windows PowerShell profile. For more information about profiles, type `get-help about_profiles`.

## To Get Help for VAMT PowerShell cmdlets

You can view all of the help sections for a VAMT PowerShell cmdlet, or you can view only the section that you are interested in. To view all of the Help content for a VAMT cmdlet, type:
``` powershell
get-help <cmdlet name> -all
```
For example, type:
``` powershell
get-help get-VamtProduct -all
```

**Warning**  
The update-help cmdlet is not supported for VAMT PowerShell cmdlets. To view online help for VAMT cmdlets, you can use the -online option with the get-help cmdlet. For more information, see [Volume Activation Management Tool (VAMT) Cmdlets in Windows PowerShell](https://go.microsoft.com/fwlink/p/?LinkId=242278).

**To view VAMT PowerShell Help sections**

1. To get the syntax to use with a cmdlet, type the following at a command prompt:
   ``` powershell
   get-help <cmdlet name>
   ```
   For example, type:
   ``` powershell
   get-help get-VamtProduct 
   ```
2. To see examples using a cmdlet, type:
   ``` powershell
   get-help <cmdlet name> -examples
   ```
   For example, type:
   ``` powershell
   get-help get-VamtProduct -examples
   ```
