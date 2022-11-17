---
title: Windows Update for Business reports Data Schema - UCServiceUpdateStatus
ms.reviewer: 
manager: dougeby
description: UCServiceUpdateStatus schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
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
| **DeploymentId** | [string](/azure/kusto/query/scalar-data-types/string) | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | If this DeviceUpdateEvent is from content deployed by a deployment scheduler service policy, this GUID will map to that policy, otherwise it will be empty. |
| **GlobalDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | Microsoft internal global device identifier |
| **OfferReadyTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | DateTime of OfferReady transition. If empty, not yet been offered. |
| **ServiceState** | [string](/azure/kusto/query/scalar-data-types/string) | `Offering` | High-level state of update's status relative to device, service-side. |
| **ServiceSubstate** | [string](/azure/kusto/query/scalar-data-types/string) | `OfferReady` | Low-level state of update's status relative to device, service-side. |
| **ServiceSubstateTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | Date and time of last ServiceSubstate transition. |
| **TargetBuild** | [string](/azure/kusto/query/scalar-data-types/string) | `10.0.18363.836` | The full build for the content this event is tracking. For Windows 10, this string corresponds to "10.0.Build.Revision" |
| **TargetVersion** | [int](/azure/kusto/query/scalar-data-types/int) | `1909` | The version of content this DeviceUpdateEvent is tracking. For Windows 10 updates, this number would correspond to the year/month version format used, such as 1903. |
| **TimeGenerated** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | Time the snapshot ran  can also be the same as EventDateTimeUTC in some cases. |
| **Type** | [string](/azure/kusto/query/scalar-data-types/string) | `ServiceUpdateEvent` | The EntityType |
| **UpdateCategory** | [string](/azure/kusto/query/scalar-data-types/string) | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** | [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether this update is an upgrade (feature update), security (quality update), non-security (quality update) |
