---
title: UCClientUpdateStatus data schema
titleSuffix: Windows Update for Business reports
description: UCClientUpdateStatus schema for Windows Update for Business reports. UCClientUpdateStatus combines the latest client-based data with the latest service data.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: reference
author: mestew
ms.author: mstewart
manager: aaroncz
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>	
ms.date: 11/10/2023
---

# UCClientUpdateStatus
<!--37063317, 30141258, 37063041-->

Update Event that combines the latest client-based data with the latest service-based data to create a complete picture for one device (client) and one update.

## Schema for UCClientUpdateStatus

| Field | Type | Example | Description |
|---|---|---|---|
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | A string corresponding to the Microsoft Entra tenant to which the device belongs. |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | A string corresponding to this device's Microsoft Entra device ID |
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
| **IsUpdateHealty** | [bool](/azure/data-explorer/kusto/query/scalar-data-types/bool) | `1` | True: No issues preventing this device from updating to this update have been found. False: There's something that may prevent this device from updating. | 
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
| **UpdateClassification** |  [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether the update classification is an upgrade (feature update), security (quality update), nonsecurity (quality update), or driver |
| **UpdateDisplayName** |  [string](/azure/kusto/query/scalar-data-types/string) | `Windows 10 1909` | The long-form display name for the given update. Varies on content type (feature update. quality update) |
| **UpdateId** | [string](/azure/kusto/query/scalar-data-types/string)  | `10e519f0-06ae-4141-8f53-afee63e995f0`  |Update ID of the targeted update|
| **UpdateInstalledTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | DateTime when event transitioned to UpdateInstalled, else empty. |
| **UpdateManufacturer** | [string](/azure/kusto/query/scalar-data-types/string) | `Microsoft` | Manufacturer of update. Microsoft for feature or quality updates, for drivers the name of driver manufacturer. |
| **UpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | The release date of the update |
| **UpdateSource** |  [string](/azure/kusto/query/scalar-data-types/string) | `UUP` | The source of the update such as UUP, MUv6, Media |
 
----

|Field |Type | ENUM |Example |Description |
|---|---|---|---|---|
| **AlertClassification** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `Error` | Whether this alert is an error, a warning, or informational |
| **AlertData** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `{ "freeDiskCapacityMb": 3213, "contentSizeMb": 4381}` | An optional string formatted as a json payload containing metadata for the alert. |
| **AlertId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `9e107d9d372bb6826bd81d3542a419d6` | The unique identifier of this alert |
| **AlertRank** |[int](/azure/kusto/query/scalar-data-types/int) | No | `1000` | Integer ranking of alert for prioritization during troubleshooting |
| **AlertStatus** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `Active` | Whether this alert is active, resolved, or deleted |
| **AlertSubtype** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `DiskFull` | The subtype of alert |
| **AlertType** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `ClientUpdateAlert` | The type of alert such as ClientUpdateAlert or ServiceUpdateAlert. Indicates which fields are present. |
| **AzureADDeviceId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Microsoft Entra Device ID |
| **AzureADTenantId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID |
| **CatalogId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `b0f410599615e2ce15e6614ac3fc4ec62d80324020351e172edef89091a64f2f` | This field applies to drivers only. The Catalog ID of the update from Windows Update for Business deployment service. |
| **ClientSubstate** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `DownloadStart` | If the alert is from the client, the ClientSubstate at the time this alert was activated or updated, else empty. |
| **ClientSubstateRank** |[int](/azure/kusto/query/scalar-data-types/int) | No | `2300` | Rank of ClientSubstate |
| **DeploymentId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | The deployment this alert is relative to, if there's one. |
| **Description** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `Disk full` | A localized string translated from a combination of other Alert fields + language preference that describes the issue in detail. |
| **DeviceName** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `JohnPC-Contoso` | The given device's name |
| **ErrorCode** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `0x8326CFA2D_C3FD` | The error code, if any, that triggered this alert. In the case of client-based explicit alerts, error codes can have extended error codes, which are appended to the error code with an underscore separator. |
| **ErrorSymName** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `WU_E_DISK_FULL` | The symbolic name that maps to the error code, if any, otherwise empty. |
| **GlobalDeviceId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `g:1298371934870` | Internal Microsoft Global identifier, if available. |
| **Recommendation** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `Free up disk space.` | A localized string translated from RecommendedAction, Message, and other fields (depending on the source of the alert) that provides a recommended action. |
| **ResolvedTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No | `43965.3930958102` | The time this alert was resolved, else empty. |
| **SCCMClientId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration manager client ID of the device, if available. |
| **ServiceSubstate** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `OfferReady` | If the alert is from the service, the ServiceSubstate at the time this alert was activated or updated, else empty. |
| **ServiceSubstateRank** |[int](/azure/kusto/query/scalar-data-types/int) | No | `` | Rank of 'ClientSubstate' |
| **SourceSystem** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `Azure` |  |
| **StartTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No | `43965.3930958102` | The time this alert was activated. |
| **TargetBuild** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `18363.836` | The Windows 10 Major. Revision this 'UpdateAlert' is relative to. |
| **TargetVersion** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `1909` | The Windows 10 build this UpdateAlert is relative to. |
| **TenantId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID of the device. |
| **TimeGenerated [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No | `43965.3930958102` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `UCUpdateAlert` | The entity type |
| **UpdateCategory** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `Upgrade` | Whether this update is an upgrade (feature update), security (quality update), nonsecurity (quality update), or driver |
| **UpdateId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `10e519f0-06ae-4141-8f53-afee63e995f0` | This field applies to drivers only. The Update ID of the targeted update. |
| **URL** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `aka.ms/errordetail32152` | An optional URL to get more in-depth information related to this alert. |
