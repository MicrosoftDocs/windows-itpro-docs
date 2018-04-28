---
description: Use this article to learn more about what Windows diagnostic data is gathered at the basic level.
title: Windows 10, version 1803 basic diagnostic events and fields (Windows 10)
keywords: privacy, telemetry, diagnostic data
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
ms.author: brianlic
ms.date: 4/10/2018
---


# Windows 10, version 1803 basic level Windows diagnostic events and fields


 **Applies to**

- Windows 10, version 1803


The Basic level gathers a limited set of information that is critical for understanding the device and its configuration including: basic device information, quality-related information, app compatibility, and Microsoft Store. When the level is set to Basic, it also includes the Security level information.

The Basic level helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. This helps Microsoft fix operating system or app problems.

Use this article to learn about diagnostic events, grouped by event area, and the fields within each event. A brief description is provided for each field. Every event generated includes common data, which collects device data.

You can learn more about Windows functional and diagnostic data through these articles:


- [Windows 10, version 1709 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1709.md)
- [Windows 10, version 1703 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1703.md)
- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
- [Manage Windows 10 connection endpoints](manage-windows-endpoints-version-1709.md)
- [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md)




## Common data extensions

### Common Data Extensions.App

 

The following fields are available:

- **expId**  Associates a flight, such as an OS flight, or an experiment, such as a web site UX experiment, with an event.
- **userId**  The userID as known by the application.
- **env**  The environment from which the event was logged.
- **asId**  An integer value that represents the app session. This value starts at 0 on the first app launch and increments after each subsequent app launch per boot session.
- **id**  Represents a unique identifier of the client application currently loaded in the process producing the event; and is used to group events together and understand usage pattern, errors by application.
- **ver**  Represents the version number of the application. Used to understand errors by Version, Usage by Version across an app.


### Common Data Extensions.CS

 

The following fields are available:

- **sig**  A common schema signature that identifies new and modified event schemas.


### Common Data Extensions.CUET

 

The following fields are available:

- **stId**  Represents the Scenario Entry Point ID. This is a unique GUID for each event in a diagnostic scenario. This used to be Scenario Trigger ID.
- **aId**  Represents the ETW ActivityId. Logged via TraceLogging or directly via ETW.
- **raId**  Represents the ETW Related ActivityId. Logged via TraceLogging or directly via ETW.
- **op**  Represents the ETW Op Code.
- **cat**  Represents a bitmask of the ETW Keywords associated with the event.
- **flags**  Represents the bitmap that captures various Windows specific flags.
- **cpId**  The composer ID, such as Reference, Desktop, Phone, Holographic, Hub, IoT Composer.
- **tickets**  A list of strings that represent entries in the HTTP header of the web request that includes this event.
- **bseq**  Upload buffer sequence number in the format \<buffer identifier\>:\<sequence number\>
- **mon**  Combined monitor and event sequence numbers in the format \<monitor sequence\>:\<event sequence\>
- **epoch**  Represents the epoch and seqNum fields, which help track how many events were fired and how many events were uploaded, and enables identification of data lost during upload and de-duplication of events on the ingress server.
- **seq**  Represents the sequence field used to track absolute order of uploaded events. It is an incrementing identifier for each event added to the upload queue.  The Sequence helps track how many events were fired and how many events were uploaded and enables identification of data lost during upload and de-duplication of events on the ingress server.


### Common Data Extensions.Device

 

The following fields are available:

- **ver**  Represents the major and minor version of the extension.
- **localId**  Represents a locally defined unique ID for the device, not the human readable device name. Most likely equal to the value stored at HKLM\Software\Microsoft\SQMClient\MachineId
- **deviceClass**  Represents the classification of the device, the device “family”.  For example, Desktop, Server, or Mobile.


### Common Data Extensions.Envelope

 

The following fields are available:

- **ver**  Represents the major and minor version of the extension.
- **name**  Represents the uniquely qualified name for the event.
- **time**  Represents the event date time in Coordinated Universal Time (UTC) when the event was generated on the client. This should be in ISO 8601 format.
- **popSample**  Represents the effective sample rate for this event at the time it was generated by a client.
- **iKey**  Represents an ID for applications or other logical groupings of events.
- **flags**  Represents a collection of bits that describe how the event should be processed by the Connected User Experience and Telemetry component pipeline. The lowest-order byte is the event persistence. The next byte is the event latency.
- **cV**  Represents the Correlation Vector: A single field for tracking partial order of related telemetry events across component boundaries.


### Common Data Extensions.OS

 

The following fields are available:

- **ver**  Represents the major and minor version of the extension.
- **expId**  Represents the experiment ID. The standard for associating a flight, such as an OS flight (pre-release build), or an experiment, such as a web site UX experiment, with an event is to record the flight / experiment IDs in Part A of the common schema.
- **locale**  Represents the locale of the operating system.
- **bootId**  An integer value that represents the boot session. This value starts at 0 on first boot after OS install and increments after every reboot.
- **os**  Represents the operating system name.
- **ver**  Represents the OS version, and its format is OS dependent.


### Common Data Extensions.User

 

The following fields are available:

- **ver**  Represents the major and minor version of the extension.
- **localId**  Represents a unique user identity that is created locally and added by the client. This is not the user's account ID.


### Common Data Extensions.XBL

 

The following fields are available:

- **nbf**  Not before time
- **expId**  Expiration time
- **sbx**  XBOX sandbox identifier
- **dty**  XBOX device type
- **did**  XBOX device ID
- **xid**  A list of base10-encoded XBOX User IDs.
- **uts**  A bit field, with 2 bits being assigned to each user ID listed in xid. This field is omitted if all users are retail accounts.


### Common Data Extensions.Consent UI Event

This User Account Control (UAC) telemetry point collects information on elevations that originate from low integrity levels. This occurs when a process running at low integrity level (IL) requires higher (administrator) privileges, and therefore requests for elevation via UAC (consent.exe). By better understanding the processes requesting these elevations, Microsoft can in turn improve the detection and handling of potentially malicious behavior in this path.

The following fields are available:

- **eventType**  Represents the type of elevation: If it succeeded, was cancelled, or was auto-approved.
- **splitToken**  Represents the flag used to distinguish between administrators and standard users.
- **friendlyName**  Represents the name of the file requesting elevation from low IL.
- **elevationReason**  Represents the distinction between various elevation requests sources (appcompat, installer, COM, MSI and so on).
- **exeName**  Represents the name of the file requesting elevation from low IL.
- **signatureState**  Represents the state of the signature, if it signed, unsigned, OS signed and so on.
- **publisherName**  Represents the name of the publisher of the file requesting elevation from low IL.
- **cmdLine**  Represents the full command line arguments being used to elevate.
- **Hash.Length**  Represents the length of the hash of the file requesting elevation from low IL.
- **Hash**  Represents the hash of the file requesting elevation from low IL.
- **HashAlgId**  Represents the algorithm ID of the hash of the file requesting elevation from low IL.
- **telemetryFlags**  Represents the details about the elevation prompt for CEIP data.
- **timeStamp**  Represents the time stamp on the file requesting elevation.
- **fileVersionMS**  Represents the major version of the file requesting elevation.
- **fileVersionLS**  Represents the minor version of the file requesting elevation.


## Common data fields

### Common Data Fields.MS.Device.DeviceInventory.Change

These fields are added whenever Ms.Device.DeviceInventoryChange is included in the event.

The following fields are available:

- **syncId**  A string used to group StartSync, EndSync, Add, and Remove operations that belong together. This field is unique by Sync period and is used to disambiguate in situations where multiple agents perform overlapping inventories for the same object.
- **objectType**  Indicates the object type that the event applies to.
- **Action**  The change that was invoked on a device inventory object.
- **inventoryId**  Device ID used for Compatibility testing


### Common Data Fields.TelClientSynthetic.PrivacySettingsAfterCreatorsUpdate.PreUpgradeSettings

These fields are added whenever PreUpgradeSettings is included in the event.

The following fields are available:

- **HKLM_SensorPermissionState.SensorPermissionState**  The state of the Location service before the feature update completed.
- **HKLM_SensorPermissionState.HRESULT**  The error code returned when trying to query the Location service for the device.
- **HKCU_SensorPermissionState.SensorPermissionState**  The state of the Location service when a user signs on before the feature update completed.
- **HKCU_SensorPermissionState.HRESULT**  The error code returned when trying to query the Location service for the current user.
- **HKLM_LocationPlatform.Status**  The state of the location platform after the feature update has completed.
- **HKLM_LocationPlatform.HRESULT**  The error code returned when trying to query the location platform for the device.
- **HKLM_LocationSyncEnabled.AcceptedPrivacyPolicy**  The speech recognition state for the device before the feature update completed.
- **HKLM_LocationSyncEnabled.HRESULT**  The error code returned when trying to query the Find My Device service for the device.
- **HKCU_LocationSyncEnabled.AcceptedPrivacyPolicy**  The speech recognition state for the current user before the feature update completed.
- **HKCU_LocationSyncEnabled.HRESULT**  The error code returned when trying to query the Find My Device service for the current user.
- **HKLM_AllowTelemetry.AllowTelemetry**  The state of the Connected User Experiences and Telemetry component for the device before the feature update.
- **HKLM_AllowTelemetry.HRESULT**  The error code returned when trying to query the Connected User Experiences and Telemetry conponent for the device.
- **HKLM_TIPC.Enabled**  The state of TIPC for the device.
- **HKLM_TIPC.HRESULT**  The error code returned when trying to query TIPC for the device.
- **HKCU_TIPC.Enabled**  The state of TIPC for the current user.
- **HKCU_TIPC.HRESULT**  The error code returned when trying to query TIPC for the current user.
- **HKLM_FlipAhead.FPEnabled**  Is Flip Ahead enabled for the device before the feature update was completed?
- **HKLM_FlipAhead.HRESULT**  The error code returned when trying to query Flip Ahead for the device.
- **HKCU_FlipAhead.FPEnabled**  Is Flip Ahead enabled for the current user before the feature update was completed?
- **HKCU_FlipAhead.HRESULT**  The error code returned when trying to query Flip Ahead for the current user.
- **HKLM_TailoredExperiences.TailoredExperiencesWithDiagnosticDataEnabled**  Is Tailored Experiences with Diagnostics Data enabled for the current user after the feature update had completed?
- **HKCU_TailoredExperiences.HRESULT**  The error code returned when trying to query Tailored Experiences with Diagnostics Data for the current user.
- **HKLM_AdvertisingID.Enabled**  Is the adveristing ID enabled for the device?
- **HKLM_AdvertisingID.HRESULT**  The error code returned when trying to query the state of the advertising ID for the device.
- **HKCU_AdvertisingID.Enabled**  Is the adveristing ID enabled for the current user?
- **HKCU_AdvertisingID.HRESULT**  The error code returned when trying to query the state of the advertising ID for the user.


### Common Data Fields.TelClientSynthetic.PrivacySettingsAfterCreatorsUpdate.PostUpgradeSettings

These fields are added whenever PostUpgradeSettings is included in the event.

The following fields are available:

- **HKLM_SensorPermissionState.SensorPermissionState**  The state of the Location service after the feature update has completed.
- **HKLM_SensorPermissionState.HRESULT**  The error code returned when trying to query the Location service for the device.
- **HKCU_SensorPermissionState.SensorPermissionState**  The state of the Location service when a user signs on after a feature update has completed.
- **HKCU_SensorPermissionState.HRESULT**  The error code returned when trying to query the Location service for the current user.
- **HKLM_LocationPlatform.Status**  The state of the location platform after the feature update has completed.
- **HKLM_LocationPlatform.HRESULT**  The error code returned when trying to query the location platform for the device.
- **HKLM_LocationSyncEnabled.AcceptedPrivacyPolicy**  The speech recognition state for the device after the feature update has completed.
- **HKLM_LocationSyncEnabled.HRESULT**  The error code returned when trying to query the Find My Device service for the device.
- **HKCU_LocationSyncEnabled.AcceptedPrivacyPolicy**  The speech recognition state for the current user after the feature update has completed.
- **HKCU_LocationSyncEnabled.HRESULT**  The error code returned when trying to query the Find My Device service for the current user.
- **HKLM_AllowTelemetry.AllowTelemetry**  The state of the Connected User Experiences and Telemetry component for the device after the feature update.
- **HKLM_AllowTelemetry.HRESULT**  The error code returned when trying to query the Connected User Experiences and Telemetry conponent for the device.
- **HKLM_TIPC.Enabled**  The state of TIPC for the device.
- **HKLM_TIPC.HRESULT**  The error code returned when trying to query TIPC for the device.
- **HKCU_TIPC.Enabled**  The state of TIPC for the current user.
- **HKCU_TIPC.HRESULT**  The error code returned when trying to query TIPC for the current user.
- **HKLM_FlipAhead.FPEnabled**  Is Flip Ahead enabled for the device after the feature update has completed?
- **HKLM_FlipAhead.HRESULT**  The error code returned when trying to query Flip Ahead for the device.
- **HKCU_FlipAhead.FPEnabled**  Is Flip Ahead enabled for the current user after the feature update has completed?
- **HKCU_FlipAhead.HRESULT**  The error code returned when trying to query Flip Ahead for the current user.
- **HKLM_TailoredExperiences.TailoredExperiencesWithDiagnosticDataEnabled**  Is Tailored Experiences with Diagnostics Data enabled for the current user after the feature update had completed?
- **HKCU_TailoredExperiences.HRESULT**  The error code returned when trying to query Tailored Experiences with Diagnostics Data for the current user.
- **HKLM_AdvertisingID.Enabled**  Is the adveristing ID enabled for the device?
- **HKLM_AdvertisingID.HRESULT**  The error code returned when trying to query the state of the advertising ID for the device.
- **HKCU_AdvertisingID.Enabled**  Is the adveristing ID enabled for the current user?
- **HKCU_AdvertisingID.HRESULT**  The error code returned when trying to query the state of the advertising ID for the user.


## Appraiser events

### Microsoft.Windows.Appraiser.General.ChecksumTotalPictureCount

This event lists the types of objects and how many of each exist on the client device. This allows for a quick way to ensure that the records present on the server match what is present on the client.

The following fields are available:

- **PCFP**  An ID for the system, calculated by hashing hardware identifiers. 
- **SystemProcessorLahfSahf**  The count of the number of this particular object type present on this device.
- **SystemProcessorCompareExchange**  The count of the number of this particular object type present on this device.
- **SystemProcessorSse2**  The count of the number of this particular object type present on this device.
- **SystemProcessorNx**  The count of the number of this particular object type present on this device.
- **SystemWim**  The count of the number of this particular object type present on this device.
- **SystemWlan**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_RS1**  The total DataSourceDevicePnp objects targeting Windows 10 version 1607 on this device.
- **DecisionDevicePnp_RS1**  The total DecisionDevicePnp objects targeting Windows 10 version 1607 on this device.
- **InventorySystemBios**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS1**  The total DataSourceMatchingInfoPostUpgrade objects targeting Windows 10 version 1607 on this device.
- **DecisionMatchingInfoPostUpgrade_RS1**  The total DecisionMatchingInfoPostUpgrade objects targeting Windows 10 version 1607 on this device.
- **SystemMemory**  The count of the number of this particular object type present on this device.
- **SystemProcessorPrefetchW**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_RS1**  The total DatasourceSystemBios objects targeting Windows 10 version 1607 present on this device.
- **DecisionSystemBios_RS1**  The total DecisionSystemBios objects targeting Windows 10 version 1607 on this device.
- **DataSourceMatchingInfoPassive_RS1**  The total DataSourceMatchingInfoPassive objects targeting Windows 10 version 1607 on this device.
- **DecisionMatchingInfoPassive_RS1**  The total DecisionMatchingInfoPassive objects targeting Windows 10 version 1607 on this device.
- **InventoryUplevelDriverPackage**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_RS1**  The total DataSourceDriverPackage objects targeting Windows 10 version 1607 on this device.
- **DecisionDriverPackage_RS1**  The total DecisionDriverPackage objects targeting Windows 10 version 1607 on this device.
- **Wmdrm_RS1**  An ID for the system, calculated by hashing hardware identifiers. 
- **DecisionTest_RS1**  An ID for the system, calculated by hashing hardware identifiers. 
- **SystemWindowsActivationStatus**  The count of the number of this particular object type present on this device.
- **SystemTouch**  The count of the number of this particular object type present on this device.
- **InventoryApplicationFile**  The count of the number of this particular object type present on this device.
- **InventoryLanguagePack**  The count of InventoryLanguagePack objects present on this machine.
- **InventoryMediaCenter**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_RS3**  The total DatasourceSystemBios objects targeting the next release of Windows on this device.
- **DecisionSystemBios_RS3**  The total DecisionSystemBios objects targeting the next release of Windows on this device.
- **DatasourceApplicationFile_RS3**  The total DecisionApplicationFile objects targeting the next release of Windows on this device. 
- **DatasourceDevicePnp_RS3**  The total DatasourceDevicePnp objects targeting the next release of Windows on this device.
- **DatasourceDriverPackage_RS3**  The total DatasourceDriverPackage objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoBlock_RS3**  The total DataSourceMatchingInfoBlock objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoPassive_RS3**  The total DataSourceMatchingInfoPassive objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoPostUpgrade_RS3**  The total DataSourceMatchingInfoPostUpgrade objects targeting the next release of Windows on this device.
- **DecisionApplicationFile_RS3**  The total DecisionApplicationFile objects targeting the next release of Windows on this device.
- **DecisionDevicePnp_RS3**  The total DecisionDevicePnp objects targeting the next release of Windows on this device.
- **DecisionDriverPackage_RS3**  The total DecisionDriverPackage objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoBlock_RS3**  The total DecisionMatchingInfoBlock objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoPassive_RS3**  The total DataSourceMatchingInfoPassive objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoPostUpgrade_RS3**  The total DecisionMatchingInfoPostUpgrade objects targeting the next release of Windows on this device.
- **DecisionMediaCenter_RS3**  The total DecisionMediaCenter objects targeting the next release of Windows on this device.
- **Wmdrm_RS3**  The total Wmdrm objects targeting the next release of Windows on this device.
- **DatasourceApplicationFile_RS1**  An ID for the system, calculated by hashing hardware identifiers. 
- **DecisionApplicationFile_RS1**  An ID for the system, calculated by hashing hardware identifiers. 
- **DataSourceMatchingInfoBlock_RS1**  The total DataSourceMatchingInfoBlock objects targeting Windows 10 version 1607 on this device.
- **DecisionMatchingInfoBlock_RS1**  The total DecisionMatchingInfoBlock objects targeting Windows 10 version 1607 present on this device.
- **DecisionMediaCenter_RS1**  The total DecisionMediaCenter objects targeting Windows 10 version 1607 present on this device.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockAdd

This event sends blocking data about any compatibility blocking entries hit on the system that are not directly related to specific applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockRemove

This event indicates that the DataSourceMatchingInfoBlock object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockStartSync

This event indicates that a full set of DataSourceMatchingInfoBlockStAdd events have been sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveAdd

This event sends compatibility database information about non-blocking compatibility entries on the system that are not keyed by either applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveRemove

This event indicates that the DataSourceMatchingInfoPassive object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveStartSync

This event indicates that a new set of DataSourceMatchingInfoPassiveAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeAdd

This event sends compatibility database information about entries requiring reinstallation after an upgrade on the system that are not keyed by either applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeRemove

This event indicates that the DataSourceMatchingInfoPostUpgrade object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeStartSync

This event indicates that a new set of DataSourceMatchingInfoPostUpgradeAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.



### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileRemove

This event indicates that the DatasourceApplicationFile object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileStartSync

This event indicates that a new set of DatasourceApplicationFileAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpAdd

This event sends compatibility data for a PNP device, to help keep Windows up-to-date.

The following fields are available:

- **ActiveNetworkConnection**  Is the device an active network device?
- **AppraiserVersion**  The version of the appraiser file generating the events.
- **IsBootCritical**  Is the device boot critical?
- **SdbEntries**  An array of fields indicating the SDB entries that apply to this device.
- **WuDriverCoverage**  Is there a driver uplevel for this device according to Windows Update?
- **WuDriverUpdateId**  The Windows Update ID of the applicable uplevel driver
- **WuPopulatedFromId**  The expected up-level driver matching ID based on driver coverage from Windows Update


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpRemove

This event indicates that the DatasourceDevicePnp object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpStartSync

This event indicates that a new set of DatasourceDevicePnpAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageAdd

This event sends compatibility database data about driver packages to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageRemove

This event indicates that the DatasourceDriverPackage object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageStartSync

This event indicates that a new set of DatasourceDriverPackageAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosAdd

This event sends compatibility database information about the BIOS to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **SdbEntries**  An array of fields indicating the SDB entries that apply to this BIOS.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosRemove

This event indicates that the DatasourceSystemBios object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosStartSync

This event indicates that a new set of DatasourceSystemBiosAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionApplicationFileAdd

This event sends compatibility decision data about a file to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **BlockAlreadyInbox**  The uplevel runtime block on the file already existed on the current OS.
- **BlockingApplication**  Are there any application issues that interfere with upgrade due to the file in question?
- **DisplayGenericMessage**  Will be a generic message be shown for this file?
- **HardBlock**  This file is blocked in the SDB.
- **HasUxBlockOverride**  Does the file have a block that is overridden by a tag in the SDB?
- **MigApplication**  Does the file have a MigXML from the SDB associated with it that applies to the current upgrade mode?
- **MigRemoval**  Does the file have a MigXML from the SDB that will cause the app to be removed on upgrade?
- **NeedsDismissAction**  Will the file cause an action that can be dimissed?
- **NeedsInstallPostUpgradeData**  After upgrade, the file will have a post-upgrade notification to install a replacement for the app.
- **NeedsNotifyPostUpgradeData**  Does the file have a notification that should be shown after upgrade?
- **NeedsReinstallPostUpgradeData**  After upgrade, this file will have a post-upgrade notification to reinstall the app.
- **NeedsUninstallAction**  The file must be uninstalled to complete the upgrade.
- **SdbBlockUpgrade**  The file is tagged as blocking upgrade in the SDB,
- **SdbBlockUpgradeCanReinstall**  The file is tagged as blocking upgrade in the SDB. It can be reinstalled after upgrade.
- **SdbBlockUpgradeUntilUpdate**  The file is tagged as blocking upgrade in the SDB. If the app is updated, the upgrade can proceed.
- **SdbReinstallUpgrade**  The file is tagged as needing to be reinstalled after upgrade in the SDB. It does not block upgrade.
- **SdbReinstallUpgradeWarn**  The file is tagged as needing to be reinstalled after upgrade with a warning in the SDB. It does not block upgrade.
- **SoftBlock**  The file is softblocked in the SDB and has a warning.


### Microsoft.Windows.Appraiser.General.DecisionApplicationFileRemove

This event indicates Indicates that the DecisionApplicationFile object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionApplicationFileStartSync

This event indicates that a new set of DecisionApplicationFileAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpAdd

