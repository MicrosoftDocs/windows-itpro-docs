---
title: UCDeviceAlert data schema
titleSuffix: Windows Update for Business reports
description: UCDeviceAlert schema for Windows Update for Business reports. UCDeviceAlert is an individual device's record about an alert.
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

# UCDeviceAlert
<!--37063317, 30141258, 37063041-->
These alerts are activated as a result of an issue that is device-specific. It isn't specific to the combination of a specific update and a specific device. Like UpdateAlerts, the AlertType indicates where the Alert comes from (ServiceDeviceAlert, ClientDeviceAlert). For example, an EndOfService alert is a ClientDeviceAlert, as a build no longer being serviced (EOS) is a client-wide state. Meanwhile, DeviceRegistrationIssues in the Windows Update for Business deployment service will be a ServiceDeviceAlert, as it's a device-wide state in the service to not be correctly registered.

## Schema for UCDeviceAlert

|Field |Type |Example |Description |
|---|---|---|---|
| **AlertClassification** | [string](/azure/kusto/query/scalar-data-types/string) | `Error` | Whether this alert is an Error, a Warning, or Informational |
| **AlertId** | [string](/azure/kusto/query/scalar-data-types/string) | `9e107d9d372bb6826bd81d3542a419d6` | The unique identifier of this alert |
| **AlertRank** | [int](/azure/kusto/query/scalar-data-types/int) | `1000` | Integer ranking of alert for prioritization during troubleshooting |
| **AlertStatus** | [string](/azure/kusto/query/scalar-data-types/string) | `Active` | Whether this alert is Active, Resolved, or Deleted |
| **AlertSubtype** | [string](/azure/kusto/query/scalar-data-types/string) | `DiskFull` | The subtype of alert. |
| **AlertType** | [string](/azure/kusto/query/scalar-data-types/string) | `ClientUpdateAlert` | The type of alert such as ClientUpdateAlert or ServiceUpdateAlert. Indicates which fields will be present. |
| **AzureADDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Microsoft Entra device ID of the device, if available. |
| **AzureADTenantId** | [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID of the device. |
| **ClientSubstate** | [string](/azure/kusto/query/scalar-data-types/string) | `DownloadStart` | If the alert is from the client, the ClientSubstate at the time this alert was activated or updated, else empty. |
| **ClientSubstateRank** | [int](/azure/kusto/query/scalar-data-types/int) | `2300` | Rank of ClientSubstate |
| **DeploymentId** | [string](/azure/kusto/query/scalar-data-types/string) | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | The deployment this alert is relative to, if there's one. |
| **Description** | [string](/azure/kusto/query/scalar-data-types/string) | `Disk full` | A localized string translated from a combination of other alert fields + language preference that describes the issue in detail. |
| **DeviceName** | [string](/azure/kusto/query/scalar-data-types/string) | `JohnPC-Contoso` | The given device's name |
| **GlobalDeviceId** | [string](/azure/kusto/query/scalar-data-types/string) | `g:1298371934870` | Internal Microsoft global identifier, if available. |
| **Recommendation** | [string](/azure/kusto/query/scalar-data-types/string) | `Free up disk space.` | A localized string translated from RecommendedAction, Message, and other fields (depending on source of alert) that provides a recommended action. |
| **ResolvedTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time this alert was resolved, else empty. |
| **SCCMClientId** | [string](/azure/kusto/query/scalar-data-types/string) | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration Manager client ID of the device, if available. |
| **ServiceSubstate** | [string](/azure/kusto/query/scalar-data-types/string) | `OfferReady` | If the alert is from the service, the ServiceSubstate at the time this alert was activated or updated, else Empty. |
| **ServiceSubstateRank** | [int](/azure/kusto/query/scalar-data-types/int) | `100` | Rank of ServiceSubstate |
| **StartTime** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time this alert was activated. |
| **TargetBuild** | [string](/azure/kusto/query/scalar-data-types/string) | `18363.836` | The Windows 10 Major. Revision this UpdateAlert is relative to. |
| **TargetVersion** | [string](/azure/kusto/query/scalar-data-types/string) | `1909` | The Windows 10 build this UpdateAlert is relative to. |
| **TimeGenerated** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** | [string](/azure/kusto/query/scalar-data-types/string) | `UpdateAlert` | The entity type. |
| **UpdateCategory** | [string](/azure/kusto/query/scalar-data-types/string) | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** | [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether this content is an upgrade (feature update), security (quality update), non-security (quality update), or driver |


--


|Field |Type | ENUM <!--8506381--> |Example |Description |
|---|---|---|---|---|
| **AlertClassification** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Error` | Whether this alert is an Error, a Warning, or Informational |
| **AlertData** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |  |  Currently, data isn't gathered to populate this field. An optional string formatted as a json payload containing metadata for the alert. |
| **AlertId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `9e107d9d372bb6826bd81d3542a419d6` | The unique identifier of this alert |
| **AlertRank** | [int](/azure/kusto/query/scalar-data-types/int) | No | `1000` | Integer ranking of alert for prioritization during troubleshooting |
| **AlertStatus** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `Active` | Whether this alert is Active, Resolved, or Deleted |
| **AlertSubtype** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `DiskFull` | The subtype of alert. |
| **AlertType** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | Yes | `ClientUpdateAlert` | The type of alert such as ClientUpdateAlert or ServiceUpdateAlert. Indicates which fields will be present. |
| **AzureADDeviceId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | Microsoft Entra Device ID |
| **AzureADTenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID |
| **Description** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Disk full` | A localized string translated from a combination of other alert fields + language preference that describes the issue in detail. |
| **DeviceName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `JohnPC-Contoso` | The given device's name |
| **ErrorCode** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | |  Currently, data isn't gathered to populate this field. The Error Code, if any, that triggered this Alert. In the case of Client-based explicit alerts, error codes can have extended error codes, which are appended to the error code with a underscore separator. |
| **ErrorSymName** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No |  |  Currently, data isn't gathered to populate this field. The symbolic name that maps to the Error Code, if any. Otherwise empty. |
| **GlobalDeviceId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `g:1298371934870` | Internal Microsoft global identifier, if available. |
| **Recommendation** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Free up disk space.` | A localized string translated from RecommendedAction, Message, and other fields (depending on source of alert) that provides a recommended action. |
| **ResolvedTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | The time this alert was resolved, else empty. |
| **SCCMClientId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | Configuration Manager client ID of the device, if available. |
| **SourceSystem** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `Azure` |  |
| **StartTime [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | The time this alert was activated. |
| **TenantId** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | Microsoft Entra tenant ID of the device. |
| **TimeGenerated [UTC]** | [datetime](/azure/kusto/query/scalar-data-types/datetime) | No |  `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `UCDeviceAlert` | The entity type |
| **URL** | [string](/azure/data-explorer/kusto/query/scalar-data-types/string) | No | `aka.ms/errordetail32152` |  Currently, data isn't gathered to populate this field. An optional URL to get more in-depth information related to this alert. |
