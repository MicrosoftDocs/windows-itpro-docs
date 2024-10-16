---
title: UCUpdateAlert data schema
titleSuffix: Windows Update for Business reports
description: UCUpdateAlert schema for Windows Update for Business reports. UCUpdateAlert is an alert for both client and service updates.
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

# UCUpdateAlert
<!--37063317, 30141258, 37063041-->
Alert for both client and service updates. Contains information that needs attention, relative to one device (client), one update, and one deployment (if relevant). Certain fields may be blank depending on the UpdateAlert's AlertType field; for example, ServiceUpdateAlert won't necessarily contain client-side statuses.

## Schema for UCUpdateAlert

|Field |Type | ENUM <!--8506381--> |Example |Description |
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
| **CatalogId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `b0f410599615e2ce15e6614ac3fc4ec62d80324020351e172edef89091a64f2f` | This field applies to drivers only. The Catalog ID of the update from Windows Autopatch. |
| **ClientSubstate** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `DownloadStart` | If the alert is from the client, the ClientSubstate at the time this alert was activated or updated, else empty. |
| **ClientSubstateRank** |[int](/azure/kusto/query/scalar-data-types/int) | No | `2300` | Rank of ClientSubstate |
| **DeploymentId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | The deployment this alert is relative to, if there's one. |
| **Description** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `Disk full` | A localized string translated from a combination of other Alert fields + language preference that describes the issue in detail. |
| **DeviceName** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `JohnPC-Contoso` | The given device's name |
| **ErrorCode** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `0x8326CFA2D_C3FD` | The error code, if any, that triggered this alert. In the case of client-based explicit alerts, error codes can have extended error codes, which are appended to the error code with an underscore separator. |
| **ErrorSymName** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `WU_E_DISK_FULL` | The symbolic name that maps to the error code, if any, otherwise empty. |
| **GlobalDeviceId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `g:1298371934870` | Internal Microsoft Global identifier, if available. |
| **Recommendation** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `Free up disk space.` | A localized string translated from RecommendedAction, Message, and other fields (depending on the source of the alert) that provides a recommended action. |
| **ResolvedTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The time this alert was resolved, else empty. |
| **SCCMClientId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration manager client ID of the device, if available. |
| **ServiceSubstate** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `OfferReady` | If the alert is from the service, the ServiceSubstate at the time this alert was activated or updated, else empty. |
| **ServiceSubstateRank** |[int](/azure/kusto/query/scalar-data-types/int) | No |  | Rank of 'ClientSubstate' |
| **SourceSystem** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `Azure` |  |
| **StartTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The time this alert was activated. |
| **TargetBuild** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `18363.836` | The Windows 10 Major. Revision this 'UpdateAlert' is relative to. |
| **TargetVersion** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `1909` | The Windows 10 build this UpdateAlert is relative to. |
| **TenantId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID of the device. |
| **TimeGenerated [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime)  | No |  `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `UCUpdateAlert` | The entity type |
| **UpdateCategory** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | Yes | `Upgrade` | Whether this update is an upgrade (feature update), security (quality update), nonsecurity (quality update), or driver |
| **UpdateId** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `10e519f0-06ae-4141-8f53-afee63e995f0` | This field applies to drivers only. The Update ID of the targeted update. |
| **URL** |[string](/azure/data-explorer/kusto/query/scalar-data-types/string)  | No | `aka.ms/errordetail32152` | An optional URL to get more in-depth information related to this alert. |
