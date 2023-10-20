---
title: UCClient data schema
titleSuffix: Windows Update for Business reports
description: UCClient schema for Windows Update for Business reports. UCClient acts as an individual device's record.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 08/09/2023
---

# UCClient
<!--37063317, 30141258, 37063041-->
UCClient acts as an individual device's record. It contains data such as the currently installed build, the device's name, the OS edition, and active hours (quantitative).

## Schema for UCClient

|Field |Type |Example |Description |
|---|---|---|---|
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Microsoft Entra Device ID |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID |
| **Country** |  [string](/azure/kusto/query/scalar-data-types/string) | `US` | The last-reported location of device (country or region), based on IP address. Shown as country code. |
| **DeviceFamily** |  [string](/azure/kusto/query/scalar-data-types/string) | `PC, Phone` | The device family such as PC, Phone. |
| **DeviceName** |  [string](/azure/kusto/query/scalar-data-types/string) | `JohnPC-Contoso` | Client-provided device name |
| **GlobalDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | The global device identifier |
| **LastCensusScanTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The last time this device performed a successful census scan, if any. |
| **LastWUScanTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The last time this device performed a successful Windows Update scan, if any. |
| **OSArchitecture** |  [string](/azure/kusto/query/scalar-data-types/string) | `x86` | The architecture of the operating system (not the device) this device is currently on. |
| **OSBuild** |  [string](/azure/kusto/query/scalar-data-types/string) | `10.0.22621.1702` | The full operating system build installed on this device, such as Major.Minor.Build.Revision  |
| **OSBuildNumber** |  [int](/azure/kusto/query/scalar-data-types/int) | `22621` | The major build number, in int format, the device is using. |
| **OSEdition** |  [string](/azure/kusto/query/scalar-data-types/string) | `Professional` | The Windows edition |
| **OSFeatureUpdateComplianceStatus** |  [string](/azure/kusto/query/scalar-data-types/string)| `Compliant` | Whether or not the device is on the latest feature update that's offered from the Windows Update for Business deployment service, else NotApplicable. |
| **OSFeatureUpdateEOSTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The end of service date of the feature update currently installed on the device. |
| **OSFeatureUpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The release date of the feature update currently installed on the device. |
| **OSFeatureUpdateStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `InService;EndOfService` | Whether or not the device is on the latest available feature update, for its feature update. |
| **OSQualityUpdateComplianceStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotCompliant` | Whether or not the device is on the latest quality update that's offered from the Windows Update for Business deployment service, else NotApplicable. |
| **OSQualityUpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The release date of the quality update currently installed on the device. |
| **OSQualityUpdateStatus** |  [string](/azure/kusto/query/scalar-data-types/string)| `Latest;NotLatest` | Whether or not the device is on the latest available quality update, for its feature update. | 
| **OSRevisionNumber** |  [int](/azure/kusto/query/scalar-data-types/int) | `836` | The revision, in int format, this device is on. |
| **OSSecurityUpdateComplianceStatus** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotCompliant` | Whether or not the device is on the latest security update (quality update where the Classification=Security) that's offered from the Windows Update for Business deployment service, else NotApplicable. |
| **OSSecurityUpdateStatus** |  [string](/azure/kusto/query/scalar-data-types/string)| `Latest;NotLatest;MultipleSecurityUpdatesMissing` | Whether or not the device is on the latest available security update, for its feature update. |
| **OSServicingChannel** |  [string](/azure/kusto/query/scalar-data-types/string) | `SAC` | The elected Windows 10 servicing channel of the device. |
| **OSVersion** |  [string](/azure/kusto/query/scalar-data-types/string) | `1909` | The Windows 10 operating system version currently installed on the device, such as 19H2, 20H1, 20H2. |
| **SCCMClientId** |  [string](/azure/kusto/query/scalar-data-types/string) | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration Manager client ID, if available. |
| **TimeGenerated** |  [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This field is to determine to which batch snapshot this record belongs. |
| **Type** |  [string](/azure/kusto/query/scalar-data-types/string) | `DeviceEvent` | The EntityType. |
| **WUFeatureDeadlineDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | CSP: ConfigureDeadlineForFeatureUpdates. The Windows update feature update deadline configuration in days. `-1` indicates not configured, `0` indicates configured but set to `0`. Values > `0` indicate the deadline in days. |
| **WUFeatureDeferralDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | CSP: DeferFeatureUpdates. The Windows update feature update deferral configuration in days. `-1` indicates not configured, `0` indicates configured but set to `0`. Values > `0` indicate the policy setting. |
| **WUFeatureGracePeriodDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `7` | The Windows Update grace period for feature update in days. -1 indicates not configured, `0` indicates configured and set to `0`. Values greater than `0` indicate the grace period in days. |
| **WUFeaturePauseState** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotConfigured` | Indicates pause status of device for feature updates, possible values are Paused, NotPaused, NotConfigured. |
| **WUQualityDeadlineDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `7` | CSP: ConfigureDeadlineForQualityUpdates. The Windows update quality update deadline configuration in days. `-1` indicates not configured, `0` indicates configured but set to `0`. Values > `0` indicate the deadline in days. |
| **WUQualityDeferralDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `-1` | CSP: DeferQualityUpdates. The Windows Update quality update deferral configuration in days. `-1` indicates not configured, `0` indicates configured but set to `0`. Values greater than `0` indicate the policy setting. |
| **WUQualityGracePeriodDays** |  [int](/azure/kusto/query/scalar-data-types/int) | `0` | The Windows Update grace period for quality update in days. `-1` indicates not configured, `0` indicates configured and set to `0`. Values greater than `0` indicate the grace period in days. |
| **WUQualityPauseState** |  [string](/azure/kusto/query/scalar-data-types/string) | `NotConfigured` | Indicates pause status of device for quality updates, possible values are Paused, NotPaused, NotConfigured. |
