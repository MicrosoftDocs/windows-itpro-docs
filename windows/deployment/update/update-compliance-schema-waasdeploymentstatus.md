---
title: Update Compliance Schema - WaaSDeploymentStatus
ms.reviewer: 
manager: laurawi
description: WaaSDeploymentStatus schema
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

# WaaSDeploymentStatus

WaaSDeploymentStatus records track a specific update's installation progress on a specific device. Multiple WaaSDeploymentStatus records can exist simultaneously for a given device, as each record is specific to a given update and its type. For example, a device can have both a WaaSDeploymentStatus tracking a Windows Feature Update, and one tracking a Windows Quality Update, at the same time.

|Field |Type |Example |Description |
|-|-|-----|------------------------|
|**Computer** |[string](/azure/kusto/query/scalar-data-types/string) |`JohnPC-Contoso` |User or Organization-provided device name. If this appears as '#', then Device Name may not be sent through telemetry. To enable Device Name to be sent with telemetry, see [Enroll devices in Update Compliance](update-compliance-get-started.md#enroll-devices-in-update-compliance). |
|**ComputerID** |[string](/azure/kusto/query/scalar-data-types/string) |`g:6755412281299915` |Microsoft Global Device Identifier. This is an internal identifier used by Microsoft. A connection to the end-user Managed Service Account (MSA) service is required for this identifier to be populated; no device data will be present in Update Compliance without this identifier. |
|**DeferralDays** |[int](/azure/kusto/query/scalar-data-types/int) |`0` |The deferral policy for this content type or `UpdateCategory` (Windows `Feature` or `Quality`). |
|**DeploymentError** |[string](/azure/kusto/query/scalar-data-types/string) |`Disk Error` |A readable string describing the error, if any. If empty, there is either no string matching the error or there is no error. |
|**DeploymentErrorCode** |[int](/azure/kusto/query/scalar-data-types/int) |`8003001E` |Microsoft internal error code for the error, if any. If empty, there is either no error or there is *no error code*, meaning that the issue raised does not correspond to an error, but some inferred issue. |
|**DeploymentStatus** |[string](/azure/kusto/query/scalar-data-types/string) |`Failed` |The high-level status of installing this update on this device. Possible values are:<br><li> **Update completed**: Device has completed the update installation.<li> **In Progress**: Device is in one of the various stages of installing an update, detailed in `DetailedStatus`.<li> **Deferred**: A device's deferral policy is preventing the update from being offered by Windows Update.<li> **Canceled**: The update was canceled.<li> **Blocked**: There is a hard block on the update being completed. This could be that another update must be completed before this one, or some other task is blocking the installation of the update.<li> **Unknown**: Update Compliance generated WaaSDeploymentStatus records for devices as soon as it detects an update newer than the one installed on the device. Devices that have not sent any deployment data for that update will have the status `Unknown`.<li> **Update paused**: Devices are paused via Windows Update for Business Pause policies, preventing the update from being offered by Windows Update. <li> **Failed**: Device encountered a failure in the update process, preventing it from installing the update. This may result in an automatic retry in the case of Windows Update, unless the `DeploymentError` indicates the issue requires action before the update can continue.|
|**DetailedStatus** |[string](/azure/kusto/query/scalar-data-types/string) |`Reboot required` |A detailed status for the installation of this update on this device. Possible values are:<br><li> **Update deferred**: When a device's Windows Update for Business policy dictates the update is deferred.<li> **Update paused**: The device's Windows Update for Business policy dictates the update is paused from being offered.<li> **Update offered**: The device has been offered the update, but has not begun downloading it.<li> **Pre-Download tasks passed**: The device has finished all necessary tasks prior to downloading the update.<li> **Compatibility hold**: The device has been placed under a *compatibility hold* to ensure a smooth feature update experience and will not resume the update until the hold has been cleared. For more information, see [Feature Update Status report](update-compliance-feature-update-status.md#safeguard-holds).<li> **Download started**: The update has begun downloading on the device.<li> **Download Succeeded**: The update has successfully completed downloading. <li> **Pre-Install Tasks Passed**: Tasks that must be completed prior to installing the update have been completed.<li> **Install Started**: Installation of the update has begun.<li> **Reboot Required**: The device has finished installing the update, and a reboot is required before the update can be completed.<li> **Reboot Pending**: The device has a scheduled reboot to apply the update.<li> **Reboot Initiated**: The scheduled reboot has been initiated.<li> **Commit**: Changes are being committed post-reboot. This is another step of the installation process.<li> **Update Completed**: The update has successfully installed.|
|**ExpectedInstallDate** |[datetime](/azure/kusto/query/scalar-data-types/datetime)|`3/28/2020, 1:00:01.318 PM`|Rather than the expected date this update will be installed, this should be interpreted as the minimum date Windows Update will make the update available for the device. This takes into account Deferrals. |
|**LastScan** |[datetime](/azure/kusto/query/scalar-data-types/datetime)|`3/22/2020, 1:00:01.318 PM`|The last point in time that this device sent Update Session data. |
|**OriginBuild** |[string](/azure/kusto/query/scalar-data-types/string) |`18363.719` |The build originally installed on the device when this Update Session began. |
|**OSBuild** |[string](/azure/kusto/query/scalar-data-types/string) |`18363.719` |The build currently installed on the device. |
|**OSRevisionNumber** |[int](/azure/kusto/query/scalar-data-types/int) |`719` |The revision of the OSBuild installed on the device. |
|**OSServicingBranch** |[string](/azure/kusto/query/scalar-data-types/string) |`Semi-Annual` |The Servicing Branch or [Servicing Channel](./waas-overview.md#servicing-channels) the device is on. Dictates which Windows updates the device receives and the cadence of those updates. |
|**OSVersion** |[string](/azure/kusto/query/scalar-data-types/string) |`1909` |The version of Windows 10. This typically is of the format of the year of the version's release, following the month. In this example, `1909` corresponds to 2019-09 (September). This maps to the `Major` portion of OSBuild. |
|**PauseState** |[string](/azure/kusto/query/scalar-data-types/string) |`NotConfigured` |The on-client Windows Update for Business Pause state. Reflects whether or not a device has paused Feature Updates.<br><li> **Expired**: The pause period has expired.<li> **NotConfigured**: Pause is not configured.<li> **Paused**: The device was last reported to be pausing this content type.<li> **NotPaused**: The device was last reported to not have any pause on this content type. |
|**RecommendedAction** |[string](/azure/kusto/query/scalar-data-types/string) | |The recommended action to take in the event this device needs attention, if any. |
|**ReleaseName** |[string](/azure/kusto/query/scalar-data-types/string) |`KB4551762` |The KB Article corresponding to the TargetOSRevision, if any. |
|**TargetBuild** |[string](/azure/kusto/query/scalar-data-types/string) |`18363.720` |The target OSBuild, the update being installed or considered as part of this WaaSDeploymentStatus record. |
|**TargetOSVersion** |[string](/azure/kusto/query/scalar-data-types/string) |`1909` |The target OSVersion. |
|**TargetOSRevision** |[int](/azure/kusto/query/scalar-data-types/int) |`720` |The target OSRevisionNumber. |
|**TimeGenerated** |[datetime](/azure/kusto/query/scalar-data-types/datetime) |`3/22/2020, 1:00:01.318 PM`|A DateTime corresponding to the moment Azure Monitor Logs ingested this record to your Log Analytics workspace. |
|**UpdateCategory** |[string](/azure/kusto/query/scalar-data-types/string) |`Quality` |The high-level category of content type this Windows Update belongs to. Possible values are **Feature** and **Quality**. |
|**UpdateClassification** |[string](/azure/kusto/query/scalar-data-types/string) |`Security` |Similar to UpdateCategory, this more specifically determines whether a Quality update is a security update or not. |
|**UpdateReleasedDate** |[datetime](/azure/kusto/query/scalar-data-types/datetime) |`3/22/2020, 1:00:01.318 PM`|A DateTime corresponding to the time the update came available on Windows Update. |