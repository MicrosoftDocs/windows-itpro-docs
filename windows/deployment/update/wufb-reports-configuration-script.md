---
title: Configure clients with a script
titleSuffix: Windows Update for Business reports
description: How to get and use the Windows Update for Business reports configuration script to configure devices for Windows Update for Business reports.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 07/09/2024
---

# Configuring devices through the Windows Update for Business reports configuration script
<!--37063317, 30141258, 37063041-->

The Windows Update for Business reports configuration script is the recommended method of configuring devices to send data to Microsoft for use with Windows Update for Business reports. The script configures the registry keys backing policies, ensures required services are running, and more. This script is a recommended complement to configuring the required policies documented in [Manually configure devices for Windows Update for Business reports](wufb-reports-configuration-manual.md), as it can provide feedback on whether there are any configuration issues outside of policies being configured.

## About the script

The configuration script configures registry keys directly. Registry keys can potentially be overwritten by policy settings like Group Policy or MDM. *Reconfiguring devices with the script doesn't reconfigure previously set policies, both in the case of Group Policy and MDM*. If there are conflicts between your Group Policy or MDM configurations and the required configurations listed in [Manually configuring devices for Windows Update for Business reports](wufb-reports-configuration-manual.md), device data might not appear in Windows Update for Business reports correctly. 

You can download the script from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=101086).

## How this script is organized

This script's two primary files are `ConfigScript.ps1` and `RunConfig.bat`. You configure `RunConfig.bat` according to the directions in the `.bat` itself, which will then run `ConfigScript.ps1` with the parameters entered to `RunConfig.bat`. There are two ways of using the script: in **Pilot** mode or **Deployment** mode.

> [!Important]
> [PsExec](/sysinternals/downloads/psexec) is used to run the script in the system context. Once the device is configured, remove PsExec.exe from the device.

## How to use this script

Edit the `RunConfig.bat` file to configure the following variables, then run the edited .bat file:

| Variable | Allowed values and description | Example |
|---|---|---|
| runMode | **Pilot** (default): Verbose mode with additional diagnostics and logging. Pilot mode is best for a testing run of the script or for troubleshooting. <br> **Deployment**: Doesn't run any additional diagnostics or add extra logging | `runMode=Pilot` |
| logPath | Path where the logs are saved. The default location of the logs is `.\UCLogs`.| `logPath=C:\temp\logs` |
| logMode | **0**: Log to the console only </br> **1** (default): Log to file and console.</br> **2**: Log to file only. | `logMode=2` |
| DeviceNameOptIn | **true** (default): Device name is sent to Microsoft.</br> **false**: Device name isn't sent to Microsoft. | `DeviceNameOptIn=true` |
| ClientProxy | **Direct** (default): No proxy is used. The connection to the endpoints is direct.</br> **System**: The system proxy, without authentication, is used. This type of proxy is typically configured with [netsh](/windows-server/networking/technologies/netsh/netsh-contexts) and can be verified using `netsh winhttp show proxy`.  </br> **User**: The proxy is configured through IE and it might or might not require user authentication. </br> </br> For more information, see [How the Windows Update client determines which proxy server to use to connect to the Windows Update website](https://support.microsoft.com/en-us/topic/how-the-windows-update-client-determines-which-proxy-server-to-use-to-connect-to-the-windows-update-website-08612ae5-3722-886c-f1e1-d012516c22a1) | `ClientProxy=Direct` | 
| source | Used by the .bat file and PowerShell script to locate dependencies. It's recommended that you don't change this value. | `source=%~dp0` |


## Script errors

<!--Using include for script errors-->
[!INCLUDE [Windows Update for Business reports script error codes](./includes/wufb-reports-script-error-codes.md)]


## Next steps

[Use Windows Update for Business reports](wufb-reports-use.md)