This event sends compatibility decision data about a PNP device to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **AssociatedDriverIsBlocked**  Is the driver associated with this PNP device blocked?
- **AssociatedDriverWillNotMigrate**  Will the driver associated with this plug-and-play device migrate?
- **BlockAssociatedDriver**  Should the driver associated with this PNP device be blocked?
- **BlockingDevice**  Is this PNP device blocking upgrade?
- **BlockUpgradeIfDriverBlocked**  Is the PNP device both boot critical and does not have a driver included with the OS?
- **BlockUpgradeIfDriverBlockedAndOnlyActiveNetwork**  Is this PNP device the only active network device?
- **DisplayGenericMessage**  Will a generic message be shown during Setup for this PNP device?
- **DriverAvailableInbox**  Is a driver included with the operating system for this PNP device?
- **DriverAvailableOnline**  Is there a driver for this PNP device on Windows Update?
- **DriverAvailableUplevel**  Is there a driver on Windows Update or included with the operating system for this PNP device?
- **DriverBlockOverridden**  Is there is a driver block on the device that has been overridden?
- **NeedsDismissAction**  Will the user would need to dismiss a warning during Setup for this device?
- **NotRegressed**  Does the device have a problem code on the source OS that is no better than the one it would have on the target OS?
- **SdbDeviceBlockUpgrade**  Is there an SDB block on the PNP device that blocks upgrade?
- **SdbDriverBlockOverridden**  Is there an SDB block on the PNP device that blocks upgrade, but that block was overridden?


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpRemove

This event indicates that the DecisionDevicePnp object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpStartSync

This event indicates that the DecisionDevicePnp object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageAdd

This event sends decision data about driver package compatibility to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **DriverBlockOverridden**  Does the driver package have an SDB block that blocks it from migrating, but that block has been overridden?
- **DriverIsDeviceBlocked**  Was the driver package was blocked because of a device block?
- **DriverIsDriverBlocked**  Is the driver package blocked because of a driver block?
- **DriverShouldNotMigrate**  Should the driver package be migrated during upgrade?
- **SdbDriverBlockOverridden**  Does the driver package have an SDB block that blocks it from migrating, but that block has been overridden?


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageRemove

This event indicates that the DecisionDriverPackage object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageStartSync

This event indicates that a new set of DecisionDriverPackageAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockAdd

This event sends compatibility decision data about blocking entries on the system that are not keyed by either applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **BlockingApplication**  Are there are any application issues that interfere with upgrade due to matching info blocks?
- **DisplayGenericMessage**  Will a generic message be shown for this block?
- **NeedsUninstallAction**  Does the user need to take an action in setup due to a matching info block?
- **SdbBlockUpgrade**  Is a matching info block blocking upgrade?
- **SdbBlockUpgradeCanReinstall**  Is a matching info block blocking upgrade, but has the can reinstall tag?
- **SdbBlockUpgradeUntilUpdate**  Is a matching info block blocking upgrade but has the until update tag?


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockRemove

This event indicates that the DecisionMatchingInfoBlock object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockStartSync

This event indicates that a new set of DecisionMatchingInfoBlockAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveAdd

This event sends compatibility decision data about non-blocking entries on the system that are not keyed by either applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BlockingApplication**  Are there any application issues that interfere with upgrade due to matching info blocks?
- **MigApplication**  Is there a matching info block with a mig for the current mode of upgrade?


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveRemove

This event Indicates that the DecisionMatchingInfoPassive object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveStartSync

This event indicates that a new set of DecisionMatchingInfoPassiveAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeAdd

This event sends compatibility decision data about entries that require reinstall after upgrade. It's used to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **NeedsInstallPostUpgradeData**  Will the file have a notification after upgrade to install a replacement for the app?
- **NeedsNotifyPostUpgradeData**  Should a notification be shown for this file after upgrade?
- **NeedsReinstallPostUpgradeData**  Will the file have a notification after upgrade to reinstall the app?
- **SdbReinstallUpgrade**  The file is tagged as needing to be reinstalled after upgrade in the compatibility database (but is not blocking upgrade).


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeRemove

This event indicates that the DecisionMatchingInfoPostUpgrade object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMediaCenterAdd

This event sends decision data about the presence of Windows Media Center, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **BlockingApplication**  Is there any application issues that interfere with upgrade due to Windows Media Center?
- **MediaCenterActivelyUsed**  If Windows Media Center is supported on the edition, has it been run at least once and are the MediaCenterIndicators are true?
- **MediaCenterIndicators**  Do any indicators imply that Windows Media Center is in active use?
- **MediaCenterInUse**  Is Windows Media Center actively being used?
- **MediaCenterPaidOrActivelyUsed**  Is Windows Media Center actively being used or is it running on a supported edition?
- **NeedsDismissAction**  Are there any actions that can be dismissed coming from Windows Media Center?


### Microsoft.Windows.Appraiser.General.DecisionMediaCenterRemove

This event indicates that the DecisionMediaCenter object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMediaCenterStartSync

This event indicates that a new set of DecisionMediaCenterAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosAdd

This event sends compatibility decision data about the BIOS to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the device blocked from upgrade due to a BIOS block?
- **HasBiosBlock**  Does the device have a BIOS block?


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosRemove

This event indicates that the DecisionSystemBios object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosStartSync

This event indicates that a new set of DecisionSystemBiosAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.GatedRegChange

This event sends data about the results of running a set of quick-blocking instructions, to help keep Windows up to date.

The following fields are available:

- **NewData**  The data in the registry value after the scan completed.
- **OldData**  The previous data in the registry value before the scan ran.
- **PCFP**  An ID for the system calculated by hashing hardware identifiers.
- **RegKey**  The registry key name for which a result is being sent.
- **RegValue**  The registry value for which a result is being sent.
- **Time**  The client time of the event.


### Microsoft.Windows.Appraiser.General.InventoryApplicationFileAdd

This event represents the basic metadata about a file on the system.  The file must be part of an app and either have a block in the compatibility database or are part of an anti-virus program.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **BinaryType**  A binary type. Example: UNINITIALIZED, ZERO_BYTE, DATA_ONLY, DOS_MODULE, NE16_MODULE, PE32_UNKNOWN, PE32_I386, PE32_ARM, PE64_UNKNOWN, PE64_AMD64, PE64_ARM64, PE64_IA64, PE32_CLR_32, PE32_CLR_IL, PE32_CLR_IL_PREFER32, PE64_CLR_64
- **BinFileVersion**  An attempt to clean up FileVersion at the client that tries to place the version into 4 octets.
- **BinProductVersion**  An attempt to clean up ProductVersion at the client that tries to place the version into 4 octets.
- **BoeProgramId**  If there is no entry in Add/Remove Programs, this is the ProgramID that is generated from the file metadata.
- **CompanyName**  The company name of the vendor who developed this file.
- **FileId**  A hash that uniquely identifies a file.
- **FileVersion**  The File version field from the file metadata under Properties -> Details.
- **LinkDate**  The date and time that this file was linked on.
- **LowerCaseLongPath**  The full file path to the file that was inventoried on the device.
- **Name**  The name of the file that was inventoried.
- **ProductName**  The Product name field from the file metadata under Properties -> Details.
- **ProductVersion**  The Product version field from the file metadata under Properties -> Details.
- **ProgramId**  A hash of the Name, Version, Publisher, and Language of an application used to identify it.
- **Size**  The size of the file (in hexadecimal bytes).


### Microsoft.Windows.Appraiser.General.InventoryApplicationFileRemove

This event indicates that the InventoryApplicationFile object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryApplicationFileStartSync

This event indicates indicates that a new set of InventoryApplicationFileAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackAdd

This event sends data about the number of language packs installed on the system, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **HasLanguagePack**  Does this device have 2 or more language packs?
- **LanguagePackCount**  How many language packs are installed?


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackRemove

This event indicates that the InventoryLanguagePack object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackStartSync

This event indicates that a new set of InventoryLanguagePackAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryMediaCenterAdd

This event sends true/false data about decision points used to understand whether Windows Media Center is used on the system, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **EverLaunched**  Has Windows Media Center ever been launched?
- **HasConfiguredTv**  Has the user configured a TV tuner through Windows Media Center?
- **HasExtendedUserAccounts**  Are any Windows Media Center Extender user accounts configured?
- **HasWatchedFolders**  Are any folders configured for Windows  Media Center to watch?
- **IsDefaultLauncher**  Is Windows Media Center the default app for opening music or video files?
- **IsPaid**  Is the user running a Windows Media Center edition that implies they paid for Windows Media Center?
- **IsSupported**  Does the running OS support Windows Media Center?


### Microsoft.Windows.Appraiser.General.InventoryMediaCenterRemove

This event indicates that the InventoryMediaCenter object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryMediaCenterStartSync

This event indicates that a new set of InventoryMediaCenterAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventorySystemBiosAdd

This event sends basic metadata about the BIOS to determine whether it has a compatibility block.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BiosDate**  The release date of the BIOS in UTC format.
- **BiosName**  The name field from Win32_BIOS.
- **Manufacturer**  The manufacturer field from Win32_ComputerSystem.
- **Model**  The model field from Win32_ComputerSystem.


### Microsoft.Windows.Appraiser.General.InventorySystemBiosRemove

This event indicates that the InventorySystemBios object is no longer present. 

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventorySystemBiosStartSync

This event indicates that a new set of InventorySystemBiosAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageRemove

This event indicates that the InventoryUplevelDriverPackage object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageStartSync

This event indicates that a new set of InventoryUplevelDriverPackageAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.RunContext

This event indicates what should be expected in the data payload. 

The following fields are available:

- **AppraiserBranch**  The source branch in which the currently running version of Appraiser was built.
- **AppraiserProcess**  The name of the process that launched Appraiser.
- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Context**  Indicates what mode Appraiser is running in. Example: Setup or Telemetry.
- **PCFP**  An ID for the system calculated by hashing hardware identifiers.
- **Time**  The client time of the event.


### Microsoft.Windows.Appraiser.General.SystemMemoryAdd

This event sends data on the amount of memory on the system and whether it meets requirements, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the device from upgrade due to memory restrictions?
- **MemoryRequirementViolated**  Was a memory requirement violated?
- **pageFile**  The current committed memory limit for the system or the current process, whichever is smaller (in bytes).
- **ram**  The amount of memory on the device.
- **ramKB**  The amount of memory (in KB).
- **virtual**  The size of the user-mode portion of the virtual address space of the calling process (in bytes).
- **virtualKB**  The amount of virtual memory (in KB).


### Microsoft.Windows.Appraiser.General.SystemMemoryRemove

This event that the SystemMemory object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemMemoryStartSync

This event indicates that a new set of SystemMemoryAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorCompareExchangeAdd

This event sends data indicating whether the system supports the CompareExchange128 CPU requirement, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **CompareExchange128Support**  Does the CPU support CompareExchange128?


### Microsoft.Windows.Appraiser.General.SystemProcessorCompareExchangeRemove

This event indicates that the SystemProcessorCompareExchange object is no longer present. 

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorCompareExchangeStartSync

This event indicates that a new set of SystemProcessorCompareExchangeAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorLahfSahfAdd

This event sends data indicating whether the system supports the LahfSahf CPU requirement, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **LahfSahfSupport**  Does the CPU support LAHF/SAHF?


### Microsoft.Windows.Appraiser.General.SystemProcessorLahfSahfRemove

This event indicates that the SystemProcessorLahfSahf object is no longer present. 

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorLahfSahfStartSync

This event indicates that a new set of SystemProcessorLahfSahfAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorNxAdd

This event sends data indicating whether the system supports the NX CPU requirement, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **NXDriverResult**  The result of the driver used to do a non-deterministic check for NX support.
- **NXProcessorSupport**  Does the processor support NX?


### Microsoft.Windows.Appraiser.General.SystemProcessorNxRemove

This event indicates that the SystemProcessorNx object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorNxStartSync

This event  indicates that a new set of SystemProcessorNxAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWAdd

This event sends data indicating whether the system supports the PrefetchW CPU requirement, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **PrefetchWSupport**  Does the processor support PrefetchW?


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWRemove

This event indicates that the SystemProcessorPrefetchW object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWStartSync

This event indicates that a new set of SystemProcessorPrefetchWAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorSse2Add

This event sends data indicating whether the system supports the SSE2 CPU requirement, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **SSE2ProcessorSupport**  Does the processor support SSE2?


### Microsoft.Windows.Appraiser.General.SystemProcessorSse2Remove

This event indicates that the SystemProcessorSse2 object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorSse2StartSync

This event indicates that a new set of SystemProcessorSse2Add events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemTouchAdd

This event sends data indicating whether the system supports touch, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **IntegratedTouchDigitizerPresent**  Is there an integrated touch digitizer?
- **MaximumTouches**  The maximum number of touch points supported by the device hardware.


### Microsoft.Windows.Appraiser.General.SystemTouchRemove

This event indicates that the SystemTouch object is no longer present. 

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemTouchStartSync

This event indicates that a new set of SystemTouchAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWimAdd

This event sends data indicating whether the operating system is running from a compressed WIM file, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **IsWimBoot**  Is the current operating system running from a compressed WIM file?
- **RegistryWimBootValue**  The raw value from the registry that is used to indicate if the device is running from a WIM.


### Microsoft.Windows.Appraiser.General.SystemWimRemove

This event indicates that the SystemWim object is no longer present. 

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWimStartSync

This event indicates that a new set of SystemWimAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusAdd

This event sends data indicating whether the current operating system is activated, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **WindowsIsLicensedApiValue**  The result from the API that's used to indicate if operating system is activated.
- **WindowsNotActivatedDecision**  Is the current operating system activated?


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusRemove

This event indicates that the SystemWindowsActivationStatus object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusStartSync

This event indicates that a new set of SystemWindowsActivationStatusAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWlanRemove

This event indicates that the SystemWlan object is no longer present. 

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWlanStartSync

This event indicates that a new set of SystemWlanAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.TelemetryRunHealth

A summary event indicating the parameters and result of a telemetry run. This allows the rest of the data sent over the course of the run to be properly contextualized and understood, which is then used to keep Windows up-to-date.

The following fields are available:

- **AppraiserBranch**  The source branch in which the version of Appraiser that is running was built.
- **AppraiserDataVersion**  The version of the data files being used by the Appraiser telemetry run.
- **AppraiserProcess**  The name of the process that launched Appraiser.
- **AppraiserVersion**  The file version (major, minor and build) of the Appraiser DLL, concatenated without dots.
- **AuxFinal**  Obsolete, always set to false
- **AuxInitial**  Obsolete, indicates if Appraiser is writing data files to be read by the Get Windows 10 app.
- **DeadlineDate**  A timestamp representing the deadline date, which is the time until which appraiser will wait to do a full scan.
- **EnterpriseRun**  Indicates if the telemetry run is an enterprise run, which means appraiser was run from the command line with an extra enterprise parameter.
- **FullSync**  Indicates if Appraiser is performing a full sync, which means that full set of events representing the state of the machine are sent. Otherwise, only the changes from the previous run are sent.
- **InventoryFullSync**  Indicates if inventory is performing a full sync, which means that the full set of events representing the inventory of machine are sent.
- **PCFP**  An ID for the system calculated by hashing hardware identifiers.
- **PerfBackoff**  Indicates if the run was invoked with logic to stop running when a user is present. Helps to understand why a run may have a longer elapsed time than normal.
- **PerfBackoffInsurance**  Indicates if appraiser is running without performance backoff because it has run with perf backoff and failed to complete several times in a row.
- **RunAppraiser**  Indicates if Appraiser was set to run at all. If this if false, it is understood that data events will not be received from this device.
- **RunDate**  The date that the telemetry run was stated, expressed as a filetime.
- **RunGeneralTel**  Indicates if the generaltel.dll component was run. Generaltel collects additional telemetry on an infrequent schedule and only from machines at telemetry levels higher than Basic.
- **RunOnline**  Indicates if appraiser was able to connect to Windows Update and theefore is making decisions using up-to-date driver coverage information.
- **RunResult**  The hresult of the Appraiser telemetry run.
- **SendingUtc**  Indicates if the Appraiser client is sending events during the current telemetry run.
- **StoreHandleIsNotNull**  Obsolete, always set to false
- **TelementrySent**  Indicates if telemetry was successfully sent.
- **ThrottlingUtc**  Indicates if the Appraiser client is throttling its output of CUET events to avoid being disabled. This increases runtime but also telemetry reliability.
- **Time**  The client time of the event.
- **VerboseMode**  Indicates if appraiser ran in Verbose mode, which is a test-only mode with extra logging.
- **WhyFullSyncWithoutTablePrefix**  Indicates the reason or reasons that a full sync was generated.


### Microsoft.Windows.Appraiser.General.WmdrmAdd

This event sends data about the usage of older digital rights management on the system, to help keep Windows up to date. This data does not indicate the details of the media using the digital rights management, only whether any such files exist. Collecting this data was critical to ensuring the correct mitigation for customers, and should be able to be removed once all mitigations are in place.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BlockingApplication**  Same as NeedsDismissAction
- **NeedsDismissAction**  Indicates if a dismissible message is needed to warn the user about a potential loss of data due to DRM deprecation.
- **WmdrmApiResult**  Raw value of the API used to gather DRM state.
- **WmdrmCdRipped**  Indicates if the system has any files encrypted with personal DRM, which was used for ripped CDs.
- **WmdrmIndicators**  WmdrmCdRipped OR WmdrmPurchased
- **WmdrmInUse**  WmdrmIndicators AND dismissible block in setup was not dismissed.
- **WmdrmNonPermanent**  Indicates if the system has any files with non-permanent licenses.
- **WmdrmPurchased**  Indicates if the system has any files with permanent licenses.


### Microsoft.Windows.Appraiser.General.WmdrmRemove

This event indicates that the Wmdrm object is no longer present.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.WmdrmStartSync

This event indicates that a new set of WmdrmAdd events will be sent.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


## Census events

### Census.App

This event sends version data about the Apps running on this device, to help keep Windows up to date.

The following fields are available:

- **CensusVersion**  The version of Census that generated the current data for this device.
- **IEVersion**  Retrieves which version of Internet Explorer is running on this device.


### Census.Battery

This event sends type and capacity data about the battery on the device, as well as the number of connected standby devices in use, type to help keep Windows up to date.

The following fields are available:

- **InternalBatteryCapablities**  Represents information about what the battery is capable of doing.
- **InternalBatteryCapacityCurrent**  Represents the battery's current fully charged capacity in mWh (or relative). Compare this value to DesignedCapacity  to estimate the battery's wear.
- **InternalBatteryCapacityDesign**  Represents the theoretical capacity of the battery when new, in mWh.
- **InternalBatteryNumberOfCharges**  Provides the number of battery charges. This is used when creating new products and validating that existing products meets targeted functionality performance.
- **IsAlwaysOnAlwaysConnectedCapable**  Represents whether the battery enables the device to be AlwaysOnAlwaysConnected . Boolean value.


### Census.Camera

This event sends data about the resolution of cameras on the device, to help keep Windows up to date.

The following fields are available:

- **FrontFacingCameraResolution**  Represents the resolution of the front facing camera in megapixels. If a front facing camera does not exist, then the value is 0.
- **RearFacingCameraResolution**  Represents the resolution of the rear facing camera in megapixels. If a rear facing camera does not exist, then the value is 0.


### Census.Enterprise

This event sends data about Azure presence, type, and cloud domain use in order to provide an understanding of the use and integration of devices in an enterprise, cloud, and server environment.

The following fields are available:

- **AzureOSIDPresent**  Represents the field used to identify an Azure machine.
- **AzureVMType**  Represents whether the instance is Azure VM PAAS, Azure VM IAAS or any other VMs.
- **CDJType**  Represents the type of cloud domain joined for the machine.
- **CommercialId**  Represents the GUID for the commercial entity which the device is a member of.  Will be used to reflect insights back to customers.
- **ContainerType**  The type of container, such as process or virtual machine hosted.
- **EnrollmentType**  Defines the type of MDM enrollment on the device.
- **HashedDomain**  The hashed representation of the user domain used for login.
- **IsCloudDomainJoined**  Is this device joined to an Azure Active Directory (AAD) tenant? true/false
- **IsDERequirementMet**  Represents if the device can do device encryption.
- **IsDeviceProtected**  Represents if Device protected by BitLocker/Device Encryption
- **IsDomainJoined**  Indicates whether a machine is joined to a domain.
- **IsEDPEnabled**  Represents if Enterprise data protected on the device.
- **IsMDMEnrolled**  Whether the device has been MDM Enrolled or not.
- **MPNId**  Returns the Partner ID/MPN ID from Regkey. HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\DeployID
- **SCCMClientId**  This ID correlate systems that send data to Compat Analytics (OMS) and other OMS based systems with systems in an Enterprise SCCM environment.
- **ServerFeatures**  Represents the features installed on a Windows   Server. This can be used by developers and administrators who need to automate the process of determining the features installed on a set of server computers.
- **SystemCenterID**  The SCCM ID is an anonymized one-way hash of the Active Directory Organization identifier


### Census.Firmware

This event sends data about the BIOS and startup embedded in the device, to help keep Windows up to date.

The following fields are available:

- **FirmwareManufacturer**  Represents the manufacturer of the device's firmware (BIOS).
- **FirmwareReleaseDate**  Represents the date the current firmware was released.
- **FirmwareType**  Represents the firmware type. The various types can be unknown, BIOS, UEFI.
- **FirmwareVersion**  Represents the version of the current firmware.


### Census.Flighting

This event sends Windows Insider data from customers participating in improvement testing and feedback programs, to help keep Windows up-to-date.

The following fields are available:

- **DeviceSampleRate**  The telemetry sample rate assigned to the device.
- **EnablePreviewBuilds**  Used to enable Windows Insider builds on a device.
- **FlightIds**  A list of the different Windows Insider builds on this device.
- **FlightingBranchName**  The name of the Windows Insider branch currently used by the device.
- **IsFlightsDisabled**  Represents if the device is participating in the Windows Insider program.
- **MSA_Accounts**  Represents a list of hashed IDs of the Microsoft Accounts that are flighting (pre-release builds) on this device.
- **SSRK**  Retrieves the mobile targeting settings.


### Census.Hardware

This event sends data about the device, including hardware type, OEM brand, model line, model, telemetry level setting, and TPM support, to help keep Windows up-to-date.

The following fields are available:

- **ActiveMicCount**  The number of active microphones attached to the device.
- **ChassisType**  Represents the type of device chassis, such as desktop or low profile desktop. The possible values can range between 1 - 36.
- **ComputerHardwareID**  Identifies a device class that is represented by a hash of different SMBIOS fields.
- **D3DMaxFeatureLevel**  Supported Direct3D version.
- **DeviceForm**  Indicates the form as per the device classification.
- **DeviceName**  The device name that is set by the user.
- **DigitizerSupport**  Is a digitizer supported?
- **DUID**  The device unique ID.
- **Gyroscope**  Indicates whether the device has a gyroscope (a mechanical component that measures and maintains orientation).
- **InventoryId**  The device ID used for compatibility testing.
- **Magnetometer**  Indicates whether the device has a magnetometer (a mechanical component that works like a compass).
- **NFCProximity**  Indicates whether the device supports NFC (a set of communication protocols that helps establish communication when applicable devices are brought close together.)
- **OEMDigitalMarkerFileName**  The name of the file placed in the \Windows\system32\drivers directory that specifies the OEM and model name of the device.
- **OEMManufacturerName**  The device manufacturer name.  The OEMName for an inactive device is not reprocessed even if the clean OEM name is changed at a later date.
- **OEMModelBaseBoard**  The baseboard model used by the OEM.
- **OEMModelBaseBoardVersion**  Differentiates between developer and retail devices.
- **OEMModelName**  The device model name.
- **OEMModelNumber**  The device model number.
- **OEMModelSKU**  The device edition that is defined by the manufacturer.
- **OEMModelSystemFamily**  The system family set on the device by an OEM.
- **OEMModelSystemVersion**  The system model version set on the device by the OEM.
- **OEMOptionalIdentifier**  A Microsoft assigned value that represents a specific OEM subsidiary.
- **OEMSerialNumber**  The serial number of the device that is set by the manufacturer.
- **PhoneManufacturer**  The friendly name of the phone manufacturer.
- **PowerPlatformRole**  The OEM preferred power management profile. It's used to help to identify the basic form factor of the device.
- **SoCName**  The firmware manufacturer of the device.
- **StudyID**  Used to identify retail and non-retail device.
- **TelemetryLevel**  The telemetry level the user has opted into, such as Basic or Enhanced.
- **TelemetryLevelLimitEnhanced**  The telemetry level for Windows Analytics-based solutions.
- **TelemetrySettingAuthority**  Determines who set the telemetry level, such as GP, MDM, or the user.
- **TPMVersion**  The supported Trusted Platform Module (TPM) on the device. If no TPM is present, the value is 0.
- **VoiceSupported**  Does the device have a cellular radio capable of making voice calls?
- **DeviceColor**  Indicates a color of the device.


### Census.Memory

This event sends data about the memory on the device, including ROM and RAM, to help keep Windows up to date.

The following fields are available:

- **TotalPhysicalRAM**  Represents the physical memory (in MB).
- **TotalVisibleMemory**  Represents the memory that is not reserved by the system.


### Census.Network

This event sends data about the mobile and cellular network used by the device (mobile service provider, network, device ID, and service cost factors), to help keep Windows up to date.

The following fields are available:

- **IMEI0**  Represents the International Mobile Station Equipment Identity. This number is usually unique and used by the mobile operator to distinguish different phone hardware. Microsoft does not have access to mobile operator billing data so collecting this data does not expose or identify the user. The two fields represent phone with dual sim coverage.
- **IMEI1**  Represents the International Mobile Station Equipment Identity. This number is usually unique and used by the mobile operator to distinguish different phone hardware. Microsoft does not have access to mobile operator billing data so collecting this data does not expose or identify the user. The two fields represent phone with dual sim coverage.
- **MCC0**  Represents the Mobile Country Code (MCC). It used with the Mobile Network Code (MNC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MCC1**  Represents the Mobile Country Code (MCC). It used with the Mobile Network Code (MNC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MEID**  Represents the Mobile Equipment Identity (MEID). MEID is a worldwide unique phone ID assigned to CDMA phones. MEID replaces electronic serial number (ESN), and is equivalent to IMEI for GSM and WCDMA phones. Microsoft does not have access to mobile operator billing data so collecting this data does not expose or identify the user.
- **MNC0**  Retrieves the Mobile Network Code (MNC). It used with the Mobile Country Code (MCC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MNC1**  Retrieves the Mobile Network Code (MNC). It used with the Mobile Country Code (MCC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MobileOperatorBilling**  Represents the telephone company that provides services for mobile phone users.
- **MobileOperatorCommercialized**  Represents which reseller and geography the phone is commercialized for. This is the set of values on the phone for who and where it was intended to be used. For example, the commercialized mobile operator code AT&T in the US would be ATT-US.
- **MobileOperatorNetwork0**  Represents the operator of the current mobile network that the device is used on. (AT&T, T-Mobile, Vodafone). The two fields represent phone with dual sim coverage.
- **MobileOperatorNetwork1**  Represents the operator of the current mobile network that the device is used on. (AT&T, T-Mobile, Vodafone). The two fields represent phone with dual sim coverage.
- **NetworkAdapterGUID**  The GUID of the primary network adapter.
- **NetworkCost**  Represents the network cost associated with a connection.
- **SPN0**  Retrieves the Service Provider Name (SPN). For example, these might be AT&T, Sprint, T-Mobile, or Verizon. The two fields represent phone with dual sim coverage.
- **SPN1**  Retrieves the Service Provider Name (SPN). For example, these might be AT&T, Sprint, T-Mobile, or Verizon. The two fields represent phone with dual sim coverage.


### Census.OS

This event sends data about the operating system such as the version, locale, update service configuration, when and how it was originally installed, and whether it is a virtual device, to help keep Windows up to date.

The following fields are available:

- **ActivationChannel**  Retrieves the retail license key or Volume license key for a machine.
- **AssignedAccessStatus**  Kiosk configuration mode.
- **CompactOS**  Indicates if the Compact OS feature from Win10 is enabled.
- **DeveloperUnlockStatus**  Represents if a device has been developer unlocked by the user or Group Policy. 
- **DeviceTimeZone**  The time zone that is set on the device. Example: Pacific Standard Time
- **GenuineState**  Retrieves the ID Value specifying the OS Genuine check.
- **InstallationType**  Retrieves the type of OS installation. (Clean, Upgrade, Reset, Refresh, Update).
- **InstallLanguage**  The first language installed on the user machine.
- **IsDeviceRetailDemo**  Retrieves if the device is running in demo mode.
- **IsEduData**  Returns Boolean if the education data policy is enabled.
- **IsPortableOperatingSystem**  Retrieves whether OS is running Windows-To-Go
- **IsSecureBootEnabled**  Retrieves whether Boot chain is signed under UEFI.
- **LanguagePacks**  The list of language packages installed on the device.
- **LicenseStateReason**  Retrieves why (or how) a system is licensed or unlicensed.  The HRESULT may indicate an error code that indicates a key blocked error, or it may indicate that we are running an OS License granted by the MS store.
- **OA3xOriginalProductKey**  Retrieves the License key stamped by the OEM to the machine.
- **OSEdition**  Retrieves the version of the current OS.
- **OSInstallType**  Retrieves a numeric description of what install was used on the device i.e. clean, upgrade, refresh, reset, etc
- **OSOOBEDateTime**  Retrieves Out of Box Experience (OOBE) Date in Coordinated Universal Time (UTC).
- **OSSKU**  Retrieves the Friendly Name of OS Edition.
- **OSSubscriptionStatus**  Represents the existing status for enterprise subscription feature for PRO machines.
- **OSSubscriptionTypeId**  Returns boolean for enterprise subscription feature for selected PRO machines.
- **OSTimeZoneBiasInMins**  Retrieves the time zone set on machine.
- **OSUILocale**  Retrieves the locale of the UI that is currently used by the OS.
- **ProductActivationResult**  Returns Boolean if the OS Activation was successful.
- **ProductActivationTime**  Returns the OS Activation time for tracking piracy issues.
- **ProductKeyID2**  Retrieves the License key if the machine is updated with a new license key.
- **RACw7Id**  Retrieves the Microsoft Reliability Analysis Component (RAC) Win7 Identifier. RAC is used to monitor and analyze system usage and reliability.
- **ServiceMachineIP**  Retrieves the IP address of the KMS host used for anti-piracy.
- **ServiceMachinePort**  Retrieves the port of the KMS host used for anti-piracy.
- **ServiceProductKeyID**  Retrieves the License key of the KMS
- **SharedPCMode**  Returns Boolean for education devices used as shared cart
- **Signature**  Retrieves if it is a signature machine sold by Microsoft store.
- **SLICStatus**  Whether a SLIC table exists on the device.
- **SLICVersion**  Returns OS type/version from SLIC table.


### Census.Processor

This event sends data about the processor (architecture, speed, number of cores, manufacturer, and model number), to help keep Windows up to date.

The following fields are available:

- **ProcessorArchitecture**  Retrieves the processor architecture of the installed operating system.
- **ProcessorClockSpeed**  Clock speed of the processor in MHz.
- **ProcessorCores**  Number of logical cores in the processor.
- **ProcessorIdentifier**  Processor Identifier of a manufacturer.
- **ProcessorManufacturer**  Name of the processor manufacturer.
- **ProcessorModel**  Name of the processor model.
- **ProcessorPhysicalCores**  Number of physical cores in the processor.
- **ProcessorUpdateRevision**  Microcode revision
- **SocketCount**  Count of CPU sockets.


### Census.Security

This event provides information on about security settings used to help keep Windows up-to-date and secure.

The following fields are available:

- **AvailableSecurityProperties**  This field helps to enumerate and report state on the relevant security properties for Device Guard
- **CGRunning**  Credential Guard isolates and hardens key system and user secrets against compromise, helping to minimize the impact and breadth of a Pass the Hash style attack in the event that malicious code is already running via a local or network based vector. This field tells if Credential Guard is running.
- **DGState**  This field summarizes Device Guard state
- **HVCIRunning**  Hypervisor Code Integrity (HVCI) enables Device Guard to help protect kernel mode processes and drivers from vulnerability exploits and zero days. HVCI uses the processor’s functionality to force all software running in kernel mode to safely allocate memory. This field tells if HVCI is running
- **RequiredSecurityProperties**  This field describes the required security properties to enable virtualization-based security
- **SecureBootCapable**  Systems that support Secure Boot can have the feature turned off via BIOS. This field tells if the system is capable of running Secure Boot, regardless of the BIOS setting.
- **VBSState**  Virtualization-based security (VBS) uses the hypervisor to help protect the kernel and other parts of the operating system. Credential Guard and Hypervisor Code Integrity (HVCI) both depend on VBS to isolate/protect secrets, and kernel-mode code integrity validation.  VBS has a tri-state that can be Disabled, Enabled, or Running.


### Census.Speech

This event is used to gather basic speech settings on the device.

The following fields are available:

- **AboveLockEnabled**  Cortana setting that represents if Cortana can be invoked when the device is locked.
- **GPAllowInputPersonalization**  Indicates if a Group Policy setting has enabled speech functionalities.
- **HolographicSpeechInputDisabled**  Holographic setting that represents if the attached HMD devices have speech functionality disabled by the user.
- **HolographicSpeechInputDisabledRemote**  Indicates if a remote policy has disabled speech functionalities for the HMD devices.
- **KWSEnabled**  Cortana setting that represents if a user has enabled the "Hey Cortana" keyword spotter (KWS).
- **MDMAllowInputPersonalization**  Indicates if an MDM policy has enabled speech functionalities.
- **RemotelyManaged**  Indicates if the device is being controlled by a remote administrator (MDM or Group Policy) in the context of speech functionalities.
- **SpeakerIdEnabled**  Cortana setting that represents if keyword detection has been trained to try to respond to a single user's voice.
- **SpeechServicesEnabled**  Windows setting that represents whether a user is opted-in for speech services on the device.


### Census.Storage

This event sends data about the total capacity of the system volume and primary disk, to help keep Windows up to date.

The following fields are available:

- **PrimaryDiskTotalCapacity**  Retrieves the amount of disk space on the primary disk of the device in MB.
- **PrimaryDiskType**  Retrieves an enumerator value of type STORAGE_BUS_TYPE that indicates the type of bus to which the device is connected. This should be used to interpret the raw device properties at the end of this structure (if any).
- **SystemVolumeTotalCapacity**  Retrieves the size of the partition that the System volume is installed on in MB.


### Census.UserDisplay

This event sends data about the logical/physical display size, resolution and number of internal/external displays, and VRAM on the system, to help keep Windows up to date.

The following fields are available:

- **InternalPrimaryDisplayLogicalDPIX**  Retrieves the logical DPI in the x-direction of the internal display.
- **InternalPrimaryDisplayLogicalDPIY**  Retrieves the logical DPI in the y-direction of the internal display.
- **InternalPrimaryDisplayPhysicalDPIX**  Retrieves the physical DPI in the x-direction of the internal display.
- **InternalPrimaryDisplayPhysicalDPIY**  Retrieves the physical DPI in the y-direction of the internal display.
- **InternalPrimaryDisplayResolutionHorizontal**  Retrieves the number of pixels in the horizontal direction of the internal display.
- **InternalPrimaryDisplayResolutionVertical**  Retrieves the number of pixels in the vertical direction of the internal display.
- **InternalPrimaryDisplaySizePhysicalH**  Retrieves the physical horizontal length of the display in mm. Used for calculating the diagonal length in inches .
- **InternalPrimaryDisplaySizePhysicalY**  Retrieves the physical vertical length of the display in mm. Used for calculating the diagonal length in inches
- **NumberofExternalDisplays**  Retrieves the number of external displays connected to the machine
- **NumberofInternalDisplays**  Retrieves the number of internal displays in a machine.
- **VRAMDedicated**  Retrieves the video RAM in MB.
- **VRAMDedicatedSystem**  Retrieves the amount of memory on the dedicated video card.
- **VRAMSharedSystem**  Retrieves the amount of RAM memory that the video card can use.


### Census.UserNLS

This event sends data about the default app language, input, and display language preferences set by the user, to help keep Windows up to date.

The following fields are available:

- **DefaultAppLanguage**  The current user Default App Language.
- **DisplayLanguage**  The current user preferred Windows Display Language.
- **HomeLocation**  The current user location, which is populated using GetUserGeoId() function.
- **KeyboardInputLanguages**  The Keyboard input languages installed on the device.
- **SpeechInputLanguages**  The Speech Input languages installed on the device.


### Census.Userdefault

This event sends data about the current user's default preferences for browser and several of the most popular extensions and protocols, to help keep Windows up to date.

The following fields are available:

- **DefaultApp**  The current uer's default program selected for the following extension or protocol: .html,.htm,.jpg,.jpeg,.png,.mp3,.mp4, .mov,.pdf
- **DefaultBrowserProgId**  The ProgramId of the current user's default browser


### Census.VM

This event sends data indicating whether virtualization is enabled on the device, and its various characteristics, to help keep Windows up to date.

The following fields are available:

- **CloudService**  Indicates which cloud service, if any, that this virtual machine is running within.
- **HyperVisor**  Retrieves whether the current OS is running on top of a Hypervisor.
- **IOMMUPresent**  Represents if an input/output memory management unit (IOMMU) is present.
- **IsVDI**  Is the device using Virtual Desktop Infrastructure?
- **IsVirtualDevice**  Retrieves that when the Hypervisor is Microsoft's Hyper-V Hypervisor or other Hv#1 Hypervisor, this field will be set to FALSE for the Hyper-V host OS and TRUE for any guest OS's. This field should not be relied upon for non-Hv#1 Hypervisors.
- **SLATSupported**  Represents whether Second Level Address Translation (SLAT) is supported by the hardware.
- **VirtualizationFirmwareEnabled**  Represents whether virtualization is enabled in the firmware.


### Census.WU

This event sends data about the Windows update server and other App store policies, to help keep Windows up to date.

The following fields are available:

- **AppraiserGatedStatus**  Indicates whether a device has been gated for upgrading.
- **AppStoreAutoUpdate**  Retrieves the Appstore settings for auto upgrade. (Enable/Disabled).
- **AppStoreAutoUpdateMDM**  Retrieves the App Auto Update value for MDM: 0 - Disallowed. 1 - Allowed. 2 - Not configured. Default: [2] Not configured
- **AppStoreAutoUpdatePolicy**  Retrieves the Microsoft Store App Auto Update group policy setting
- **DelayUpgrade**  Retrieves the Windows upgrade flag for delaying upgrades.
- **OSAssessmentFeatureOutOfDate**  How many days has it been since a the last feature update was released but the device did not install it?
- **OSAssessmentForFeatureUpdate**  Is the device is on the latest feature update?
- **OSAssessmentForQualityUpdate**  Is the device on the latest quality update?
- **OSAssessmentForSecurityUpdate**  Is the device  on the latest security update?
- **OSAssessmentQualityOutOfDate**  How many days has it been since a the last quality update was released but the device did not install it?
- **OSAssessmentReleaseInfoTime**  The freshness of release information used to perform an assessment.
- **OSRollbackCount**  The number of times feature updates have rolled back on the device.
- **OSRolledBack**  A flag that represents when a feature update has rolled back during setup.
- **OSUninstalled**  A flag that represents when a feature update is uninstalled on a device .
- **OSWUAutoUpdateOptions**  Retrieves the auto update settings on the device.
- **UninstallActive**  A flag that represents when a device has uninstalled a previous upgrade recently.
- **UpdateServiceURLConfigured**  Retrieves if the device is managed by Windows Server Update Services (WSUS).
- **WUDeferUpdatePeriod**  Retrieves if deferral is set for Updates
- **WUDeferUpgradePeriod**  Retrieves if deferral is set for Upgrades
- **WUDODownloadMode**  Retrieves whether DO is turned on and how to acquire/distribute updates Delivery Optimization (DO) allows users to deploy previously downloaded WU updates to other devices on the same network.
- **WUMachineId**  Retrieves the Windows Update (WU) Machine Identifier.
- **WUPauseState**  Retrieves WU setting to determine if updates are paused
- **WUServer**  Retrieves the HTTP(S) URL of the WSUS server that is used by Automatic Updates and API callers (by default).


### Census.Xbox

This event sends data about the Xbox Console, such as Serial Number and DeviceId, to help keep Windows up to date.

The following fields are available:

- **XboxConsolePreferredLanguage**  Retrieves the preferred language selected by the user on Xbox console.
- **XboxConsoleSerialNumber**  Retrieves the serial number of the Xbox console.
- **XboxLiveDeviceId**  Retrieves the unique device id of the console.
- **XboxLiveSandboxId**  Retrieves the developer sandbox id if the device is internal to MS.


## Deployment events

### DeploymentTelemetry.Deployment_End

Event to indicate that a Deployment 360 API has completed. 

The following fields are available:

- **ClientId**  Client ID of user utilizing the D360 API
- **ErrorCode**  Error code of action
- **FlightId**  Flight being used
- **Mode**  Phase in upgrade 
- **RelatedCV**  CV of any other related events
- **Result**  End result of action


### DeploymentTelemetry.Deployment_Initialize

Event to indicate that the Deployment 360 APIs have been initialized for use.

The following fields are available:

- **ClientId**  Client ID of user utilizing the D360 API
- **ErrorCode**  Error code of action
- **FlightId**  Flight being used
- **RelatedCV**  CV of any other related events
- **Result**  Phase Setup is in


### DeploymentTelemetry.Deployment_SetupBoxLaunch

Event to indicate that the Deployment 360 APIs have launched Setup Box.

The following fields are available:

- **ClientId**  Client ID of user utilizing the D360 API
- **FlightId**  Flight being used
- **Quiet**  Whether Setup will run in quiet mode or in full
- **RelatedCV**  CV of any other related events
- **SetupMode**  Phase Setup is in 


### DeploymentTelemetry.Deployment_SetupBoxResult

Event to indicate that the Deployment 360 APIs have received a return from Setup Box.

The following fields are available:

- **ClientId**  Client ID of user utilizing the D360 API
- **ErrorCode**  Error code of action
- **FlightId**  Flight being used
- **Quiet**  Whether Setup will run in quiet mode or in full
- **RelatedCV**  Correlation vector of any other related events
- **SetupMode**  Phase that Setup is in


### DeploymentTelemetry.Deployment_Start

Event to indicate that a Deployment 360 API has been called.

The following fields are available:

- **ClientId**  Client ID of user utilizing the D360 API
- **FlightId**  Flight being used
- **Mode**  Phase in upgrade 
- **RelatedCV**  CV of any other related events


## Diagnostic data events

### TelClientSynthetic.AuthorizationInfo_RuntimeTransition

Fired by UTC at state transitions to signal what data we are allowed to collect.

The following fields are available:

- **CanAddMsaToMsTelemetry**  True if we can add MSA PUID and CID to telemetry, false otherwise.
- **CanCollectAnyTelemetry**  True if we are allowed to collect partner telemetry, false otherwise.
- **CanCollectCoreTelemetry**  True if we can collect CORE/Basic telemetry, false otherwise.
- **CanCollectHeartbeats**  True if we can collect heartbeat telemetry, false otherwise.
- **CanCollectOsTelemetry**  True if we can collect diagnostic data telemetry, false otherwise.
- **CanCollectWindowsAnalyticsEvents**  True if we can collect Windows Analytics data, false otherwise.
- **CanPerformDiagnosticEscalations**  True if we can perform diagnostic escalation collection, false otherwise.
- **CanPerformTraceEscalations**  True if we can perform trace escalation collection, false otherwise.
- **CanReportScenarios**  True if we can report scenario completions, false otherwise.
- **PreviousPermissions**  Bitmask of previous telemetry state.
- **TransitionFromEverythingOff**  True if we are transitioning from all telemetry being disabled, false otherwise.


### TelClientSynthetic.AuthorizationInfo_Startup

Fired by UTC at startup to signal what data we are allowed to collect.

The following fields are available:

- **CanAddMsaToMsTelemetry**  True if we can add MSA PUID and CID to telemetry, false otherwise.
- **CanCollectAnyTelemetry**  True if we are allowed to collect partner telemetry, false otherwise.
- **CanCollectCoreTelemetry**  True if we can collect CORE/Basic telemetry, false otherwise.
- **CanCollectHeartbeats**  True if we can collect heartbeat telemetry, false otherwise.
- **CanCollectOsTelemetry**  True if we can collect diagnostic data telemetry, false otherwise.
- **CanCollectWindowsAnalyticsEvents**  True if we can collect Windows Analytics data, false otherwise.
- **CanPerformDiagnosticEscalations**  True if we can perform diagnostic escalation collection, false otherwise.
- **CanPerformTraceEscalations**  True if we can perform trace escalation collection, false otherwise.
- **CanReportScenarios**  True if we can report scenario completions, false otherwise.
- **PreviousPermissions**  Bitmask of previous telemetry state.
- **TransitionFromEverythingOff**  True if we are transitioning from all telemetry being disabled, false otherwise.


### TelClientSynthetic.HeartBeat_5

Fired by UTC as a heartbeat signal.

The following fields are available:

- **AgentConnectionErrorsCount**  Number of non-timeout errors associated with the host/agent channel.
- **CensusExitCode**  Last exit code of�Census task.
- **CensusStartTime**  Time of last Census run.
- **CensusTaskEnabled**  True if Census is enabled, false otherwise.
- **CompressedBytesUploaded**  Number of compressed bytes uploaded.
- **ConsumerDroppedCount**  Number of events dropped at consumer layer of telemetry client.
- **CriticalDataDbDroppedCount**  Number of critical data sampled events dropped at the database layer.
- **CriticalDataThrottleDroppedCount**  Number of critical data sampled events dropped due to�throttling.
- **CriticalOverflowEntersCounter**  Number of times critical overflow mode was entered in event DB.
- **DbCriticalDroppedCount**  Total number of dropped critical events in event DB.
- **DbDroppedCount**  Number of events dropped due to DB fullness.
- **DbDroppedFailureCount**  Number of events dropped due to DB failures.
- **DbDroppedFullCount**  Number of events dropped due to DB fullness.
- **DecodingDroppedCount**  Number of events dropped due to decoding failures.
- **EnteringCriticalOverflowDroppedCounter**  Number of events dropped due to critical overflow mode being initiated.
- **EtwDroppedBufferCount**  Number of buffers dropped in the UTC ETW session.
- **EtwDroppedCount**  Number of events dropped at ETW layer of telemetry client.
- **EventsPersistedCount**  Number of events that reached the PersistEvent stage.
- **EventSubStoreResetCounter**  Number of times event DB was reset.
- **EventSubStoreResetSizeSum**  Total size of event DB across all resets reports in this instance.
- **EventsUploaded**  Number of events uploaded.
- **Flags**  Flags indicating device state such as network state, battery state, and opt-in state.
- **FullTriggerBufferDroppedCount**  Number of events dropped due to trigger buffer being full.
- **HeartBeatSequenceNumber**  The sequence number of this heartbeat.
- **InvalidHttpCodeCount**  Number of invalid HTTP codes received from contacting Vortex.
- **LastAgentConnectionError**  Last non-timeout error encountered in the host/agent channel.
- **LastEventSizeOffender**  Event name of last event which exceeded max event size.
- **LastInvalidHttpCode**  Last invalid HTTP code received from Vortex.
- **MaxActiveAgentConnectionCount**  Maximum number of active agents during this�heartbeat timeframe.
- **MaxInUseScenarioCounter**  Soft maximum number of scenarios loaded by UTC.
- **PreviousHeartBeatTime**  Time of last heartbeat event (allows chaining of events).
- **SettingsHttpAttempts**  Number of attempts to contact OneSettings service.
- **SettingsHttpFailures**  Number of failures from contacting�OneSettings service.
- **ThrottledDroppedCount**  Number of events dropped due to throttling of noisy providers.
- **UploaderDroppedCount**  Number of events dropped at the uploader layer of telemetry client.
- **VortexFailuresTimeout**  Number of time out failures�received from Vortex.
- **VortexHttpAttempts**  Number of attempts to contact Vortex.
- **VortexHttpFailures4xx**  Number of 400-499 error codes received from Vortex.
- **VortexHttpFailures5xx**  Number of 500-599 error codes received from Vortex.
- **VortexHttpResponseFailures**  Number of Vortex responses that are not 2XX or 400.
- **VortexHttpResponsesWithDroppedEvents**  Number of Vortex responses containing at least 1 dropped event.
- **EventStoreLifetimeResetCounter**  Number of times event DB was reset for the lifetime of UTC.
- **EventStoreResetCounter**  Number of times event DB was reset.
- **EventStoreResetSizeSum**  Total size of event DB across all resets reports in this instance.


### TelClientSynthetic.HeartBeat_Aria_5

Telemetry client ARIA heartbeat event.

The following fields are available:

- **CompressedBytesUploaded**  Number of compressed bytes uploaded.
- **CriticalDataDbDroppedCount**  Number of critical data sampled events dropped at the database layer.
- **CriticalOverflowEntersCounter**  Number of times critical overflow mode was entered in event DB.
- **DbCriticalDroppedCount**  Total number of dropped critical events in event DB.
- **DbDroppedCount**  Number of events dropped at the DB layer.
- **DbDroppedFailureCount**  Number of events dropped due to DB failures.
- **DbDroppedFullCount**  Number of events dropped due to DB fullness.
- **EnteringCriticalOverflowDroppedCounter**  Number of events dropped due to critical overflow mode being initiated.
- **EventsPersistedCount**  Number of events that reached the PersistEvent stage.
- **EventSubStoreResetCounter**  Number of times event DB was reset.
- **EventSubStoreResetSizeSum**  Total size of event DB across all resets reports in this instance.
- **EventsUploaded**  Number of events uploaded.
- **HeartBeatSequenceNumber**  The sequence number of this heartbeat.
- **InvalidHttpCodeCount**  Number of invalid HTTP codes received from contacting Vortex.
- **LastEventSizeOffender**  Event name of last event which exceeded max event size.
- **LastInvalidHttpCode**  Last invalid HTTP code received from Vortex.
- **PreviousHeartBeatTime**  The FILETIME of the previous heartbeat fire.
- **SettingsHttpAttempts**  Number of attempts to contact OneSettings service.
- **SettingsHttpFailures**  Number of failures from contacting OneSettings service. 
- **UploaderDroppedCount**  Number of events dropped at the uploader layer of telemetry client.
- **VortexFailuresTimeout**  Number of time out failures received from Vortex.
- **VortexHttpAttempts**  Number of attempts to contact Vortex.
- **VortexHttpFailures4xx**  Number of 400-499 error codes received from Vortex.
- **VortexHttpFailures5xx**  Number of 500-599 error codes received from Vortex.
- **VortexHttpResponseFailures**  Number of Vortex responses that are not 2XX or 400.
- **VortexHttpResponsesWithDroppedEvents**  Number of Vortex responses containing at least 1 dropped event.


### TelClientSynthetic.PrivacySettingsAfterCreatorsUpdate

This event sends basic data on privacy settings before and after a feature update. This is used to ensure that customer privacy settings are correctly migrated across feature updates.

The following fields are available:

- **PostUpgradeSettings**  The privacy settings after a feature update.
- **PreUpgradeSettings**  The privacy settings before a feature update.


## Direct to update events

### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCheckApplicability

Event to indicate that the Coordinator CheckApplicability call succeeded.

The following fields are available:

- **ApplicabilityResult**  Result of CheckApplicability function.
- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCheckApplicabilityGenericFailure

Event to indicate that we have received an unexpected error in the DTU Coordinators CheckApplicability call.

The following fields are available:

- **hResult**  HRESULT of the failure.
- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCommitGenericFailure

Commit call.

The following fields are available:

- **hResult**  HRESULT of the failure.
- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCommitSuccess

Event to indicate that the Coordinator Commit call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadGenericFailure

Event to indicate that we have received an unexpected error in the DTU Coordinator Download call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadIgnoredFailure

Event to indicate that we have received an error in the DTU Coordinator Download call that will be ignored.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadSuccess

Event to indicate that the Coordinator Download call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorHandleShutdownGenericFailure

Event to indicate that we have received an unexpected error in the DTU Coordinator HandleShutdown call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinate version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorHandleShutdownSuccess

Event to indicate that the Coordinator HandleShutdown call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInitializeGenericFailure

Event to indicate that we have received an unexpected error in the DTU Coordinator Initialize call.

The following fields are available:

- **hResult**  HRESULT of the failure.
- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInitializeSuccess

Event to indicate that the Coordinator Initialize call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallGenericFailure

Event to indicate that we have received an unexpected error in the DTU Coordinator Install call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallIgnoredFailure

Event to indicate that we have received an error in the DTU Coordinator Install call that will be ignored. 

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallSuccess

Event to indicate that the Coordinator Install call succeeded. 

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorProgressCallBack

Event to indicate Coordinator's progress callback has been called. 

The following fields are available:

- **Current Deploy Phase's percentage completed**  Trigger which fired UXLauncher.
- **DeployPhase**  Current Deploy Phase.
- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorSetCommitReadyGenericFailure

Event to indicate that we have received an unexpected error in the DTU Coordinator SetCommitReady call. 

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorSetCommitReadySuccess

Event to indicate that the Coordinator SetCommitReady call succeeded. 

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiGenericFailure

Event to indicate that we have received an unexpected error in the DTU Coordinator WaitForRebootUi call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiNotShown

Event to indicate that the Coordinator WaitForRebootUi call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiSelection

Event to indicate the user selected an option on the Reboot UI.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **rebootUiSelection**  Selection on the Reboot UI


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiSuccess

Event to indicate that the Coordinator WaitForRebootUi call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler CheckApplicability call.

The following fields are available:

- **hResult**  HRESULT of the failure
- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **CV_new**  New correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityInternalGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler CheckApplicabilityInternal call.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityInternalSuccess

Event to indicate that the Handler CheckApplicabilityInternal call succeeded.

The following fields are available:

- **ApplicabilityResult**  Result of CheckApplicability function
- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilitySuccess

Event to indicate that the Handler CheckApplicability call succeeded.

The following fields are available:

- **ApplicabilityResult**  Result of CheckApplicability function
- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **CV_new**  New correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckIfCoordinatorMinApplicableVersionGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler CheckIfCoordinatorMinApplicableVersion call.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckIfCoordinatorMinApplicableVersionSuccess

Event to indicate that the Handler CheckIfCoordinatorMinApplicableVersion call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **CheckIfCoordinatorMinApplicableVersionResult**  Result of CheckIfCoordinatorMinApplicableVersion function
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerCommitGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler Commit call.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **CV_new**  New correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerCommitSuccess

Event to indicate that the Handler Commit call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **CV_new**  New correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadAndExtractCabAlreadyDownloaded

Event to indicate that the Handler Download and Extract cab returned a value indicating that the cab trying to be downloaded has already been downloaded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadAndExtractCabFailure

Event to indicate that the Handler Download and Extract cab call failed.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **DownloadAndExtractCabFunction_failureReason**  Reason why the DownloadAndExtractCab function failed
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadAndExtractCabSuccess

Event to indicate that the Handler Download and Extract cab call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler Download call.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadSuccess

Event to indicate that the Handler Download call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerInitializeGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler Initialize call.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **DownloadAndExtractCabFunction_hResult**  HRESULT of the DownloadAndExtractCab function
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerInitializeSuccess

Event to indicate that the Handler Initialize call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **DownloadAndExtractCabFunction_hResult**  HRESULT of the DownloadAndExtractCab function


### Microsoft.Windows.DirectToUpdate.DTUHandlerInstallGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler Install call.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerInstallSuccess

Event to indicate that the Coordinator Install call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerSetCommitReadyGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler SetCommitReady call.

The following fields are available:

- **hResult**  HRESULT of the failure
- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerSetCommitReadySuccess

Event to indicate that the Handler SetCommitReady call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerWaitForRebootUiGenericFailure

Event to indicate that we have received an unexpected error in the DTU Handler WaitForRebootUi call.

The following fields are available:

- **hResult**  HRESULT of the failure
- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUHandlerWaitForRebootUiSuccess

Event to indicate that the Handler WaitForRebootUi call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


## Feature update events

### Microsoft.Windows.Upgrade.Uninstall.UninstallFailed

This event sends diagnostic data about failures when uninstalling a feature update, to help resolve any issues preventing customers from reverting to a known state

The following fields are available:

- **failureReason**  Provides data about the uninstall initialization operation failure
- **hr**  Provides the Win32 error code for the operation failure


### Microsoft.Windows.Upgrade.Uninstall.UninstallFinalizedAndRebootTriggered

Indicates that the uninstall was properly configured and that a system reboot was initiated



### Microsoft.Windows.Upgrade.Uninstall.UninstallGoBackButtonClicked

This event sends basic metadata about the starting point of uninstalling a feature update which helps us ensure customers can safely revert to a well-known state if the update caused any problems. 


## Inventory events

### Microsoft.Windows.Inventory.Core.AmiTelCacheChecksum

This event captures basic checksum data about the device inventory items stored in the cache for use in validating data completeness for Microsoft.Windows.Inventory.Core events. The fields in this event may change over time, but they will always represent a count of a given object. 

The following fields are available:

- **DriverPackageExtended**  A count of driverpackageextended objects in cache
- **FileSigningInfo**  A count of file signing objects in cache
- **InventoryApplication**  A count of application objects in cache
- **InventoryApplicationFile**  A count of application file objects in cache
- **InventoryDeviceContainer**  A count of device container objects in cache
- **InventoryDeviceInterface**  A count of PNP device interface objects in cache
- **InventoryDeviceMediaClass**  A count of device media objects in cache
- **InventoryDevicePnp**  A count of devicepnp objects in cache
- **InventoryDeviceUsbHubClass**  A count of device usb objects in cache
- **InventoryDriverBinary**  A count of driver binary objects in cache
- **InventoryDriverPackage**  A count of device objects in cache


### Microsoft.Windows.Inventory.Core.AmiTelCacheVersions

This event sends inventory component versions for the Device Inventory data.

The following fields are available:

- **aeinv**  The version of the App inventory component.
- **devinv**  The file version of the Device inventory component.


### Microsoft.Windows.Inventory.Core.InventoryApplicationAdd

This event sends basic metadata about an application on the system to help keep Windows up to date.

The following fields are available:

- **HiddenArp**  Indicates whether a program hides itself from showing up in ARP.
- **InstallDate**  The date the application was installed (a best guess based on folder creation date heuristics).
- **InstallDateArpLastModified**  The date of the registry ARP key for a given application. Hints at install date but not always accurate. Passed as an array. Example: 4/11/2015  00:00:00
- **InstallDateFromLinkFile**  The estimated date of install based on the links to the files.  Passed as an array.
- **InstallDateMsi**  The install date if the application was installed via MSI. Passed as an array.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Language**  The language code of the program.
- **MsiPackageCode**  A GUID that describes the MSI Package. Multiple 'Products' (apps) can make up an MsiPackage.
- **MsiProductCode**  A GUID that describe the MSI Product.
- **Name**  The name of the application
- **OSVersionAtInstallTime**  The four octets from the OS version at the time of the application's install.
- **PackageFullName**  The package full name for a Store application.
- **ProgramInstanceId**  A hash of the file IDs in an app.
- **Publisher**  The Publisher of the application. Location pulled from depends on the 'Source' field.
- **RootDirPath**  The path to the root directory where the program was installed.
- **Source**  How the program was installed (ARP, MSI, Appx, etc...)
- **StoreAppType**  A sub-classification for the type of Microsoft Store app, such as UWP or Win8StoreApp.
- **Type**  One of ("Application", "Hotfix", "BOE", "Service", "Unknown"). Application indicates Win32 or Appx app, Hotfix indicates app updates (KBs), BOE indicates it's an app with no ARP or MSI entry, Service indicates that it is a service. Application and BOE are the ones most likely seen.
- **Version**  The version number of the program.


### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkAdd

This event provides the basic metadata about the frameworks an application may depend on

The following fields are available:

- **FileId**  A hash that uniquely identifies a file
- **Frameworks**  The list of frameworks this file depends on
- **InventoryVersion**  The version of the inventory file generating the events


### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkStartSync

This event indicates that a new set of InventoryApplicationFrameworkAdd events will be sent

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events


### Microsoft.Windows.Inventory.Core.InventoryApplicationRemove

This event indicates that a new set of InventoryDevicePnpAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryApplicationStartSync

This event indicates that a new set of InventoryApplicationAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerAdd

This event sends basic metadata about a device container (such as a monitor or printer as opposed to a PNP device) to help keep Windows up-to-date.

The following fields are available:

- **Categories**  A comma separated list of functional categories in which the container belongs.
- **DiscoveryMethod**  The discovery method for the device container.
- **FriendlyName**  The name of the device container.
- **InventoryVersion**  The version of the inventory file generating the events.
- **IsActive**  Is the device connected, or has it been seen in the last 14 days?
- **IsConnected**  For a physically attached device, this value is the same as IsPresent. For wireless a device, this value represents a communication link.
- **IsMachineContainer**  Is the container the root device itself?
- **IsNetworked**  Is this a networked device?
- **IsPaired**  Does the device container require pairing?
- **Manufacturer**  The manufacturer name for the device container.
- **ModelId**  A model GUID.
- **ModelName**  The model name.
- **ModelNumber**  The model number for the device container.
- **PrimaryCategory**  The primary category for the device container.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerRemove

This event indicates that the InventoryDeviceContainer object is no longer present.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerStartSync

This event indicates that a new set of InventoryDeviceContainerAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceInterfaceAdd

This event retrieves information about what sensor interfaces are available on the device.

The following fields are available:

- **Accelerometer3D**  Indicates if an Accelerator3D sensor is found.
- **ActivityDetection**  Indicates if an Activity Detection sensor is found.
- **AmbientLight**  Indicates if an Ambient Light sensor is found.
- **Barometer**  Indicates if a Barometer sensor is found.
- **Custom**  Indicates if a Custom sensor is found.
- **EnergyMeter**  Indicates if an Energy sensor is found.
- **FloorElevation**  Indicates if a Floor Elevation sensor is found.
- **GeomagneticOrientation**  Indicates if a Geo Magnetic Orientation sensor is found.
- **GravityVector**  Indicates if a Gravity Detector sensor is found.
- **Gyrometer3D**  Indicates if a Gyrometer3D sensor is found.
- **Humidity**  Indicates if a Humidity sensor is found.
- **InventoryVersion**  The version of the inventory file generating the events.
- **LinearAccelerometer**  Indicates if a Linear Accelerometer sensor is found.
- **Magnetometer3D**  Indicates if a Magnetometer3D sensor is found.
- **Orientation**  Indicates if an Orientation sensor is found.
- **Pedometer**  Indicates if a Pedometer sensor is found.
- **Proximity**  Indicates if a Proximity sensor is found.
- **RelativeOrientation**  Indicates if a Relative Orientation sensor is found.
- **SimpleDeviceOrientation**  Indicates if a Simple Device Orientation sensor is found.
- **Temperature**  Indicates if a Temperature sensor is found.


### Microsoft.Windows.Inventory.Core.InventoryDeviceInterfaceStartSync

This event indicates that a new set of InventoryDeviceInterfaceAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassAdd

This event sends additional metadata about a PNP device that is specific to a particular class of devices to help keep Windows up to date while reducing overall size of data payload.

The following fields are available:

- **Audio_CaptureDriver**  The Audio device capture driver endpoint.
- **Audio_RenderDriver**  The Audio device render driver endpoint.
- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassStartSync

This event indicates that a new set of InventoryDeviceMediaClassSAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpAdd

This event represents the basic metadata about a PNP device and its associated driver

The following fields are available:

- **BusReportedDescription**  System-supplied GUID that uniquely groups the functional devices associated with a single-function or multifunction device installed in the computer.
- **Class**  A unique identifier for the driver installed.
- **ClassGuid**  Name of the .sys image file (or wudfrd.sys if using user mode driver framework).
- **COMPID**  INF file name (the name could be renamed by OS, such as oemXX.inf)
- **ContainerId**  The version of the inventory binary generating the events.
- **Description**  The current error code for the device.
- **DeviceState**  The device description.
- **DriverId**  DeviceState is a bitmask of the following: DEVICE_IS_CONNECTED 0x0001 (currently only for container). DEVICE_IS_NETWORK_DEVICE 0x0002 (currently only for container). DEVICE_IS_PAIRED 0x0004 (currently only for container). DEVICE_IS_ACTIVE 0x0008 (currently never set). DEVICE_IS_MACHINE 0x0010 (currently only for container). DEVICE_IS_PRESENT 0x0020 (currently always set). DEVICE_IS_HIDDEN 0x0040. DEVICE_IS_PRINTER 0x0080 (currently only for container). DEVICE_IS_WIRELESS 0x0100. DEVICE_IS_WIRELESS_FAT 0x0200. The most common values are therefore: 32 (0x20)= device is present. 96 (0x60)= device is present but hidden. 288 (0x120)= device is a wireless device that is present
- **DriverName**  A unique identifier for the driver installed.
- **DriverPackageStrongName**  The immediate parent directory name in the Directory field of InventoryDriverPackage
- **DriverVerDate**  Name of the .sys image file (or wudfrd.sys if using user mode driver framework).
- **DriverVerVersion**  The immediate parent directory name in the Directory field of InventoryDriverPackage.
- **Enumerator**  The date of the driver loaded for the device.
- **HWID**  The version of the driver loaded for the device. 
- **Inf**  The bus that enumerated the device.
- **InstallState**  The device installation state.  One of these values: https://msdn.microsoft.com/en-us/library/windows/hardware/ff543130.aspx
- **InventoryVersion**  List of hardware ids for the device.
- **LowerClassFilters**  Lower filter class drivers IDs installed for the device
- **LowerFilters**  Lower filter drivers IDs installed for the device
- **Manufacturer**  INF file name (the name could be renamed by OS, such as oemXX.inf)
- **MatchingID**  Device installation state.
- **Model**  The version of the inventory binary generating the events.
- **ParentId**  Lower filter class drivers IDs installed for the device.
- **ProblemCode**  Lower filter drivers IDs installed for the device.
- **Provider**  The device manufacturer.
- **Service**  The device service name
- **STACKID**  Represents the hardware ID or compatible ID that Windows uses to install a device instance.
- **UpperClassFilters**  Upper filter drivers IDs installed for the device
- **UpperFilters**  The device model.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpRemove

This event indicates that the InventoryDevicePnpRemove object is no longer present.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpStartSync

This event indicates that a new set of InventoryDevicePnpAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassAdd

This event sends basic metadata about the USB hubs on the device

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events
- **TotalUserConnectablePorts**  Total number of connectable USB ports
- **TotalUserConnectableTypeCPorts**  Total number of connectable USB Type C ports


### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassStartSync

This event indicates that a new set of InventoryDeviceUsbHubClassAdd events will be sent

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events


### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryAdd

This event provides the basic metadata about driver binaries running on the system

The following fields are available:

- **DriverCheckSum**  The checksum of the driver file.
- **DriverCompany**  The company name that developed the driver.
- **DriverInBox**  Is the driver included with the operating system?
- **DriverIsKernelMode**  Is it a kernel mode driver?
- **DriverName**  The file name of the driver.
- **DriverPackageStrongName**  The strong name of the driver package
- **DriverSigned**  The strong name of the driver package
- **DriverTimeStamp**  The low 32 bits of the time stamp of the driver file.
- **DriverType**  A bitfield of driver attributes: 1. define DRIVER_MAP_DRIVER_TYPE_PRINTER 0x0001. 2. define DRIVER_MAP_DRIVER_TYPE_KERNEL 0x0002. 3. define DRIVER_MAP_DRIVER_TYPE_USER 0x0004. 4. define DRIVER_MAP_DRIVER_IS_SIGNED 0x0008. 5. define DRIVER_MAP_DRIVER_IS_INBOX 0x0010. 6. define DRIVER_MAP_DRIVER_IS_WINQUAL 0x0040. 7. define DRIVER_MAP_DRIVER_IS_SELF_SIGNED 0x0020. 8. define DRIVER_MAP_DRIVER_IS_CI_SIGNED 0x0080. 9. define DRIVER_MAP_DRIVER_HAS_BOOT_SERVICE 0x0100. 10. define DRIVER_MAP_DRIVER_TYPE_I386 0x10000. 11. define DRIVER_MAP_DRIVER_TYPE_IA64 0x20000. 12. define DRIVER_MAP_DRIVER_TYPE_AMD64 0x40000. 13. define DRIVER_MAP_DRIVER_TYPE_ARM 0x100000. 14. define DRIVER_MAP_DRIVER_TYPE_THUMB 0x200000. 15. define DRIVER_MAP_DRIVER_TYPE_ARMNT 0x400000. 16. define DRIVER_MAP_DRIVER_IS_TIME_STAMPED 0x800000.
- **DriverVersion**  The version of the driver file.
- **ImageSize**  The size of the driver file.
- **Inf**  The name of the INF file.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Product**  The product name that is included in the driver file.
- **ProductVersion**  The product version that is included in the driver file.
- **Service**  The device service name
- **WdfVersion**  The Windows Driver Framework version.


### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryRemove

This event indicates that the InventoryDriverBinary object is no longer present.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryStartSync

This event indicates that a new set of InventoryDriverBinaryAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageAdd

This event sends basic metadata about drive packages installed on the system  to help keep Windows up-to-date.

The following fields are available:

- **Class**  The class name for the device driver.
- **ClassGuid**  The class GUID for the device driver.
- **Date**  The driver package date.
- **Directory**  The path to the driver package.
- **DriverInBox**  Is the driver included with the operating system?
- **Inf**  The INF name of the driver package.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Provider**  The provider for the driver package.
- **SubmissionId**  The HLK submission ID for the driver package.
- **Version**  The version of the driver package.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageRemove

This event indicates that the InventoryDriverPackageRemove object is no longer present.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageStartSync

This event indicates that a new set of InventoryDriverPackageAdd events will be sent.

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInAdd

Provides data on the installed Office Add-ins

The following fields are available:

- **AddInCLSID**  CLSID key for the office addin
- **AddInId**  Office addin ID
- **BinFileTimestamp**  Timestamp of the Office addin
- **BinFileVersion**  Version of the Office addin
- **Description**  Office addin description
- **FileId**  FileId of the Office addin
- **FriendlyName**  Friendly name for office addin
- **FullPath**  Unexpanded path to the office addin
- **LoadBehavior**  Uint32 that describes the load behavior
- **LoadTime**  Load time for the office addin
- **OfficeApplication**  The office application for this addin
- **OfficeArchitecture**  Architecture of the addin
- **OfficeVersion**  The office version for this addin
- **OutlookCrashingAddin**  Boolean that indicates if crashes have been found for this addin
- **Provider**  Name of the provider for this addin


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInStartSync

This event indicates that a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIESettingsAdd

This event includes the Office-related Internet Explorer features

The following fields are available:

- **OIeFeatureAddon**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_ADDON_MANAGEMENT feature lets applications hosting the WebBrowser Control to respect add-on management selections made using the Add-on Manager feature of Internet Explorer. Add-ons disabled by the user or by administrative group policy will also be disabled in applications that enable this feature.
- **OIeMachineLockdown**  Flag indicating which Microsoft Office products have this setting enabled. When the FEATURE_LOCALMACHINE_LOCKDOWN feature is enabled, Internet Explorer applies security restrictions on content loaded from the user's local machine, which helps prevent malicious behavior involving local files.
- **OIeMimeHandling**  Flag indicating which Microsoft Office products have this setting enabled. When the FEATURE_MIME_HANDLING feature control is enabled, Internet Explorer handles MIME types more securely. Only applies to Windows Internet Explorer 6 for Windows XP Service Pack 2 (SP2)
- **OIeMimeSniffing**  Flag indicating which Microsoft Office products have this setting enabled. Determines a file's type by examining its bit signature. Windows Internet Explorer uses this information to determine how to render the file. The FEATURE_MIME_SNIFFING feature, when enabled, allows to be set differently for each security zone by using the URLACTION_FEATURE_MIME_SNIFFING URL action flag
- **OIeNoAxInstall**  Flag indicating which Microsoft Office products have this setting enabled. When a webpage attempts to load or install an ActiveX control that isn't already installed, the FEATURE_RESTRICT_ACTIVEXINSTALL feature blocks the request. When a webpage tries to load or install an ActiveX control that isn't already installed, the FEATURE_RESTRICT_ACTIVEXINSTALL feature blocks the request
- **OIeNoDownload**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_RESTRICT_FILEDOWNLOAD feature blocks file download requests that navigate to a resource, that display a file download dialog box, or that are not initiated explicitly by a user action (for example, a mouse click or key press). Only applies to Windows Internet Explorer 6 for Windows XP Service Pack 2 (SP2)
- **OIeObjectCaching**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_OBJECT_CACHING feature prevents webpages from accessing or instantiating ActiveX controls cached from different domains or security contexts
- **OIePasswordDisable**  Flag indicating which Microsoft Office products have this setting enabled. After Windows Internet Explorer 6 for Windows XP Service Pack 2 (SP2), Internet Explorer no longer allows usernames and passwords to be specified in URLs that use the HTTP or HTTP protocols. URLs using other protocols, such as FTP, still allow usernames and passwords
- **OIeSafeBind**  Flag indicating which Microsoft Office products have this setting enabled.  The FEATURE_SAFE_BINDTOOBJECT feature performs additional safety checks when calling MonikerBindToObject to create and initialize Microsoft ActiveX controls. Specifically, prevent the control from being created if COMPAT_EVIL_DONT_LOAD is in the registry for the control
- **OIeSecurityBand**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_SECURITYBAND feature controls the display of the Internet Explorer Information bar. When enabled, the Information bar appears when file download or code installation is restricted
- **OIeUncSaveCheck**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_UNC_SAVEDFILECHECK feature enables the Mark of the Web (MOTW) for local files loaded from network locations that have been shared by using the Universal Naming Convention (UNC)
- **OIeValidateUrl**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_VALIDATE_NAVIGATE_URL feature control prevents Windows Internet Explorer from navigating to a badly formed URL
- **OIeWebOcPopup**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_WEBOC_POPUPMANAGEMENT feature allows applications hosting the WebBrowser Control to receive the default Internet Explorer pop-up window management behavior
- **OIeWinRestrict**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_WINDOW_RESTRICTIONS feature adds several restrictions to the size and behavior of popup windows
- **OIeZoneElevate**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_ZONE_ELEVATION feature prevents pages in one zone from navigating to pages in a higher security zone unless the navigation is generated by the user


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIESettingsStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIdentifiersAdd

This event provides data on the Office identifiers

The following fields are available:

- **OAudienceData**  Sub-identifier for Microsoft Office release management, identifying the pilot group for a device  
- **OAudienceId**  Microsoft Office identifier for Microsoft Office release management, identifying the pilot group for a device
- **OMID**  Identifier for the Office SQM Machine
- **OPlatform**  Whether the installed Microsoft Office product is 32-bit or 64-bit
- **OTenantId**  Unique GUID representing the Microsoft O365 Tenant 
- **OVersion**  Installed version of Microsoft Office. For example, 16.0.8602.1000
- **OWowMID**  Legacy Microsoft Office telemetry identifier (SQM Machine ID) for WoW systems (32-bit Microsoft Office on 64-bit Windows)


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIdentifiersStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsAdd

This event provides insight data on the installed Office products

The following fields are available:

- **OfficeApplication**  The name of the Office application.
- **OfficeArchitecture**  The bitness of the Office application.
- **OfficeVersion**  The version of the Office application.
- **Value**  The insights collected about this entity. 


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsStartSync

This diagnostic event indicates that a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeProductsAdd

This event list all installed Office products

The following fields are available:

- **OC2rApps**  A GUID the describes the Office Click-To-Run apps
- **OC2rSkus**  Comma-delimited list (CSV) of Office Click-To-Run products installed on the device. For example, Office 2016 ProPlus 
- **OMsiApps**  Comma-delimited list (CSV) of Office MSI products installed on the device. For example, Microsoft Word 
- **OProductCodes**  A GUID that describes the Office MSI products


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeProductsStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeSettingsAdd

This event describes various Office settings

The following fields are available:

- **BrowserFlags**  Browser flags for Office-related products
- **ExchangeProviderFlags**  Provider policies for Office Exchange
- **SharedComputerLicensing**  Office shared computer licensing policies


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeSettingsStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBAAdd

This event provides a summary rollup count of conditions encountered while performing a local scan of Office files, analyzing for known VBA programmability compatibility issues between legacy office version and ProPlus, and between 32 and 64-bit versions

The following fields are available:

- **Design**  Count of files with design issues found
- **Design_x64**  Count of files with 64 bit design issues found
- **DuplicateVBA**  Count of files with duplicate VBA code
- **HasVBA**  Count of files with VBA code
- **Inaccessible**  Count of files that were inaccessible for scanning
- **Issues**  Count of files with issues detected
- **Issues_x64**  Count of files with 64-bit issues detected
- **IssuesNone**  Count of files with no issues detected
- **IssuesNone_x64**  Count of files with no 64-bit issues detected
- **Locked**  Count of files that were locked, preventing scanning
- **NoVBA**  Count of files with no VBA inside
- **Protected**  Count of files that were password protected, preventing scanning
- **RemLimited**  Count of files that require limited remediation changes
- **RemLimited_x64**  Count of files that require limited remediation changes for 64-bit issues
- **RemSignificant**  Count of files that require significant remediation changes
- **RemSignificant_x64**  Count of files that require significant remediation changes for 64-bit issues
- **Score**  Overall compatibility score calculated for scanned content
- **Score_x64**  Overall 64-bit compatibility score calculated for scanned content
- **Total**  Total number of files scanned
- **Validation**  Count of files that require additional manual validation
- **Validation_x64**  Count of files that require additional manual validation for 64-bit issues


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARuleViolationsAdd

This event provides data on Microsoft Office VBA rule violations, including a rollup count per violation type, giving an indication of remediation requirements for an organization. The event identifier is a unique GUID, associated with the validation rule

The following fields are available:

- **Count**  Count of total Microsoft Office VBA rule violations


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARuleViolationsRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARuleViolationsStartSync

This event indicates that a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBAStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoAdd

Provides data on Unified Update Platform (UUP) products and what version they are at.

The following fields are available:

- **Identifier**  UUP identifier
- **LastActivatedVersion**  Last activated version
- **PreviousVersion**  Previous version
- **Source**  UUP source
- **Version**  UUP version


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.Indicators.Checksum

This event summarizes the counts for the InventoryMiscellaneousUexIndicatorAdd events.

The following fields are available:

- **ChecksumDictionary**  A count of each operating system indicator.
- **PCFP**  Equivalent to the InventoryId field that is found in other core events.


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorAdd

These events represent the basic metadata about the OS indicators installed on the system which are used for keeping the device up-to-date.

The following fields are available:

- **IndicatorValue**  The indicator value


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorRemove

This event is a counterpart to InventoryMiscellaneousUexIndicatorAdd that indicates that the item has been removed.



### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorStartSync

This event indicates that a new set of InventoryMiscellaneousUexIndicatorAdd events will be sent.



## Microsoft Store events

### Microsoft.Windows.StoreAgent.Telemetry.AbortedInstallation

This event is sent when an installation or update is canceled by a user or the system and is used to help keep Windows Apps up to date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The names of all packages to be downloaded and installed.
- **AttemptNumber**  Number of retry attempts before it was canceled.
- **BundleId**  The Item Bundle ID.
- **CategoryId**  The Item Category ID.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  The result code of the last action performed before this operation.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Was this requested by a user?
- **IsMandatory**  Was this a mandatory update?
- **IsRemediation**  Was this a remediation install?
- **IsRestore**  Is this automatically restoring a previously acquired product?
- **IsUpdate**  Flag indicating if this is an update.
- **ParentBundleId**  The product ID of the parent (if this product is part of a bundle).
- **PFN**  The product family name of the product being installed.
- **ProductId**  The identity of the package or packages being installed.
- **SystemAttemptNumber**  The total number of automatic attempts at installation before it was canceled.
- **UserAttemptNumber**  The total number of user attempts at installation before it was canceled.
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.BeginGetInstalledContentIds

This event is sent when an inventory of the apps installed is started to determine whether updates for those apps are available. It's used to help keep Windows up-to-date and secure.



### Microsoft.Windows.StoreAgent.Telemetry.BeginUpdateMetadataPrepare

This event is sent when the Store Agent cache is refreshed with any available package updates. It's used to help keep Windows up-to-date and secure.



### Microsoft.Windows.StoreAgent.Telemetry.CancelInstallation

This event is sent when an app update or installation is canceled while in interactive mode. This can be canceled by the user or the system. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The names of all package or packages to be downloaded and installed.
- **AttemptNumber**  Total number of installation attempts.
- **BundleId**  The identity of the Windows Insider build that is associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Was this requested by a user?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this an automatic restore of a previously acquired product?
- **IsUpdate**  Is this a product update?
- **ParentBundleId**  The product ID of the parent (if this product is part of a bundle).
- **PFN**  The name of all packages to be downloaded and installed.
- **PreviousHResult**  The previous HResult code.
- **PreviousInstallState**  Previous installation state before it was canceled.
- **ProductId**  The name of the package or packages requested for installation.
- **RelatedCV**  Correlation Vector of a previous performed action on this product.
- **SystemAttemptNumber**  Total number of automatic attempts to install before it was canceled.
- **UserAttemptNumber**  Total number of user attempts to install before it was canceled.
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.CompleteInstallOperationRequest

This event is sent after the app installations or updates. It's used to help keep Windows up-to-date and secure

The following fields are available:

- **CatalogId**  The Store Product ID of the app being installed.
- **HResult**  HResult code of the action being performed.
- **IsBundle**  Is this a bundle?
- **PackageFamilyName**  The name of the package being installed.
- **ProductId**  The Store Product ID of the product being installed.
- **SkuId**  Specific edition of the item being installed.


### Microsoft.Windows.StoreAgent.Telemetry.EndAcquireLicense

This event is sent after the license is acquired when a product is being installed. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  Includes a set of package full names for each app that is part of an atomic set.
- **AttemptNumber**  The total number of attempts to acquire this product.
- **BundleId**  The bundle ID
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  HResult code to show the result of the operation (success/failure).
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Did the user initiate the installation?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this happening after a device restore?
- **IsUpdate**  Is this an update?
- **ParentBundleId**  The parent bundle ID (if it's part of a bundle).
- **PFN**  Product Family Name of the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  The number of attempts by the system to acquire this product.
- **UserAttemptNumber**  The number of attempts by the user to acquire this product
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.EndDownload

This event happens during the app update or installation when content is being downloaded at the end of the process to report success or failure. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The name of all packages to be downloaded and installed.
- **AttemptNumber**  Number of retry attempts before it was canceled.
- **BundleId**  The identity of the Windows Insider build associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **DownloadSize**  The total size of the download.
- **ExtendedHResult**  Any extended HResult error codes.
- **HResult**  The result code of the last action performed.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Is this initiated by the user?
- **IsMandatory**  Is this a mandatory installation?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this a restore of a previously acquired product?
- **IsUpdate**  Is this an update?
- **ParentBundleId**  The parent bundle ID (if it's part of a bundle).
- **PFN**  The Product Family Name of the app being download.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  The number of attempts by the system to download.
- **UserAttemptNumber**  The number of attempts by the user to download.
- **WUContentId**  The Windows Update content ID.


### Microsoft.Windows.StoreAgent.Telemetry.EndFrameworkUpdate

This event happens when an app update requires an updated Framework package and the process starts to download it. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed before this operation.


### Microsoft.Windows.StoreAgent.Telemetry.EndGetInstalledContentIds

This event is sent after sending the inventory of the products installed to determine whether updates for those products are available.  It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed before this operation.


### Microsoft.Windows.StoreAgent.Telemetry.EndInstall

This event is sent after a product has been installed. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The names of all packages to be downloaded and installed.
- **AttemptNumber**  The number of retry attempts before it was canceled.
- **BundleId**  The identity of the build associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **ExtendedHResult**  The extended HResult error code.
- **HResult**  The result code of the last action performed.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Is this an interactive installation?
- **IsMandatory**  Is this a mandatory installation?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this automatically restoring a previously acquired product?
- **IsUpdate**  Is this an update?
- **ParentBundleId**  The product ID of the parent (if this product is part of a bundle).
- **PFN**  Product Family Name of the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  The total number of system attempts.
- **UserAttemptNumber**  The total number of user attempts.
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.EndScanForUpdates

This event is sent after a scan for product updates to determine if there are packages to install. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  The result code of the last action performed.
- **IsApplicability**  Is this request to only check if there are any applicable packages to install?
- **IsInteractive**  Is this user requested?
- **IsOnline**  Is the request doing an online check?


### Microsoft.Windows.StoreAgent.Telemetry.EndSearchUpdatePackages

This event is sent after searching for update packages to install. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The names of all packages to be downloaded and installed.
- **AttemptNumber**  The total number of retry attempts before it was canceled.
- **BundleId**  The identity of the build associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  The result code of the last action performed.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Is this user requested?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this restoring previously acquired content?
- **IsUpdate**  Is this an update?
- **ParentBundleId**  The product ID of the parent (if this product is part of a bundle).
- **PFN**  The name of the package or packages requested for install.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  The total number of system attempts.
- **UserAttemptNumber**  The total number of user attempts.
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.EndStageUserData

This event is sent between download and installation to see if there is app data that needs to be restored from the cloud. It's used to keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The name of all packages to be downloaded and installed.
- **AttemptNumber**  The total number of retry attempts before it was canceled.
- **BundleId**  The identity of the build associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  The result code of the last action performed.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Is this user requested?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this restoring previously acquired content?
- **IsUpdate**  Is this an update?
- **ParentBundleId**  The product ID of the parent (if this product is part of a bundle).
- **PFN**  The name of the package or packages requested for install.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  The total number of system attempts.
- **UserAttemptNumber**  The total number of system attempts.
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.EndUpdateMetadataPrepare

This event happens after a scan for available app updates. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed.


### Microsoft.Windows.StoreAgent.Telemetry.FulfillmentComplete

The FulfillmentComplete event is fired at the end of an app install or update.  We use this to track the very end of the install/update process.  StoreAgent events are needed to help keep Windows pre-installed 1st party apps up to date and secure, such as the mail and calendar apps. App update failure can be unique across devices and without this data from every device we will not be able to track the success/failure and fix any future vulnerabilities related to these built in Windows Apps.

The following fields are available:

- **CatalogId**  The CatalogId is the name of the product catalog from which this app was chosen.
- **FailedRetry**  Was the installation or update retry successful?
- **HResult**  The HResult code of the operation.
- **PFN**  The Package Family Name of the app that is being installed or updated.
- **ProductId**  The product ID of the app that is being updated or installed.


### Microsoft.Windows.StoreAgent.Telemetry.FulfillmentInitiate

The FulfillmentInitiate event is fired at the start of an app install or update.  We use this to track the very beginning of the install/update process.  StoreAgent events are needed to help keep Windows pre-installed 1st party apps up to date and secure, such as the mail and calendar apps. App update failure can be unique across devices and without this data from every device we will not be able to track the success/failure and fix any future vulnerabilities related to these built in Windows Apps.

The following fields are available:

- **PFN**  The Package Family Name of the app that is being installed or updated.
- **ProductId**  The product ID of the app that is being updated or installed.
- **CatalogId**  The CatalogId is the name of the product catalog from which this app was chosen.


### Microsoft.Windows.StoreAgent.Telemetry.InstallOperationRequest

This event happens at the beginning of the install process when an app update or new app is installed. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **BundleId**  The identity of the build associated with this product.
- **CatalogId**  If this product is from a private catalog, the Store Product ID for the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SkuId**  Specific edition ID being installed.
- **VolumePath**  The disk path of the installation.


### Microsoft.Windows.StoreAgent.Telemetry.PauseInstallation

This event is sent when a product install or update is paused either by a user or the system. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The names of all packages to be downloaded and installed.
- **AttemptNumber**  The total number of retry attempts before it was canceled.
- **BundleId**  The identity of the build associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Is this user requested?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this restoring previously acquired content?
- **IsUpdate**  Is this an update?
- **ParentBundleId**  The product ID of the parent (if this product is part of a bundle).
- **PFN**  The Product Full Name.
- **PreviousHResult**  The result code of the last action performed before this operation.
- **PreviousInstallState**  Previous state before the installation or update was paused.
- **ProductId**  The Store Product ID for the product being installed.
- **RelatedCV**  Correlation Vector of a previous performed action on this product.
- **SystemAttemptNumber**  The total number of system attempts.
- **UserAttemptNumber**  The total number of user attempts.
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.ResumeInstallation

This event happens when a product install or update is resumed either by a user or the system. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AggregatedPackageFullNames**  The names of all packages to be downloaded and installed.
- **AttemptNumber**  The number of retry attempts before it was canceled.
- **BundleId**  The identity of the build associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  The result code of the last action performed before this operation.
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Is this user requested?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this restoring previously acquired content?
- **IsUpdate**  Is this an update?
- **IsUserRetry**  Did the user initiate the retry?
- **ParentBundleId**  The product ID of the parent (if this product is part of a bundle).
- **PFN**  The name of the package or packages requested for install.
- **PreviousHResult**  The previous HResult error code.
- **PreviousInstallState**  Previous state before the installation was paused.
- **ProductId**  The Store Product ID for the product being installed.
- **RelatedCV**  Correlation Vector for the original install before it was resumed.
- **SystemAttemptNumber**  The total number of system attempts.
- **UserAttemptNumber**  The total number of user attempts.
- **WUContentId**  The Windows Update content ID


### Microsoft.Windows.StoreAgent.Telemetry.ResumeOperationRequest

This event happens when a product install or update is resumed by a user and on installation retries. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **ProductId**  The Store Product ID for the product being installed.


### Microsoft.Windows.StoreAgent.Telemetry.SearchForUpdateOperationRequest

This event is sent when searching for update packages to install. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **CatalogId**  The Store Product ID for the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SkuId**  Specfic edition of the app being updated.


### Microsoft.Windows.StoreAgent.Telemetry.UpdateAppOperationRequest

This event happens an app for a user needs to be updated. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **PFamN**  The name of the product that is requested for update.


## Privacy consent logging events

### Microsoft.Windows.Shell.PrivacyConsentLogging.PrivacyConsentCompleted

This event is used to determine whether the user successfully completed the privacy consent experience.

The following fields are available:

- **presentationVersion**  Which display version of the privacy consent experience the user completed
- **privacyConsentState**  The current state of the privacy consent experience
- **settingsVersion**  Which setting version of the privacy consent experience the user completed
- **userOobeExitReason**  The exit reason of the privacy consent experience


### Microsoft.Windows.Shell.PrivacyConsentLogging.PrivacyConsentStatus

Event tells us effectiveness of new privacy experience.

The following fields are available:

- **isAdmin**  Whether the current user is an administrator or not
- **isLaunching**  Whether or not the privacy consent experience will be launched
- **isSilentElevation**  Whether the current user has enabled silent elevation
- **privacyConsentState**  The current state of the privacy consent experience
- **userRegionCode**  The current user's region setting


## Setup events

### SetupPlatformTel.SetupPlatformTelEvent

This service retrieves events generated by SetupPlatform, the engine that drives the various deployment scenarios.

The following fields are available:

- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **Value**  Retrieves the value associated with the corresponding event name (Field Name). For example: For time related events this will include the system time.


## Shared PC events

### Microsoft.Windows.SharedPC.AccountManager.DeleteUserAccount

Activity for deletion of a user account for devices set up for Shared PC mode as part of the Transient Account Manager to help keep Windows up to date. Deleting un-used user accounts on Education/Shared PCs frees up disk space to improve Windows Update success rates.

The following fields are available:

- **accountType**  The type of account that was deleted. Example: AD, AAD, or Local
- **deleteState**  Whether the attempted deletion of the user account was successful.
- **userSid**  The security identifier of the account.
- **wilActivity**  Windows Error Reporting data collected when there is a failure in deleting a user account with the Transient Account Manager.


### Microsoft.Windows.SharedPC.AccountManager.SinglePolicyEvaluation

Activity for run of the Transient Account Manager that determines if any user accounts should be deleted for devices set up for Shared PC mode to help keep Windows up to date. Deleting unused user accounts on shared devices frees up disk space to improve Windows Update success rates

The following fields are available:

- **totalAccountCount**  The number of accounts on a device after running the Transient Account Manager policies.
- **wilActivity**  Windows Error Reporting data collected when there is a failure in evaluating accounts to be deleted with the Transient Account Manager.
- **evaluationTrigger**  When was the Transient Account Manager policies ran? Example: At log off or during maintenance hours


## SIH events

### SIHEngineTelemetry.EvalApplicability

This event is sent when targeting logic is evaluated to determine if a device is eligible for a given action.

The following fields are available:

- **ActionReasons**  If an action has been assessed as inapplicable, the additional logic prevented it.
- **AdditionalReasons**  If an action has been assessed as inapplicable, the additional logic prevented it.
- **CachedEngineVersion**  The engine DLL version that is being used.
- **EventInstanceID**  A unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event – whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **HandlerReasons**  If an action has been assessed as inapplicable, the installer technology-specific logic prevented it.
- **IsExecutingAction**  If the action is presently being executed.
- **ServiceGuid**  A unique identifier that represents which service the software distribution client is connecting to (SIH, Windows Update, Windows Store, etc.)
- **SihclientVersion**  The client version that is being used.
- **StandardReasons**  If an action has been assessed as inapplicable, the standard logic the prevented it.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UpdateID**  A unique identifier for the action being acted upon.
- **WuapiVersion**  The Windows Update API version that is currently installed.
- **WuaucltVersion**  The Windows Update client version that is currently installed.
- **WuauengVersion**  The Windows Update engine version that is currently installed.
- **WUDeviceID**  The unique identifier controlled by the software distribution client.


### SIHEngineTelemetry.SLSActionData

This event reports if the SIH client was able to successfully parse the manifest describing the actions to be evaluated.

The following fields are available:

- **CachedEngineVersion**  The engine DLL version that is being used.
- **EventInstanceID**  A unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event – whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **FailedParseActions**  The list of actions that were not successfully parsed.
- **ParsedActions**  The list of actions that were successfully parsed.
- **ServiceGuid**  A unique identifier that represents which service the software distribution client is connecting to (SIH, Windows Update, Windows Store, etc.)
- **SihclientVersion**  The client version that is being used.
- **WuapiVersion**  The Windows Update API version that is currently installed.
- **WuaucltVersion**  The Windows Update client version that is currently installed.
- **WuauengVersion**  The Windows Update engine version that is currently installed.
- **WUDeviceID**  The unique identifier controlled by the software distribution client.


## Software update events

### SoftwareUpdateClientTelemetry.CheckForUpdates

Scan process event on Windows Update client (see eventscenario field for specifics, e.g.: started/failed/succeeded)

The following fields are available:

- **ActivityMatchingId**  Contains a unique ID identifying a single CheckForUpdates session from initialization to completion.
- **AllowCachedResults**  Indicates if the scan allowed using cached results.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **CurrentMobileOperator**  The mobile operator the device is currently connected to.
- **DriverSyncPassPerformed**  Were drivers scanned this time?
- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode wasn't specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBranch**  The branch that a device is on if participating in flighting (pre-release builds).
- **FlightRing**  The ring (speed of getting builds) that a device is on if participating in flighting (pre-release builds).
- **HomeMobileOperator**  The mobile operator that the device was originally intended to work with.
- **IPVersion**  Indicates whether the download took place over IPv4 or IPv6
- **IsWUfBDualScanEnabled**  Indicates if Windows Update for Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Indicates if Windows Update for Business is enabled on the device.
- **MetadataIntegrityMode**  The mode of the update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce
- **NumberOfApplicationsCategoryScanEvaluated**  The number of categories (apps) for which an app update scan checked
- **NumberOfLoop**  The number of round trips the scan required
- **NumberOfNewUpdatesFromServiceSync**  The number of updates which were seen for the first time in this scan
- **NumberOfUpdatesEvaluated**  The total number of updates which were evaluated as a part of the scan
- **NumFailedMetadataSignatures**  The number of metadata signatures checks which failed for new metadata synced down.
- **Online**  Indicates if this was an online scan.
- **PhonePreviewEnabled**  Indicates whether a phone was getting preview build, prior to flighting (pre-release builds) being introduced.
- **ProcessName**  The process name of the caller who initiated API calls, in the event where CallerApplicationName was not provided.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **ScanDurationInSeconds**  The number of seconds a scan took
- **ScanEnqueueTime**  The number of seconds it took to initialize a scan
- **ServiceGuid**  An ID which represents which service the software distribution client is checking for content (Windows Update, Windows Store, etc.).
- **ServiceUrl**  The environment URL a device is configured to scan with
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **StatusCode**  Indicates the result of a CheckForUpdates event (success, cancellation, failure code HResult).
- **SyncType**  Describes the type of scan the event was
- **TotalNumMetadataSignatures**  The total number of metadata signatures checks done for new metadata that was synced down.
- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable
- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BranchReadinessLevel**  The servicing branch configured on the device.
- **ClientVersion**  The version number of the software distribution client.
- **DeferralPolicySources**  Sources for any update deferral policies defined (GPO = 0x10, MDM = 0x100, Flight = 0x1000, UX = 0x10000).
- **DeferredUpdates**  Update IDs which are currently being deferred until a later time
- **DeviceModel**  What is the device model.
- **DriverExclusionPolicy**  Indicates if the policy for not including drivers with Windows Update is enabled.
- **EventInstanceID**  A globally unique identifier for event instance.
- **FeatureUpdateDeferral**  The deferral period configured for feature OS updates on the device (in days).
- **FeatureUpdatePausePeriod**  The pause duration configured for feature OS updates on the device (in days).
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **NumberOfApplicableUpdates**  The number of updates which were ultimately deemed applicable to the system after the detection process is complete
- **PausedUpdates**  A list of UpdateIds which that currently being paused.
- **PauseFeatureUpdatesEndTime**  If feature OS updates are paused on the device, this is the date and time for the end of the pause time window.
- **PauseFeatureUpdatesStartTime**  If feature OS updates are paused on the device, this is the date and time for the beginning of the pause time window.
- **PauseQualityUpdatesEndTime**  If quality OS updates are paused on the device, this is the date and time for the end of the pause time window.
- **PauseQualityUpdatesStartTime**  If quality OS updates are paused on the device, this is the date and time for the beginning of the pause time window.
- **QualityUpdateDeferral**  The deferral period configured for quality OS updates on the device (in days).
- **QualityUpdatePausePeriod**  The pause duration configured for quality OS updates on the device (in days).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **WebServiceRetryMethods**  Web service method requests that needed to be retried to complete operation.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.
- **CachedEngineVersion**  For self-initiated healing, the version of the SIH engine that is cached on the device. If the SIH engine does not exist, the value is null.
- **TargetMetadataVersion**  For self-initiated healing, this is the target version of the SIH engine to download (if needed). If not, the value is null.
- **IsWUfBFederatedScanDisabled**  Indicates if Windows Update for Business federated scan is disabled on the device.
- **CapabilityDetectoidGuid**  The GUID for a hardware applicability detectoid that could not be evaluated.
- **CDNCountryCode**  Two letter country abbreviation for the CDN's location.
- **CDNId**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.
- **DriverError**  The error code hit during a driver scan. This is 0 if no error was encountered.
- **ExtendedMetadataCabUrl**  Hostname that is used to download an update.
- **FailedUpdateGuids**  The GUIDs for the updates that failed to be evaluated during the scan.
- **FailedUpdatesCount**  The number of updates that failed to be evaluated during the scan.
- **MSIError**  The last error that was encountered during a scan for updates.
- **NetworkConnectivityDetected**  Indicates the type of network connectivity that was detected. 0 - IPv4, 1 - IPv6
- **Context**  Gives context on where the error has occurred. Example: AutoEnable, GetSLSData, AddService, Misc, or Unknown


### SoftwareUpdateClientTelemetry.Commit

This event tracks the commit process post the update installation when software update client is trying to update the device.

The following fields are available:

- **BiosFamily**  Device family as defined in the system BIOS
- **BiosName**  Name of the system BIOS
- **BiosReleaseDate**  Release date of the system BIOS
- **BiosSKUNumber**  Device SKU as defined in the system BIOS
- **BIOSVendor**  Vendor of the system BIOS
- **BiosVersion**  Version of the system BIOS
- **BundleId**  Identifier associated with the specific content bundle; should not be all zeros if the bundleID was found.  
- **BundleRevisionNumber**  Identifies the revision number of the content bundle  
- **CallerApplicationName**  Name provided by the caller who initiated API calls into the software distribution client 
- **ClientVersion**  Version number of the software distribution client
- **DeviceModel**  Device model as defined in the system bios 
- **EventInstanceID**  A globally unique identifier for event instance
- **EventScenario**  Indicates the purpose of the event - whether because scan started, succeded, failed, etc.
- **EventType**  Possible values are &quot;Child&quot;, &quot;Bundle&quot;, &quot;Relase&quot; or &quot;Driver&quot;.
- **FlightId**  The specific id of the flight the device is getting  
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.)  
- **RevisionNumber**  Identifies the revision number of this specific piece of content
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc)
- **SystemBIOSMajorRelease**  Major release version of the system bios 
- **SystemBIOSMinorRelease**  Minor release version of the system bios 
- **UpdateId**  Identifier associated with the specific piece of content 
- **WUDeviceID**  Unique device id controlled by the software distribution client 


### SoftwareUpdateClientTelemetry.Download

Download process event for target update on Windows Update client (see eventscenario field for specifics, e.g.: started/failed/succeeded)

The following fields are available:

- **ActiveDownloadTime**  How long the download took, in seconds, excluding time where the update wasn't actively being downloaded.
- **AppXBlockHashValidationFailureCount**  A count of the number of blocks that have failed validation after being downloaded.
- **AppXDownloadScope**  Indicates the scope of the download for application content. For streaming install scenarios, AllContent - non-streaming download, RequiredOnly - streaming download requested content required for launch, AutomaticOnly - streaming download requested automatic streams for the app, and Unknown - for events sent before download scope is determined by the Windows Update client.
- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BundleBytesDownloaded**  How many bytes were downloaded for the specific content bundle.
- **BundleId**  Identifier associated with the specific content bundle; should not be all zeros if the bundleID was found.
- **BundleRepeatFailFlag**  Indicates whether this particular update bundle had previously failed to download.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **BytesDownloaded**  How many bytes were downloaded for an individual piece of content (not the entire bundle).
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **CbsDownloadMethod**  Indicates whether the download was a full-file download or a partial/delta download.
- **CDNCountryCode**  Two letter country abbreviation for the CDN's location.
- **CDNId**  ID which defines which CDN the software distribution client downloaded the content from.
- **ClientVersion**  The version number of the software distribution client.
- **CurrentMobileOperator**  The mobile operator the device is currently connected to.
- **DeviceModel**  What is the device model.
- **DownloadPriority**  Indicates whether a download happened at background, normal, or foreground priority.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started downloading content, or whether it was cancelled, succeeded, or failed.
- **EventType**  Possible values are Child, Bundle, or Driver.
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode wasn't specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBranch**  The branch that a device is on if participating in flighting (pre-release builds).
- **FlightBuildNumber**  If this download was for a flight (pre-release build), this indicates the build number of that flight.
- **FlightId**  The specific id of the flight (pre-release build) the device is getting.
- **FlightRing**  The ring (speed of getting builds) that a device is on if participating in flighting (pre-release builds).
- **HandlerType**  Indicates what kind of content is being downloaded (app, driver, windows patch, etc.).
- **HardwareId**  If this download was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **HomeMobileOperator**  The mobile operator that the device was originally intended to work with.
- **HostName**  The hostname URL the content is downloading from.
- **IPVersion**  Indicates whether the download took place over IPv4 or IPv6.
- **IsDependentSet**  Indicates whether a driver is a part of a larger System Hardware/Firmware Update
- **IsWUfBDualScanEnabled**  Indicates if Windows Update for Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Indicates if Windows Update for Business is enabled on the device.
- **NetworkCostBitMask**  Indicates what kind of network the device is connected to (roaming, metered, over data cap, etc.)
- **NetworkRestrictionStatus**  More general version of NetworkCostBitMask, specifying whether Windows considered the current network to be "metered."
- **PackageFullName**  The package name of the content.
- **PhonePreviewEnabled**  Indicates whether a phone was opted-in to getting preview builds, prior to flighting (pre-release builds) being introduced.
- **ProcessName**  The process name of the caller who initiated API calls, in the event where CallerApplicationName was not provided.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RegulationReason**  The reason that the update is regulated
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **RepeatFailFlag**  Indicates whether this specific piece of content had previously failed to download.
- **RevisionNumber**  Identifies the revision number of this specific piece of content.
- **ServiceGuid**  An ID which represents which service the software distribution client is installing content for (Windows Update, Windows Store, etc.).
- **Setup360Phase**  If the download is for an operating system upgrade, this datapoint indicates which phase of the upgrade is underway.
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **StatusCode**  Indicates the result of a Download event (success, cancellation, failure code HResult).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **ThrottlingServiceHResult**  Result code (success/failure) while contacting a web service to determine whether this device should download content yet.
- **TimeToEstablishConnection**  Time (in ms) it took to establish the connection prior to beginning downloaded.
- **TotalExpectedBytes**  The total count of bytes that the download is expected to be.
- **UpdateId**  An identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates whether a piece of content was marked as Important, Recommended, or Optional.
- **UsedDO**  Whether the download used the delivery optimization service.
- **UsedSystemVolume**  Indicates whether the content was downloaded to the device's main system storage drive, or an alternate storage drive.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.
- **DownloadScenarioId**  A unique ID for a given download used to tie together WU and DO events.


### SoftwareUpdateClientTelemetry.DownloadCheckpoint

This event provides a checkpoint between each of the Windows Update download phases for UUP content

The following fields are available:

- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client
- **ClientVersion**  The version number of the software distribution client
- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed
- **EventType**  Possible values are "Child", "Bundle", "Relase" or "Driver"
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode wasn't specific enough
- **FileId**  A hash that uniquely identifies a file
- **FileName**  Name of the downloaded file
- **FlightId**  The unique identifier for each flight
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **RevisionNumber**  Unique revision number of Update
- **ServiceGuid**  An ID which represents which service the software distribution client is checking for content (Windows Update, Microsoft Store, etc.)
- **StatusCode**  Indicates the result of a CheckForUpdates event (success, cancellation, failure code HResult)
- **UpdateId**  Unique Update ID
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue


### SoftwareUpdateClientTelemetry.DownloadHeartbeat

This event allows tracking of ongoing downloads and contains data to explain the current state of the download

The following fields are available:

- **BytesTotal**  Total bytes to transfer for this content
- **BytesTransferred**  Total bytes transferred for this content at the time of heartbeat
- **CallerApplicationName**  Name provided by the caller who initiated API calls into the software distribution client 
- **ClientVersion**  The version number of the software distribution client
- **ConnectionStatus**  Indicates the connectivity state of the device at the time of heartbeat
- **CurrentError**  Last (transient) error encountered by the active download
- **DownloadFlags**  Flags indicating if power state is ignored
- **DownloadState**  Current state of the active download for this content (queued, suspended, or progressing)
- **EventType**  Possible values are "Child", "Bundle", or "Driver"
- **FlightId**  The unique identifier for each flight
- **IsNetworkMetered**  Indicates whether Windows considered the current network to be ?metered"
- **MOAppDownloadLimit**  Mobile operator cap on size of application downloads, if any
- **MOUpdateDownloadLimit**  Mobile operator cap on size of operating system update downloads, if any
- **PowerState**  Indicates the power state of the device at the time of heartbeart (DC, AC, Battery Saver, or Connected Standby)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one
- **ResumeCount**  Number of times this active download has resumed from a suspended state
- **RevisionNumber**  Identifies the revision number of this specific piece of content
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Microsoft Store, etc) 
- **SuspendCount**  Number of times this active download has entered a suspended state
- **SuspendReason**  Last reason for why this active download entered a suspended state
- **UpdateId**  Identifier associated with the specific piece of content 
- **WUDeviceID**  Unique device id controlled by the software distribution client  


### SoftwareUpdateClientTelemetry.Install

This event sends tracking data about the software distribution client installation of the content for that update, to help keep Windows up to date.

The following fields are available:

- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BundleId**  Identifier associated with the specific content bundle; should not be all zeros if the bundleID was found.
- **BundleRepeatFailFlag**  Has this particular update bundle previously failed to install?
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **ClientVersion**  The version number of the software distribution client.
- **CSIErrorType**  The stage of CBS installation where it failed.
- **CurrentMobileOperator**  Mobile operator that device is currently connected to.
- **DeviceModel**  What is the device model.
- **DriverPingBack**  Contains information about the previous driver and system state.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started installing content, or whether it was cancelled, succeeded, or failed.
- **EventType**  Possible values are Child, Bundle, or Driver.
- **ExtendedErrorCode**  The extended error code.
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode wasn't specific enough.
- **FeatureUpdatePause**  Are feature OS updates paused on the device?
- **FlightBranch**  The branch that a device is on if participating in the Windows Insider Program.
- **FlightBuildNumber**  If this installation was for a Windows Insider build, this is the build number of that build.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **FlightRing**  The ring that a device is on if participating in the Windows Insider Program.
- **HandlerType**  Indicates what kind of content is being installed. Example: app, driver, Windows update
- **HardwareId**  If this install was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **HomeMobileOperator**  The mobile operator that the device was originally intended to work with.
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **IsDependentSet**  Is the driver part of a larger System Hardware/Firmware update?
- **IsFinalOutcomeEvent**  Does this event signal the end of the update/upgrade process?
- **IsFirmware**  Is this update a firmware update?
- **IsSuccessFailurePostReboot**  Did it succeed and then fail after a restart?
- **IsWUfBDualScanEnabled**  Is Windows Update for Business dual scan enabled on the device?
- **IsWUfBEnabled**  Is Windows Update for Business enabled on the device?
- **MergedUpdate**  Was the OS update and a BSP update merged for installation?
- **MsiAction**  The stage of MSI installation where it failed.
- **MsiProductCode**  The unique identifier of the MSI installer.
- **PackageFullName**  The package name of the content being installed.
- **PhonePreviewEnabled**  Indicates whether a phone was getting preview build, prior to flighting being introduced.
- **ProcessName**  The process name of the caller who initiated API calls, in the event where CallerApplicationName was not provided.
- **QualityUpdatePause**  Are quality OS updates paused on the device?
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **RepeatFailFlag**  Indicates whether this specific piece of content had previously failed to install.
- **RevisionNumber**  The revision number of this specific piece of content.
- **ServiceGuid**  An ID which represents which service the software distribution client is installing content for (Windows Update, Windows Store, etc.).
- **Setup360Phase**  If the install is for an operating system upgrade, indicates which phase of the upgrade is underway.
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **StatusCode**  Indicates the result of an installation event (success, cancellation, failure code HResult).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **TransactionCode**  The ID which represents a given MSI installation
- **UpdateId**  Unique update ID
- **UpdateImportance**  Indicates whether a piece of content was marked as Important, Recommended, or Optional.
- **UsedSystemVolume**  Indicates whether the content was downloaded and then installed from the device's main system storage drive, or an alternate storage drive.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.


### SoftwareUpdateClientTelemetry.UpdateDetected

This event sends data about an AppX app that has been updated from the Microsoft Store, including what app needs an update and what version/architecture is required, in order to understand and address problems with apps getting required updates.

The following fields are available:

- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **NumberOfApplicableUpdates**  The number of updates which were ultimately deemed applicable to the system after the detection process is complete
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **ServiceGuid**  An ID which represents which service the software distribution client is connecting to (Windows Update, Windows Store, etc.)
- **WUDeviceID**  The unique device ID controlled by the software distribution client


### SoftwareUpdateClientTelemetry.UpdateMetadataIntegrity

Ensures Windows Updates are secure and complete. Event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack.

The following fields are available:

- **EndpointUrl**  URL of the endpoint where client obtains update metadata. Used to identify test vs staging vs production environments.
- **EventScenario**  Indicates the purpose of the event - whether because scan started, succeded, failed, etc.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode was not specific enough. 
- **LeafCertId**  Integral id from the FragmentSigning data for certificate which failed. 
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce 
- **MetadataSignature**  Base64 string of the signature associated with the update metadata (specified by revision id)
- **RevisionId**  Identifies the revision of this specific piece of content
- **RevisionNumber**  Identifies the revision number of this specific piece of content
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc)
- **SHA256OfLeafCertPublicKey**  Base64 encoding of hash of the Base64CertData in the FragmentSigning data of leaf certificate. 
- **SHA256OfTimestampToken**  Base64 string of hash of the timestamp token blob
- **SignatureAlgorithm**  Hash algorithm for the metadata signature
- **SLSPrograms**  A test program a machine may be opted in. Examples include "Canary" and "Insider Fast".
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult)
- **TimestampTokenId**  Created time encoded in the timestamp blob. This will be zeroed if the token is itself malformed and decoding failed. 
- **UpdateId**  Identifier associated with the specific piece of content 
- **RawMode**  Raw unparsed mode string from the SLS response. May be null if not applicable. 
- **TimestampTokenCertThumbprint**  The thumbprint of the encoded timestamp token. 
- **ValidityWindowInDays**  The validity window that's in effect when verifying the timestamp.
- **CallerApplicationName**  Name of application making the Windows Update request. Used to identify context of request.
- **ListOfSHA256OfIntermediateCerData**  A semicolon delimited list of base64 encoding of hashes for the Base64CerData in the FragmentSigning data of an intermediate certificate.
- **RawValidityWindowInDays**  The raw unparsed validity window string in days of the timestamp token. This field is null if not applicable.
- **SHA256OfLeafCerData**  A base64 encoding of the hash for the Base64CerData in the FragmentSigning data of the leaf certificate.


## Update events

### Update360Telemetry.UpdateAgentCommit

This event collects information regarding the commit phase of the new UUP (Unified Update Platform) update scenario, which is leveraged by both Mobile and Desktop. 

The following fields are available:

- **ErrorCode**  The error code returned for the current install phase. 
- **FlightId**  Unique ID for each flight. 
- **ObjectId**  Unique value for each Update Agent mode. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **Result**  Outcome of the install phase of the update. 
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each update attempt. 
- **UpdateId**  Unique ID for each update. 


### Update360Telemetry.UpdateAgentDownloadRequest

  The UpdateAgent_DownloadRequest event sends data for the download request phase of updating Windows via the new UUP (Unified Update Platform) scenario. Applicable to PC and Mobile.

The following fields are available:

- **DeletedCorruptFiles**  Boolean indicating whether corrupt payload was deleted. 
- **ErrorCode**  The error code returned for the current download request phase.
- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique value for each Update Agent mode (same concept as InstanceId for Setup360)
- **PackageCountOptional**  Number of optional packages requested. 
- **PackageCountRequired**  Number of required packages requested.
- **PackageCountTotal**  Total number of packages needed. 
- **PackageCountTotalCanonical**  Total number of canonical packages.
- **PackageCountTotalDiff**  Total number of diff packages. 
- **PackageCountTotalExpress**  Total number of express packages.
- **PackageSizeCanonical**  Size of canonical packages in bytes.
- **PackageSizeDiff**  Size of diff packages in bytes. 
- **PackageSizeExpress**  Size of express packages in bytes.
- **RangeRequestState**  Indicates the range request type used. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Outcome of the download request phase of update.
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each attempt (same value for initialize, download, install commit phases)
- **UpdateId**  Unique ID for each update.
- **PackageExpressType**  Type of express package.


### Update360Telemetry.UpdateAgentExpand

  This event collects information regarding the expansion phase of the new UUP (Unified Update Platform) update scenario; which is leveraged by both Mobile and Desktop. 

The following fields are available:

- **ElapsedTickCount**  Time taken for expand phase. 
- **EndFreeSpace**  Free space after expand phase. 
- **EndSandboxSize**  Sandbox size after expand phase. 
- **ErrorCode**  The error code returned for the current install phase. 
- **FlightId**  Unique ID for each flight. 
- **ObjectId**  Unique value for each Update Agent mode. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each update attempt. 
- **StartFreeSpace**  Free space before expand phase. 
- **StartSandboxSize**  Sandbox size after expand phase. 
- **UpdateId**  Unique ID for each update. 


### Update360Telemetry.UpdateAgentFellBackToCanonical

This event collects information when express could not be used and we fall back to canonical during the new UUP (Unified Update Platform) update scenario, which is leveraged by both Mobile and Desktop. 

The following fields are available:

- **FlightId**  The error code returned for the current install phase. 
- **ObjectId**  Unique value for each Update Agent mode. 
- **PackageCount**  Number of packages that feel back to canonical. 
- **PackageList**  PackageIds which fell back to canonical. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each update attempt. 
- **UpdateId**  Unique ID for each update. 


### Update360Telemetry.UpdateAgentInitialize

  The UpdateAgentInitialize event sends data for the initialize phase of updating Windows via the new UUP (Unified Update Platform) scenario. Applicable to both PCs and Mobile. 

The following fields are available:

- **ErrorCode**  The error code returned for the current install phase.  
- **FlightId**  Unique ID for each flight. 
- **FlightMetadata**  Contains the FlightId and the build being flighted. 
- **ObjectId**  Unique value for each Update Agent mode. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Outcome of the install phase of the update. 
- **ScenarioId**  Unique value for each update attempt.  
- **SessionData**  String containing instructions to update agent for processing FODs and DUICs (Null for other scenarios).  
- **SessionId**  Unique value for each update attempt.  
- **UpdateId**  Unique ID for each update. 


### Update360Telemetry.UpdateAgentInstall

The UpdateAgentInstall event sends data for the install phase of updating Windows. 

The following fields are available:

- **ErrorCode**  The error code returned for the current install phase.
- **FlightId**  Unique value for each Update Agent mode (same concept as InstanceId for Setup360). 
- **ObjectId**  Correlation vector value generated from the latest USO scan. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **Result**  The result for the current install phase.
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each update attempt. 
- **UpdateId**  Unique ID for each update. 


### Update360Telemetry.UpdateAgentMerge

The UpdateAgentMerge event sends data on the merge phase when updating Windows.

The following fields are available:

- **ErrorCode**  The error code returned for the current merge phase. 
- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique value for each Update Agent mode. 
- **RelatedCV**  Related correlation vector value. 
- **Result**  Outcome of the merge phase of the update. 
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each attempt. 
- **UpdateId**  Unique ID for each update. 


### Update360Telemetry.UpdateAgentModeStart

The UpdateAgentModeStart event sends data for the start of each mode during the process of updating Windows via the new UUP (Unified Update Platform) scenario. Applicable to both PCs and Mobile.

The following fields are available:

- **FlightId**  Unique ID for each flight. 
- **Mode**  Indicates the mode that has started. 
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each update attempt. 
- **UpdateId**  Unique ID for each update.
- **Version**  Version of update


### Update360Telemetry.UpdateAgentPostRebootResult

This event collects information for both Mobile and Desktop regarding the post reboot phase of the new UUP (Unified Update Platform) update scenario

The following fields are available:

- **ErrorCode**  The error code returned for the current post reboot phase
- **FlightId**  The unique identifier for each flight
- **ObjectId**  Unique value for each Update Agent mode
- **PostRebootResult**  Indicates the Hresult
- **RelatedCV**  Correlation vector value generated from the latest USO scan
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **SessionId**  Unique value for each Update Agent mode attempt
- **UpdateId**  Unique ID for each update


### Update360Telemetry.UpdateAgentSetupBoxLaunch

The UpdateAgent_SetupBoxLaunch event sends data for the launching of the setup box when updating Windows via the new UUP (Unified Update Plaform) scenario. This event is only applicable to PCs. 

The following fields are available:

- **FlightId**  Unique ID for each flight. 
- **FreeSpace**  Free space on OS partition. 
- **InstallCount**  Number of install attempts using the same sandbox. 
- **ObjectId**  Unique value for each Update Agent mode. 
- **Quiet**  Indicates whether setup is running in quiet mode. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **SandboxSize**  Size of the sandbox. 
- **ScenarioId**  Indicates the update scenario. 
- **SessionId**  Unique value for each update attempt.  
- **SetupMode**  Mode of setup to be launched. 
- **UpdateId**  Unique ID for each Update.  
- **UserSession**  Indicates whether install was invoked by user actions. 
- **ContainsExpressPackage**  Indicates whether the download package is express.


## Update notification events

### Microsoft.Windows.UpdateNotificationPipeline.JavascriptJavascriptCriticalGenericMessage

Event to indicate that Javascript is reporting a schema and a set of values for critical telemetry.

The following fields are available:

- **CampaignConfigVersion**  Config version of current campaign
- **CampaignID**  Currently running campaign on UNP
- **ConfigCatalogVersion**  Current catalog version of UNP
- **ContentVersion**  Content version of the current campaign on UNP
- **CV**  Correlation vector
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user
- **key1**  UI interaction data
- **key10**  UI interaction data
- **key11**  UI interaction data
- **key12**  UI interaction data
- **key13**  UI interaction data
- **key14**  UI interaction data
- **key15**  UI interaction data
- **key16**  UI interaction data
- **key17**  UI interaction data
- **key2**  UI interaction data
- **key3**  UI interaction data
- **key4**  UI interaction data
- **key5**  UI interaction data
- **key6**  UI interaction data
- **key7**  Interaction data for the UI
- **key8**  Interaction data for the UI
- **key9**  UI interaction data
- **PackageVersion**  Current package version of UNP
- **schema**  UI interaction type
- **key18**  UI interaction data
- **key19**  UI interaction data
- **key20**  UI interaction data
- **key21**  Interaction data for the UI
- **key22**  UI interaction data
- **key23**  UI interaction data
- **key24**  UI interaction data
- **key25**  UI interaction data
- **key26**  UI interaction data
- **key27**  UI interaction data
- **key28**  Interaction data for the UI
- **key29**  UI interaction data
- **key30**  UI interaction data


### Microsoft.Windows.UpdateNotificationPipeline.UNPCampaignHeartbeat

This event is sent at the start of each campaign, to be used as a heartbeat

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign
- **CampaignID**  Currently campaign that's running on UNP
- **ConfigCatalogVersion**  Current catalog version of UNP
- **ContentVersion**  Content version for the current campaign on UNP
- **CV**  Correlation vector
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user
- **PackageVersion**  Current UNP package version


### Microsoft.Windows.UpdateNotificationPipeline.UNPCampaignManagerCleaningCampaign

This event indicates that the Campaign Manager is cleaning up the campaign content

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign
- **CampaignID**  Current campaign that's running on UNP
- **ConfigCatalogVersion**  Current catalog version of UNP
- **ContentVersion**  Content version for the current campaign on UNP
- **CV**  Correlation vector
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user
- **PackageVersion**  Current UNP package version


### Microsoft.Windows.UpdateNotificationPipeline.UNPCampaignManagerHeartbeat

This event is sent at the start of the CampaignManager event and is intended to be used as a heartbeat

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign
- **CampaignID**  Currently campaign that's running on UNP
- **ConfigCatalogVersion**  Current catalog version of UNP
- **ContentVersion**  Content version for the current campaign on UNP
- **CV**  Correlation vector
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user
- **PackageVersion**  Current UNP package version


### Microsoft.Windows.UpdateNotificationPipeline.UnpCampaignManagerGetIsCamppaignCompleteFailed

This event is sent when a campaign completion status query fails

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign
- **CampaignID**  Current campaign that's running on UNP
- **ConfigCatalogVersion**  Current catalog version of UNP
- **ContentVersion**  Content version for the current campaign on UNP
- **CV**  Correlation vector
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user
- **hresult**  HRESULT of the failure
- **PackageVersion**  Current UNP package version


### Microsoft.Windows.UpdateNotificationPipeline.UnpCampaignManagerRunCampaignFailed

This event is sent when the Campaign Manager encounters an unexpected error while running the campaign

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign
- **CampaignID**  Currently campaign that's running on UNP
- **ConfigCatalogVersion**  Current catalog version of UNP
- **ContentVersion**  Content version for the current campaign on UNP
- **CV**  Correlation vector
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user
- **hresult**  HRESULT of the failure 
- **PackageVersion**  Current UNP package version


## Upgrade events

### Setup360Telemetry.Downlevel

This event sends data indicating that the device has invoked the downlevel phase of the upgrade. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **ClientId**  If using Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, the default value is Media360, but it can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the downlevel OS.
- **HostOsSkuName**  The operating system edition which is running Setup360 instance (downlevel OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  In the Windows Update scenario, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. It's an HRESULT error code that can be used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of the target OS).
- **State**  Exit state of given Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string that uniquely identifies a group of events.
- **WuId**  This is the Windows Update Client ID. In the Windows Update scenario, this is the same as the clientId.
- **FlightData**  Unique value that identifies the flight.


### Setup360Telemetry.Finalize

This event sends data indicating that the device has invoked the finalize phase of the upgrade, to help keep Windows up-to-date.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightData**  Unique value that identifies the flight.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


### Setup360Telemetry.OsUninstall

The event sends data regarding OS updates and upgrades from Windows 7, Windows 8, and Windows 10. Specifically, the Setup360Telemetry.OSUninstall indicates the outcome of an OS uninstall.

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  Exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  Windows Update client ID.
- **FlightData**  Unique value that identifies the flight.


### Setup360Telemetry.PostRebootInstall

This event sends data indicating that the device has invoked the postrebootinstall phase of the upgrade, to help keep Windows up-to-date.

The following fields are available:

- **ClientId**  With Windows Update, this is the Windows Update client ID that is passed to Setup. In Media setup, the default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that's used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as ClientId.
- **FlightData**  Unique value that identifies the flight.


### Setup360Telemetry.PreDownloadQuiet

This event sends data indicating that the device has invoked the predownload quiet phase of the upgrade, to help keep Windows up to date.

The following fields are available:

- **ClientId**  Using Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightData**  Unique value that identifies the flight.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous operating system).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  Using Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, canceled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. Using Windows Update, this is the same as the clientId.


### Setup360Telemetry.PreDownloadUX

This event sends data regarding OS Updates and Upgrades from Windows 7.X, Windows 8.X, Windows 10 and RS.  Specifically the Setup360Telemetry.PredownloadUX indicates the outcome of the PredownloadUX portion of the update process

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous operating system.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous operating system).
- **InstanceId**  Unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Examplle: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of the target OS).
- **State**  The exit state of the Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  Windows Update client ID.
- **FlightData**  In the WU scenario, this will be the WU client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.


