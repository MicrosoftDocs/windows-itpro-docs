---
title: Update Compliance Configuration Script
manager: aaroncz
description: Downloading and using the Update Compliance Configuration Script
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.date: 06/16/2022
ms.technology: itpro-updates
---

# Configuring devices through the Update Compliance Configuration Script

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]

The Update Compliance Configuration Script is the recommended method of configuring devices to send data to Microsoft for use with Update Compliance. The script configures the registry keys backing policies, ensures required services are running, and more. This script is a recommended complement to configuring the required policies documented in [Manually configured devices for Update Compliance](update-compliance-configuration-manual.md), as it can provide feedback on whether there are any configuration issues outside of policies being configured. 

> [!NOTE]
> The configuration script configures registry keys directly. Registry keys can potentially be overwritten by policy settings like Group Policy or MDM. *Reconfiguring devices with the script does not reconfigure previously set policies, both in the case of Group Policy and MDM*. If there are conflicts between your Group Policy or MDM configurations and the required configurations listed in [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md), device data might not appear in Update Compliance correctly. 

You can download the script from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=101086). Keep reading to learn how to configure the script and interpret error codes that are output in logs for troubleshooting.

## How this script is organized

This script's two primary files are `ConfigScript.ps1` and `RunConfig.bat`. You configure `RunConfig.bat` according to the directions in the `.bat` itself, which will then run `ConfigScript.ps1` with the parameters entered to `RunConfig.bat`. There are two ways of using the script: in **Pilot** mode or **Deployment** mode. 

- In **Pilot** mode (`runMode=Pilot`), the script will enter a verbose mode with enhanced diagnostics, and save the results in the path defined with `logpath` in `RunConfig.bat`. Pilot mode is best for a pilot run of the script or for troubleshooting configuration.
- In **Deployment** mode (`runMode=Deployment`), the script will run quietly. 


## How to use this script

Open `RunConfig.bat` and configure the following (assuming a first-run, with `runMode=Pilot`):

1. Define `logPath` to where you want the logs to be saved. Ensure that `runMode=Pilot`.
2. Set `setCommercialID=true` and set the `commercialIDValue` to your [Commercial ID](update-compliance-get-started.md#get-your-commercialid).
3. Run the script.
4. Examine the logs for any issues. If there are no issues, then all devices with a similar configuration and network profile are ready for the script to be deployed with `runMode=Deployment`.
5. If there are issues, gather the logs and provide them to Support.


## Script errors

<!--Using include for script errors-->
[!INCLUDE [Update Compliance script error codes](./includes/wufb-reports-script-error-codes.md)]

## Verify device configuration
<!--Using include for verifying device configuration-->
[!INCLUDE [Endpoints for Update Compliance](./includes/wufb-reports-verify-device-configuration.md)]:

