---
title: Windows Update for Business reports configuration script
manager: aaroncz
description: Downloading and using the Windows Update for Business reports configuration script
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.date: 07/11/2023
ms.technology: itpro-updates
---

# Configuring devices through the Windows Update for Business reports configuration script
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

The Windows Update for Business reports configuration script is the recommended method of configuring devices to send data to Microsoft for use with Windows Update for Business reports. The script configures the registry keys backing policies, ensures required services are running, and more. This script is a recommended complement to configuring the required policies documented in [Manually configure devices for Windows Update for Business reports](wufb-reports-configuration-manual.md), as it can provide feedback on whether there are any configuration issues outside of policies being configured.

## About the script

The configuration script configures registry keys directly. Be aware that registry keys can potentially be overwritten by policy settings like Group Policy or MDM. *Reconfiguring devices with the script doesn't reconfigure previously set policies, both in the case of Group Policy and MDM*. If there are conflicts between your Group Policy or MDM configurations and the required configurations listed in [Manually configuring devices for Windows Update for Business reports](wufb-reports-configuration-manual.md), device data might not appear in Windows Update for Business reports correctly. 

You can download the script from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=101086). Keep reading to learn how to configure the script and interpret error codes that are output in logs for troubleshooting.

## How this script is organized

This script's two primary files are `ConfigScript.ps1` and `RunConfig.bat`. You configure `RunConfig.bat` according to the directions in the `.bat` itself, which will then run `ConfigScript.ps1` with the parameters entered to `RunConfig.bat`. There are two ways of using the script: in **Pilot** mode or **Deployment** mode. 

- In **Pilot** mode (`runMode=Pilot`), the script will enter a verbose mode with enhanced diagnostics, and save the results in the path defined with `logpath` in `RunConfig.bat`. Pilot mode is best for a pilot run of the script or for troubleshooting configuration.
- In **Deployment** mode (`runMode=Deployment`), the script doesn't run any additional diagnostics or additional logging.

> [!Important]
> [PsExec](/sysinternals/downloads/psexec) is used to run the script in the system context. Once the device is configured, remove PsExec.exe from the device.

## How to use this script

Edit the `RunConfig.bat` file and configure the following variables:

| Variable | Allowed values and description | Example |
|---|---|---|
| runMode | **Pilot** (default): Verbose mode with additional diagnostics with additional logging <br> **Deployment**: Doesn't run any additional diagnostics or add extra logging | `runMode=Pilot` |
| logPath | Path where the logs will be saved. The default location of the logs is `.\UCLogs`. | `logPath=C:\temp\logs` |
| logMode | **0**: Log to the console only </br> **1** (default): Log to file and console. </br> **2**: Log to file only. | `logMode=2` |
| DeviceNameOptIn | **true** (default): Device name is sent to Microsoft. </br> **false**: Device name isn't sent to Microsoft. | `DeviceNameOptIn=true` |
| ClientProxy | **Direct** (default): No proxy is used. The connection to the endpoints is direct. </br> **System**: The system proxy, without authentication, is used. This type of proxy is typically configured with [netsh](/windows-server/networking/technologies/netsh/netsh-contexts) and can be verified using `netsh winhttp show proxy`.  </br> **User**: The proxy is configured through IE and it might or might not require user authentication. </br> </br> For more information, see [How the Windows Update client determines which proxy server to use to connect to the Windows Update website](https://support.microsoft.com/en-us/topic/how-the-windows-update-client-determines-which-proxy-server-to-use-to-connect-to-the-windows-update-website-08612ae5-3722-886c-f1e1-d012516c22a1) | `ClientProxy=Direct` | 
|


1. Define `logPath` to where you want the logs to be saved. Ensure that `runMode=Pilot`.
1. Don't modify the [Commercial ID](update-compliance-get-started.md#get-your-commercialid) values since they're used for the earlier version of Windows Update for Business reports (Update Compliance). Leave `setCommercialID=false` and the `commercialIDValue=Unknown`.
1. Run the script.
1. Examine the logs for any issues. If there are no issues, then all devices with a similar configuration and network profile are ready for the script to be deployed with `runMode=Deployment`.
1. If there are issues, gather the logs and provide them to Microsoft Support.


## Script errors

<!--Using include for script errors-->
[!INCLUDE [Windows Update for Business reports script error codes](./includes/wufb-reports-script-error-codes.md)]


## Next steps

[Use Windows Update for Business reports](wufb-reports-use.md)