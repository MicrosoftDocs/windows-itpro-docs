---
title: Windows Update for Business reports Data Schema - UCUpdateAlert
manager: aaroncz
description: UCUpdateAlert schema
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.topic: reference
ms.date: 06/06/2022
ms.technology: itpro-updates
---

# UCUpdateAlert
<!--37063317, 30141258, 37063041-->
***(Applies to: Windows 11 & Windows 10)***

Alert for both client and service updates. Contains information that needs attention, relative to one device (client), one update, and one deployment (if relevant). Certain fields may be blank depending on the UpdateAlert's AlertType field; for example, ServiceUpdateAlert won't necessarily contain client-side statuses.

|Field |Type |Example |Description |
|---|---|---|---|
| **AlertClassification** | [string](/azure/kusto/query/scalar-data-types/string) | `Error` | Whether this alert is an Error, a Warning, or Informational |
| **AlertData** | [string](/azure/kusto/query/scalar-data-types/string) {json} | `{ "freeDiskCapacityMb":  3213, "contentSizeMb": 4381}` | An optional string formatted as a json payload containing metadata for the alert. |
| **AlertId** | [string](/azure/kusto/query/scalar-data-types/string) | `9e107d9d372bb6826bd81d3542a419d6` | The unique identifier of this alert |
| **AlertRank** | [int](/azure/kusto/query/scalar-data-types/int) | `1000` | Integer ranking of alert for prioritization during troubleshooting |
| **AlertStatus** | [string](/azure/kusto/query/scalar-data-types/string) | `Active` | Whether this alert is Active, Resolved, or Deleted |
| **AlertSubtype** | [string](/azure/kusto/query/scalar-data-types/string) | `DiskFull` | The subtype of alert |
| **AlertType** | [string](/azure/kusto/query/scalar-data-types/string) | `ClientUpdateAlert` | The type of alert such as ClientUpdateAlert or ServiceUpdateAlert. Indicates which fields will be present |
| **AzureADDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Azure AD device ID of the device, if available. |
| **AzureADTenantId** | [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Azure AD tenant ID of the device. |
| **ClientSubstate** | [string](/azure/kusto/query/scalar-data-types/string) | `DownloadStart` | If the alert is from the client, the ClientSubstate at the time this alert was activated or updated, else empty. |
| **ClientSubstateRank** | [int](/azure/kusto/query/scalar-data-types/int) | `2300` | Rank of ClientSubstate |
| **DeploymentId** | [string](/azure/kusto/query/scalar-data-types/string) | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | The deployment this alert is relative to, if there's one. |
| **Description** | [string](/azure/kusto/query/scalar-data-types/string) | `Disk full` | A localized string translated from a combination of other Alert fields + language preference that describes the issue in detail. |
| **DeviceName** | [string](/azure/kusto/query/scalar-data-types/string) | `JohnPC-Contoso` | The given device's name |
| **ErrorCode** | [string](/azure/kusto/query/scalar-data-types/string) | `0x8326CFA2D_C3FD` | The error code, if any, that triggered this alert. In the case of client-based explicit alerts, error codes can have extended error codes, which are appended to the error code with an underscore separator. |
| **ErrorSymName** | [string](/azure/kusto/query/scalar-data-types/string) | `WU_E_DISK_FULL` | The symbolic name that maps to the error code, if any, otherwise empty. |
| **GlobalDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `g:1298371934870` | Internal Microsoft Global identifier, if available. |
| **Recommendation** | [string](/azure/kusto/query/scalar-data-types/string) | `Free up disk space.` | A localized string translated from RecommendedAction, Message, and other fields (depending on the source of the alert) that provides a recommended action. |
| **ResolvedTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time this alert was resolved, else empty. |
| **SCCMClientId** | [string](/azure/kusto/query/scalar-data-types/string) | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration Manager client ID of the device, if available. |
| **ServiceSubstate** | [string](/azure/kusto/query/scalar-data-types/string) | `OfferReady` | If the alert is from the service, the ServiceSubstate at the time this alert was activated or updated, else empty. |
| **StartTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time this alert was activated. |
| **TargetBuild** | [string](/azure/kusto/query/scalar-data-types/string) | `18363.836` | The Windows 10 Major. Revision this UpdateAlert is relative to. |
| **TargetVersion** | [string](/azure/kusto/query/scalar-data-types/string) | `1909` | The Windows 10 build this UpdateAlert is relative to. |
| **TenantId** |[string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Azure AD tenant ID of the device. |
| **TimeGenerated** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** | [string](/azure/kusto/query/scalar-data-types/string) | `UpdateAlert` | The entity type. |
| **UpdateCategory** | [string](/azure/kusto/query/scalar-data-types/string) | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** | [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether this update is an upgrade (feature update), security (quality update), non-security (quality update), or driver |
| **URL** | [string](/azure/kusto/query/scalar-data-types/string) | `aka.ms/errordetail32152` | An optional URL to get more in-depth information related to this alert.  |
| **UpdateId** | [string](/azure/kusto/query/scalar-data-types/string)  | `10e519f0-06ae-4141-8f53-afee63e995f0`  |Update ID of the targeted update|
