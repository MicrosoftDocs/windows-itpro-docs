---
title: UnifiedWriteFilter CSP
description: The UnifiedWriteFilter (UWF) configuration service provider allows you to remotely manage the UWF. Understand how it helps protect physical storage media.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# UnifiedWriteFilter CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|No|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The UnifiedWriteFilter (UWF) configuration service provider enables the IT administrator to remotely manage the UWF to help protect physical storage media including any writable storage type.

> **Note**  The UnifiedWriteFilter CSP is only supported in Windows 10 Enterprise and Windows 10 Education.

The following example shows the UWF configuration service provider in tree format.
```
./Vendor/MSFT
UnifiedWriteFilter
┣━━━CurrentSession
┃   ┣━━━FilterEnabled
┃   ┣━━━OverlayConsumption
┃   ┣━━━AvailableOverlaySpace
┃   ┣━━━CriticalOverlayThreshold
┃   ┣━━━SWAPFileSize
┃   ┣━━━WarningOverlayThreshold
┃   ┣━━━OverlayType
┃   ┣━━━OverlayFlags
┃   ┣━━━MaximumOverlaySize
┃   ┣━━━PersistDomainSecretKey
┃   ┣━━━PersistTSCAL
┃   ┣━━━RegistryExclusions
┃   ┃   ┗━━━[ExcludedRegistry]
┃   ┣━━━ServicingEnabled
┃   ┣━━━Volume
┃   ┃   ┗━━━[Volume]
┃   ┃       ┣━━━Protected
┃   ┃       ┣━━━BindByDriveLetter
┃   ┃       ┣━━━DriveLetter
┃   ┃       ┣━━━Exclusions
┃   ┃       ┃   ┗━━━[ExclusionPath]
┃   ┃       ┣━━━CommitFile
┃   ┃       ┗━━━CommitFileDeletion
┃   ┣━━━ShutdownPending
┃   ┣━━━CommitRegistry
┃   ┗━━━CommitRegistryDeletion
┣━━━NextSession
┃   ┣━━━FilterEnabled
┃   ┣━━━HORMEnabled
┃   ┣━━━OverlayType
┃   ┣━━━OverlayFlags
┃   ┣━━━MaximumOverlaySize
┃   ┣━━━PersistDomainSecretKey
┃   ┣━━━PersistTSCAL
┃   ┣━━━RegistryExclusions
┃   ┃   ┗━━━[ExcludedRegistry]
┃   ┣━━━ResetPersistentState
┃   ┣━━━ResetPersistentStateSavedMode
┃   ┣━━━ServicingEnabled
┃   ┣━━━SWAPFileSize
┃   ┗━━━Volume
┃       ┗━━━[Volume]
┃           ┣━━━Protected
┃           ┣━━━BindByDriveLetter
┃           ┣━━━DriveLetter
┃           ┗━━━Exclusions
┃               ┗━━━[ExclusionPath]
┣━━━ResetSettings
┣━━━ShutdownSystem
┗━━━RestartSystem
```
<a href="" id="currentsession"></a>**CurrentSession**
Required. Represents the current UWF configuration in the current session (power cycle).

<a href="" id="currentsession-filterenabled"></a>**CurrentSession/FilterEnabled**
Required. Indicates if UWF is enabled for the current session.

The only supported operation is Get.

<a href="" id="currentsession-overlayconsumption"></a>**CurrentSession/OverlayConsumption**
Required. The current size, in megabytes, of the UWF overlay.

The only supported operation is Get.

<a href="" id="currentsession-availableoverlayspace"></a>**CurrentSession/AvailableOverlaySpace**
Required. The amount of free space, in megabytes, available for the UWF overlay.

The only supported operation is Get.

<a href="" id="currentsession-criticaloverlaythreshold"></a>**CurrentSession/CriticalOverlayThreshold**
Required. The critical threshold size, in megabytes. UWF sends a critical threshold notification event when the UWF overlay size reaches or exceeds this value.

The only supported operation is Get.

<a href="" id="currentsession-volume\<volumeid>\swapfilesize"></a>**CurrentSession/Volume\<VolumeID>\SWAPFileSize**

Required. Read-only CFG_DATATYPE_INTEGER property that contains non-zero (for example, 1) value if volume has overlay file created/used on it.

Future: Contains actual size of the file

<a href="" id="nextsession-volume\<volumeid>\swapfilesize"></a>**NextSession/Volume\<VolumeID>\SWAPFileSize**

Required. Read/Write CFG_DATATYPE_INTEGER property that contains non-zero (for example, 1) if volume has overlay created/used on it.

Setting the value
- from zero to non-zero will lead to creation of the swapfile on that volume.
- from non-zero to zero – not supported

