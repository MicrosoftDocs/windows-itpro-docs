---
title: Update Compliance Configuration Script
ms.reviewer: 
manager: dougeby
description: Downloading and using the Update Compliance Configuration Script
ms.prod: w10
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
ms.date: 06/16/2022
---

# Configuring devices through the Update Compliance Configuration Script

**Applies to**

- Windows 10
- Windows 11


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
2. Set `commercialIDValue` to your Commercial ID.
3. Run the script.
4. Examine the logs for any issues. If there are no issues, then all devices with a similar configuration and network profile are ready for the script to be deployed with `runMode=Deployment`.
5. If there are issues, gather the logs and provide them to Support.


## Script errors

<!--Using include for script errors-->
[!INCLUDE [Update Compliance script error codes](./includes/update-compliance-script-error-codes.md)]

## Verify device configuration

In some cases, you may need to manually verify the device configuration has the `AllowUpdateComplianceProcessing` policy enabled. To verify the setting, use the following steps:

1. Download and enable the **Diagnostic Data Viewer**. For more information, see [Diagnostic Data Viewer overview](/windows/privacy/diagnostic-data-viewer-overview#install-and-use-the-diagnostic-data-viewer). 
   1. Go to **Start**, select **Settings** > **Privacy** > **Diagnostics & feedback**.
   1. Under **View diagnostic data**, select **On** for the following option:
    
       - Windows 11: **Turn on the Diagnostic Data Viewer (uses up to 1 GB of hard drive space)**
       - Windows 10: **Turn on this setting to see your data in the Diagnostic Data Viewer. (Setting uses up to 1GB of hard drive space.)**

1. Select **Open Diagnostic Data Viewer**.
   - If the application isn't installed, select **Get** when you're asked to download the [Diagnostic Data Viewer  from the Microsoft Store](https://www.microsoft.com/store/p/diagnostic-data-viewer/9n8wtrrsq8f7?rtc=1) page.
   - If the application is already installed, it will open. You can either close the application before running a scan for software updates, or use the refresh button to fetch the new data after the scan is completed.

1. Check for software updates on the client device.
    - Windows 11:
       1. Go to **Start**, select **Settings** > **Windows Update**.
       1. Select **Check for updates** then wait for the update check to complete.  
    - Windows 10:  
       1. Go to **Start**, select **Settings** > **Update & Security** > **Windows Update**.
       1. Select **Check for updates** then wait for the update check to complete.
       
1. Run the **Diagnostic Data Viewer**.
   1. Go to **Start**, select **Settings** > **Privacy** > **Diagnostics & feedback**.
   1. Under **View diagnostic data**, select **Open Diagnostic Data Viewer**.
1. When the Diagnostic Data Viewer opens, type `SoftwareUpdateClientTelemetry` in the search field. Verify the following items: 
   - The **EnrolledTenantID** field under **m365a** should equal the [CommercialID](update-compliance-get-started.md#get-your-commercialid) of your Log Analytics workspace for Update Compliance.
   - The **MSP** field value under **protocol** should be either `16` or `18`.
   - If you need to send this data to Microsoft Support, select **Export data**.  

   :::image type="content" alt-text="Screenshot of the Diagnostic Data Viewer displaying the data from SoftwareUpdateClientTelemetry. The export data option and the fields for MSP and EnrolledTenantID are outlined in red." source="./media/update-compliance-diagnostic-data-viewer.png" lightbox="./media/update-compliance-diagnostic-data-viewer.png":::

