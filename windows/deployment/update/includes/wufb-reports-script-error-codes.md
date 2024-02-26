---
author: mestew
ms.author: mstewart
manager: aaroncz
ms.subservice: itpro-updates
ms.service: windows-client
ms.topic: include
ms.date: 07/11/2023
ms.localizationpriority: medium
---
<!--This file is shared by updates/wufb-reports-configuration-script.md and the update/update-compliance-configuration-script.md articles. Headings are driven by article context. Updated with 8099827 -->
| Error  | Description|
|---|---|
| 1    | Unexpected error |
| 12    | CheckVortexConnectivity failed, check the log output for more information. |
| 12    | Unexpected failure when running CheckVortexConnectivity.|
| 16    | Reboot is pending on device. Restart the device then re rerun the script.|
| 17    | Unexpected exception in CheckRebootRequired.|
| 27    | Not system account. |
| 30    | Unable to disable Enterprise Auth Proxy. This registry value must be 0 for UTC to operate in an authenticated proxy environment.|
| 34    | Unexpected exception when attempting to check proxy settings.|
| 35    | Unexpected exception when checking user proxy.|
| 37    | Unexpected exception when collecting logs.|
| 40    | Unexpected exception when checking and setting telemetry.|
| 41    | Unable to impersonate logged-on user.|
| 42    | Unexpected exception when attempting to impersonate logged-on user.|
| 43    | Unexpected exception when attempting to impersonate logged-on user.|
| 44    | Error when running CheckDiagTrack service.|
| 45    | DiagTrack.dll not found.|
| 50    | DiagTrack service not running.|
| 51    | Unexpected exception when attempting to run Census.exe. |
| 52    | Couldn't find Census.exe. |
| 54    | Microsoft Account Sign In Assistant (MSA) Service disabled.|
| 55    | Failed to create new registry path for SetDeviceNameOptIn.|
| 56    | Failed to create property for SetDeviceNameOptIn at registry path.|
| 57    | Failed to update value for SetDeviceNameOptIn. |
| 58    | Unexpected exception in SetDeviceNameOptIn.|
| 59    | Failed to delete LastPersistedEventTimeOrFirstBoot property at registry path when attempting to clean up OneSettings.|
| 60    | Failed to delete registry key when attempting to clean up OneSettings.|
| 61    | Unexpected exception when attempting to clean up OneSettings.|
| 62    | AllowTelemetry registry key isn't the correct type of REG_DWORD.|
| 63    | AllowTelemetry isn't set to the appropriate value and it couldn't be set by the script.|
| 64    | AllowTelemetry isn't the correct type of REG_DWORD.|
| 66    | Failed to verify UTC connectivity and recent uploads.|  
| 67    | Unexpected failure when verifying UTC CSP.|
| 99    | Device isn't Windows 10 or Windows 11.|
| 100   | Device must be Microsoft Entra joined or Microsoft Entra hybrid joined to use Windows Update for Business reports.|
| 101   | Check Microsoft Entra join failed with unexpected exception.|
| 102   | DisableOneSettingsDownloads policy shouldn't be enabled. Please disable this policy.|
