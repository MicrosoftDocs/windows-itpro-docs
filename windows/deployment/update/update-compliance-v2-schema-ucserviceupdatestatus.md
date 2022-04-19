---
title: Update Compliance Data Schema - UCServiceUpdateStatus
ms.reviewer: 
manager: dougeby
description: UCServiceUpdateStatus schema
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: reference
---

# UCServiceUpdateStatus

Update Event that comes directly from the service-side. The event has only service-side information for one device (client), and one update, in one deployment. This event has certain fields removed from it in favor of being able to show data in near real-time.

| Field | Type | Example | Description |
|---|---|---|---|
| **AzureADDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | If this DeviceUpdateEvent is from content deployed by a DSS policy, this GUID will map to that policy, otherwise it will be empty. |
| **AzureADTenantId** | [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | A GUID corresponding to the Azure AD Tenant to which the device belongs. |
| **DeploymentId** | [string](/azure/kusto/query/scalar-data-types/string) | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | If this DeviceUpdateEvent is from content deployed by a DSS policy, this GUID will map to that policy, otherwise it will be empty. |
| **DeploymentIsExpedited** | [bool](/azure/kusto/query/scalar-data-types/bool) | `FALSE` | Whether this content is being expedited by WUfB DS. |
| **GlobalDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | Microsoft internal Global Device Identifier |
| **OfferReadyTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | DateTime of OfferReady transition. If empty, not yet been Offered. |
| **ProjectedOfferReadyTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | Projected time update will be Offered to device. If empty, unknown.  |
| **ServiceState** | [string](/azure/kusto/query/scalar-data-types/string) | `Offering` | High-level state of update's status relative to device, service-side. |
| **ServiceSubstate** | [string](/azure/kusto/query/scalar-data-types/string) | `OfferReady` | Low-level state of update's status relative to device, service-side. |
| **ServiceSubstateRank** | [int](/azure/kusto/query/scalar-data-types/int) | `100` | Ranking of Substates for sequential ordering in funnel-type views. The rankings between ServiceSubstate and ClientSubstate can be used together. |
| **ServiceSubstateTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | DateTime of last ServiceSubstate transition. |
| **TargetBuild** | [string](/azure/kusto/query/scalar-data-types/string) | `10.0.18363.836` | The full build for the content this event is tracking. For Windows 10, this string corresponds to "10.0.Build.Revision" |
| **TargetVersion** | [int](/azure/kusto/query/scalar-data-types/int) | `1909` | The version of content this DeviceUpdateEvent is tracking. For Windows 10 updates, this number would correspond to the YR/MO version format used (1903). |
| **TimeGenerated** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | Time snapshot ran; OR same as EventDateTimeUTC in the case of NRT (future) |
| **Type** | [string](/azure/kusto/query/scalar-data-types/string) | `ServiceUpdateEvent` | The EntityType |
| **UpdateCategory** | [string](/azure/kusto/query/scalar-data-types/string) | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** | [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether this content is an Upgrade (FU), Security (QU), NonSecurity (QU) |
| **UpdateDisplayName** | [string](/azure/kusto/query/scalar-data-types/string) | `2022-04 Cumulative Update for Windows 10 Version 21H1 for x64-based Systems (KB5012599)` | Friendly update display name. For Windows OS updates, there's a naming convention. For D&F, it's DriverFileName |
| **UpdateManufacturer** | [string](/azure/kusto/query/scalar-data-types/string) | `Microsoft` | Manufacturer of update. Microsoft for WU FU/QU, for D&F name of driver manufacturer such as NVIDIA |
| **UpdateReleaseTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | DateTime of update's release date. |
