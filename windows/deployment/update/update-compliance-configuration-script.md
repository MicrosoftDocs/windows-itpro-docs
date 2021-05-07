---
title: Update Compliance Configuration Script
ms.reviewer: 
manager: laurawi
description: Downloading and using the Update Compliance Configuration Script
keywords: update compliance, oms, operations management suite, prerequisites, requirements, updates, upgrades, antivirus, antimalware, signature, log analytics, wdav
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: jaimeo
ms.author: jaimeo
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
---

# Configuring devices through the Update Compliance Configuration Script

> [!NOTE]
> A new policy is required to use Update Compliance: "AllowUpdateComplianceProcessing." If you're already using Update Compliance and have configured your devices prior to May 10, 2021, you must rerun the script so the new policy can be configured. We don't recommend using this script if you configure devices using MDM. Instead, configure the policies listed in [Manually configuring devices for Update Compliance](update-compliance-configuration-manual.md) by using your MDM provider. 

The Update Compliance Configuration Script is the recommended method of configuring devices to send data to Microsoft for use with Update Compliance. The script configures device policies via Group Policy, ensures that required services are running, and more.

You can download the script from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=101086). Keep reading to learn how to configure the script and interpret error codes that are output in logs for troubleshooting.

## Script FAQ

- I manage my devices with MDM. Should I use this script?
No, you should not use this script. Instead configure the policies through your MDM provider. 
- Does this script configure devices for Delivery Optimization?
No. You must do that separately.

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