To “move” swapfile to another volume, set the SwapfileSize property on that other volume's CSP note to non-zero.

Currently SwapfileSize shouldn't be relied for determining or controlling the overlay size,

<a href="" id="currentsession-maximumoverlaysize"></a>**CurrentSession/MaximumOverlaySize** or <a href="" id="nextsession-maximumoverlaysize"></a>**NextSession/MaximumOverlaySize**
should be used for that purpose.

:::image type="content" source="images/overlaysetting.png" alt-text="The overlay setting.":::

> [!NOTE]
> Only single swapfile is supported in current implementation and creating swapfile on specific volume will disable any other swapfile created on other volumes.


<a href="" id="currentsession-warningoverlaythreshold"></a>**CurrentSession/WarningOverlayThreshold**
Required. The warning threshold size, in megabytes. UWF sends a warning threshold notification event when the UWF overlay size reaches or exceeds this value.

Supported operations are Get and Replace.

<a href="" id="currentsession-overlaytype"></a>**CurrentSession/OverlayType**
Required. Indicates the type of overlay in the current session.

The only supported operation is Get.

<a href="" id="currentsession-maximumoverlaysize"></a>**CurrentSession/MaximumOverlaySize**
Required. Indicates the maximum cache size, in megabytes, of the overlay in the current session.

The only supported operation is Get.

<a href="" id="currentsession-persisitdomainsecretkey"></a>**CurrentSession/PersisitDomainSecretKey**
Required. Indicates if the domain secret registry key is in the registry exclusion list. If the registry key isn't in the exclusion list, changes don't persist after a restart.

The only supported operation is Get.

<a href="" id="currentsession-persisttscal"></a>**CurrentSession/PersistTSCAL**
Required. Indicates if the Terminal Server Client Access License (TSCAL) registry key is in the UWF registry exclusion list. If the registry key isn't in the exclusion list, changes don't persist after a restart.

The only supported operation is Get.

<a href="" id="currentsession-registryexclusions"></a>**CurrentSession/RegistryExclusions**
Required. The root node that contains all registry exclusions.

<a href="" id="currentsession-registryexclusions-excludedregistry"></a>**CurrentSession/RegistryExclusions/**<strong>*ExcludedRegistry*</strong>
Optional. A registry key in the registry exclusion list for UWF in the current session.

The only supported operation is Get.

<a href="" id="currentsession-servicingenabled"></a>**CurrentSession/ServicingEnabled**
Required. Indicates when servicing is enabled in the current session.

The only supported operation is Get.

<a href="" id="currentsession-volume"></a>**CurrentSession/Volume**
Required. The root node to contain all volumes protected by UWF in the current session.

<a href="" id="currentsession-volume-volume"></a>**CurrentSession/Volume/**<strong>*Volume*</strong>
Optional. Represents a specific volume in the current session.

<a href="" id="currentsession-volume-volume-protected"></a>**CurrentSession/Volume/*Volume*/Protected**
Required. Indicates if the volume is currently protected by UWF in the current session.

The only supported operation is Get.

<a href="" id="currentsession-volume-volume-bindbydriveletter"></a>**CurrentSession/Volume/*Volume*/BindByDriveLetter**
Required. Indicates the type of binding that the volume uses in the current session.

The only supported operation is Get.

<a href="" id="currentsession-volume-volume-driveletter"></a>**CurrentSession/Volume/*Volume*/DriveLetter**
Required. The drive letter of the volume. If the volume doesn't have a drive letter, this value is NULL.

The only supported operation is Get.

<a href="" id="currentsession-volume-volume-exclusions"></a>**CurrentSession/Volume/*Volume*/Exclusions**
Required. The root node that contains all file exclusions for the volume.

<a href="" id="currentsession-volume-volume-exclusions-exclusionpath"></a>**CurrentSession/Volume/*Volume*/Exclusions/**<strong>*ExclusionPath*</strong>
Optional. A string that contains the full path of the file or folder relative to the volume.

The only supported operation is Get.

<a href="" id="currentsession-volume-volume-commitfile"></a>**CurrentSession/Volume/*Volume*/CommitFile**
Required. This method commits changes from the overlay to the physical volume for a specified file on a volume protected by Unified Write Filter (UWF).

Supported operations are Get and Execute.

<a href="" id="currentsession-volume-volume-commitfiledeletion"></a>**CurrentSession/Volume/*Volume*/CommitFileDeletion**
Required. This method deletes the specified file and commits the deletion to the physical volume.

Supported operations are Get and Execute.

<a href="" id="currentsession-shutdownpending"></a>**CurrentSession/ShutdownPending**
Required. This value is True if the system is pending on shutdown. Otherwise, it's False.

The only supported operation is Get.

