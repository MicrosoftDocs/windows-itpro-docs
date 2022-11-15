---
title: Policy CSP - Storage
description: Learn to use the Policy CSP - Storage settings to automatically clean some of the user’s files to free up disk space.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 03/25/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Storage

<hr/>

<!--Policies-->
## Storage policies

<dl>
  <dd>
    <a href="#storage-allowdiskhealthmodelupdates">Storage/AllowDiskHealthModelUpdates</a>
  </dd>
  <dd>
    <a href="#storage-allowstoragesenseglobal">Storage/AllowStorageSenseGlobal</a>
  </dd>
  <dd>
    <a href="#storage-allowstoragesensetemporaryfilescleanup">Storage/AllowStorageSenseTemporaryFilesCleanup</a>
  </dd>
  <dd>
    <a href="#storage-configstoragesensecloudcontentdehydrationthreshold">Storage/ConfigStorageSenseCloudContentDehydrationThreshold</a>
  </dd>
  <dd>
    <a href="#storage-configstoragesensedownloadscleanupthreshold">Storage/ConfigStorageSenseDownloadsCleanupThreshold</a>
  </dd>
  <dd>
    <a href="#storage-configstoragesenseglobalcadence">Storage/ConfigStorageSenseGlobalCadence</a>
  </dd>
  <dd>
    <a href="#storage-configstoragesenserecyclebincleanupthreshold">Storage/ConfigStorageSenseRecycleBinCleanupThreshold</a>
  </dd>
  <dd>
    <a href="#storage-enhancedstoragedevices">Storage/EnhancedStorageDevices</a>
  </dd>
  <dd>
    <a href="#storage-removablediskdenywriteaccess">Storage/RemovableDiskDenyWriteAccess</a>
  </dd>
  <dd>
    <a href="#storage-wpddevicesdenyreadaccessperdevice">Storage/WPDDevicesDenyReadAccessPerDevice</a>
  </dd>
  <dd>
    <a href="#storage-wpddevicesdenyreadaccessperuser">Storage/WPDDevicesDenyReadAccessPerUser</a>
  </dd>
  <dd>
    <a href="#storage-wpddevicesdenywriteaccessperdevice">Storage/WPDDevicesDenyWriteAccessPerDevice</a>
  </dd>
  <dd>
    <a href="#storage-wpddevicesdenywriteaccessperuser">Storage/WPDDevicesDenyWriteAccessPerUser</a>
  </dd>
  <dd>
    <a href="#storagehealthmonitor-disablestoragehealthmonitor">StorageHealthMonitor/DisableStorageHealthMonitor</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="storage-allowdiskhealthmodelupdates"></a>**Storage/AllowDiskHealthModelUpdates**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows disk health model updates.

Supported value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow downloading updates to the Disk Failure Prediction Model*
-   GP name: *SH_AllowDiskHealthModelUpdates*
-   GP path: *System/Storage Health*
-   GP ADMX file name: *StorageHealth.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Don't allow
-   1 (default) - Allow

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-allowstoragesenseglobal"></a>**Storage/AllowStorageSenseGlobal**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|||
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!NOTE]
> Versions prior to version 1903 don't support group policy.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Storage Sense can automatically clean some of the user’s files to free up disk space. By default, Storage Sense is automatically turned on when the machine runs into low disk space, and it is set to run whenever the machine runs into storage pressure. This cadence can be changed in Storage settings or set with the Storage/ConfigStorageSenseGlobalCadence group policy.

If you enable this policy setting without setting a cadence, Storage Sense is turned on for the machine with the default cadence of "during low free disk space." Users can't disable Storage Sense, but they can adjust the cadence (unless you also configure the Storage/ConfigStorageSenseGlobalCadence group policy).

If you disable this policy setting, the machine will turn off Storage Sense. Users can't enable Storage Sense.

If you don't configure this policy setting, Storage Sense is turned off by default until the user runs into low disk space or the user enables it manually. Users can configure this setting in Storage settings.
<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Storage Sense*
-   GP name: *SS_AllowStorageSenseGlobal*
-   GP path: *System/Storage Sense*
-   GP ADMX file name: *StorageSense.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-allowstoragesensetemporaryfilescleanup"></a>**Storage/AllowStorageSenseTemporaryFilesCleanup**

<!--SupportedSKUs-->
Versions prior to version 1903 don't support group policy.

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|||
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!NOTE]
> Versions prior to version 1903 don't support group policy.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
When Storage Sense runs, it can delete the user’s temporary files that aren't in use.

If the Storage/AllowStorageSenseGlobal policy is disabled, then this policy doesn't have any effect.

If you enable this policy setting, Storage Sense will delete the user’s temporary files that aren't in use. Users can't disable this setting in Storage settings.

If you disable this policy setting, Storage Sense won't delete the user’s temporary files. Users can't enable this setting in Storage settings.

