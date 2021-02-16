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

The Update Compliance Configuration Script is the recommended method of configuring devices to send data to Microsoft for use with Update Compliance. The script configures device policies via Group Policy, ensures that required services are running, and more.

> [!NOTE]
> The Update Compliance configuration script does not offer options to configure Delivery Optimization. You have to do that separately.


You can download the script from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=101086). Keep reading to learn how to configure the script and interpret error codes that are output in logs for troubleshooting.

## How the script is organized

The script is organized into two folders **Pilot** and **Deployment**. Both folders have the same key files: `ConfigScript.ps1` and `RunConfig.bat`. You configure `RunConfig.bat` according to the directions in the .bat itself, which will then execute `ConfigScript.ps1` with the parameters entered to RunConfig.bat.

- The **Pilot** folder and its contents are intended to be used on an initial set of single devices in specific environments (main office & satellite office, for example) for testing and troubleshooting prior to broader deployment. This script is configured to collect and output detailed logs for every device it runs on.
- The **Deployment** folder is intended to be deployed across an entire device population in a specific environment once devices in that environment have been validated with the Pilot script.

## How to use the script

### Piloting and Troubleshooting

> [!IMPORTANT]
> If you encounter an issue with Update Compliance, the first step should be to run the script in Pilot mode on a device you are encountering issues with, and save these Logs for reference with Support.

> [!IMPORTANT]
> The script must be run in the System context. To do this, use the PsExec tool included in the file. For more about PsExec, see [PsExec](https://docs.microsoft.com/sysinternals/downloads/psexec).


When using the script in the context of troubleshooting, use `Pilot`. Enter `RunConfig.bat`, and configure it as follows:

1. Configure `logPath` to a path where the script will have write access and a place you can easily access. This specifies the output of the log files generated when the script is in Verbose mode.
2. Configure `commercialIDValue` to your CommercialID. To get your CommercialID, see [Getting your CommercialID](update-compliance-get-started.md#get-your-commercialid).
3. Run the script. The script must be run in System context.
4. Examine the Logs output for any issues. If there were issues:
   - Compare Logs output with the required settings covered in [Manually Configuring Devices for Update Compliance](update-compliance-configuration-manual.md).
   - Examine the script errors and refer to the [script error reference](#script-error-reference) on how to interpret the codes.
   - Make the necessary corrections and run the script again.
5. When you no longer have issues, proceed to using the script for more broad deployment with the `Deployment` folder.


### Broad deployment

After verifying on a set of devices in a specific environment that everything is configured correctly, you can proceed to broad deployment.

1. Configure `commercialIDValue` in `RunConfig.bat` to [your CommercialID](update-compliance-get-started.md#get-your-commercialid).
2. Use a management tool like Configuration Manager or Intune to broadly deploy the script to your entire target population.

## Script Error Reference

|Error |Description |
|-|-------------------|
| 27 | Not system account. |
| 37 | Unexpected exception when collecting logs|
| 1  | General unexpected error|
| 6  | Invalid CommercialID|
| 48 | CommercialID is not a GUID|
| 8  | Couldn't create registry key path to setup CommercialID|
| 9  | Couldn't write CommercialID at registry key path|
| 53 | There are conflicting CommercialID values.|
| 11 | Unexpected result when setting up CommercialID.|
| 62 | AllowTelemetry registry key is not of the correct type `REG_DWORD`|
| 63 | AllowTelemetry is not set to the appropriate value and it could not be set by the script.|
| 64 | AllowTelemetry is not of the correct type `REG_DWORD`.|
| 99 | Device is not Windows 10.|
| 40 | Unexpected exception when checking and setting telemetry.|
| 12 | CheckVortexConnectivity failed, check Log output for more information.|
| 12 | Unexpected failure when running CheckVortexConnectivity.|
| 66 | Failed to verify UTC connectivity and recent uploads.| 
| 67 | Unexpected failure when verifying UTC CSP connectivity of the WMI Bridge.|
| 41 | Unable to impersonate logged-on user.|
| 42 | Unexpected exception when attempting to impersonate logged-on user.|
| 43 | Unexpected exception when attempting to impersonate logged-on user.|
| 16 | Reboot is pending on device, restart device and restart script.|
| 17 | Unexpected exception in CheckRebootRequired.|
| 44 | Error when running CheckDiagTrack service.|
| 45 | DiagTrack.dll not found.|
| 50 | DiagTrack service not running.|
| 54 | Microsoft Account Sign In Assistant (MSA) Service disabled.|
| 55 | Failed to create new registry path for `SetDeviceNameOptIn` of the PowerShell script.|
| 56 | Failed to create property for `SetDeviceNameOptIn` of the PowerShell script at registry path.|
| 57 | Failed to update value for `SetDeviceNameOptIn` of the PowerShell script.|
| 58 | Unexpected exception in `SetDeviceNameOptIn` of the PowerShell script.|
| 59 | Failed to delete `LastPersistedEventTimeOrFirstBoot` property at registry path when attempting to clean up OneSettings.|
| 60 | Failed to delete registry key when attempting to clean up OneSettings.|
| 61 | Unexpected exception when attempting to clean up OneSettings.|
| 52 | Could not find Census.exe|
| 51 | Unexpected exception when attempting to run Census.exe|
| 34 | Unexpected exception when attempting to check Proxy settings.|
| 30 | Unable to disable Enterprise Auth Proxy. This registry value must be 0 for UTC to operate in an authenticated proxy environment.|
| 35 | Unexpected exception when checking User Proxy.|