<a href="" id="currentsession-commitregistry"></a>**CurrentSession/CommitRegistry**
Required. This method commits changes to the specified registry key and value.

Supported operations are Get and Execute.

<a href="" id="currentsession-commitregistrydeletion"></a>**CurrentSession/CommitRegistryDeletion**
Required. This method deletes the specified registry key or registry value and commits the deletion.

Supported operations are Get and Execute.

<a href="" id="nextsession"></a>**NextSession**
Required.

The root node that contains settings for the next UWF session (after a reboot).

<a href="" id="nextsession-filterenabled"></a>**NextSession/FilterEnabled**
Required. Boolean value that indicates if UWF is enabled for the next session.

Supported operations are Get and Replace.

<a href="" id="nextsession-hormenabled"></a>**NextSession/HORMEnabled**
Added in Windows 10, version 1607. Required. Boolean value that indicates if Hibernate Once/Resume Many (HORM) is enabled for the next session.

Supported operations are Get and Replace.

<a href="" id="nextsession-overlaytype"></a>**NextSession/OverlayType**
Required. Indicates the type of overlay for the next session.

Supported operations are Get and Replace.

<a href="" id="nextsession-maximumoverlaysize"></a>**NextSession/MaximumOverlaySize**
Required. Indicates the maximum cache size, in megabytes, of the overlay for the next session.

Supported operations are Get and Replace.

<a href="" id="nextsession-persisitdomainsecretkey"></a>**NextSession/PersisitDomainSecretKey**
Required. Indicates if the domain secret registry key is in the registry exclusion list. If the registry key isn't in the exclusion list, changes don't persist after a restart.

Supported operations are Get and Replace.

<a href="" id="nextsession-persisttscal"></a>**NextSession/PersistTSCAL**
Required. Indicates if the Terminal Server Client Access License (TSCAL) registry key is in the UWF registry exclusion list. If the registry key isn't in the exclusion list, changes don't persist after a restart.

Supported operations are Get and Replace.

<a href="" id="nextsession-registryexclusions"></a>**NextSession/RegistryExclusions**
Required. The root node that contains all registry exclusions for the next session.

Supported operations are Add, Delete, and Replace.

<a href="" id="nextsession-registryexclusions-excludedregistry"></a>**NextSession/RegistryExclusions/**<strong>*ExcludedRegistry*</strong>
Optional. A registry key in the registry exclusion list for UWF.

Supported operations are Add, Delete, Get, and Replace.

<a href="" id="nextsession-servicingenabled"></a>**NextSession/ServicingEnabled**
Required. Indicates when to enable servicing.

Supported operations are Get and Replace.

<a href="" id="nextsession-volume"></a>**NextSession/Volume**
Required. The root node that contains all volumes protected by UWF for the next session.

<a href="" id="nextsession-volume-volume"></a>**NextSession/Volume/**<strong>*Volume*</strong>
Optional. Represents a specific volume in the next session.

Supported operations are Add, Delete, and Replace.

<a href="" id="nextsession-volume-volume-protected"></a>**NextSession/Volume/*Volume*/Protected**
Required. Indicates if the volume is currently protected by UWF in the next session.

Supported operations are Get and Replace.

<a href="" id="nextsession-volume-volume-bindbydriveletter"></a>**NextSession/Volume/*Volume*/BindByDriveLetter**
Required. Indicates the type of binding that the volume uses in the next session.

Supported operations are Get and Replace.

<a href="" id="nextsession-volume-volume-driveletter"></a>**NextSession/Volume/*Volume*/DriveLetter**
The drive letter of the volume. If the volume doesn't have a drive letter, this value is NULL.

The only supported operation is Get.

<a href="" id="nextsession-volume-volume-exclusions"></a>**NextSession/Volume/*Volume*/Exclusions**
Required. The root node that contains all file exclusions for this volume in the next session.

<a href="" id="nextsession-volume-volume-exclusionsexclusionpath"></a>**NextSession/Volume/*Volume*/Exclusions/**<strong>*ExclusionPath*</strong>
Optional. A string that contains the full path of the file or folder relative to the volume.

Supported operations are Add, Delete, Get, and Replace.

<a href="" id="resetsettings"></a>**ResetSettings**
Required. Restores UWF settings to the original state that was captured at installation time.

Supported operations are Get and Execute.

<a href="" id="shutdownsystem"></a>**ShutdownSystem**
Required. Safely shuts down a system protected by UWF, even if the overlay is full.

Supported operations are Get and Execute.

<a href="" id="restartsystem"></a>**RestartSystem**
Required. Safely restarts a system protected by UWF, even if the overlay is full.

Supported operations are Get and Execute.

## Related topics

[Configuration service provider reference](index.yml)