### Setup360Telemetry.PreInstallQuiet

This event sends data indicating that the device has invoked the preinstall quiet phase of the upgrade, to help keep Windows up to date.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback etc.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used to diagnose errors.
- **Setup360Scenario**  Setup360 flow type (Boot, Media, Update, MCT)
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.
- **FlightData**  Unique value that identifies the flight.


### Setup360Telemetry.PreInstallUX

This event sends data regarding OS updates and upgrades from Windows 7, Windows 8, and Windows 10.  Specifically, the Setup360Telemetry.PreinstallUX indicates the outcome of the PreinstallUX portion of the update process.

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type, Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  Windows Update client ID.
- **FlightData**  Unique value that identifies the flight.


### Setup360Telemetry.Setup360

This event sends data about OS deployment scenarios, to help keep Windows up-to-date.

The following fields are available:

- **FieldName**  Retrieves the data point.
- **FlightData**  Specifies a unique identifier for each group of Windows Insider builds.
- **InstanceId**  Retrieves a unique identifier for each instance of a setup session.
- **ReportId**  Retrieves the report ID.
- **ScenarioId**  Retrieves the deployment scenario.
- **Value**  Retrieves the value associated with the corresponding FieldName.
- **ClientId**  Retrieves the upgrade ID: Upgrades via Windows Update - specifies the WU clientID. All other deployment - static string.


