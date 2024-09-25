---
title: UCClientUpdateStatus data schema
titleSuffix: Windows Update for Business reports
description: UCClientUpdateStatus schema for Windows Update for Business reports. UCClientUpdateStatus combines the latest client-based data with the latest service data.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 12/06/2023
---

# UCClientUpdateStatus
<!--37063317, 30141258, 37063041-->

Update Event that combines the latest client-based data with the latest service-based data to create a complete picture for one device (client) and one update.

## Schema for UCClientUpdateStatus
<!--8506381-->
|Field |Type | Enumerated type |Example |Description |
|---|---|---|---|---|
| **AzureADDeviceId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Microsoft Entra Device ID |
| **AzureADTenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID |
| **CatalogId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `b0f410599615e2ce15e6614ac3fc4ec62d80324020351e172edef89091a64f2f` | This field applies to drivers only. The Catalog ID of the update from Windows Autopatch. |
| **ClientState** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Installing` | This field applies to drivers only. Higher-level bucket of ClientSubstate. |
| **ClientSubstate** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `DownloadStart` | Last-known state of this update relative to the device, from the client. |
| **ClientSubstateRank** | [int](/azure/kusto/query/scalar-data-types/int) | No | `2300` | Ranking of client substates for sequential ordering in funnel-type views. The rankings between ServiceSubstate and ClientSubstate can be used together. |
| **ClientSubstateTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No | `2020/05/14 09:26:03.478 AM` | Date and time of last client substate transition |
| **DeploymentId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | The identifier of the deployment that is targeting this update to this device, else empty. |
| **DeviceName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `JohnPC-Contoso` | Device's given name |
| **EventData** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |   | Currently, data isn't gathered to populate this field. Json to fill with arbitrary K/V pairs. Used to populate contextual data that would otherwise be sparsely populated if elevated to a field always present in the schema. |
| **FurthestClientSubstate** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `DownloadComplete` | Furthest clientSubstate |
| **FurthestClientSubstateRank** | [int](/azure/kusto/query/scalar-data-types/int) | No | `2400` | Ranking of furthest clientSubstate |
| **GlobalDeviceId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `g:9832741921341` | Microsoft internal global device identifier |
| **IsUpdateHealthy** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `1` | Currently, data isn't gathered to populate this field. True: No issues preventing this device from updating to this update have been found. False: There's something that may prevent this device from updating. |
| **OfferReceivedTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No | `2020/05/14 09:26:03.478 AM` | Date and time when device last reported entering OfferReceived, else empty. |
| **RestartRequiredTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No | `2020/05/14 09:26:03.478 AM` | Date and time when device first reported entering RebootRequired (or RebootPending), else empty. |
| **SCCMClientId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | A string corresponding to the Configuration Manager Client ID on the device. |
| **SourceSystem** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Azure` |  |
| **TargetBuild** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `10.0.18363.836` | The full build of the content this DeviceUpdateEvent is tracking. For Windows 10 updates, this value would correspond to the full build (10.0.14393.385). |
| **TargetBuildNumber** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `18363` | Integer of the Major portion of Build. |
| **TargetKBNumber** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `KB4524570` | KB Article. |
| **TargetRevisionNumber** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `836` | Integer or the minor (or revision) portion of the build. |
| **TargetVersion** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `1909` | The target operating system version, such as 1909. |
| **TenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID of the device. |
| **TimeGenerated [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No | `2020/05/14 09:26:03.478 AM` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `UCClientUpdateStatus` | The entity type |
| **UpdateCategory** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Upgrade` | Whether the update classification is an upgrade (feature update), security (quality update), nonsecurity (quality update), or driver |
| **UpdateConnectivityLevel** |  | Yes |   | Currently, data isn't gathered to populate this field. Whether or not this device is maintaining a sufficiently cumulative and continuous connection to Windows Update so the update can progress optimally. |
| **UpdateDisplayName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Windows 10 1909` | The long-form display name for the given update. Varies on content type (feature update. quality update) |
| **UpdateHealthGroupL1** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |   | Currently, data isn't gathered to populate this field. Grouping design to describe the current update installation's "health", L1 (highest-level). |
| **UpdateHealthGroupL2** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |   | Currently, data isn't gathered to populate this field. Integer for ranking the L1 UpdateHealthGroup. |
| **UpdateHealthGroupL3** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |   | Currently, data isn't gathered to populate this field. Second grouping, subset of L1, more detailed. |
| **UpdateHealthGroupRankL1** | [int](/azure/kusto/query/scalar-data-types/int) | No |   | Currently, data isn't gathered to populate this field. Integer for ranking the L2 UpdateHealthGroup. |
| **UpdateHealthGroupRankL2** | [int](/azure/kusto/query/scalar-data-types/int) | No |   | Currently, data isn't gathered to populate this field. Third grouping, subset of L3, more detailed. |
| **UpdateHealthGroupRankL3** | [int](/azure/kusto/query/scalar-data-types/int) | No |   | Currently, data isn't gathered to populate this field. Integer for ranking the L3 UpdateHealthGroup. |
| **UpdateId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `10e519f0-06ae-4141-8f53-afee63e995f0` | This field applies to drivers only. Update ID of the targeted update |
| **UpdateInstalledTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No | `2020/05/14 09:26:03.478 AM` | DateTime when event transitioned to UpdateInstalled, else empty. |
| **UpdateManufacturer** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Microsoft` | This field applies to drivers only. Manufacturer of update. Microsoft for feature or quality updates, for drivers the name of driver manufacturer. |
| **UpdateReleaseTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No | `2020/05/14 09:26:03.478 AM` | The release date of the update |
| **UpdateSource** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `UUP` | The source of the update such as UUP, MUv6, Media |