If you don't configure this policy setting, Storage Sense will delete the user’s temporary files by default. Users can configure this setting in Storage settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Allow Storage Sense Temporary Files cleanup*
-   GP name: *SS_AllowStorageSenseTemporaryFilesCleanup*
-   GP path: *System/Storage Sense*
-   GP ADMX file name: *StorageSense.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-configstoragesensecloudcontentdehydrationthreshold"></a>**Storage/ConfigStorageSenseCloudContentDehydrationThreshold**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|||
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!NOTE]
> Versions prior to version 1903 don't support group policy.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
When Storage Sense runs, it can dehydrate cloud-backed content that hasn’t been opened in a certain number of days.

If the Storage/AllowStorageSenseGlobal policy is disabled, then this policy doesn't have any effect.

If you enable this policy setting, you must provide the minimum number of days a cloud-backed file can remain unopened before Storage Sense dehydrates it. Supported values are: 0–365.

If you set this value to zero, Storage Sense won't dehydrate any cloud-backed content. The default value is 0, which never dehydrates cloud-backed content.

If you disable or don't configure this policy setting, then Storage Sense won't dehydrate any cloud-backed content by default. Users can configure this setting in Storage settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Storage Sense Cloud Content dehydration threshold*
-   GP name: *SS_ConfigStorageSenseCloudContentDehydrationThreshold*
-   GP path: *System/Storage Sense*
-   GP ADMX file name: *StorageSense.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-configstoragesensedownloadscleanupthreshold"></a>**Storage/ConfigStorageSenseDownloadsCleanupThreshold**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|||
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!NOTE]
> Versions prior to version 1903 don't support group policy.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
When Storage Sense runs, it can delete files in the user’s Downloads folder if they haven’t been opened for more than a certain number of days.

If the Storage/AllowStorageSenseGlobal policy is disabled, then this policy doesn't have any effect.

If you enable this policy setting, you must provide the minimum number of days a file can remain unopened before Storage Sense deletes it from the Downloads folder. Supported values are: 0-365.

If you set this value to zero, Storage Sense won't delete files in the user’s Downloads folder. The default is 0, or never deleting files in the Downloads folder.

If you disable or don't configure this policy setting, then Storage Sense won't delete files in the user’s Downloads folder by default. Users can configure this setting in Storage settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Storage Storage Downloads cleanup threshold*
-   GP name: *SS_ConfigStorageSenseDownloadsCleanupThreshold*
-   GP path: *System/Storage Sense*
-   GP ADMX file name: *StorageSense.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-configstoragesenseglobalcadence"></a>**Storage/ConfigStorageSenseGlobalCadence**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|||
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!NOTE]
> Versions prior to version 1903 don't support group policy.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Storage Sense can automatically clean some of the user’s files to free up disk space.
If the Storage/AllowStorageSenseGlobal policy is disabled, then this policy doesn't have any effect.

If you enable this policy setting, you must provide the desired Storage Sense cadence.

The following are supported options:

- 1 – Daily
- 7 – Weekly
- 30 – Monthly
- 0 – During low free disk space

The default is 0 (during low free disk space).

If you don't configure this policy setting, then the Storage Sense cadence is set to “during low free disk space” by default. Users can configure this setting in Storage settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Storage Sense cadence*
-   GP name: *SS_ConfigStorageSenseGlobalCadence*
-   GP path: *System/Storage Sense*
-   GP ADMX file name: *StorageSense.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-configstoragesenserecyclebincleanupthreshold"></a>**Storage/ConfigStorageSenseRecycleBinCleanupThreshold**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|||
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!NOTE]
> Versions prior to version 1903 don't support group policy.

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
When Storage Sense runs, it can delete files in the user’s Recycle Bin if they've been there for over a certain number of days.

If the Storage/AllowStorageSenseGlobal policy is disabled, then this policy doesn't have any effect.

If you enable this policy setting, you must provide the minimum age threshold (in days) of a file in the Recycle Bin before Storage Sense will delete it. Supported values are: 0–365.

If you set this value to zero, Storage Sense won't delete files in the user’s Recycle Bin. The default is 30 days.

If you disable or don't configure this policy setting, Storage Sense will delete files in the user’s Recycle Bin which have been there for over 30 days by default. Users can configure this setting in Storage settings.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure Storage Sense Recycle Bin cleanup threshold*
-   GP name: *SS_ConfigStorageSenseRecycleBinCleanupThreshold*
-   GP path: *System/Storage Sense*
-   GP ADMX file name: *StorageSense.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-enhancedstoragedevices"></a>**Storage/EnhancedStorageDevices**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures whether or not Windows will activate an Enhanced Storage device.

If you enable this policy setting, Windows won't activate un-activated Enhanced Storage devices.

If you disable or don't configure this policy setting, Windows will activate un-activated Enhanced Storage devices.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow Windows to activate Enhanced Storage devices*
-   GP name: *TCGSecurityActivationDisabled*
-   GP path: *System/Enhanced Storage Access*
-   GP ADMX file name: *enhancedstorage.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="storage-removablediskdenywriteaccess"></a>**Storage/RemovableDiskDenyWriteAccess**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
If you enable this policy setting, write access is denied to this removable storage class. If you disable or don't configure this policy setting, write access is allowed to this removable storage class.

