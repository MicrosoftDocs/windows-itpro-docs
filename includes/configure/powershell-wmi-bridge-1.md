---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/12/2023
ms.topic: include
ms.prod: windows-client
---

Configure your devices using PowerShell scripts via the [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal).

> [!IMPORTANT]
> For all device settings, the WMI Bridge client must be executed as SYSTEM (LocalSystem) account.
>
> To test a PowerShell script, you can:
> 1. [Download the psexec tool](/sysinternals/downloads/psexec)
> 1. Open an elevated command prompt and run: `psexec.exe -i -s powershell.exe`
> 1. Run the script in the PowerShell session
