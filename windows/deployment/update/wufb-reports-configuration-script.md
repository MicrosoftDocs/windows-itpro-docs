---
title: Windows Update for Business reports configuration script
manager: aaroncz
description: Downloading and using the Windows Update for Business reports configuration script
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.date: 02/10/2023
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
- In **Deployment** mode (`runMode=Deployment`), the script will run quietly.

> [!Important]
> [PsExec](/sysinternals/downloads/psexec) is used to run the script in the system context. Once the device is configured, remove PsExec.exe from the device.

## How to use this script

Open `RunConfig.bat` and configure the following (assuming a first-run, with `runMode=Pilot`):

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