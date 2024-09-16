---
title: UCClient data schema
titleSuffix: Windows Update for Business reports
description: UCClient schema for Windows Update for Business reports. UCClient acts as an individual device's record.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 03/12/2024
---

# UCClient
<!--37063317, 30141258, 37063041-->
UCClient acts as an individual device's record. It contains data such as the currently installed build, the device's name, the OS edition, and active hours (quantitative).

## Schema for UCClient
<!--8506381-->
| Field |Type | Enumerated type |Example |Description |
|---|---|---|---|---|
| **AzureADDeviceID** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Microsoft Entra Device ID |
| **AzureADTenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID |
| **City** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |   | Currently, data isn't gathered to populate this field. Device city, based on IP address. |
| **Country** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `US` | The last-reported location of device (country or region), based on IP address. Shown as country code. |
| **DeviceFamily** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `PC, Phone` | The device family such as PC, Phone. |
| **DeviceFormFactor** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Notebook, Desktop, Phone.` | Currently, data isn't gathered to populate this field. The device form factor |
| **DeviceManufacturer** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Hewlett-Packard.` | Currently, data isn't gathered to populate this field. The device OEM manufacturer |
| **DeviceModel** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `The device's OEM model ` | Currently, data isn't gathered to populate this field. The device OEM model |
| **DeviceName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `JohnPC-Contoso` | Client-provided device name |
| **GlobalDeviceId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `g:9832741921341` | The global device identifier |
| **IsVirtual** | [bool](/azure/data-explorer/kusto/query/scalar-data-types/bool) | No | `Yes, No` | Whether device is a virtual device. |
| **LastCensusScanTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The last time this device performed a successful census scan, if any. |
| **LastWUScanTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The last time this device performed a successful Windows Update scan, if any. |
| **OSArchitecture** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `x86` | The architecture of the operating system (not the device) this device is currently on. |
| **OSBuild** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `10.0.22621.1702` | The full operating system build installed on this device, such as Major.Minor.Build.Revision |
| **OSBuildNumber** | [int](/azure/kusto/query/scalar-data-types/int) | No | `22621` | The major build number, in int format, the device is using. |
| **OSEdition** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Professional` | The Windows edition |
| **OSFeatureUpdateComplianceStatus** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Compliant` | Whether the device is on the latest feature update that's offered from Windows Autopatch, else NotApplicable. |
| **OSFeatureUpdateEOSTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The end of service date of the feature update currently installed on the device. |
| **OSFeatureUpdateReleaseTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The release date of the feature update currently installed on the device. |
| **OSFeatureUpdateStatus** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `InService;EndOfService` | Whether the device is on the latest available feature update, for its feature update. |
| **OSQualityUpdateComplianceStatus** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `NotCompliant` | Whether the device is on the latest quality update that's offered from Windows Autopatch, else NotApplicable. |
| **OSQualityUpdateReleaseTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The release date of the quality update currently installed on the device. |
| **OSQualityUpdateStatus** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Latest;NotLatest` | Whether the device is on the latest available quality update, for its feature update. |
| **OSRevisionNumber** | [int](/azure/kusto/query/scalar-data-types/int) | No | `836` | The revision, in int format, this device is on. |
| **OSSecurityUpdateComplianceStatus** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `NotCompliant` | Whether the device is on the latest security update (quality update where the Classification=Security) that's offered from Windows Autopatch, else NotApplicable. |
| **OSSecurityUpdateStatus** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Latest;NotLatest;MultipleSecurityUpdatesMissing` | Whether the device is on the latest available security update, for its feature update. |
| **OSServicingChannel** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `SAC` | The elected Windows 10 servicing channel of the device. |
| **OSVersion** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `1909` | The Windows 10 operating system version currently installed on the device, such as 19H2, 20H1, 20H2. |
| **PrimaryDiskFreeCapacityMb** |  | No |   | Currently, data isn't gathered to populate this field. Free disk capacity of the primary disk in Megabytes. |
| **SCCMClientId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration Manager client ID, if available. |
| **SourceSystem** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Azure` |  |
| **TenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID of the device. |
| **TimeGenerated [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This field is to determine to which batch snapshot this record belongs. |
| **Type** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `UCClient` | The entity type |
| **UpdateConnectivityLevel** |  | Yes | | Currently, data isn't gathered to populate this field. Whether or not this device is maintaining a sufficiently cumulative and continuous connection to Windows Update so the update can progress optimally. |
| **WUAutomaticUpdates** | | No |  | Currently, data isn't gathered to populate this field. Manage automatic update behavior to scan, download, and install updates. |
| **WUDeadlineNoAutoRestart** |  | No | | Currently, data isn't gathered to populate this field. Devices won't automatically restart outside of active hours until the deadline is reached - It's 1 by default and indicates enabled, 0 indicates disabled |
| **WUDODownloadMode** | | No |  | Currently, data isn't gathered to populate this field. The Windows Update DO DownloadMode configuration. |
| **WUFeatureDeadlineDays** | [int](/azure/kusto/query/scalar-data-types/int) | No | `0` | CSP: ConfigureDeadlineForFeatureUpdates. The feature update deadline configuration in days. -1 indicates not configured. 0 indicates configured but set to 0. Values > 0 indicate the deadline in days. |
| **WUFeatureDeferralDays** | [int](/azure/kusto/query/scalar-data-types/int) | No | `0` | CSP: DeferFeatureUpdates. The feature update deferral configuration in days. -1 indicates not configured. 0 indicates configured but set to 0. Values > 0 indicate the policy setting. |
| **WUFeatureGracePeriodDays** | [int](/azure/kusto/query/scalar-data-types/int) | No | `7` | The Windows Update grace period for feature update in days. -1 indicates not configured. 0 indicates configured and set to 0. Values greater than 0 indicate the grace period in days. |
| **WUFeaturePauseEndTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | Currently, data isn't gathered to populate this field. The time Windows Update feature update pause ends, if activated, else null. |
| **WUFeaturePauseStartTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | Currently, data isn't gathered to populate this field. The time Windows Update feature update pause was activated, if activated, else null. Feature updates are paused for 35 days from the specified start date. |
| **WUFeaturePauseState** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `NotConfigured` | Indicates pause status of device for feature updates. Possible values are Paused, NotPaused, NotConfigured. |
| **WUNotificationLevel** | |  No |  | Currently, data isn't gathered to populate this field. This policy allows you to define what Windows Update notifications users see. 0 (default) - Use the default Windows Update notifications. 1 - Turn off all notifications, excluding restart warnings. 2 - Turn off all notifications, including restart warnings |
| **WUPauseUXDisabled** | |  No |  | Currently, data isn't gathered to populate this field. This policy allows the IT admin to disable the Pause Updates feature. When this policy is enabled, the user can't access the Pause updates' feature. Supported values 0, 1. |
| **WUQualityDeadlineDays** | [int](/azure/kusto/query/scalar-data-types/int) | No | `7` | CSP: ConfigureDeadlineForQualityUpdates. The Windows update quality update deadline configuration in days. -1 indicates not configured. 0 indicates configured but set to 0. Values > 0 indicate the deadline in days. |
| **WUQualityDeferralDays** | [int](/azure/kusto/query/scalar-data-types/int) | No | `-1` | CSP: DeferQualityUpdates. The Windows Update quality update deferral configuration in days. -1 indicates not configured. 0 indicates configured but set to 0. Values greater than 0 indicate the policy setting. |
| **WUQualityGracePeriodDays** | [int](/azure/kusto/query/scalar-data-types/int) | No | `0` | The Windows Update grace period for quality update in days. -1 indicates not configured. 0 indicates configured and set to 0. Values greater than 0 indicate the grace period in days. |
| **WUQualityPauseEndTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | Currently, data isn't gathered to populate this field. The time the quality update pause ends, if activated, else null. |
| **WUQualityPauseStartTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | Currently, data isn't gathered to populate this field. The time Windows Update quality update pause- was activated; if activated; else null. |
| **WUQualityPauseState** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `NotConfigured` | Indicates pause status of device for quality updates. Possible values are Paused, NotPaused, NotConfigured. |
| **WURestartNotification** | |  No |  | Currently, data isn't gathered to populate this field. Allows the IT Admin to specify the method by which the auto restart required notification is dismissed. The following list shows the supported values:  1 (default) = Auto Dismissal. 2 - User Dismissal. |
| **WUServiceURLConfigured**| | No |  | Currently, data isn't gathered to populate this field. The device checks for updates from Microsoft Update. Set to a URL, such as http://abcd-srv:8530. The device checks for updates from the WSUS server at the specified URL. Not configured. The device checks for updates from Microsoft Update. Set to a URL, such as http://abcd-srv:8530. The device checks for updates from the WSUS server at the specified URL. |
| **WUUXDisabled** | |  No | | Currently, data isn't gathered to populate this field. This policy allows the IT admin to remove access to scan Windows Update. When this policy is enabled, the user can't access the Windows Update scan, download, and install features. Default is 0. Supported values 0, 1. |