### Setup360Telemetry.UnexpectedEvent

This event sends data indicating that the device has invoked the unexpected event phase of the upgrade, to help keep Windows up to date.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Extension of result - more granular information about phase/action when the potential failure happened
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.
- **FlightData**  Unique value that identifies the flight.


## Windows as a Service diagnostic events

### Microsoft.Windows.WaaSMedic.SummaryEvent

Result of the WaaSMedic operation.

The following fields are available:

- **detectionSummary**  Result of each applicable detection that was ran.
- **featureAssessmentImpact**  WaaS Assessment impact for feature updates.
- **hrEngineResult**  Error code from the engine operation.
- **isManaged**  Device is managed for updates.
- **isWUConnected**  Device is connected to Windows Update.
- **noMoreActions**  No more applicable diagnostics.
- **qualityAssessmentImpact**  WaaS Assessment impact for quality updates. 
- **remediationSummary**  Result of each applicable resolution that was ran.
- **usingBackupFeatureAssessment**  Relying on backup feature assessment. 
- **usingBackupQualityAssessment**  Relying on backup quality assessment.
- **versionString**  Version of the WaaSMedic engine. 
- **usingCachedFeatureAssessment**  WaaS Medic run did not get OS build age from the network on the previous run.
- **usingCachedQualityAssessment**  WaaS Medic run did not get OS revision age from the network on the previous run.
- **insufficientSessions**  Device not eligible for diagnostics.


