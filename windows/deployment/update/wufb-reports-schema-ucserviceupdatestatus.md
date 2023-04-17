---
title: Windows Update for Business reports Data Schema - UCServiceUpdateStatus
manager: aaroncz
description: UCServiceUpdateStatus schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: reference
ms.date: 06/06/2022
ms.technology: itpro-updates
---

# UCServiceUpdateStatus
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

Update Event that comes directly from the service-side. The event has only service-side information for one device (client), and one update, in one deployment. This event has certain fields removed from it in favor of being able to show data in near real time.

| Field | Type | Example | Description |
|---|---|---|---|
| **AzureADDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | If this DeviceUpdateEvent is from content deployed by a deployment scheduler service policy, this GUID will map to that policy, otherwise it will be empty. |
| **AzureADTenantId** | [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | A GUID corresponding to the Azure AD tenant to which the device belongs. |
|**CatalogId** | [string](/azure/kusto/query/scalar-data-types/string) | `b0f410599615e2ce15e6614ac3fc4ec62d80324020351e172edef89091a64f2f` | The update catalog ID | 
| **DeploymentApprovedTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2022-05-14 09:26:03.478039` | Date and time of the update approval |
| **DeploymentId** | [string](/azure/kusto/query/scalar-data-types/string) |`cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | If this DeviceUpdateEvent is from content deployed by a deployment scheduler service policy, this GUID will map to that policy, otherwise it will be empty. |
| **DeploymentName** | [string](/azure/kusto/query/scalar-data-types/string) |`My deployment` | Friendly name of the created deployment | 
| **DeploymentIsExpedited** | [bool](/azure/data-explorer/kusto/query/scalar-data-types/bool) | `1` | Whether the content is being expedited | 
| **DeploymentRevokeTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2022-05-14 09:26:03.478039` | Date and time the update was revoked |
| **GlobalDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | Microsoft internal global device identifier |
| **OfferReadyTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | DateTime of OfferReady transition. If empty, not yet been offered. |
| **PolicyCreatedTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | Date and time the policy was created |
| **PolicyId** | [string](/azure/kusto/query/scalar-data-types/string) | `9011c330-1234-5678-9abc-def012345678` | The policy identifier targeting the update to this device |
| **PolicyName** | [string](/azure/kusto/query/scalar-data-types/string) | `My policy` | Friendly name of the policy |
| **ServiceState** | [string](/azure/kusto/query/scalar-data-types/string) | `Offering` | High-level state of update's status relative to device, service-side. |
| **ServiceSubstate** | [string](/azure/kusto/query/scalar-data-types/string) | `OfferReady` | Low-level state of update's status relative to device, service-side. |
| **ServiceSubstateTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | Date and time of last ServiceSubstate transition. |
| **SourceSystem** | [string](/azure/kusto/query/scalar-data-types/string)|  `Azure`| |
| **TargetBuild** | [string](/azure/kusto/query/scalar-data-types/string) | `10.0.18363.836` | The full build for the content this event is tracking. For Windows 10, this string corresponds to "10.0.Build.Revision" |
| **TargetVersion** | [int](/azure/kusto/query/scalar-data-types/int) | `1909` | The version of content this DeviceUpdateEvent is tracking. For Windows 10 updates, this number would correspond to the year/month version format used, such as 1903. |
| **TenantId** | [string](/azure/kusto/query/scalar-data-types/string) | `9011c330-1234-5678-9abc-def012345678`  | Azure AD tenant ID |
| **TimeGenerated** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | Time the snapshot ran  can also be the same as EventDateTimeUTC in some cases. |
| **Type** | [string](/azure/kusto/query/scalar-data-types/string) | `ServiceUpdateEvent` | The EntityType |
| **UpdateCategory** | [string](/azure/kusto/query/scalar-data-types/string) | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** | [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether this update is an upgrade (feature update), security (quality update), non-security (quality update), or driver |
| **UpdateDisplayName** |  [string](/azure/kusto/query/scalar-data-types/string) | `Windows 10 1909` | The long-form display name for the given update. Varies on content type (feature update. quality update) |
| **UpdateId** | [string](/azure/kusto/query/scalar-data-types/string)  | `10e519f0-06ae-4141-8f53-afee63e995f0`  |Update ID of the targeted update|
| **UpdateManufacturer** | [string](/azure/kusto/query/scalar-data-types/string) | `Microsoft` | Manufacturer of update. Microsoft for feature or quality updates, for drivers the name of driver manufacturer. |
|**UpdateProvider** | [string](/azure/kusto/query/scalar-data-types/string) | `Microsoft` | Update provider of drivers and firmware |
| **UpdateRecommendedTime** |[datetime](/azure/kusto/query/scalar-data-types/datetime) | `2022-05-14 09:26:03.478039` | Date and time when the update was recommended to the device |
| **UpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | The release date of the update |
|**UpdateVersion** | [string](/azure/kusto/query/scalar-data-types/string) | `20.0.19.3` | Update version of drivers or firmware |
| **UpdateVersionTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | Update version  date time stamp for drivers and firmware |
