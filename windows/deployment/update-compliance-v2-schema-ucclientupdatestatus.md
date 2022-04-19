---
title: Update Compliance Data Schema - UCClientUpdateStatus
ms.reviewer: 
manager: dougeby
description: UCClientUpdateStatus schema
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: reference
---

# UCClientUpdateStatus

Update Event that combines the latest client-based data with the latest service-based data to create a complete picture for one device (client) and one update.

| Field | Type | Example | Description |
|---|---|---|---|
| **AzureADDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `71db1a1a-f1a6-4a25-b88f-79c2f513dae0` | A string corresponding to the Azure AD Tenant to which the device belongs. |
| **AzureADTenantId** |  [string](/azure/kusto/query/scalar-data-types/string) | `69ca04b0-703d-4b3a-9184-c4e3c15d6f5e` | A string corresponding to this device's Azure AD Device ID |
| **ClientState** |  [string](/azure/kusto/query/scalar-data-types/string) | `Installing` | Higher-level bucket of ClientSubstate. |
| **ClientSubstate** |  [string](/azure/kusto/query/scalar-data-types/string) | `DownloadStart` | Last-known state of this update relative to the device, from the client (the device's WDD). |
| **ClientSubstateRank** |  [int](/azure/kusto/query/scalar-data-types/int)  | `2300` | Ranking of Client Substates for sequential ordering in funnel-type views. The rankings between ServiceSubstate and ClientSubstate can be used together. |
| **ClientSubstateTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | DateTime of last Client Substate transition |
| **DeploymentId** |  [string](/azure/kusto/query/scalar-data-types/string) | `cf1b12a3-3d84-4ce3-bc8e-de48459e252d` | The identifier of the Deployment that is targeting this update to this device, else empty. |
| **DeviceName** |  [string](/azure/kusto/query/scalar-data-types/string) | `JohnPC-Contoso` | Device's given name |
| **EventData** | [string](/azure/kusto/query/scalar-data-types/string) {json} | `{}` | Json to fill with arbitrary K/V pairs. Used to populate contextual data that would otherwise be sparsely populated if elevated to a field always present in the schema.  |
| **FurthestClientSubstate** |  [string](/azure/kusto/query/scalar-data-types/string) | `DownloadComplete` | Furthest clientSubstate |
| **FurthestClientSubstateRank** |  [int](/azure/kusto/query/scalar-data-types/int)  | `2400` | Ranking of furthest clientSubstate |
| **GlobalDeviceId** |  [string](/azure/kusto/query/scalar-data-types/string) | `g:9832741921341` | Microsoft internal Global Device Identifier |
| **IsUpdateHealthy** | bool | `TRUE` | True: No issues preventing this device from updating to this update have been found. False: There's something that may prevent this device from updating. |
| **OfferReceivedTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | DateTime when device last reported entering OfferReceived, else empty. |
| **RestartRequiredTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | DateTime when device first reported entering RebootRequired (or RebootPending), else empty.  |
| **SCCMClientId** |  [string](/azure/kusto/query/scalar-data-types/string) | `5AB72FAC-93AB-4954-9AB0-6557D0EFA245` | A string corresponding to the Configuration Manager Client ID on the device. |
| **TargetBuild** |  [string](/azure/kusto/query/scalar-data-types/string) | `10.0.18363.836` | The full build of the content this DeviceUpdateEvent is tracking. For Windows 10 updates, this would correspond to the full build (10.0.14393.385). |
| **TargetBuildNumber** |  [int](/azure/kusto/query/scalar-data-types/int)  | `18363` | Integer of the Major portion of Build. |
| **TargetKBNumber** |  [int](/azure/kusto/query/scalar-data-types/int)  | `4524570` | KB Article. |
| **TargetRevisionNumber** |  [int](/azure/kusto/query/scalar-data-types/int)  | `836` | Integer or the Minor (or Revision) portion of Build. |
| **TargetVersion** |  [int](/azure/kusto/query/scalar-data-types/int)  | `1909` | The target OS Version such as 1909. |
| **TimeGenerated** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | The time the snapshot generated this specific record. This is to determine to which batch snapshot this record belongs. |
| **Type** |  [string](/azure/kusto/query/scalar-data-types/string) | `DeviceUpdateEvent` | The EntityType |
| **UpdateCategory** |  [string](/azure/kusto/query/scalar-data-types/string) | `WindowsFeatureUpdate` | The type of content this DeviceUpdateEvent is tracking. |
| **UpdateClassification** |  [string](/azure/kusto/query/scalar-data-types/string) | `Upgrade` | Whether this content is an Upgrade (FU), Security (QU), NonSecurity (QU) |
| **UpdateConnectivityLevel** |  [string](/azure/kusto/query/scalar-data-types/string) | `Sufficient-Medium` | Whether or not this device is maintaining a sufficiently cumulative and continuous connection to Windows Update so the update can progress optimally.  |
| **UpdateDisplayName** |  [string](/azure/kusto/query/scalar-data-types/string) | `Windows 10 1909` | The long-form display name for the given update. Varies on content type (FU/QU) |
| **UpdateHealthGroupL1** |  [string](/azure/kusto/query/scalar-data-types/string) | `Policy preventing update` | Grouping design to describe the current update installation's "health", L1 (highest-level) |
| **UpdateHealthGroupL2** |  [string](/azure/kusto/query/scalar-data-types/string) | `Policy configured to not update` | Second grouping, subset of L1, more detailed  |
| **UpdateHealthGroupL3** |  [string](/azure/kusto/query/scalar-data-types/string) | `Windows Update Services stopped or disabled` | Third grouping, subset of L3, more detailed |
| **UpdateHealthGroupRankL1** |  [int](/azure/kusto/query/scalar-data-types/int)  | `0100` | Integer for ranking the L1 UpdateHealthGroup |
| **UpdateHealthGroupRankL2** |  [int](/azure/kusto/query/scalar-data-types/int)  | `0010` | Integer for ranking the L2 UpdateHealthGroup |
| **UpdateHealthGroupRankL3** |  [int](/azure/kusto/query/scalar-data-types/int)  | `0001` | Integer for ranking the L3 UpdateHealthGroup |
| **UpdateInstalledTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | DateTime when event transitioned to UpdateInstalled, else empty. |
| **UpdateManufacturer** |  [string](/azure/kusto/query/scalar-data-types/string) | `Microsoft` | Manufacturer of update. Microsoft for WU FU/QU, for D&F name of driver manufacturer such as NVIDIA |
| **UpdateReleaseTime** |  [datetime](/azure/kusto/query/scalar-data-types/datetime)  | `2020-05-14 09:26:03.478039` | The release date of the update |
| **UpdateSource** |  [string](/azure/kusto/query/scalar-data-types/string) | `UUP` | The source of the update - UUP, MUv6, Media |

