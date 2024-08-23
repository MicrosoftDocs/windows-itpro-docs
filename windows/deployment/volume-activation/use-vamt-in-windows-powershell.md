---
title: Use VAMT in Windows PowerShell
description: Learn how to use Volume Activation Management Tool (VAMT) PowerShell cmdlets to perform the same functions as the Vamt.exe command-line tool.
ms.author: kaushika
author: kaushika-msft
manager: cshepard
ms.reviewer: nganguly
ms.date: 11/07/2022
ms.topic: how-to
ms.service: windows-client
ms.subservice: activation
---

# Use VAMT in Windows PowerShell

The Volume Activation Management Tool (VAMT) PowerShell cmdlets can be used to perform the same functions as the Vamt.exe command-line tool.

## Configuring VAMT in Windows PowerShell

### Install PowerShell 3.0

VAMT PowerShell cmdlets require Windows PowerShell, which is included in Windows 10 and later. To download the latest version of PowerShell, see [Installing PowerShell on Windows](/powershell/scripting/install/installing-powershell).

### Install the Windows Assessment and Deployment Kit

In addition to PowerShell, you must import the VAMT PowerShell module. The module is included in the VAMT 3.0 folder after you install the [Windows Assessment and Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install).

### Prepare the VAMT PowerShell environment

To open PowerShell with administrative credentials, select **Start** and enter `PowerShell` to locate the program. Right-click **Windows PowerShell**, and then select **Run as administrator**. To open PowerShell in Windows 7, select **Start**, select **All Programs**, select **Accessories**, select **Windows PowerShell**, right-click **Windows PowerShell**, and then select **Run as administrator**.

  > [!IMPORTANT]
  > If you are using a computer that has an 64-bit processor, select **Windows PowerShell (x86)**. VAMT PowerShell cmdlets are only supported for x86 architecture. You must use an x86 version of Windows PowerShell to import the VAMT module

  The x86 versions of Windows PowerShell are available in the following directories:

- PowerShell: `C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe`
- PowerShell ISE: `C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell_ise.exe`

For all supported operating systems, you can use the VAMT PowerShell module included with the Windows ADK. By default, the module is installed with the Windows ADK in the VAMT folder. Change directories to the directory where VAMT is located. For example, if the Windows ADK is installed in the default location of `C:\Program Files(x86)\Windows Kits\10`, enter:

  ```powershell
  cd "C:\Program Files (x86)\Windows Kits\10\Assessment and Deployment Kit\VAMT3"
  ```

### Import the VAMT PowerShell module

To import the VAMT PowerShell module, enter the following command at a PowerShell command prompt:

  ```powershell
  Import-Module .\VAMT.psd1
  ```

  where **Import-Module** imports a module only into the current session. To import the module into all sessions, add an **Import-Module** command to a Windows PowerShell profile. For more information about profiles, enter `get-help about_profiles`.

## To get help for VAMT PowerShell cmdlets

You can view all of the help sections for a VAMT PowerShell cmdlet, or you can view only the section that you're interested in. To view all of the Help content for a VAMT cmdlet, enter:

```powershell
get-help <cmdlet name> -all
```

For example, enter:

```powershell
get-help get-VamtProduct -all
```

> [!WARNING]
> The update-help cmdlet is not supported for VAMT PowerShell cmdlets. To view online help for VAMT cmdlets, you can use the `-online` option with the `get-help` cmdlet. For more information, see [Volume Activation Management Tool (VAMT) Cmdlets in Windows PowerShell](/powershell/module/vamt).

### View VAMT PowerShell help sections

1. To get the syntax to use with a cmdlet, enter the following command at a PowerShell command prompt:

   ```powershell
   get-help <cmdlet name>
   ```

   For example, enter:

   ```powershell
   get-help get-VamtProduct
   ```

2. To see examples using a cmdlet, enter:

   ```powershell
   get-help <cmdlet name> -examples
   ```

   For example, enter:

   ```powershell
   get-help get-VamtProduct -examples
   ```
