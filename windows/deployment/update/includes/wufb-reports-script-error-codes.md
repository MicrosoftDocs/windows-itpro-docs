---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.technology: itpro-updates
ms.prod: windows-client
ms.topic: include
ms.date: 08/18/2022
ms.localizationpriority: medium
---
<!--This file is shared by updates/wufb-reports-configuration-script.md and the update/update-compliance-configuration-script.md articles. Headings are driven by article context.  -->
|Error  |Description  |
|---------|---------|
| 1    | General unexpected error|
| 6    | Invalid CommercialID|
| 8    | Couldn't create registry key path to set up CommercialID|
| 9    | Couldn't write CommercialID at registry key path|
| 11    | Unexpected result when setting up CommercialID.|
| 12    | CheckVortexConnectivity failed, check Log output for more information.|
| 12    | Unexpected failure when running CheckVortexConnectivity.|
| 16    | Reboot is pending on device, restart device and restart script.|
| 17    | Unexpected exception in CheckRebootRequired.|
| 27    | Not system account. |
| 30    | Unable to disable Enterprise Auth Proxy. This registry value must be 0 for UTC to operate in an authenticated proxy environment.|
| 34    | Unexpected exception when attempting to check  Proxy settings.|
| 35    | Unexpected exception when checking User Proxy.|
| 37    | Unexpected exception when collecting logs|
| 40    | Unexpected exception when checking and setting telemetry.|
| 41    | Unable to impersonate logged-on user.|
| 42    | Unexpected exception when attempting to impersonate logged-on user.|
| 43    | Unexpected exception when attempting to impersonate logged-on user.|
| 44    | Error when running CheckDiagTrack service.|
| 45    | DiagTrack.dll not found.|
| 48    | CommercialID isn't a GUID|
| 50    | DiagTrack service not running.|
| 51    | Unexpected exception when attempting to run Census.exe|
| 52    | Couldn't find Census.exe|
| 53    | There are conflicting CommercialID values.|
| 54    | Microsoft Account Sign In Assistant (MSA) Service disabled.|
| 55    | Failed to create new registry path for SetDeviceNameOptIn|
| 56    | Failed to create property for SetDeviceNameOptIn at registry path|
| 57    | Failed to update value for SetDeviceNameOptIn|
| 58    | Unexpected exception in SetrDeviceNameOptIn|
| 59    | Failed to delete LastPersistedEventTimeOrFirstBoot property at registry path when attempting to clean up OneSettings.|
| 60    | Failed to delete registry key when attempting to clean up OneSettings.|
| 61    | Unexpected exception when attempting to clean up OneSettings.|
| 62    | AllowTelemetry registry key isn't of the correct type REG_DWORD|
| 63    | AllowTelemetry isn't set to the appropriate value and it couldn't be set by the script.|
| 64    | AllowTelemetry isn't of the correct type REG_DWORD.|
| 66    | Failed to verify UTC connectivity and recent uploads.|  
| 67    | Unexpected failure when verifying UTC CSP.|
| 91    | Failed to create new registry path for EnableAllowUCProcessing|
| 92    | Failed to create property for EnableAllowUCProcessing at registry path|
| 93    | Failed to update value for EnableAllowUCProcessing|
| 94    | Unexpected exception in EnableAllowUCProcessing|
| 95 | Failed to create new registry path for EnableAllowCommercialDataPipeline |
| 96 | Failed to create property for EnableAllowCommercialDataPipeline at registry path |
| 97 | Failed to update value for EnableAllowCommercialDataPipeline |
| 98 | Unexpected exception in EnableAllowCommercialDataPipeline |
| 99    | Device isn't Windows 10.|
| 100 | Device must be AADJ or hybrid AADJ to use Windows Update for Business reports or Update Compliance |
| 101 | Check AADJ failed with unexpected exception |