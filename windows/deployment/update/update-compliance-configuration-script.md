---
title: Update Compliance Configuration Script
ms.reviewer: 
manager: dougeby
description: Downloading and using the Update Compliance Configuration Script
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
ms.date: 04/27/2022
---

# Configuring devices through the Update Compliance Configuration Script

**Applies to**

- Windows 10
- Windows 11

> [!NOTE]
> A new policy is required to use Update Compliance: "AllowUpdateComplianceProcessing." If you're already using Update Compliance and have configured your devices prior to May 10, 2021, you must rerun the script so the new policy can be configured.

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

|Error  |Description  |
|---------|---------|
| 27    | Not system account. |
| 37    | Unexpected exception when collecting logs| 
| 1    | General unexpected error| 
| 6    | Invalid CommercialID| 
| 48    | CommercialID is not a GUID| 
| 8    | Couldn't create registry key path to setup CommercialID| 
| 9    | Couldn't write CommercialID at registry key path| 
| 53    | There are conflicting CommercialID values.| 
| 11    | Unexpected result when setting up CommercialID.| 
| 62    | AllowTelemetry registry key is not of the correct type REG_DWORD| 
| 63    | AllowTelemetry is not set to the appropriate value and it could not be set by the script.| 
| 64    | AllowTelemetry is not of the correct type REG_DWORD.| 
| 99    | Device is not Windows 10.| 
| 40    | Unexpected exception when checking and setting telemetry.| 
| 12    | CheckVortexConnectivity failed, check Log output for more information.| 
| 12    | Unexpected failure when running CheckVortexConnectivity.| 
| 66    | Failed to verify UTC connectivity and recent uploads.|  
| 67    | Unexpected failure when verifying UTC CSP.| 
| 41    | Unable to impersonate logged-on user.| 
| 42    | Unexpected exception when attempting to impersonate logged-on user.| 
| 43    | Unexpected exception when attempting to impersonate logged-on user.| 
| 16    | Reboot is pending on device, restart device and restart script.| 
| 17    | Unexpected exception in CheckRebootRequired.| 
| 44    | Error when running CheckDiagTrack service.| 
| 45    | DiagTrack.dll not found.| 
| 50    | DiagTrack service not running.| 
| 54    | Microsoft Account Sign In Assistant (MSA) Service disabled.| 
| 55    | Failed to create new registry path for SetDeviceNameOptIn| 
| 56    | Failed to create property for SetDeviceNameOptIn at registry path| 
| 57    | Failed to update value for SetDeviceNameOptIn| 
| 58    | Unexpected exception in SetrDeviceNameOptIn| 
| 59    | Failed to delete LastPersistedEventTimeOrFirstBoot property at registry path when attempting to clean up OneSettings.| 
| 60    | Failed to delete registry key when attempting to clean up OneSettings.| 
| 61    | Unexpected exception when attempting to clean up OneSettings.| 
| 52    | Could not find Census.exe| 
| 51    | Unexpected exception when attempting to run Census.exe| 
| 34    | Unexpected exception when attempting to check  Proxy settings.| 
| 30    | Unable to disable Enterprise Auth Proxy. This registry value must be 0 for UTC to operate in an authenticated proxy environment.| 
| 35    | Unexpected exception when checking User Proxy.| 
| 91    | Failed to create new registry path for EnableAllowUCProcessing| 
| 92    | Failed to create property for EnableAllowUCProcessing at registry path| 
| 93    | Failed to update value for EnableAllowUCProcessing| 
| 94    | Unexpected exception in EnableAllowUCProcessing| 

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
