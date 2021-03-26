---
title: Update Compliance Schema - WaaSUpdateStatus
ms.reviewer: 
manager: laurawi
description: WaaSUpdateStatus schema
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.author: jaimeo
ms.collection: M365-analytics
ms.topic: article
---

# WaaSUpdateStatus

WaaSUpdateStatus records contain device-centric data and acts as the device record for Update Compliance. Each record provided in daily snapshots maps to a single device in a single tenant. This table has data such as the current device's installed version of Windows, whether it is on the latest available updates, and whether the device needs attention.

|Field |Type |Example |Description |
|--|-|----|------------------------|
|**Computer** |[string](/azure/kusto/query/scalar-data-types/string) |`JohnPC-Contoso` |User or Organization-provided device name. If this appears as '#', then Device Name may not be sent through telemetry. To enable Device Name to be sent with telemetry, see [Enabling Device Name in Telemetry](./update-compliance-get-started.md). |
|**ComputerID** |[string](/azure/kusto/query/scalar-data-types/string) |`g:6755412281299915` |Microsoft Global Device Identifier. This is an internal identifier used by Microsoft. A connection to the end-user Managed Service Account (MSA) service is required for this identifier to be populated; no device data will be present in Update Compliance without this identifier. |
|**DownloadMode** |[string](/azure/kusto/query/scalar-data-types/string) |`Simple (99)` |The device's Delivery Optimization DownloadMode. To learn about possible values, see [Delivery Optimization Reference - Download mode](./waas-delivery-optimization-reference.md#download-mode) |
|**FeatureDeferralDays** |[int](/azure/kusto/query/scalar-data-types/int) |`0`                        |The on-client Windows Update for Business Deferral Policy days.<br> - **<0**: A value below 0 indicates the policy is disabled. <br> - **0**: A value of 0 indicates the policy is enabled, but the deferral period is zero days.<br> - **1+**: A value of 1 and above indicates the deferral setting, in days. |
|**FeaturePauseDays** |[int](/azure/kusto/query/scalar-data-types/int) |`0` |*Deprecated* This provides the count of days left in a pause |
|**FeaturePauseState** |[int](/azure/kusto/query/scalar-data-types/int) |`NotConfigured` |The on-client Windows Update for Business Pause state. Reflects whether or not a device has paused Feature Updates.<br><li> **Expired**: The pause period has expired.<li> **NotConfigured**: Pause is not configured.<li> **Paused**: The device was last reported to be pausing this content type.<li> **NotPaused**: The device was last reported to not have any pause on this content type. |
|**QualityDeferralDays** |[int](/azure/kusto/query/scalar-data-types/int) |`0` |The on-client Windows Update for Business Deferral Policy days.<br><li> **<0**: A value below 0 indicates the policy is disabled. <li> **0**: A value of 0 indicates the policy is enabled, but the deferral period is zero days. <li> **1+**: A value of 1 and above indicates the deferral setting, in days. |
|**QualityPauseDays**      |[int](/azure/kusto/query/scalar-data-types/int) |`0` |**Deprecated**. This provides the count of days left in a pause period.|
|**QualityPauseState**     |[string](/azure/kusto/query/scalar-data-types/string)  |`NotConfigured`            |The on-client Windows Update for Business Pause state. Reflects whether or not a device has paused Quality Updates.<br><li>**Expired**: The pause period has expired.<li> **NotConfigured**: Pause is not configured.<li>**Paused**: The device was last reported to be pausing this content type.<li>**NotPaused**: The device was last reported to not have any pause on this content type. |
|**NeedAttentionStatus**   |[string](/azure/kusto/query/scalar-data-types/string)  | |Indicates any reason a device needs attention; if empty, there are no [Device Issues](./update-compliance-need-attention.md#device-issues) for this device. |
|**OSArchitecture**        |[string](/azure/kusto/query/scalar-data-types/string)  |`amd64` |The architecture of the Operating System. |
|**OSName**                |[string](/azure/kusto/query/scalar-data-types/string)  |`Windows 10` |The name of the Operating System. This will always be Windows 10 for Update Compliance. |
|**OSVersion**             |[string](/azure/kusto/query/scalar-data-types/string)  |`1909` |The version of Windows 10. This value typically is of the format of the year of the version's release, following the month. In this example, `1909` corresponds to 2019-09 (September). This maps to the `Major` portion of OSBuild. |
|**OSBuild**               |[string](/azure/kusto/query/scalar-data-types/string)  |`18363.720`                |The currently installed Windows 10 Build, in the format `Major`.`Revision`. `Major` corresponds to which Feature Update the device is on, whereas `Revision` corresponds to which quality update the device is on. Mappings between Feature release and Major, as well as Revision and KBs, are available at [aka.ms/win10releaseinfo](/windows/release-health/release-information). |
|**OSRevisionNumber**      |[int](/azure/kusto/query/scalar-data-types/int)     |`720`                      |An integer value for the revision number of the currently installed Windows 10 OSBuild on the device. |
|**OSCurrentStatus**       |[string](/azure/kusto/query/scalar-data-types/string)  |`Current`                  |*Deprecated* Whether or not the device is on the latest Windows Feature Update available, and the latest Quality Update for that Feature Update. |
|**OSEdition**             |[string](/azure/kusto/query/scalar-data-types/string)  |`Enterprise`               |The Windows 10 Edition or SKU.  |
|**OSFamily**              |[string](/azure/kusto/query/scalar-data-types/string)  |`Windows.Desktop`          |The Device Family of the device. Only `Windows.Desktop` is currently supported. |
|**OSFeatureUpdateStatus** |[string](/azure/kusto/query/scalar-data-types/string)  |`Up-to-date`               |Indicates whether or not the device is on the latest available Windows 10 Feature Update. |
|**OSQualityUpdateStatus** |[string](/azure/kusto/query/scalar-data-types/string)  |`Up-to-date`               |Indicates whether or not the device is on the latest available Windows 10 Quality Update (for its Feature Update). |
|**OSSecurityUpdateStatus**|[string](/azure/kusto/query/scalar-data-types/string)  |`Up-to-date`               |Indicates whether or not the device is on the latest available Windows 10 Quality Update **that is classified as containing security fixes**. |
|**OSServicingBranch**     |[string](/azure/kusto/query/scalar-data-types/string)  |`Semi-Annual`              |The Servicing Branch or [Servicing Channel](./waas-overview.md#servicing-channels) the device is on. Dictates which Windows updates the device receives and the cadence of those updates. |
|**TimeGenerated**         |[datetime](/azure/kusto/query/scalar-data-types/datetime)|`3/22/2020, 1:00:01.318 PM`|A DateTime corresponding to the moment Azure Monitor Logs ingested this record to your Log Analytics workspace. |
|**LastScan**              |[datetime](/azure/kusto/query/scalar-data-types/datetime)|`3/22/2020, 2:00:00.436 AM`|A DateTime corresponding to the last time the device sent data to Microsoft. This DateTime information does not necessarily mean all data that is needed to populate all fields Update Compliance uses was sent; this is more like a "heartbeat". |