## Windows Error Reporting events

## Windows Error Reporting MTT events

### Microsoft.Windows.WER.MTT.Denominator

This event provides a denominator to calculate MTTF (mean-time-to-failure) for crashes and other errors to help keep Windows up to date.

The following fields are available:

- **Value**  Standard UTC emitted DP value structure


## Windows Update CSP events

### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureFailed

The Execute Rollback Feature Failed event sends basic telemetry on the failure of the Feature Rollback. This functionality supports our feature by providing IT Admins the ability to see the operation failed, allowing them to do further triage of the device.

The following fields are available:

- **current**  Result of currency check
- **dismOperationSucceeded**  Dism uninstall operation status
- **hResult**  Failure Error code
- **oSVersion**  Build number of the machine
- **paused**  Machine's pause status
- **rebootRequestSucceeded**  Reboot CSP call success status
- **wUfBConnected**  Result of WUfB connection check


### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureNotApplicable

The Execute Rollback Feature Not Applicable event sends basic telemetry on the applicability of the Feature Rollback, to support the functionality of Feature Rollback. This event provides critical information for the feature because it will alert IT Admins that devices they are attempting to rollback Features updates are not applicable.

The following fields are available:

- **current**  Result of currency check
- **dismOperationSucceeded**  Dism uninstall operation status
- **oSVersion**  Build number of the machine
- **paused**  Machine's pause status
- **rebootRequestSucceeded**  Reboot CSP call success status
- **wUfBConnected**  Result of WUfB connection check


### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureStarted

The Execute Rollback Feature Started event sends basic information on the start process to provide information that the Feature Rollback has started.



### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureSucceeded

The Execute Rollback Feature Succeed event sends basic telemetry on the success of the Rollback of the Feature updates. This functionality supports our feature by providing insights to IT Admins of the success of the Feature rollback.



### Microsoft.Windows.UpdateCsp.ExecuteRollBackQualityFailed

The Execute Rollback Quality Failed event sends basic telemetry on the failure of the rollback of the Quality/LCU builds. This functionality supports our feature by providing IT Admins the ability to see the operation failed allowing them to do further triage of the device.

The following fields are available:

- **current**  Result of currency check
- **dismOperationSucceeded**  Dism uninstall operation status
- **hResult**  Failure Error code
- **oSVersion**  Build number of the machine
- **paused**  Machine's pause status
- **rebootRequestSucceeded**  Reboot CSP call success status
- **wUfBConnected**  Result of WUfB connection check


### Microsoft.Windows.UpdateCsp.ExecuteRollBackQualityNotApplicable

The Execute Rollback Quality Not Applicable event sends basic telemetry on the applicability of the Quality Rollback, to support the functionality of Quality Rollback. This event provides critical information for feature because it will alert IT Admins that devices they are attempting to rollback Quality updates are not applicable.

The following fields are available:

- **current**  Result of currency check
- **dismOperationSucceeded**  Dism uninstall operation status
- **oSVersion**  Build number of the machine
- **paused**  Machine's pause status
- **rebootRequestSucceeded**  Reboot CSP call success status
- **wUfBConnected**  Result of WUfB connection check


### Microsoft.Windows.UpdateCsp.ExecuteRollBackQualityStarted

The Execute Rollback Quality Started event sends basic information on the start process to provide information that the Quality Rollback has started.



### Microsoft.Windows.UpdateCsp.ExecuteRollBackQualitySucceeded

The Execute Rollback Quality Succeed event sends basic telemetry on the success of the rollback of the Quality/LCU builds. This functionality supports our feature by providing insights to IT Admins of the success of the Quality rollback.



## Windows Update Delivery Optimization events

### Microsoft.OSG.DU.DeliveryOptClient.DownloadStarted

This event sends data describing the start of a new download to enable Delivery Optimization. It's used to understand and address problems regarding downloads.

The following fields are available:

- **background**  If the download is happening in the background
- **bytesRequested**  Number of bytes requested for download.
- **cdnUrl**  Number of bytes requested for download
- **costFlags**  Url of the source CDN
- **deviceProfile**  Network cost flags
- **diceRoll**  Identifies the usage or form factor (Desktop, Xbox, VM, etc)
- **doClientVersion**  Random number used for determining if a client will use peering
- **doErrorCode**  Version of the Delivery Optimization client
- **downloadMode**  Delivery Optimization error code returned
- **downloadModeSrc**  DownloadMode used (CdnOnly = 0, Lan = 1, Group = 2, Internet = 3, Simple = 99, Bypass = 100)
- **errorCode**  Source of the DownloadMode setting (KvsProvider: 0, GeoProvider: 1, GeoVerProvider: 2, CpProvider: 3, DiscoveryProvider: 4, RegistryProvider: 5, GroupPolicyProvider: 6, MdmProvider: 7, SettingsProvider: 8, InvalidProviderType: 9)
- **experimentId**  Error code returned
- **fileID**  Used to correlate client/services calls that are part of the same test during A/B testing
- **filePath**  ID of the File being downloaded
- **fileSize**  Path to where the downloaded file will be written
- **fileSizeCaller**  Total filesize of the file that was downloaded
- **groupID**  Value for total file size provided by our caller
- **isVpn**  ID for the group
- **jobID**  If the machine is connected to a Virtual Private Network
- **peerID**  Minimum filesize policy set for the device to allow Peering with Delivery Optimization
- **predefinedCallerName**  Name of the API caller
- **sessionID**  Name of the API Caller
- **setConfigs**  ID of the Update being downloaded
- **updateID**  ID for the file download session
- **usedMemoryStream**  ID of the Update being downloaded
- **callerName**  Name of the API Caller
- **minDiskSizeGB**  Identifier for the Windows Update Job
- **minDiskSizePolicyEnforced**  The minimum disk size policy set for the device to allow Peering with Delivery Optimization
- **minFileSizePolicy**  If there is an enforced mininum disk size requirement for peering
- **scenarioID**  ID for the Scenario
- **isEncrypted**  Whether the download is encrypted


## Windows Update events

### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentAnalysisSummary

This event collects information regarding the state of devices and drivers on the system following a reboot after the install phase of the new device manifest UUP (Unified Update Platform) update scenario which is used to install a device manifest describing a set of driver packages.

The following fields are available:

- **activated**  Whether the entire device manifest update is considered activated and in use.
- **analysisErrorCount**  How many driver packages that could not be analyzed because errors were hit during the analysis.
- **flightId**  Unique ID for each flight. 
- **missingDriverCount**  How many driver packages that were delivered by the device manifest that are missing from the system.
- **missingUpdateCount**  How many updates that were part of the device manifest that are missing from the system.
- **objectId**  Unique value for each diagnostics session. 
- **publishedCount**  How many drivers packages that were delivered by the device manifest that are published and available to be used on devices.
- **relatedCV**  Correlation vector value generated from the latest USO scan. 
- **scenarioId**  Indicates the update scenario. 
- **sessionId**  Unique value for each update session. 
- **summary**  A summary string that contains some basic information about driver packages that are part of the device manifest and any devices on the system that those driver packages match on.
- **summaryAppendError**  A Boolean indicating if there was an error appending more information to the summary string.
- **truncatedDeviceCount**  How many devices are missing from the summary string due to there not being enough room in the string.
- **truncatedDriverCount**  How many driver packages are missing from the summary string due to there not being enough room in the string.
- **unpublishedCount**  How many drivers packages that were delivered by the device manifest that are still unpublished and unavailable to be used on devices.
- **updateId**  Unique ID for each Update. 


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentCommit

This event collects information regarding the final commit phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages

The following fields are available:

- **errorCode**  The error code returned for the current session initialization
- **flightId**  The unique identifier for each flight
- **objectId**  The unique GUID for each diagnostics session
- **relatedCV**  A correlation vector value, generated from the latest USO scan
- **result**  Outcome of the initialization of the session
- **scenarioId**  Identifies the Update scenario
- **sessionId**  The unique value for each update session
- **updateId**  The unique identifier for each Update


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentDownloadRequest

This event collects information regarding the download request phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages

The following fields are available:

- **deletedCorruptFiles**  Indicates if UpdateAgent found any corrupt payload files and whether the payload was deleted
- **errorCode**  The error code returned for the current session initialization
- **flightId**  The unique identifier for each flight
- **objectId**  Unique value for each Update Agent mode
- **packageCountOptional**  Number of optional packages requested
- **packageCountRequired**  Number of required packages requested
- **packageCountTotal**  Total number of packages needed
- **packageCountTotalCanonical**  Total number of canonical packages
- **packageCountTotalDiff**  Total number of diff packages
- **packageCountTotalExpress**  Total number of express packages
- **packageSizeCanonical**  Size of canonical packages in bytes
- **packageSizeDiff**  Size of diff packages in bytes
- **packageSizeExpress**  Size of express packages in bytes
- **rangeRequestState**  Represents the state of the download range request
- **relatedCV**  Correlation vector value generated from the latest USO scan
- **result**  Result of the download request phase of update
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **sessionId**  Unique value for each Update Agent mode attempt
- **updateId**  Unique ID for each update


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentInitialize

This event sends data for initializing a new update session for the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages

The following fields are available:

- **errorCode**  The error code returned for the current initialize phase
- **flightId**  The unique identifier for each flight
- **flightMetadata**  Contains the FlightId and the build being flighted
- **objectId**  Unique value for each Update Agent mode
- **relatedCV**  Correlation vector value generated from the latest USO scan
- **result**  Result of the initialize phase of update. 0 = Succeeded, 1 = Failed, 2 = Cancelled, 3 = Blocked, 4 = BlockCancelled
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate 
- **sessionData**  Contains instructions to update agent for processing FODs and DUICs (Null for other scenarios)
- **sessionId**  Unique value for each Update Agent mode attempt 
- **updateId**  Unique ID for each update


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentInstall

This event collects information regarding the install phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages

The following fields are available:

- **errorCode**  The error code returned for the current install phase
- **flightId**  The unique identifier for each flight
- **objectId**  Unique value for each Update Agent mode
- **relatedCV**  Correlation vector value generated from the latest scan
- **result**  Result of the install phase of update. 0 = Succeeded 1 = Failed, 2 = Cancelled, 3 = Blocked, 4 = BlockCancelled
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **sessionId**  Unique value for each Update Agent mode attempt
- **updateId**  Unique ID for each update


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentModeStart

This event sends data for the start of each mode during the process of updating device manifest assets via the UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages.

The following fields are available:

- **flightId**  The unique identifier for each flight
- **mode**  Indicates that the Update Agent mode that has started. 1 = Initialize, 2 = DownloadRequest, 3 = Install, 4 = Commit
- **objectId**  Unique value for each Update Agent mode
- **relatedCV**  Correlation vector value generated from the latest scan
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **sessionId**  Unique value for each Update Agent mode attempt
- **updateId**  Unique ID for each update


### Microsoft.Windows.Update.NotificationUx.DialogNotificationToBeDisplayed

Dialog notification about to be displayed to user.

The following fields are available:

- **AcceptAutoModeLimit**  Maximum number of days for a device to automatically enter Auto Reboot mode 
- **AutoToAutoFailedLimit**  Maximum number of days for Auto Reboot mode to fail before RebootFailed dialog will be shown 
- **DeviceLocalTime**  Time of dialog shown on local device 
- **EngagedModeLimit**  Number of days to switch between DTE dialogs 
- **EnterAutoModeLimit**  Maximum number of days for a device to enter Auto Reboot mode 
- **ETag**  OneSettings versioning value 
- **IsForcedEnabled**  Is Forced Reboot mode enabled for this device?
- **IsUltimateForcedEnabled**  Is Ultimate Forced Reboot mode enabled for this device?
- **NotificationUxState**  Which dialog is shown (ENUM)?
- **NotificationUxStateString**  Which dialog is shown (string mapping)?
- **RebootUxState**  Engaged/Auto/Forced/UltimateForced 
- **RebootUxStateString**  Engaged/Auto/Forced/UltimateForced 
- **RebootVersion**  Version of DTE 
- **SkipToAutoModeLimit**  The minimum length of time to pass in reboot pending before a machine can be put into auto mode
- **UpdateId**  The ID of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UtcTime**  The Coordinated Universal Time when the dialog notification will be displayed.
- **DaysSinceRebootRequired**  Number of days since reboot was required.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootAcceptAutoDialog

Enhanced Engaged reboot accept auto dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Local time of the device sending the event 
- **ETag**  OneSettings ETag 
- **ExitCode**  Dialog exit code - user response 
- **RebootVersion**  Reboot flow version 
- **UpdateId**  Id of pending update 
- **UpdateRevision**  Revision number of the pending update 
- **UserResponseString**  User response to the reboot dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootFirstReminderDialog

Enhanced Engaged reboot first reminder dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Time of dialog shown on local device 
- **ETag**  OneSettings versioning value 
- **ExitCode**  Indicates how users exited the dialog 
- **RebootVersion**  Version of DTE 
- **UpdateId**  The id of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UserResponseString**  The option that user chose on this dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootForcedPrecursorDialog

Enhanced Engaged reboot forced precursor dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Time of dialog shown on local device 
- **ETag**  OneSettings versioning value 
- **ExitCode**  Indicates how users exited the dialog 
- **RebootVersion**  Version of DTE 
- **UpdateId**  The id of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UserResponseString**  The option that user chose on this dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootForcedWarningDialog

Enhanced Engaged forced warning dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Time of dialog shown on local device 
- **ETag**  OneSettings versioning value 
- **ExitCode**  Indicates how users exited the dialog 
- **RebootVersion**  Version of DTE 
- **UpdateId**  The id of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UserResponseString**  The option that user chose on this dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootRebootFailedDialog

Enhanced Engaged reboot reboot failed dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Dialog exit code - user response
- **ETag**  OneSettings versioning value 
- **ExitCode**  Indicates how users exited the dialog 
- **RebootVersion**  Version of DTE 
- **UpdateId**  The ID of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UserResponseString**  The option that user chose on this dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootRebootImminentDialog

Enhanced Engaged reboot reboot imminent dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Time of dialog shown on local device 
- **ETag**  OneSettings versioning value 
- **ExitCode**  Indicates how users exited the dialog 
- **RebootVersion**  Version of DTE 
- **UpdateId**  The ID of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UserResponseString**  The option that user chose on this dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootSecondReminderDialog

Enhanced Engaged reboot second reminder dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Time of dialog shown on local device 
- **ETag**  OneSettings versioning value 
- **ExitCode**  Indicates how users exited the dialog 
- **RebootVersion**  Version of DTE 
- **UpdateId**  The ID of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UserResponseString**  The option that user chose on this dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootThirdReminderDialog

Enhanced Engaged reboot third reminder dialog was displayed.

The following fields are available:

- **DeviceLocalTime**  Time of dialog shown on local device 
- **ETag**  OneSettings versioning value 
- **ExitCode**  Indicates how users exited the dialog 
- **RebootVersion**  Version of DTE 
- **UpdateId**  The ID of the update that is pending reboot to finish installation 
- **UpdateRevision**  The revision of the update that is pending reboot to finish installation 
- **UserResponseString**  The option that user chose on this dialog 
- **UtcTime**  The Coordinated Universal Time that dialog was displayed


### Microsoft.Windows.Update.NotificationUx.RebootScheduled

Indicates when a reboot is scheduled by the system or a user for a security, quality, or feature update

The following fields are available:

- **activeHoursApplicable**  True, If Active Hours applicable on this device. False, otherwise
- **rebootArgument**  Argument for the reboot task. It also represents specific reboot related action
- **rebootOutsideOfActiveHours**  True, if a reboot is scheduled outside of active hours. False, otherwise
- **rebootScheduledByUser**  True, if a reboot is scheduled by user. False, if a reboot is scheduled automatically
- **rebootState**  The state of the reboot
- **revisionNumber**  Revision number of the update that is getting installed with this reboot
- **scheduledRebootTime**  Time of the scheduled reboot
- **scheduledRebootTimeInUTC**  Time of the scheduled reboot in Coordinated Universal Time
- **updateId**  ID of the update that is getting installed with this reboot
- **wuDeviceid**  Unique device ID used by Windows Update
- **IsEnhancedEngagedReboot**  Whether this is an Enhanced Engaged reboot


### Microsoft.Windows.Update.Orchestrator.ActivityRestrictedByActiveHoursPolicy

A policy is present that may restrict update activity to outside of active hours.

The following fields are available:

- **activeHoursEnd**  The end of the active hours window
- **activeHoursStart**  The start of the active hours window
- **wuDeviceid**  Device ID


### Microsoft.Windows.Update.Orchestrator.BlockedByActiveHours

Update activity blocked due to active hours being currently active.

The following fields are available:

- **blockReason**  The current state of the update process
- **updatePhase**  The current state of the update process
- **wuDeviceid**  Device ID
- **activeHoursEnd**  The end of the active hours window
- **activeHoursStart**  The start of the active hours window


### Microsoft.Windows.Update.Orchestrator.BlockedByBatteryLevel

Update activity blocked due to low battery level.

The following fields are available:

- **batteryLevel**  The current battery charge capacitity
- **batteryLevelThreshold**  The battery capacity threshold to stop update activity
- **blockReason**  The current state of the update process
- **updatePhase**  The current state of the update process
- **wuDeviceid**  Device ID


### Microsoft.Windows.Update.Orchestrator.CommitFailed

This events tracks when a device needs to restart after an update but did not.

The following fields are available:

- **errorCode**  The error code that was returned.
- **wuDeviceid**  The Windows Update device GUID.


### Microsoft.Windows.Update.Orchestrator.DTUCompletedWhenWuFlightPendingCommit

Event to indicate that DTU completed installation of the ESD, when WU was already Pending Commit of the feature update.

The following fields are available:

- **wuDeviceid**  Device ID used by WU 


### Microsoft.Windows.Update.Orchestrator.DTUEnabled

Inbox DTU functionality enabled.

The following fields are available:

- **wuDeviceid**  Device ID.


### Microsoft.Windows.Update.Orchestrator.DTUInitiated

Inbox DTU functionality intiated.

The following fields are available:

- **dtuErrorCode**  Return code from creating the DTU Com Server.
- **isDtuApplicable**  Determination of whether DTU is applicable to the machine it is running on.
- **wuDeviceid**  Return code from creating the DTU Com Server.


### Microsoft.Windows.Update.Orchestrator.DeferRestart

Indicates that a restart required for installing updates was postponed.

The following fields are available:

- **displayNeededReason**  Semicolon-separated list of reasons reported for display needed
- **eventScenario**  Indicates the purpose of the event - whether because scan started, succeded, failed, etc
- **filteredDeferReason**  The raised reason that the USO did not restart (e.g. user active, low battery) that were ignorable
- **gameModeReason**  Name of the executable that caused the game mode state check to trigger.
- **ignoredReason**  Semicolon-separated list of reasons that were intentionally ignored.
- **revisionNumber**  Update ID revision number
- **systemNeededReason**  Semicolon-separated list of reasons reported for system needed.
- **updateId**  Update ID
- **updateScenarioType**  Update session type
- **wuDeviceid**  Windows Update Device GUID
- **raisedDeferReason**  The reason that the USO did not restart (e.g. user active, low battery)


### Microsoft.Windows.Update.Orchestrator.Detection

A scan for an update occurred.

The following fields are available:

- **detectionBlockingPolicy**  State of update action
- **detectionBlockreason**  Reason for detection not completing.
- **eventScenario**  End to end update session ID, or indicates the purpose of sending this event - whether because the software distribution just started installing content, or whether it was cancelled, succeeded, or failed.
- **interactive**  Identifies if session is User Initiated.
- **scanTriggerSource**  Source of the triggered scan.
- **updateScenarioType**  The update session type.
- **wuDeviceid**  Unique device ID used by Windows Update.
- **detectionRetryMode**  If we retry to scan
- **errorCode**  The returned error code.
- **deferReason**  Reason for postponing detection 
- **flightID**  Flight info 
- **revisionNumber**  Update version 
- **updateId**  Update ID - GUID 
- **networkStatus**  Error info


### Microsoft.Windows.Update.Orchestrator.DisplayNeeded

Reboot postponed due to needing a display

The following fields are available:

- **displayNeededReason**  Reason the display is needed
- **eventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed
- **rebootOutsideOfActiveHours**  Indicates the timing that the reboot was to occur to ensure the correct update process and experience is provided to keep Windows up to date
- **revisionNumber**  Revision number of the update
- **updateId**  Update ID
- **updateScenarioType**  The update session type
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date
- **wuDeviceid**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue


### Microsoft.Windows.Update.Orchestrator.Download

This event sends launch data for a Windows Update download to help keep Windows up to date.

The following fields are available:

- **deferReason**  Reason for download not completing
- **errorCode**  An error code represented as a hexadecimal value
- **eventScenario**  End to end update session ID.
- **flightID**  Unique update ID.
- **interactive**  Identifies if session is user initiated.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.Escalation

Event sent when USO takes an Escalation action on device.

The following fields are available:

- **configVersion**  Escalation config version on device 
- **escalationAction**  Indicate the specific escalation action that took place on device
- **updateClassificationGUID**  GUID of the update the device is offered
- **updateId**  ID of the update the device is offered
- **wuDeviceid**  Device ID used by WU


### Microsoft.Windows.Update.Orchestrator.EscalationRiskLevels

Event sent during update scan, download, install. Indicates that the device is at risk of being out-of-date.

The following fields are available:

- **configVersion**  Escalation config version on device
- **downloadElapsedTime**  How long since the download is required on device
- **downloadRiskLevel**  At-risk level of download phase
- **installElapsedTime**  How long since the install is required on device
- **installRiskLevel**  At-risk level of install phase
- **isSediment**  WaaSmedic's assessment of whether is device is at risk or not
- **scanElapsedTime**  How long since the scan is required on device
- **scanRiskLevel**  At-risk level of scan phase
- **wuDeviceid**  Device id used by WU


### Microsoft.Windows.Update.Orchestrator.EscalationsRefreshFailed

USO has a set of escalation actions to prevent a device from becoming out-of-date, and the actions are triggered based on the Escalation config that USO obtains from OneSettings. This event is sent when USO fails to refresh the escalation config from OneSettings.

The following fields are available:

- **configVersion**  Current escalation config version on device
- **errorCode**  Error code for the refresh failure
- **wuDeviceid**  Device ID used by WU


### Microsoft.Windows.Update.Orchestrator.FlightInapplicable

The Update is no longer Applicable to this device

The following fields are available:

- **EventPublishedTime**  Flight specific info
- **flightID**  Update ID revision number
- **revisionNumber**  Update ID - GUID
- **updateId**  Update session type
- **updateScenarioType**  Last status of update
- **UpdateStatus**  Is UUP fallback configured?
- **UUPFallBackConfigured**  Windows Update Device GUID
- **wuDeviceid**  Windows Update Device GUID


### Microsoft.Windows.Update.Orchestrator.GameActive

This event indicates that an enabled GameMode process prevented the device from restarting to complete an update

The following fields are available:

- **eventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed
- **gameModeReason**  Name of the enabled GameMode process that prevented the device from restarting to complete an update
- **wuDeviceid**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue


### Microsoft.Windows.Update.Orchestrator.InitiatingReboot

This event sends data about an Orchestrator requesting a reboot from power management to help keep Windows up to date.

The following fields are available:

- **EventPublishedTime**  Time of the event.
- **flightID**  Unique update ID
- **interactive**  Indicates the reboot initiation stage of the update process was entered as a result of user action or not.
- **rebootOutsideOfActiveHours**  Indicates the timing that the reboot was to occur to ensure the correct update process and experience is provided to keep Windows up to date.
- **revisionNumber**  Revision number of the update.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.Install

This event sends launch data for a Windows Update install to help keep Windows up to date.

The following fields are available:

- **batteryLevel**  Current battery capacity in mWh or percentage left.
- **deferReason**  Reason for install not completing.
- **eventScenario**  End to end update session ID.
- **interactive**  Identifies if session is user initiated.
- **rebootOutsideOfActiveHours**  Indicates the timing that the reboot was to occur to ensure the correct update process and experience is provided to keep Windows up to date.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.
- **flightID**  Unique update ID
- **flightUpdate**  Flight update
- **ForcedRebootReminderSet**  A boolean value that indicates if a forced reboot will happen for updates.
- **installRebootinitiatetime**  The time it took for a reboot to be attempted.
- **minutesToCommit**  The time it took to install updates.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **errorCode**  The error code reppresented by a hexadecimal value.
- **installCommitfailedtime**  The time it took for a reboot to happen but the upgrade failed to progress.


### Microsoft.Windows.Update.Orchestrator.PostInstall

Event sent after Update install completes.

The following fields are available:

- **batteryLevel**  Battery level percentage  
- **bundleId**  Update ID - GUID  
- **bundleRevisionnumber**  Update ID revision number   
- **errorCode**  Error value 
- **eventScenario**  State of update action 
- **sessionType**  Update session type 
- **wuDeviceid**  Windows Update device GUID
- **flightID**  The flight ID of the device
- **updateScenarioType**  The scenario type of this update


### Microsoft.Windows.Update.Orchestrator.PowerMenuOptionsChanged

This event is sent when the options in power menu changed, usually due to an update pending reboot, or after a update is installed. 

The following fields are available:

- **powermenuNewOptions**  The new options after the power menu changed 
- **powermenuOldOptions**  The old options before the power menu changed 
- **rebootPendingMinutes**  If the power menu changed because a reboot is pending due to a update, how long that reboot has been pending 
- **wuDeviceid**  If the power menu changed because a reboot is pending due to a update, the device ID recorded by WU 


### Microsoft.Windows.Update.Orchestrator.PreShutdownStart

This event is generated right before the shutdown and commit operations

The following fields are available:

- **wuDeviceid**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue


### Microsoft.Windows.Update.Orchestrator.Progress

Event sent when the download of a update reaches a milestone change, such as network cost policy changed, a internal phase has completed, or a transient state has changed.

The following fields are available:

- **errorCode**  Error info
- **flightID**  Flight info
- **interactive**  Is USO session interactive or non-interactive?
- **networkCostPolicy**  The current network cost policy on device
- **revisionNumber**  Update ID revision number
- **updateId**  Update ID - GUID
- **updateScenarioType**  Update Session type
- **updateState**  Subphase of the download
- **UpdateStatus**  Subphase of the update
- **wuDeviceid**  Device ID


### Microsoft.Windows.Update.Orchestrator.RebootFailed

This event sends information about whether an update required a reboot and reasons for failure to help keep Windows up to date.

The following fields are available:

- **batteryLevel**  Current battery capacity in mWh or percentage left.
- **deferReason**  Reason for install not completing.
- **EventPublishedTime**  The time that the reboot failure occurred.
- **flightID**  Unique update ID.
- **rebootOutsideOfActiveHours**  Indicates the timing that the reboot was to occur to ensure the correct update process and experience is provided to keep Windows up to date.
- **RebootResults**  Hex code indicating failure reason. Typically, we expect this to be a specific USO generated hex code.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.RestoreRebootTask

This event sends data indicating that a reboot task is missing unexpectedly on a device and the task is restored because a reboot is still required, to help keep Windows up to date.

The following fields are available:

- **RebootTaskRestoredTime**  Time at which this reboot task was restored.
- **wuDeviceid**  Device id on which the reboot is restored


### Microsoft.Windows.Update.Orchestrator.ScanTriggered

Indicates that Update Orchestrator has started a scan operation.

The following fields are available:

- **errorCode**  Error info
- **eventScenario**  Indicates the purpose of sending this event
- **interactive**  Whether or not the scan is interactive.
- **isScanPastSla**  Has the SLA elapsed for scanning?
- **isScanPastTriggerSla**  Has the SLA elapsed for triggering a scan?
- **minutesOverScanSla**  How many minutes over the scan SLA is the scan?
- **minutesOverScanTriggerSla**  How many minutes over the scan trigger SLA is the scan?
- **scanTriggerSource**  What caused the scan?
- **updateScenarioType**  The type of scenario we are in.
- **wuDeviceid**  WU Device ID of the machine.


### Microsoft.Windows.Update.Orchestrator.SystemNeeded

This event sends data about why a device is unable to reboot, to help keep Windows up to date.

The following fields are available:

- **eventScenario**  End to end update session ID.
- **rebootOutsideOfActiveHours**  Indicates the timing that the reboot was to occur to ensure the correct update process and experience is provided to keep Windows up to date.
- **revisionNumber**  Update revision number.
- **systemNeededReason**  Reason ID
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.TerminatedByActiveHours

Update activity was stopped due to active hours starting.

The following fields are available:

- **activeHoursEnd**  The end of the active hours window
- **activeHoursStart**  The start of the active hours window
- **updatePhase**  The current state of the update process
- **wuDeviceid**  Device ID


### Microsoft.Windows.Update.Orchestrator.TerminatedByBatteryLevel

Update activity was stopped due to a low battery level.

The following fields are available:

- **batteryLevel**  The current battery charge capacity
- **batteryLevelThreshold**  The battery capacity threshold to stop update activity
- **updatePhase**  The current state of the update process
- **wuDeviceid**  Device ID


### Microsoft.Windows.Update.Orchestrator.UpdatePolicyCacheRefresh

This event sends data on whether Update Management Policies were enabled on a device, to help keep Windows up to date.

The following fields are available:

- **configuredPoliciescount**  Policy Count
- **policiesNamevaluesource**  Policy Name
- **policyCacherefreshtime**  Refresh time
- **updateInstalluxsetting**  This shows whether a user has set policies via UX option
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.UpdateRebootRequired

This event sends data about whether an update required a reboot to help keep Windows up to date.

The following fields are available:

- **flightID**  Unique update ID.
- **interactive**  Indicates the reboot initiation stage of the update process was entered as a result of user action or not.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Ux.MusNotification.RebootNoLongerNeeded

This event is sent when a security update has successfully completed.

The following fields are available:

- **UtcTime**  The Coordinated Universal Time that the restart was no longer needed.


### Microsoft.Windows.Update.Ux.MusNotification.RebootRequestReasonsToIgnore

This event is sent when the reboot can be deferred based on some reasons, before reboot attempts.

The following fields are available:

- **Reason**  The reason sent which will cause the reboot to defer.


### Microsoft.Windows.Update.Ux.MusNotification.RebootScheduled

The RebootScheduled event sends basic information for scheduling a update related reboot to facilitate the flow of getting security updates and keeping Windows up to date. 

The following fields are available:

- **activeHoursApplicable**  Whether Active Hours applies. 
- **rebootArgument**  The reboot arguments 
- **rebootOutsideOfActiveHours**  If reboot was outside of Active Hours
- **rebootScheduledByUser**  If the reboot was scheduled by the user, or the system. 
- **rebootState**  Which state the reboot is in
- **revisionNumber**  Revision number of the OS
- **scheduledRebootTime**  Time the reboot was scheduled for. 
- **scheduledRebootTimeInUTC**  Time the reboot was scheduled for in UTC
- **updateId**  UpdateId to identify which update is being scheduled.
- **wuDeviceid**  Unique DeviceID
- **IsEnhancedEngagedReboot**  If Enhanced reboot was enabled.


### Microsoft.Windows.Update.Ux.MusNotification.UxBrokerFirstReadyToReboot

This event is fired the first time when the reboot is required.



### Microsoft.Windows.Update.Ux.MusNotification.UxBrokerScheduledTask

This event is sent when MUSE broker schedules a task.

The following fields are available:

- **TaskArgument**  The arguments with which the task is scheduled. 
- **TaskName**  Name of the task.


## Windows Update mitigation events

### Mitigation360Telemetry.MitigationCustom.CleanupSafeOsImages

This event sends data specific to the CleanupSafeOsImages mitigation used for OS Updates. 

The following fields are available:

- **ClientId**  In the WU scenario, this will be the WU client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value. 
- **FlightId**  Unique identifier for each flight. 
- **InstanceId**  Unique GUID that identifies each instances of setuphost.exe. 
- **MitigationScenario**  The update scenario in which the mitigation was executed. 
- **MountedImageCount**  Number of mounted images. 
- **MountedImageMatches**  Number of mounted images that were under %systemdrive%\$Windows.~BT. 
- **MountedImagesFailed**  Number of mounted images under %systemdrive%\$Windows.~BT that could not be removed. 
- **MountedImagesRemoved**    Number of mounted images under %systemdrive%\$Windows.~BT that were successfully removed. 
- **MountedImagesSkipped**  Number of mounted images that were not under %systemdrive%\$Windows.~BT. 
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **Result**  HResult of this operation. 
- **ScenarioId**  ID indicating the mitigation scenario. 
- **ScenarioSupported**  Indicates whether the scenario was supported. 
- **SessionId**  Unique value for each update attempt. 
- **UpdateId**  Unique ID for each Update. 
- **WuId**  Unique ID for the Windows Update client. 


### Mitigation360Telemetry.MitigationCustom.FixAppXReparsePoints

This event sends data specific to the FixAppXReparsePoints mitigation used for OS updates.

The following fields are available:

- **ClientId**  Unique identifier for each flight. 
- **FlightId**  Unique GUID that identifies each instances of setuphost.exe. 
- **InstanceId**  The update scenario in which the mitigation was executed. 
- **MitigationScenario**  Correlation vector value generated from the latest USO scan. 
- **RelatedCV**  Number of reparse points that are corrupted but we failed to fix them.
- **ReparsePointsFailed**  Number of reparse points that were corrupted and were fixed by this mitigation.
- **ReparsePointsFixed**  Number of reparse points that are not corrupted and no action is required.
- **ReparsePointsSkipped**  HResult of this operation.
- **Result**  ID indicating the mitigation scenario.
- **ScenarioId**  Indicates whether the scenario was supported.
- **ScenarioSupported**  Unique value for each update attempt. 
- **SessionId**  Unique ID for each Update. 
- **UpdateId**  Unique ID for the Windows Update client.
- **WuId**  Unique ID for the Windows Update client.


### Mitigation360Telemetry.MitigationCustom.FixupEditionId

This event sends data specific to the FixupEditionId mitigation used for OS updates.

The following fields are available:

- **ClientId**  In the WU scenario, this will be the WU client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value. 
- **EditionIdUpdated**  Determine whether EditionId was changed.
- **FlightId**  Unique identifier for each flight. 
- **InstanceId**    Unique GUID that identifies each instances of setuphost.exe. 
- **MitigationScenario**  The update scenario in which the mitigation was executed. 
- **ProductEditionId**  Expected EditionId value based on GetProductInfo.
- **ProductType**  Value returned by GetProductInfo.
- **RegistryEditionId**  EditionId value in the registry.
- **RelatedCV**  Correlation vector value generated from the latest USO scan. 
- **Result**  HResult of this operation. 
- **ScenarioId**  ID indicating the mitigation scenario. 
- **ScenarioSupported**  Indicates whether the scenario was supported. 
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update. 
- **WuId**  Unique ID for the Windows Update client. 


