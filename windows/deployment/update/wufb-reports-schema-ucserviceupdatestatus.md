---
title: UCServiceUpdateStatus data schema
titleSuffix: Windows Update for Business reports
description: UCServiceUpdateStatus schema for Windows Update for Business reports. UCServiceUpdateStatus has service-side information for one device and one update.
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

# UCServiceUpdateStatus
<!--37063317, 30141258, 37063041-->
Update Event that comes directly from the service-side. The event has only service-side information for one device (client), and one update, in one deployment. This event has certain fields removed from it in favor of being able to show data in near real time.

## Schema for UCServiceUpdateStatus
<!--8506381--> 
| Field |Type | Enumerated type |Example |Description |
|---|---|---|---|---|
| **AzureADDeviceId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Microsoft Entra Device ID |
| **AzureADTenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID |
| **CatalogId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `b0f410599615e2ce15e6614ac3fc4ec62d80324020351e172edef89091a64f2f` | This field applies to drivers only. The Catalog ID of the update from Windows Autopatch. |
| **DeploymentApprovedTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | This field applies to drivers only. Date and time of the update approval |
| **DeploymentId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | If this DeviceUpdateEvent is from content deployed by a deployment scheduler service policy, this GUID maps to that policy, otherwise it's empty. |
| **DeploymentIsExpedited** | [bool](/azure/data-explorer/kusto/query/scalar-data-types/bool) | No | `1` | Currently, data isn't gathered to populate this field. It indicated whether the content is being expedited |
| **DeploymentName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `My deployment` | Currently, data isn't gathered to populate this field. Friendly name of the created deployment |
| **DeploymentRevokeTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | This field applies to drivers only. Date and time the update was revoked |
| **GlobalDeviceId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `g:9832741921341` | Currently, data isn't gathered to populate this field. Microsoft internal global device identifier |
| **OfferReadyTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | DateTime of OfferReady transition. If empty, not yet been offered. |
| **PolicyCreatedTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | This field applies to drivers only. Date and time the policy was created |
| **PolicyId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `9011c330-1234-5678-9abc-def012345678` | This field applies to drivers only. The policy identifier targeting the update to this device |
| **PolicyName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `My policy` | Currently, data isn't gathered to populate this field. This field applies to drivers only. Friendly name of the policy. |
| **ProjectedOfferReadyTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | Projected time update will be offered to device. If empty, unknown. |
| **ServiceState** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Offering` | High-level state of update's status relative to device, service-side. |
| **ServiceSubstate** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `OfferReady` | Low-level state of update's status relative to device, service-side. |
| **ServiceSubstateRank** | [int](/azure/kusto/query/scalar-data-types/int) | No |  | Currently, data isn't gathered to populate this field. Ranking of Substates for sequential ordering in funnel-type views. The rankings between ServiceSubstate and ClientSubstate can be used together. |
| **ServiceSubstateTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | Date and time of last ServiceSubstate transition. |
| **SourceSystem** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Azure` |  |
| **TargetBuild** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `10.0.18363.836` | The full build for the content this event is tracking. For Windows 10, this string corresponds to "10.0.Build.Revision" |
| **TargetVersion** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `1909` | The version of content this DeviceUpdateEvent is tracking. For Windows 10 updates, this number would correspond to the year/month version format used, such as 1903. |
| **TenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `9011c330-1234-5678-9abc-def012345678` | Microsoft Entra tenant ID |
| **TimeGenerated [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) |  |  `2020-05-14 09:26:03.478039` | Time the snapshot ran can also be the same as EventDateTimeUTC in some cases. |
| **Type** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `UCServiceUpdateStatus` | The entity type |
| **UdpateIsSystemManifest** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |  | Currently, data isn't gathered to populate this field. This field applies to drivers only.  |
| **UpdateCategory** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Upgrade` | Whether this update is an upgrade (feature update), security (quality update), nonsecurity (quality update), or driver |
| **UpdateDisplayName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Windows 10 1909` | The long-form display name for the given update. Varies on content type (feature update. quality update) |
| **UpdateId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `10e519f0-06ae-4141-8f53-afee63e995f0` | This field applies to drivers only. Update ID of the targeted update |
| **UpdateManufacturer** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Microsoft` | This field applies to drivers only. Manufacturer of update. Microsoft for feature or quality updates, for drivers the name of driver manufacturer. |
| **UpdateProvider** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Microsoft` | This field applies to drivers only. Update provider of drivers and firmware |
| **UpdateRecommendedTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | This field applies to drivers only. Date and time when the update was recommended to the device |
| **UpdateReleaseTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | Currently, data isn't gathered to populate this field. The release date of the update |
| **UpdateVersion** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `20.0.19.3` | This field applies to drivers only. Update version of drivers or firmware |
| **UpdateVersionTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | This field applies to drivers only. Update version date time stamp for drivers and firmware |
