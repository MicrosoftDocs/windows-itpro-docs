---
title: Windows Update for Business reports Data Schema - UCClientUpdateStatus
manager: aaroncz
description: UCClientUpdateStatus schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: reference
ms.date: 06/05/2023
ms.technology: itpro-updates
---

# UCClientUpdateStatus
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

Update Event that combines the latest client-based data with the latest service-based data to create a complete picture for one device (client) and one update.

| Field | Type | Example | Description |
|---|---|---|---|
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | A string corresponding to the Azure AD tenant to which the device belongs. |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | A string corresponding to this device's Azure AD device ID |
|**CatalogId** | [string](/azure/kusto/query/scalar-data-types/string) | `b0f410599615e2ce15e6614ac3fc4ec62d80324020351e172edef89091a64f2f` | The update catalog ID | 
| **ClientState** |  [string](/azure/kusto/query/scalar-data-types/string) | `Installing` | Higher-level bucket of ClientSubstate. |
| **ClientSubstate** |  [string](/azure/kusto/query/scalar-data-types/string) | `DownloadStart` | Last-known state of this update relative to the device, from the client. |
| **ClientSubstateRank** |  [int](/azure/kusto/query/scalar-data-types/int)  | `2300` | Ranking of client substates for sequential ordering in funnel-type views. The rankings between ServiceSubstate and ClientSubstate can be used together. |
| **ClientSubstateTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | Date and time of last client substate transition |
| **DeploymentId** |  [string](/azure/kusto/query/scalar-data-types/string) | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | The identifier of the deployment that is targeting this update to this device, else empty. |
| **DeviceName** |  [string](/azure/kusto/query/scalar-data-types/string) | `JohnPC-Contoso` | Device's given name |
| **FurthestClientSubstate** |  [string](/azure/kusto/query/scalar-data-types/string) | `DownloadComplete` | Furthest clientSubstate |
| **FurthestClientSubstateRank** |  [int](/azure/kusto/query/scalar-data-types/int)  | `2400` | Ranking of furthest clientSubstate |
| **GlobalDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | Microsoft internal global device identifier |
| **IsUpdateHealty** | [bool](/azure/data-explorer/kusto/query/scalar-data-types/bool) | `1` | True: No issues preventing this device from updating to this update have been found. False: There is something that may prevent this device from updating. | 
| **OfferReceivedTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | Date and time when device last reported entering OfferReceived, else empty. |
| **RestartRequiredTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | Date and time when device first reported entering RebootRequired (or RebootPending), else empty.  |
| **SCCMClientId** |  [string](/azure/kusto/query/scalar-data-types/string) | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | A string corresponding to the Configuration Manager Client ID on the device. |
| **SourceSystem** | [string](/azure/kusto/query/scalar-data-types/string)|  `Azure`| |
| **TargetBuild** |  [string](/azure/kusto/query/scalar-data-types/string) | `10.0.18363.836` | The full build of the content this DeviceUpdateEvent is tracking. For Windows 10 updates, this value would correspond to the full build (10.0.14393.385). |
| **TargetBuildNumber** |  [int](/azure/kusto/query/scalar-data-types/int)  | `18363` | Integer of the Major portion of Build. |
| **TargetKBNumber** |  [string](/azure/kusto/query/scalar-data-types/string)  | `KB4524570` | KB Article. |
| **TargetRevisionNumber** |  [int](/azure/kusto/query/scalar-data-types/int)  | `836` | Integer or the minor (or revision) portion of the build. |
| **TargetVersion** |  [int](/azure/kusto/query/scalar-data-types/int)  | `1909` | The target operating system version, such as 1909. |
| **TimeGenerated** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** |  [string](/azure/kusto/query/scalar-data-types/string) | `DeviceUpdateEvent` | The EntityType |
| **UpdateCategory** |  [string](/azure/kusto/query/scalar-data-types/string) | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** |  [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether the update classification is an upgrade (feature update), security (quality update), non-security (quality update), or driver |
| **UpdateDisplayName** |  [string](/azure/kusto/query/scalar-data-types/string) | `Windows 10 1909` | The long-form display name for the given update. Varies on content type (feature update. quality update) |
| **UpdateId** | [string](/azure/kusto/query/scalar-data-types/string)  | `10e519f0-06ae-4141-8f53-afee63e995f0`  |Update ID of the targeted update|
| **UpdateInstalledTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | DateTime when event transitioned to UpdateInstalled, else empty. |
| **UpdateManufacturer** | [string](/azure/kusto/query/scalar-data-types/string) | `Microsoft` | Manufacturer of update. Microsoft for feature or quality updates, for drivers the name of driver manufacturer. |
| **UpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | The release date of the update |
| **UpdateSource** |  [string](/azure/kusto/query/scalar-data-types/string) | `UUP` | The source of the update such as UUP, MUv6, Media |
 