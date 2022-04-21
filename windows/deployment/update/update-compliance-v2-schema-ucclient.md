---
title: Update Compliance Data Schema - UCClient
ms.reviewer: 
manager: dougeby
description: UCClient schema
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: reference
---

# UCClient
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

> [!Important]
> This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

UCClient acts as an individual device's record. It contains data such as the currently installed build, the device's name, the OS Edition, and active hours (quantitative).

|Field |Type |Example |Description |
|---|---|---|---|
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Azure AD Device ID |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Azure AD Tenant ID |
| **City** |  [string](/azure/kusto/query/scalar-data-types/string) | `Redmond` | The last-reported location of device (city), based on IP address. |
| **Country** |  [string](/azure/kusto/query/scalar-data-types/string) | `US` | The last-reported location of device (country), based on IP address. Shown as country code. |
| **DeviceFamily** |  [string](/azure/kusto/query/scalar-data-types/string) | `PC, Phone` | The device family such as PC, Phone |
| **DeviceFormFactor** |  [string](/azure/kusto/query/scalar-data-types/string) | `Notebook` | The device form factor such as Notebook, Desktop, Phone |
| **DeviceManufacturer** |  [string](/azure/kusto/query/scalar-data-types/string) | `Hewlett-Packard` | The device OEM Manufacturer such as Hewlett-Packard |
| **DeviceModel** |  [string](/azure/kusto/query/scalar-data-types/string) | `HP7420 Workstation` | The device's OEM model such as HP7420 Workstation |
| **DeviceName** |  [string](/azure/kusto/query/scalar-data-types/string) | `JohnPC-Contoso` | Client-provided device name |
| **GlobalDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | The global device identifier. |
| **IsVirtual** | [bool](/azure/kusto/query/scalar-data-types/bool) | `TRUE` | Whether device is a Virtual Device |
| **LastCensusScanTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The last time this device performed a successful Census Scan, if any. |
| **LastWUScanTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The last time this device performed a successful WU Scan, if any. |
| **OSArchitecture** |  [string](/azure/kusto/query/scalar-data-types/string) | `x86` | The architecture of the OS (not the device) this device is currently on. |
| **OSBuild** |  [string](/azure/kusto/query/scalar-data-types/string) | `10.0.18363.836` | The full OS build installed on this device, such as Major.Minor.Build.Revision  |
| **OSBuildNumber** |  [int](/azure/kusto/query/scalar-data-types/int) | `da` | The Major, in int format, this device is on |
| **OSEdition** |  [string](/azure/kusto/query/scalar-data-types/string) | `Professional` | The Windows SKU/Edition |
| **OSFeatureUpdateComplianceStatus** |  [string](/azure/kusto/query/scalar-data-types/string)| `Compliant` | Whether or not the device is on the latest Feature Update being Offered by WUfB DS, else NotApplicable. |
| **OSFeatureUpdateEOSTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The end of service date of the Feature Update currently installed on the device. |
| **OSFeatureUpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The release date of the Feature Update currently installed on the device. |
| **OSFeatureUpdateStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `InService;EndOfService` | Whether or not the device is on the latest available Feature Update, for its Feature Update. |
| **OSQualityUpdateComplianceStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotCompliant` | Whether or not the device is on the latest Quality Update being Offered by WUfB DS, else NotApplicable. |
| **OSQualityUpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The release date of the Quality Update currently installed on the device. |
| **OSQualityUpdateStatus** |  [string](/azure/kusto/query/scalar-data-types/string)| `Latest;NotLatest` | Whether or not the device is on the latest available Quality Update, for its Feature Update. | 
| **OSRevisionNumber** |  [int](/azure/kusto/query/scalar-data-types/int) | `836` | The revision, in int format, this device is on. |
| **OSSecurityUpdateComplianceStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotCompliant` | Whether or not the device is on the latest Security update (QU, Classification=Security) being offered by WUfB DS, else NotApplicable. |
| **OSSecurityUpdateStatus** |  [string](/azure/kusto/query/scalar-data-types/string)| `Latest;NotLatest;MultipleSecurityUpdatesMissing` | Whether or not the device is on the latest available Security Update, for its Feature Update. |
| **OSServicingChannel** |  [string](/azure/kusto/query/scalar-data-types/string) | `SAC` | The elected Windows 10 Servicing Channel of the device. |
| **OSVersion** |  [string](/azure/kusto/query/scalar-data-types/string) | `1909` | The Win10 OS Version (such as 19H2, 20H1, 20H2) currently installed on the device. |
| **PrimaryDiskFreeCapacityMb** |  [int](/azure/kusto/query/scalar-data-types/int) | `1132` | Free disk capacity of the primary disk in megabytes. |
| **SCCMClientId** |  [string](/azure/kusto/query/scalar-data-types/string) | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration Manager Client ID, if available. |
| **TimeGenerated** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** |  [string](/azure/kusto/query/scalar-data-types/string) | `DeviceEvent` | The EntityType. |
| **UpdateConnectivityLevel** |  [string](/azure/kusto/query/scalar-data-types/string) | `Insufficient` | Whether or not this device is maintaining a sufficiently cumulative and continuous connection to Windows Update so the update can progress optimally.  |
| **WUAutomaticUpdates** |  [int](/azure/kusto/query/scalar-data-types/int) | `5` | CSP: AllowAutoUpdate &'AuOptions'  Enables the IT admin to manage automatic update behavior to scan, download, and install updates. |
| **WUDeadlineNoAutoRestart** |  [int](/azure/kusto/query/scalar-data-types/int) | `1` | CSP:ConfigureDeadlineNoAutoReboot. Devices won't automatically restart outside of active hours until the deadline is reached, 1 is Enabled, 0 is Disabled (default)|
| **WUDODownloadMode** |  [string](/azure/kusto/query/scalar-data-types/string) | `Simple (99)` | The WU DO DownloadMode configuration, brought over from Update Compliance. |
| **WUFeatureDeadlineDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | CSP: ConfigureDeadlineForFeatureUpdatesThe WU Feature Update deadline configuration in days. -1 indicates not configured, 0 indicates configured but set to 0. Values >0 indicate the deadline in days. |
| **WUFeatureDeferralDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | CSP: DeferFeatureUpdates. The WU Feature Update Deferral configuration in days. -1 indicates not configured, 0 indicates configured but set to 0. Values >0 indicate the policy setting. |
| **WUFeatureGracePeriodDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `7` | The WU grace period for feature update in days. -1 indicates not configured, 0 indicates configured and set to 0. Values greater than 0 indicate the Grace Period in days. |
| **WUFeaturePauseEndTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | CSP:PauseQualityUpdatesEndTimeThe time WU Feature Update Pause will end, if activated, else null. |
| **WUFeaturePauseStartTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | CSP: PauseFeatureUpdatesStartTime. The time WU Feature Update Pause was activated, if activated, else null. Feature Updates will be paused for 35 days from the specified start date. |
| **WUFeaturePauseState** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotConfigured` | Indicates pause status of device for FU, possible values are Paused, NotPaused, NotConfigured. |
| **WUNotificationLevel** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | CSP: UpdateNotificationLevel. This policy allows you to define what Windows Update notifications users see. </br> </br> 0 - Use the default Windows Update notifications (default) </br> 1 - Turn off all notifications, excluding restart warnings </br> 2 - Turn off all notifications, including restart warnings |
| **WUPauseUXDisabled** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | CSP: SetDisablePauseUXAccess. This policy allows the IT admin to disable the "Pause Updates" feature. When this policy is enabled, the user can't access the "Pause updates" feature. Supported values 0, 1. |
| **WUQualityDeadlineDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `7` | CSP: ConfigureDeadlineForQualityUpdates The WU Quality Update deadline configuration in days. -1 indicates not configured, 0 indicates configured but set to 0. Values > 0 indicate the deadline in days. |
| **WUQualityDeferralDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `-1` | CSP: DeferQualityUpdatesThe WU Quality Update Deferral configuration in days. -1 indicates not configured, 0 indicates configured but set to 0. Values greater than 0 indicate the policy setting. |
| **WUQualityGracePeriodDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | The WU grace period for quality update in days. -1 indicates not configured, 0 indicates configured and set to 0. Values greater than 0 indicate the Grace Period in days. |
| **WUQualityPauseEndTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | CSP:PauseQualityUpdatesEndTimeThe time WU Quality Update Pause will end, if activated, else null. |
| **WUQualityPauseStartTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | CSP:PauseQualityUpdatesStartTime The time WU Quality Update Pause was activated; if activated; else null. |
| **WUQualityPauseState** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotConfigured` | Indicates pause status of device for QU, possible values are Paused, NotPaused, NotConfigured. |
| **WURestartNotification** |  [int](/azure/kusto/query/scalar-data-types/int) | `1` | CSP: AutoRestartRequiredNotificationDismissal. Allows the IT Admin to specify the method by which the auto-restart required notification is dismissed. The following list shows the supported values: </br> </br> 1 is Auto Dismissal (default) </br> </br> 2 is User Dismissal. |
| **WUServiceURLConfigured** |  [string](/azure/kusto/query/scalar-data-types/string) | `http://abcd-srv:8530` | CSP:UpdateServiceUrl. The following list shows the supported values: </br> </br> Not configured: The device checks for updates from Microsoft Update. </br> </br>     Set to a URL, such as `http://abcd-srv:8530`: The device checks for updates from the WSUS server at the specified URL.|
| **WUUXDisabled** | [int](/azure/kusto/query/scalar-data-types/int) | `1` | CSP:SetDisableUXWUAccess.This policy allows the IT admin to remove access to scan Windows Update. When this policy is enabled, the user can't access the Windows Update scan, download, and install features. Default is 0. Supported values 0, 1. |