> [!Note]
> To require that users write data to BitLocker-protected storage, enable the policy setting "Deny write access to drives not protected by BitLocker," which is located in "Computer Configuration\Administrative Templates\Windows Components\BitLocker Drive Encryption\Removable Data Drives."

Supported values for this policy are:
-  0 - Disable
-  1 - Enable

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Removable Disks: Deny write access*
-   GP name: *RemovableDisks_DenyWrite_Access_2*
-   GP element: *RemovableDisks_DenyWrite_Access_2*
-   GP path: *System/Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->
Example for setting the device custom OMA-URI setting to enable this policy:
To deny write access to removable storage within Intune’s custom profile, set OMA-URI to ```./Device/Vendor/MSFT/Policy/Config/Storage/RemovableDiskDenyWriteAccess```, Data type to Integer, and Value to 1.

See [Use custom settings for Windows 10 devices in Intune](/intune/custom-settings-windows-10) for information on how to create custom profiles.
<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="storage-wpddevicesdenyreadaccessperdevice"></a>**Storage/WPDDevicesDenyReadAccessPerDevice**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy will do the enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.

To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/en-us/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46).

If enabled, this policy will block end-user from Read access on any Windows Portal devices, for example, mobile/iOS/Android.

>[!NOTE]
> WPD policy is not a reliable policy for removable storage - admin can not use WPD policy to block removable storage. For example, if an end-user is using an USB thumb drive under a WPD policy, the policy may block PTP/MTP/etc, but end-user can still browse the USB via explorer.

Supported values for this policy are:
- Not configured
- Enabled
- Disabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny read access*
-   GP name: *WPDDevices_DenyRead_Access_2*
-   GP path: *System/Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="storage-wpddevicesdenyreadaccessperuser"></a>**Storage/WPDDevicesDenyReadAccessPerUser**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy will do the enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.

To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/en-us/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46).

If enabled, this policy will block end-user from Read access on any Windows Portal devices, for example, mobile/iOS/Android.

>[!NOTE]
> WPD policy is not a reliable policy for removable storage - admin can not use WPD policy to block removable storage. For example, if an end-user is using an USB thumb drive under a WPD policy, the policy may block PTP/MTP/etc, but end-user can still browse the USB via explorer.

Supported values for this policy are:
- Not configured
- Enabled
- Disabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny read access*
-   GP name: *WPDDevices_DenyRead_Access_1*
-   GP path: *System/Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="storage-wpddevicesdenywriteaccessperdevice"></a>**Storage/WPDDevicesDenyWriteAccessPerDevice**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy will do the enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.

To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/en-us/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46).

If enabled, this policy will block end-user from Write access on any Windows Portal devices, for example, mobile/iOS/Android.

>[!NOTE]
> WPD policy is not a reliable policy for removable storage - admin can not use WPD policy to block removable storage. For example, if an end-user is using an USB thumb drive under a WPD policy, the policy may block PTP/MTP/etc, but end-user can still browse the USB via explorer.

Supported values for this policy are:
- Not configured
- Enabled
- Disabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny write access*
-   GP name: *WPDDevices_DenyWrite_Access_2*
-   GP path: *System/Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="storage-wpddevicesdenywriteaccessperuser"></a>**Storage/WPDDevicesDenyWriteAccessPerUser**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy will do the enforcement over the following protocols that are used by most portable devices, for example, mobile/IOS/Android:

- Picture Transfer Protocol (PTP) over USB, IP, and Bluetooth.
- Media Transfer Protocol (MTP) over USB, IP, and Bluetooth.
- Mass Storage Class (MSC) over USB.

To enable this policy, the minimum OS requirement is Windows 10, version 1809 and [KB5003217 (OS Build 17763.1971)](https://support.microsoft.com/en-us/topic/may-20-2021-kb5003217-os-build-17763-1971-preview-08687c95-0740-421b-a205-54aa2c716b46).

If enabled, this policy will block end-user from Write access on any Windows Portal devices, for example, mobile/iOS/Android.

>[!NOTE]
> WPD policy is not a reliable policy for removable storage - admin can not use WPD policy to block removable storage. For example, if an end-user is using an USB thumb drive under a WPD policy, the policy may block PTP/MTP/etc, but end-user can still browse the USB via explorer.

Supported values for this policy are:
- Not configured
- Enabled
- Disabled

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *WPD Devices: Deny write access*
-   GP name: *WPDDevices_DenyWrite_Access_1*
-   GP path: *System/Removable Storage Access*
-   GP ADMX file name: *RemovableStorage.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->
<!--Policy-->
<a href="" id="storagehealthmonitor-disablestoragehealthmonitor"></a>**StorageHealthMonitor/DisableStorageHealthMonitor**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

> [!NOTE]
> Versions prior to 21H2 will not support this policy

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows disable of Storage Health Monitor.

Supported value type is integer.

<!--/Description-->

<!--SupportedValues-->
The following list shows the supported values:

-   0 - Storage Health Monitor is Enabled.
-   1 - Storage Health Monitor is Disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>


<!--/Policy-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)