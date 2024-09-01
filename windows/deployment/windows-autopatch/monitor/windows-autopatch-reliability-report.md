---
title: Reliability report
description: This article describes the reliability score for each Windows quality update cycle based on stop error codes detected on managed devices.
ms.date: 04/09/2024
ms.service: windows-client
ms.subservice: autopatch
ms.topic: how-to
ms.localizationpriority: medium
author: tiaraquan
ms.author: tiaraquan
manager: aaroncz
ms.reviewer: hathind
ms.collection:
  - highpri
  - tier1
---

# Reliability report (public preview)

> [!IMPORTANT]
> This feature is in **public preview**. It's being actively developed, and might not be complete.

The Reliability report provides a reliability score for each Windows quality update cycle based on [stop error codes](/troubleshoot/windows-client/performance/stop-error-or-blue-screen-error-troubleshooting) detected on managed devices. Scores are determined at both the service and tenant level. Details on modules associated with stop error codes at the tenant level are provided to better understand how devices are affected.

> [!NOTE]
> **The Reliability report applies to quality updates only**. The Reliability report doesn't currently support Windows feature updates.<p>Scores used in this report are calculated based on devices running both Windows 10 and Windows 11 versions.</p>

With this feature, IT admins can access the following information:

| Information type | Description |
| ----- | ----- |
| Your score | **Your score** is a calculated tenant reliability score based on stop error codes detected on managed devices that updated successfully during the current update cycle. **Your score** is the latest single-day score in the current Windows quality update cycle. The monthly score values can be viewed under the **Trending** tab. |
| Baseline | Use the **Baseline** to compare your score with past quality update cycles. You can choose the desired historical record from the **Comparison baseline** dropdown menu at the top of the page. **Baseline** is a single-day score calculated the same number of days from the start of patching as your score. |
| Service-level | Use the **Service-level** to compare **your score** with a score computed across tenants in the Azure Data Scale Unit covering your geographic region. **Service-level** is a single-day score calculated the same number of days from the start of patching as **your score**. |
| Score details | **Score details** provides information about specific modules associated with stop error code occurrence, occurrence rate, and affected devices. View single-day or multi-day results by selecting from the **Duration** menu. Data can be exported for offline reference. |
| Trending | **Trending** provides a graphical visualization of reliability scores at both tenant and service level on a customizable timeline of 1 - 12 months. Monthly scores represent the aggregated value for a complete update cycle (second Tuesday of the month). |
| Insights | **Insights** identifies noteworthy trends that might be useful in implementing reliability improvement opportunities. |
| Affected devices | **Affected devices** are the number of unique devices associated with stop error code events. |

## Report availability

The Reliability report relies on device policies being configured properly. It's important to confirm that the minimum requirements are met to access the full Reliability report.

| Data collection policies set | Devices registered in Autopatch | Devices updated | Report availability |
| ----- | ------ | ----- | ----- |
| No | - | - | No report available.<p>In this state, a ribbon appears on the landing page alerting the user that the diagnostic data needed to generate a report appears to be turned off. The report is available 24 and 48 hours after the following conditions are met:<ul><li>[Diagnostic data device configuration policies enabled](../references/windows-autopatch-changes-to-tenant.md#device-configuration-policies)</li><li>At least 100 devices registered in Autopatch</li><li>At least 100 of these registered devices completed a quality update in the current update cycle (second Tuesday of the month)</li></ul></p> |
| Yes | 0 | - | The report includes only the historical comparison baseline and service-level score. The tenant and module impact scores are unavailable until 100 devices are updated. |
| Yes | 0 < n < 100 | 0 < n < 100 | The report includes module failure details, historical comparison baseline, and service-level score. The tenant score is unavailable until 100 devices are updated. |
| Yes | n >= 100 | 0 < n < 100 | The report includes module failure details, historical comparison baseline score, and service-level score. The tenant and module impact scores are unavailable until 100 devices are updated. |
| Yes | n >= 100 | n >= 100 | Full reporting available |

## View the Reliability report

**To view the Reliability report:**

1. Go to the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
2. Navigate to **Reports** > **Windows Autopatch** > **Windows quality updates**.
3. Select the **Reports** tab.
4. Select **Reliability report**.

> [!NOTE]
> To use the Reliability report capability, ensure that at least 100 devices are registered in the Windows Autopatch service and capable of successfully completing a quality update. The report relies on device stop error code data being available to Microsoft (transmission of this data may take up to 24 hours).<p>A score is generated when:<ul><li>100 or more devices have completed updating to the latest quality update</li><li>Windows Autopatch receives the stop error code data related to that update cycle</li></ul><p>Windows Autopatch data collection must be enabled according to the [configuration policies](../references/windows-autopatch-changes-to-tenant.md#device-configuration-policies) set during tenant onboarding. For more information about data collection, see [Privacy](../overview/windows-autopatch-privacy.md)</p></p>

## Report information

The following information is available as default columns in the Reliability report:

> [!NOTE]
> The report is refreshed no more than once every 24 hours with data received from your Windows Autopatch managed devices. Manual data refresh is not supported. The last refreshed date and time can be found at the top of the page. For more information about how often Windows Autopatch receives data from your managed devices, see [Data latency](../operate/windows-autopatch-groups-windows-quality-and-feature-update-reports-overview.md#about-data-latency).

### Score details

| Column | Description |
| ----- | ----- |
| Module name | Name of module associated with stop error code detection. |
| Version | Version of module associated with stop error code detection. |
| Unique devices | Number of unique devices seeing a stop error code occurrence associated with a specific module name and version. This information is hyperlinked to the **Devices affected** flyout. |
| Total events | Total number of stop error codes detected associated with a specific module name and version. |
| Module score impact | **Your score** associated with specific module name and version. |
| Timeline | This information is hyperlinked to **Module details** flyout. |

### Export file

| Column | Description |
| ----- | ----- |
| DeviceName | Device name |
| MicrosoftEntraDeviceId | Microsoft Entra device ID |
| Model | Device model |
| Manufacturer | Device manufacturer |
| AutopatchGroup | Autopatch group assignment for the affected device |
| LatestOccurrence | Time of the most recent reported failure |
| WindowsVersion | Windows version (Windows 10 or Windows 11) |
| OSVersion | OS version |
| ModuleName | Name of the module associated with stop error code detection |
| Version | Version of the module associated with stop error code detection |
| BugCheckCode | Bug check code associated with stop error code |
| TenantId | Your Microsoft Entra tenant ID |

### Devices affected

| Column | Description |
| ----- | ----- |
| Device name | Device name |
| Microsoft Entra device ID | Microsoft Entra device ID |
| Model | Device model |
| Manufacturer | Device manufacturer |
| Autopatch group | Autopatch group assignment for the affected device |
| Latest occurrence | Time of the most recent reported failure |

### Module details

| Display selection | Description |
| ----- | ----- |
| Unique devices | Number of unique devices affected by module failure and the associated version |
| Total events | Number of occurrences by module failure and the associated version |
| Module impact | Score impact by module and version representing the relative importance of module failure. Higher positive values describe module failures that have a greater impact on the tenant and should be addressed with higher priority. Negative values describe module failures that have a lower-than-average impact on the tenant and thus can be treated with lower priority. Values around `0` describe module failures with average impact on the tenant. |

## Known limitations

The Reliability report supports tenant and service-level score data going back to September 2023. Data before that date isn't supported. A full 12 months of score data will be available to select from the menu dropdowns in September 2024.
