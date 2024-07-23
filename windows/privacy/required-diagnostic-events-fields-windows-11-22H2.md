---
description: Learn more about the diagnostic data gathered for Windows 11, versions 23H2 and 22H2.
title: Required diagnostic events and fields for Windows 11, versions 23H2 and 22H2
keywords: privacy, telemetry
ms.service: windows-client
ms.subservice: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: laurawi
ms.date: 02/29/2024
ms.topic: reference
ms.collection: privacy-windows
---

# Required diagnostic events and fields for Windows 11, versions 23H2 and 22H2

**Applies to**

- Windows 11, version 23H2
- Windows 11, version 22H2

Required diagnostic data gathers a limited set of information that is critical for understanding the device and its configuration including: basic device information, quality-related information, app compatibility, and Microsoft Store.

Required diagnostic data helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. This helps Microsoft fix operating system or app problems.

Use this article to learn about diagnostic events, grouped by event area, and the fields within each event. A brief description is provided for each field. Every event generated includes common data, which collects device data.

You can learn more about Windows functional and diagnostic data through these articles:

- [Required diagnostic events and fields for Windows 11, version 21H2](required-windows-11-diagnostic-events-and-fields.md)
- [Required diagnostic events and fields for Windows 10, versions 22H2 and 21H2](required-windows-diagnostic-data-events-and-fields-2004.md)
- [Windows 10, version 1809 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1809.md)
- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
- [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md)

## Appraiser events

### Microsoft.Windows.Appraiser.General.ChecksumTotalPictureCount

This event lists the types of objects and how many of each exist on the client device. This allows for a quick way to ensure that the records present on the server match what is present on the client. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **DatasourceApplicationFile_CO21H2Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_CO21H2Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_CO21H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_CO21H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_CO21H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_CO21H2Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_20H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSModeState_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemDiskSize_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemMemory_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuCores_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuModel_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuSpeed_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionTest_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionTpmVersion_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionUefiSecureBoot_CO21H2Setup**  The total number of objects of this type present on this device.
- **InventoryApplicationFile**  The count of the number of this particular object type present on this device.
- **InventoryLanguagePack**  The count of the number of this particular object type present on this device.
- **InventoryMediaCenter**  The count of the number of this particular object type present on this device.
- **InventorySystemBios**  The count of the number of this particular object type present on this device.
- **InventoryTest**  The count of the number of this particular object type present on this device.
- **InventoryUplevelDriverPackage**  The count of the number of this particular object type present on this device.
- **PCFP**  The count of the number of this particular object type present on this device.
- **SystemMemory**  The count of the number of this particular object type present on this device.
- **SystemProcessorCompareExchange**  The count of the number of this particular object type present on this device.
- **SystemProcessorLahfSahf**  The count of the number of this particular object type present on this device.
- **SystemProcessorNx**  The total number of objects of this type present on this device.
- **SystemProcessorPrefetchW**  The total number of objects of this type present on this device.
- **SystemProcessorSse2**  The total number of objects of this type present on this device.
- **SystemTouch**  The count of the number of this particular object type present on this device.
- **SystemWim**  The total number of objects of this type present on this device.
- **SystemWindowsActivationStatus**  The count of the number of this particular object type present on this device.
- **SystemWlan**  The total number of objects of this type present on this device.
- **Wmdrm_CO21H2Setup**  The total number of objects of this type present on this device.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileAdd

This event represents the basic metadata about specific application files installed on the system. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file that is generating the events.
- **AvDisplayName**  If the app is an anti-virus app, this is its display name.
- **CompatModelIndex**  The compatibility prediction for this file.
- **HasCitData**  Indicates whether the file is present in CIT data.
- **HasUpgradeExe**  Indicates whether the anti-virus app has an upgrade.exe file.
- **IsAv**  Is the file an anti-virus reporting EXE?
- **ResolveAttempted**  This will always be an empty string when sending diagnostic data.
- **SdbEntries**  An array of fields that indicates the SDB entries that apply to this file.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileBackupAdd

This event sends true/false compatibility decision data about a file to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser binary generating the events.
- **SdbEntries**  Indicates if any matching compat Sdb entries are associated with this application


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileBackupStartSync

This event indicates that a full set of DataSourceMatchingInfoBlockStAdd events has completed being sent. This event is used to make compatibility decisions about files to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser binary generating the events.

### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileRemove

This event indicates that the DatasourceApplicationFile object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileStartSync

This event indicates that a new set of DatasourceApplicationFileAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpRemove

This event indicates that the DatasourceDevicePnp object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpStartSync

This event indicates that a new set of DatasourceDevicePnpAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageRemove

This event indicates that the DatasourceDriverPackage object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageStartSync

This event indicates that a new set of DatasourceDriverPackageAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockAdd

This event sends blocking data about any compatibility blocking entries on the system that aren't directly related to specific applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **SdbEntries**  Deprecated in RS3.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockRemove

This event indicates that the DataSourceMatchingInfoBlock object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeAdd

This event sends compatibility database information about entries requiring reinstallation after an upgrade on the system that aren't keyed by either applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **SdbEntries**  Deprecated in RS3.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosAdd

This event sends compatibility database information about the BIOS to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **SdbEntries**  Deprecated in RS3.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosStartSync

This event indicates that a new set of DatasourceSystemBiosAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Appraiser.General.DecisionApplicationFileRemove

This event indicates that the DecisionApplicationFile object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpAdd

This event sends compatibility decision data about a Plug and Play (PNP) device to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **AssociatedDriverIsBlocked**  Is the driver associated with this PNP device blocked?
- **AssociatedDriverWillNotMigrate**  Will the driver associated with this plug-and-play device migrate?
- **BlockAssociatedDriver**  Should the driver associated with this PNP device be blocked?
- **BlockingDevice**  Is this PNP device blocking upgrade?
- **BlockUpgradeIfDriverBlocked**  Is the PNP device both boot critical and doesn't have a driver included with the OS?
- **BlockUpgradeIfDriverBlockedAndOnlyActiveNetwork**  Is this PNP device the only active network device?
- **DisplayGenericMessage**  Will a generic message be shown during Setup for this PNP device?
- **DisplayGenericMessageGated**  Indicates whether a generic message will be shown during Setup for this PNP device.
- **DriverAvailableInbox**  Is a driver included with the operating system for this PNP device?
- **DriverAvailableOnline**  Is there a driver for this PNP device on Windows Update?
- **DriverAvailableUplevel**  Is there a driver on Windows Update or included with the operating system for this PNP device?
- **DriverBlockOverridden**  Is there a driver block on the device that has been overridden?
- **NeedsDismissAction**  Will the user would need to dismiss a warning during Setup for this device?
- **NotRegressed**  Does the device have a problem code on the source OS that is no better than the one it would have on the target OS?
- **SdbDeviceBlockUpgrade**  Is there an SDB block on the PNP device that blocks upgrade?
- **SdbDriverBlockOverridden**  Is there an SDB block on the PNP device that blocks upgrade, but that block was overridden?


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageRemove

This event indicates that the DecisionDriverPackage object represented by the objectInstanceId is no longer present. This event is used to make compatibility decisions about driver packages to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageStartSync

The DecisionDriverPackageStartSync event indicates that a new set of DecisionDriverPackageAdd events will be sent. This event is used to make compatibility decisions about driver packages to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockAdd

This event sends compatibility decision data about blocking entries on the system that aren't keyed by either applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **BlockingApplication**  Are there are any application issues that interfere with upgrade due to matching info blocks?
- **DisplayGenericMessage**  Will a generic message be shown for this block?
- **NeedsUninstallAction**  Does the user need to take an action in setup due to a matching info block?
- **SdbBlockUpgrade**  Is a matching info block blocking upgrade?
- **SdbBlockUpgradeCanReinstall**  Is a matching info block blocking upgrade, but has the can reinstall tag?
- **SdbBlockUpgradeUntilUpdate**  Is a matching info block blocking upgrade but has the until update tag?


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockRemove

This event indicates that the DecisionMatchingInfoBlock object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockStartSync

This event indicates that a new set of DecisionMatchingInfoBlockAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveAdd

This event sends compatibility decision data about non-blocking entries on the system that aren't keyed by either applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BlockingApplication**  Are there any application issues that interfere with upgrade due to matching info blocks?
- **DisplayGenericMessageGated**  Indicates whether a generic offer block message will be shown due to matching info blocks.
- **MigApplication**  Is there a matching info block with a mig for the current mode of upgrade?


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveRemove

This event Indicates that the DecisionMatchingInfoPassive object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveStartSync

This event indicates that a new set of DecisionMatchingInfoPassiveAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeAdd

This event sends compatibility decision data about entries that require reinstall after upgrade. It's used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **NeedsInstallPostUpgradeData**  Will the file have a notification after upgrade to install a replacement for the app?
- **NeedsNotifyPostUpgradeData**  Should a notification be shown for this file after upgrade?
- **NeedsReinstallPostUpgradeData**  Will the file have a notification after upgrade to reinstall the app?
- **SdbReinstallUpgrade**  The file is tagged as needing to be reinstalled after upgrade in the compatibility database (but isn't blocking upgrade).


### Microsoft.Windows.Appraiser.General.DecisionSModeStateAdd

This event sends true/false compatibility decision data about the S mode state. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Appraiser decision about eligibility to upgrade.
- **LockdownMode**  S mode lockdown mode.


### Microsoft.Windows.Appraiser.General.DecisionSModeStateStartSync

The DecisionSModeStateStartSync event indicates that a new set of DecisionSModeStateAdd events will be sent. This event is used to make compatibility decisions about the S mode state. Microsoft uses this information to understand and address problems regarding the S mode state for computers receiving updates. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosStartSync

This event indicates that a new set of DecisionSystemBiosAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemProcessorCpuModelStartSync

The DecisionSystemProcessorCpuModelStartSync event indicates that a new set of DecisionSystemProcessorCpuModelAdd events will be sent. This event is used to make compatibility decisions about the CPU. Microsoft uses this information to understand and address problems regarding the CPU for computers receiving updates. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DecisionTpmVersionStartSync

The DecisionTpmVersionStartSync event indicates that a new set of DecisionTpmVersionAdd events will be sent. This event is used to make compatibility decisions about the TPM. Microsoft uses this information to understand and address problems regarding the TPM for computers receiving updates. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DecisionUefiSecureBootAdd

This event collects information about data on support and state of UEFI Secure boot. UEFI is a verification mechanism for ensuring that code launched by firmware is trusted. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **Blocking**  Appraiser upgradeability decision when checking for UEFI support.
- **SecureBootCapable**  Is UEFI supported?
- **SecureBootEnabled**  Is UEFI enabled?


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

This event represents the basic metadata about a file on the system.  The file must be part of an app and either have a block in the compatibility database or be part of an antivirus program. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **AvDisplayName**  If the app is an antivirus app, this is its display name.
- **AvProductState**  Indicates whether the antivirus program is turned on and the signatures are up to date.
- **BinaryType**  A binary type.  Example: UNINITIALIZED, ZERO_BYTE, DATA_ONLY, DOS_MODULE, NE16_MODULE, PE32_UNKNOWN, PE32_I386, PE32_ARM, PE64_UNKNOWN, PE64_AMD64, PE64_ARM64, PE64_IA64, PE32_CLR_32, PE32_CLR_IL, PE32_CLR_IL_PREFER32, PE64_CLR_64.
- **BinFileVersion**  An attempt to clean up FileVersion at the client that tries to place the version into 4 octets.
- **BinProductVersion**  An attempt to clean up ProductVersion at the client that tries to place the version into 4 octets.
- **BoeProgramId**  If there's no entry in Add/Remove Programs, this is the ProgramID that is generated from the file metadata.
- **CompanyName**  The company name of the vendor who developed this file.
- **FileId**  A hash that uniquely identifies a file.
- **FileVersion**  The File version field from the file metadata under Properties -&gt; Details.
- **HasUpgradeExe**  Indicates whether the antivirus app has an upgrade.exe file.
- **IsAv**  Indicates whether the file an antivirus reporting EXE.
- **LinkDate**  The date and time that this file was linked on.
- **LowerCaseLongPath**  The full file path to the file that was inventoried on the device.
- **Name**  The name of the file that was inventoried.
- **ProductName**  The Product name field from the file metadata under Properties -&gt; Details.
- **ProductVersion**  The Product version field from the file metadata under Properties -&gt; Details.
- **ProgramId**  A hash of the Name, Version, Publisher, and Language of an application used to identify it.
- **Size**  The size of the file (in hexadecimal bytes).


### Microsoft.Windows.Appraiser.General.InventoryApplicationFileRemove

This event indicates that the InventoryApplicationFile object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryApplicationFileStartSync

This event indicates that a new set of InventoryApplicationFileAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackAdd

This event sends data about the number of language packs installed on the system, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **HasLanguagePack**  Indicates whether this device has 2 or more language packs.
- **LanguagePackCount**  The number of language packs are installed.


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackStartSync

This event indicates that a new set of InventoryLanguagePackAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryMediaCenterAdd

This event sends true/false data about decision points used to understand whether Windows Media Center is used on the system, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **EverLaunched**  Has Windows Media Center ever been launched?
- **HasConfiguredTv**  Has the user configured a TV tuner through Windows Media Center?
- **HasExtendedUserAccounts**  Are any Windows Media Center Extender user accounts configured?
- **HasWatchedFolders**  Are any folders configured for Windows  Media Center to watch?
- **IsDefaultLauncher**  Is Windows Media Center the default app for opening music or video files?
- **IsPaid**  Is the user running a Windows Media Center edition that implies they paid for Windows Media Center?
- **IsSupported**  Does the running OS support Windows Media Center?


### Microsoft.Windows.Appraiser.General.InventoryMediaCenterStartSync

This event indicates that a new set of InventoryMediaCenterAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventorySystemBiosAdd

This event sends basic metadata about the BIOS to determine whether it has a compatibility block. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **biosDate**  The release date of the BIOS in UTC format.
- **BiosDate**  The release date of the BIOS in UTC format.
- **biosName**  The name field from Win32_BIOS.
- **BiosName**  The name field from Win32_BIOS.
- **manufacturer**  The manufacturer field from Win32_ComputerSystem.
- **Manufacturer**  The manufacturer field from Win32_ComputerSystem.
- **model**  The model field from Win32_ComputerSystem.
- **Model**  The model field from Win32_ComputerSystem.


### Microsoft.Windows.Appraiser.General.InventorySystemBiosStartSync

This event indicates that a new set of InventorySystemBiosAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser binary (executable) generating the events.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageRemove

This event indicates that the InventoryUplevelDriverPackage object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageStartSync

This event indicates that a new set of InventoryUplevelDriverPackageAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.RunContext

This event is sent at the beginning of an appraiser run, the RunContext indicates what should be expected in the following data payload. This event is used with the other Appraiser events to make compatibility decisions to keep Windows up to date.

The following fields are available:

- **AppraiserBranch**  The source branch in which the currently running version of Appraiser was built.
- **AppraiserProcess**  The name of the process that launched Appraiser.
- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Context**  Indicates what mode Appraiser is running in. Example: Setup or Telemetry.
- **PCFP**  An ID for the system calculated by hashing hardware identifiers.
- **Subcontext**  Indicates what categories of incompatibilities appraiser is scanning for. Can be N/A, Resolve, or a semicolon-delimited list that can include App, Dev, Sys, Gat, or Rescan.
- **Time**  The client time of the event.


### Microsoft.Windows.Appraiser.General.SystemMemoryAdd

This event sends data on the amount of memory on the system and whether it meets requirements, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the device from upgrade due to memory restrictions?
- **MemoryRequirementViolated**  Was a memory requirement violated?
- **pageFile**  The current committed memory limit for the system or the current process, whichever is smaller (in bytes).
- **ram**  The amount of memory on the device.
- **ramKB**  The amount of memory (in KB).
- **virtual**  The size of the user-mode portion of the virtual address space of the calling process (in bytes).
- **virtualKB**  The amount of virtual memory (in KB).


### Microsoft.Windows.Appraiser.General.SystemMemoryStartSync

This event indicates that a new set of SystemMemoryAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorCompareExchangeAdd

This event sends data indicating whether the system supports the CompareExchange128 CPU requirement, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **CompareExchange128Support**  Does the CPU support CompareExchange128?


### Microsoft.Windows.Appraiser.General.SystemProcessorCompareExchangeStartSync

This event indicates that a new set of SystemProcessorCompareExchangeAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorLahfSahfAdd

This event sends data indicating whether the system supports the LAHF & SAHF CPU requirement, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **LahfSahfSupport**  Does the CPU support LAHF/SAHF?


### Microsoft.Windows.Appraiser.General.SystemProcessorLahfSahfStartSync

This event indicates that a new set of SystemProcessorLahfSahfAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorNxAdd

This event sends data indicating whether the system supports the NX CPU requirement, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **NXDriverResult**  The result of the driver used to do a non-deterministic check for NX support.
- **NXProcessorSupport**  Does the processor support NX?


### Microsoft.Windows.Appraiser.General.SystemProcessorNxStartSync

This event  indicates that a new set of SystemProcessorNxAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorPopCntAdd

This event sends data indicating whether the system supports the PopCnt CPU requirement for newer versions of Windows, to help keep Windows up-to-date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  Appraiser version
- **Blocking**  Is the upgrade blocked due to the processor missing the PopCnt instruction?
- **PopCntPassed**  Whether the machine passes the latest OS hardware requirements or not for the PopCnt instruction.


### Microsoft.Windows.Appraiser.General.SystemProcessorPopCntStartSync

The SystemProcessorPopCntStartSync event indicates that a new set of SystemProcessorPopCntAdd events will be sent. This event is used to understand if the system supports the PopCnt CPU requirement for newer versions of Windows.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  Appraiser version.

### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWAdd

This event sends data indicating whether the system supports the PrefetchW CPU requirement, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **PrefetchWSupport**  Does the processor support PrefetchW?


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWStartSync

This event indicates that a new set of SystemProcessorPrefetchWAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorSse2StartSync

This event indicates that a new set of SystemProcessorSse2Add events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemTouchAdd

This event sends data indicating whether the system supports touch, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **IntegratedTouchDigitizerPresent**  Is there an integrated touch digitizer?
- **MaximumTouches**  The maximum number of touch points supported by the device hardware.


### Microsoft.Windows.Appraiser.General.SystemTouchStartSync

This event indicates that a new set of SystemTouchAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWimAdd

This event sends data indicating whether the operating system is running from a compressed Windows Imaging Format (WIM) file, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **IsWimBoot**  Is the current operating system running from a compressed WIM file?
- **RegistryWimBootValue**  The raw value from the registry that is used to indicate if the device is running from a WIM.


### Microsoft.Windows.Appraiser.General.SystemWimStartSync

This event indicates that a new set of SystemWimAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusAdd

This event sends data indicating whether the current operating system is activated, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **WindowsIsLicensedApiValue**  The result from the API that's used to indicate if operating system is activated.
- **WindowsNotActivatedDecision**  Is the current operating system activated?


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusStartSync

This event indicates that a new set of SystemWindowsActivationStatusAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWlanAdd

This event sends data indicating whether the system has WLAN, and if so, whether it uses an emulated driver that could block an upgrade, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked because of an emulated WLAN driver?
- **HasWlanBlock**  Does the emulated WLAN driver have an upgrade block?
- **WlanEmulatedDriver**  Does the device have an emulated WLAN driver?
- **WlanExists**  Does the device support WLAN at all?
- **WlanModulePresent**  Are any WLAN modules present?
- **WlanNativeDriver**  Does the device have a non-emulated WLAN driver?


### Microsoft.Windows.Appraiser.General.SystemWlanStartSync

This event indicates that a new set of SystemWlanAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.TelemetryRunHealth

This event indicates the parameters and result of a diagnostic data run. This allows the rest of the data sent over the course of the run to be properly contextualized and understood, which is then used to keep Windows up to date.

The following fields are available:

- **AppraiserBranch**  The source branch in which the version of Appraiser that is running was built.
- **AppraiserDataVersion**  The version of the data files being used by the Appraiser diagnostic data run.
- **AppraiserProcess**  The name of the process that launched Appraiser.
- **AppraiserVersion**  The file version (major, minor and build) of the Appraiser DLL, concatenated without dots.
- **AuxFinal**  Obsolete, always set to false.
- **AuxInitial**  Obsolete, indicates if Appraiser is writing data files to be read by the Get Windows 10 app.
- **CountCustomSdbs**  The number of custom Sdbs used by Appraiser.
- **CustomSdbGuids**  Guids of the custom Sdbs used by Appraiser; Semicolon delimited list.
- **DeadlineDate**  A timestamp representing the deadline date, which is the time until which appraiser will wait to do a full scan.
- **EnterpriseRun**  Indicates whether the diagnostic data run is an enterprise run, which means appraiser was run from the command line with an extra enterprise parameter.
- **FullSync**  Indicates if Appraiser is performing a full sync, which means that full set of events representing the state of the machine are sent. Otherwise, only the changes from the previous run are sent.
- **InboxDataVersion**  The original version of the data files before retrieving any newer version.
- **IndicatorsWritten**  Indicates if all relevant UEX indicators were successfully written or updated.
- **InventoryFullSync**  Indicates if inventory is performing a full sync, which means that the full set of events representing the inventory of machine are sent.
- **PCFP**  An ID for the system calculated by hashing hardware identifiers.
- **PerfBackoff**  Indicates if the run was invoked with logic to stop running when a user is present. Helps to understand why a run may have a longer elapsed time than normal.
- **PerfBackoffInsurance**  Indicates if appraiser is running without performance backoff because it has run with perf backoff and failed to complete several times in a row.
- **RunAppraiser**  Indicates if Appraiser was set to run at all. If this if false, it's understood that data events won't be received from this device.
- **RunDate**  The date that the diagnostic data run was stated, expressed as a filetime.
- **RunGeneralTel**  Indicates if the generaltel.dll component was run. Generaltel collects additional diagnostic data on an infrequent schedule and only from machines at diagnostic data levels higher than Basic.
- **RunOnline**  Indicates if appraiser was able to connect to Windows Update and therefore is making decisions using up-to-date driver coverage information.
- **RunResult**  The hresult of the Appraiser diagnostic data run.
- **ScheduledUploadDay**  The day scheduled for the upload.
- **SendingUtc**  Indicates whether the Appraiser client is sending events during the current diagnostic data run.
- **StoreHandleIsNotNull**  Obsolete, always set to false
- **TelementrySent**  Indicates whether diagnostic data was successfully sent.
- **ThrottlingUtc**  Indicates whether the Appraiser client is throttling its output of CUET events to avoid being disabled. This increases runtime but also diagnostic data reliability.
- **Time**  The client time of the event.
- **VerboseMode**  Indicates if appraiser ran in Verbose mode, which is a test-only mode with extra logging.
- **WhyFullSyncWithoutTablePrefix**  Indicates the reason or reasons that a full sync was generated.


### Microsoft.Windows.Appraiser.General.WmdrmAdd

This event sends data about the usage of older digital rights management on the system, to help keep Windows up to date. This data doesn't indicate the details of the media using the digital rights management, only whether any such files exist. Collecting this data was critical to ensuring the correct mitigation for customers, and should be able to be removed once all mitigations are in place.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BlockingApplication**  Same as NeedsDismissAction.
- **NeedsDismissAction**  Indicates if a dismissible message is needed to warn the user about a potential loss of data due to DRM deprecation.
- **WmdrmApiResult**  Raw value of the API used to gather DRM state.
- **WmdrmCdRipped**  Indicates if the system has any files encrypted with personal DRM, which was used for ripped CDs.
- **WmdrmIndicators**  WmdrmCdRipped OR WmdrmPurchased.
- **WmdrmInUse**  WmdrmIndicators AND dismissible block in setup wasn't dismissed.
- **WmdrmNonPermanent**  Indicates if the system has any files with non-permanent licenses.
- **WmdrmPurchased**  Indicates if the system has any files with permanent licenses.


## Census events

### Census.App

This event sends version data about the Apps running on this device, to help keep Windows up to date.

The following fields are available:

- **AppraiserTaskEnabled**  Whether the Appraiser task is enabled.
- **CensusVersion**  The version of Census that generated the current data for this device.


### Census.Enterprise

This event sends data about Azure presence, type, and cloud domain use in order to provide an understanding of the use and integration of devices in an enterprise, cloud, and server environment. The data collected with this event is used to help keep Windows secure.

The following fields are available:

- **AADDeviceId**  Microsoft Entra ID device ID.
- **AzureOSIDPresent**  Represents the field used to identify an Azure machine.
- **AzureVMType**  Represents whether the instance is Azure VM PAAS, Azure VM IAAS or any other VMs.
- **CDJType**  Represents the type of cloud domain joined for the machine.
- **CommercialId**  Represents the GUID for the commercial entity that the device is a member of.  Will be used to reflect insights back to customers.
- **ContainerType**  The type of container, such as process or virtual machine hosted.
- **EnrollmentType**  Defines the type of MDM enrollment on the device.
- **HashedDomain**  The hashed representation of the user domain used for login.
- **IsCloudDomainJoined**  Is this device joined to a Microsoft Entra tenant? true/false
- **IsDERequirementMet**  Represents if the device can do device encryption.
- **IsDeviceProtected**  Represents if Device protected by BitLocker/Device Encryption
- **IsEDPEnabled**  Represents if Enterprise data protected on the device.
- **IsMDMEnrolled**  Whether the device has been MDM Enrolled or not.
- **MDMServiceProvider**  A hash of the specific MDM authority, such as Microsoft Intune, that is managing the device.
- **MPNId**  Returns the Partner ID/MPN ID from Regkey. HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\DeployID
- **SCCMClientId**  This ID correlate systems that send data to Compat Analytics (OMS) and other OMS based systems with systems in an enterprise Configuration Manager environment.
- **ServerFeatures**  Represents the features installed on a Windows Server. This can be used by developers and administrators who need to automate the process of determining the features installed on a set of server computers.
- **SystemCenterID**  The Configuration Manager ID is an anonymized one-way hash of the Active Directory Organization identifier


### Census.Memory

This event sends data about the memory on the device, including ROM and RAM. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **TotalPhysicalRAM**  Represents the physical memory (in MB).
- **TotalVisibleMemory**  Represents the memory that isn't reserved by the system.


### Census.Network

This event sends data about the mobile and cellular network used by the device (mobile service provider, network, device ID, and service cost factors). The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CellularModemHWInstanceId0**  HardwareInstanceId of the embedded Mobile broadband modem, as reported and used by PnP system to identify the WWAN modem device in Windows system. Empty string (null string) indicates that this property is unknown for telemetry.
- **IMEI0**  Represents the International Mobile Station Equipment Identity. This number is usually unique and used by the mobile operator to distinguish different phone hardware. Microsoft doesn't have access to mobile operator billing data so collecting this data doesn't expose or identify the user. The two fields represent phone with dual sim coverage.
- **IMEI1**  Represents the International Mobile Station Equipment Identity. This number is usually unique and used by the mobile operator to distinguish different phone hardware. Microsoft doesn't have access to mobile operator billing data so collecting this data doesn't expose or identify the user. The two fields represent phone with dual sim coverage.
- **MCC0**  Represents the Mobile Country Code (MCC). It used with the Mobile Network Code (MNC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MCC1**  Represents the Mobile Country Code (MCC). It used with the Mobile Network Code (MNC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MNC0**  Retrieves the Mobile Network Code (MNC). It used with the Mobile Country Code (MCC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MNC1**  Retrieves the Mobile Network Code (MNC). It used with the Mobile Country Code (MCC) to uniquely identify a mobile network operator. The two fields represent phone with dual sim coverage.
- **MobileOperatorNetwork0**  Represents the operator of the current mobile network that the device is used on. (AT&T, T-Mobile, Vodafone). The two fields represent phone with dual sim coverage.
- **MobileOperatorNetwork1**  Represents the operator of the current mobile network that the device is used on. (AT&T, T-Mobile, Vodafone). The two fields represent phone with dual sim coverage.
- **ModemOptionalCapabilityBitMap0**  A bit map of optional capabilities in modem, such as eSIM support.
- **NetworkAdapterGUID**  The GUID of the primary network adapter.
- **SPN0**  Retrieves the Service Provider Name (SPN). For example, these might be AT&T, Sprint, T-Mobile, or Verizon. The two fields represent phone with dual sim coverage.
- **SPN1**  Retrieves the Service Provider Name (SPN). For example, these might be AT&T, Sprint, T-Mobile, or Verizon. The two fields represent phone with dual sim coverage.
- **SupportedDataClassBitMap0**  A bit map of the supported data classes (i.g, 5g 4g...) that the modem is capable of.
- **SupportedDataSubClassBitMap0**  A bit map of data subclasses that the modem is capable of.


### Census.OS

This event sends data about the operating system such as the version, locale, update service configuration, when and how it was originally installed, and whether it's a virtual device. The data collected with this event is used to help keep Windows secure and up to date.

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
- **LicenseStateReason**  Retrieves why (or how) a system is licensed or unlicensed.  The HRESULT may indicate an error code that indicates a key blocked error, or it may indicate that we're running an OS License granted by the MS store.
- **OA3xOriginalProductKey**  Retrieves the License key stamped by the OEM to the machine.
- **OSEdition**  Retrieves the version of the current OS.
- **OSInstallType**  Retrieves a numeric description of what install was used on the device i.e. clean, upgrade, refresh, reset, etc
- **OSOOBEDateTime**  Retrieves Out of Box Experience (OOBE) Date in Coordinated Universal Time (UTC).
- **OSSKU**  Retrieves the Friendly Name of OS Edition.
- **OSSubscriptionStatus**  Represents the existing status for enterprise subscription feature for PRO machines.
- **OSSubscriptionTypeId**  Returns boolean for enterprise subscription feature for selected PRO machines.
- **OSUILocale**  Retrieves the locale of the UI that is currently used by the OS.
- **ProductActivationResult**  Returns Boolean if the OS Activation was successful.
- **ProductActivationTime**  Returns the OS Activation time for tracking piracy issues.
- **ProductKeyID2**  Retrieves the License key if the machine is updated with a new license key.
- **RACw7Id**  Retrieves the Microsoft Reliability Analysis Component (RAC) Win7 Identifier. RAC is used to monitor and analyze system usage and reliability.
- **ServiceMachineIP**  Retrieves the IP address of the KMS host used for anti-piracy.
- **ServiceMachinePort**  Retrieves the port of the KMS host used for anti-piracy.
- **ServiceProductKeyID**  Retrieves the License key of the KMS
- **SharedPCMode**  Returns Boolean for devices that have enabled the configuration EnableSharedPCMode.
- **Signature**  Retrieves if it's a signature machine sold by Microsoft store.
- **SLICStatus**  Whether a SLIC table exists on the device.
- **SLICVersion**  Returns OS type/version from SLIC table.


### Census.Speech

This event is used to gather basic speech settings on the device. The data collected with this event is used to help keep Windows secure.

The following fields are available:

- **AboveLockEnabled**  Cortana setting that represents if Cortana can be invoked when the device is locked.
- **GPAllowInputPersonalization**  Indicates if a Group Policy setting has enabled speech functionalities.
- **HolographicSpeechInputDisabled**  Holographic setting that represents if the attached HMD devices have speech functionality disabled by the user.
- **HolographicSpeechInputDisabledRemote**  Indicates if a remote policy has disabled speech functionalities for the HMD devices.
- **KeyVer**  Version information for the census speech event.
- **KWSEnabled**  Cortana setting that represents if a user has enabled the "Hey Cortana" keyword spotter (KWS).
- **MDMAllowInputPersonalization**  Indicates if an MDM policy has enabled speech functionalities.
- **RemotelyManaged**  Indicates if the device is being controlled by a remote administrator (MDM or Group Policy) in the context of speech functionalities.
- **SpeakerIdEnabled**  Cortana setting that represents if keyword detection has been trained to try to respond to a single user's voice.
- **SpeechServicesEnabled**  Windows setting that represents whether a user is opted-in for speech services on the device.
- **SpeechServicesValueSource**  Indicates the deciding factor for the effective online speech recognition privacy policy settings: remote admin, local admin, or user preference.


### Census.UserDisplay

This event sends data about the logical/physical display size, resolution and number of internal/external displays, and VRAM on the system. The data collected with this event is used to help keep Windows secure and up to date.

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


### Census.Xbox

This event sends data about the Xbox Console, such as Serial Number and DeviceId, to help keep Windows up to date.

The following fields are available:

- **XboxConsolePreferredLanguage**  Retrieves the preferred language selected by the user on Xbox console.
- **XboxConsoleSerialNumber**  Retrieves the serial number of the Xbox console.
- **XboxLiveDeviceId**  Retrieves the unique device ID of the console.
- **XboxLiveSandboxId**  Retrieves the developer sandbox ID if the device is internal to Microsoft.


## Code Integrity events

### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.IsRegionDisabledLanguage

Fires when an incompatible language pack is detected.

The following fields are available:

- **Language**  String containing the incompatible language pack detected.


## Common data extensions

### Common Data Extensions.app

Describes the properties of the running application. This extension could be populated by a client app or a web app.

The following fields are available:

- **asId**  An integer value that represents the app session. This value starts at 0 on the first app launch and increments after each subsequent app launch per boot session.
- **env**  The environment from which the event was logged.
- **expId**  Associates a flight, such as an OS flight, or an experiment, such as a web site UX experiment, with an event.
- **id**  Represents a unique identifier of the client application currently loaded in the process producing the event; and is used to group events together and understand usage pattern, errors by application.
- **locale**  The locale of the app.
- **name**  The name of the app.
- **userId**  The userID as known by the application.
- **ver**  Represents the version number of the application. Used to understand errors by Version, Usage by Version across an app.


### Common Data Extensions.container

Describes the properties of the container for events logged within a container.

The following fields are available:

- **epoch**  An ID that's incremented for each SDK initialization.
- **localId**  The device ID as known by the client.
- **osVer**  The operating system version.
- **seq**  An ID that's incremented for each event.
- **type**  The container type. Examples: Process or VMHost


### Common Data Extensions.device

Describes the device-related fields.

The following fields are available:

- **deviceClass**  The device classification. For example, Desktop, Server, or Mobile.
- **localId**  A locally-defined unique ID for the device. This isn't the human-readable device name. Most likely equal to the value stored at HKLM\Software\Microsoft\SQMClient\MachineId
- **make**  Device manufacturer.
- **model**  Device model.


### Common Data Extensions.Envelope

Represents an envelope that contains all of the common data extensions.

The following fields are available:

- **data**  Represents the optional unique diagnostic data for a particular event schema.
- **ext_app**  Describes the properties of the running application. This extension could be populated by either a client app or a web app. See [Common Data Extensions.app](#common-data-extensionsapp).
- **ext_container**  Describes the properties of the container for events logged within a container. See [Common Data Extensions.container](#common-data-extensionscontainer).
- **ext_device**  Describes the device-related fields. See [Common Data Extensions.device](#common-data-extensionsdevice).
- **ext_mscv**  Describes the correlation vector-related fields. See [Common Data Extensions.mscv](#common-data-extensionsmscv).
- **ext_os**  Describes the operating system properties that would be populated by the client. See [Common Data Extensions.os](#common-data-extensionsos).
- **ext_sdk**  Describes the fields related to a platform library required for a specific SDK. See [Common Data Extensions.sdk](#common-data-extensionssdk).
- **ext_user**  Describes the fields related to a user. See [Common Data Extensions.user](#common-data-extensionsuser).
- **ext_utc**  Describes the fields that might be populated by a logging library on Windows. See [Common Data Extensions.utc](#common-data-extensionsutc).
- **ext_xbl**  Describes the fields related to XBOX Live. See [Common Data Extensions.xbl](#common-data-extensionsxbl).
- **iKey**  Represents an ID for applications or other logical groupings of events.
- **name**  Represents the uniquely qualified name for the event.
- **time**  Represents the event date time in Coordinated Universal Time (UTC) when the event was generated on the client. This should be in ISO 8601 format.
- **ver**  Represents the major and minor version of the extension.


### Common Data Extensions.mscv

Describes the correlation vector-related fields.

The following fields are available:

- **cV**  Represents the Correlation Vector: A single field for tracking partial order of related events across component boundaries.


### Common Data Extensions.os

Describes some properties of the operating system.

The following fields are available:

- **bootId**  An integer value that represents the boot session. This value starts at 0 on first boot after OS install and increments after every reboot.
- **expId**  Represents the experiment ID. The standard for associating a flight, such as an OS flight (pre-release build), or an experiment, such as a web site UX experiment, with an event is to record the flight / experiment IDs in Part A of the common schema.
- **locale**  Represents the locale of the operating system.
- **name**  Represents the operating system name.
- **ver**  Represents the major and minor version of the extension.


### Common Data Extensions.sdk

Used by platform specific libraries to record fields that are required for a specific SDK.

The following fields are available:

- **epoch**  An ID that is incremented for each SDK initialization.
- **installId**  An ID that's created during the initialization of the SDK for the first time.
- **libVer**  The SDK version.
- **seq**  An ID that is incremented for each event.
- **ver**  The version of the logging SDK.


### Common Data Extensions.user

Describes the fields related to a user.

The following fields are available:

- **authId**  This is an ID of the user associated with this event that is deduced from a token such as a Microsoft Account ticket or an XBOX token.
- **locale**  The language and region.
- **localId**  Represents a unique user identity that is created locally and added by the client. This isn't the user's account ID.


### Common Data Extensions.utc

Describes the properties that could be populated by a logging library on Windows.

The following fields are available:

- **aId**  Represents the ETW ActivityId. Logged via TraceLogging or directly via ETW.
- **bSeq**  Upload buffer sequence number in the format: buffer identifier:sequence number
- **cat**  Represents a bitmask of the ETW Keywords associated with the event.
- **cpId**  The composer ID, such as Reference, Desktop, Phone, Holographic, Hub, IoT Composer.
- **epoch**  Represents the epoch and seqNum fields, which help track how many events were fired and how many events were uploaded, and enables identification of data lost during upload and de-duplication of events on the ingress server.
- **eventFlags**  Represents a collection of bits that describe how the event should be processed by the Connected User Experience and Telemetry component pipeline. The lowest-order byte is the event persistence. The next byte is the event latency.
- **flags**  Represents the bitmap that captures various Windows specific flags.
- **loggingBinary**  The binary (executable, library, driver, etc.) that fired the event.
- **mon**  Combined monitor and event sequence numbers in the format: monitor sequence : event sequence
- **op**  Represents the ETW Op Code.
- **pgName**  The short form of the provider group name associated with the event.
- **popSample**  Represents the effective sample rate for this event at the time it was generated by a client.
- **providerGuid**  The ETW provider ID associated with the provider name.
- **raId**  Represents the ETW Related ActivityId. Logged via TraceLogging or directly via ETW.
- **seq**  Represents the sequence field used to track absolute order of uploaded events. It's an incrementing identifier for each event added to the upload queue.  The Sequence helps track how many events were fired and how many events were uploaded and enables identification of data lost during upload and de-duplication of events on the ingress server.
- **sqmId**  The Windows SQM (Software Quality Metrics—a precursor of Windows 10 Diagnostic Data collection) device identifier.
- **stId**  Represents the Scenario Entry Point ID. This is a unique GUID for each event in a diagnostic scenario. This used to be Scenario Trigger ID.
- **wcmp**  The Windows Shell Composer ID.
- **wPId**  The Windows Core OS product ID.
- **wsId**  The Windows Core OS session ID.


### Common Data Extensions.xbl

Describes the fields that are related to XBOX Live.

The following fields are available:

- **claims**  Any additional claims whose short claim name hasn't been added to this structure.
- **did**  XBOX device ID
- **dty**  XBOX device type
- **dvr**  The version of the operating system on the device.
- **eid**  A unique ID that represents the developer entity.
- **exp**  Expiration time
- **ip**  The IP address of the client device.
- **nbf**  Not before time
- **pid**  A comma separated list of PUIDs listed as base10 numbers.
- **sbx**  XBOX sandbox identifier
- **sid**  The service instance ID.
- **sty**  The service type.
- **tid**  The XBOX Live title ID.
- **tvr**  The XBOX Live title version.
- **uts**  A bit field, with 2 bits being assigned to each user ID listed in xid. This field is omitted if all users are retail accounts.
- **xid**  A list of base10-encoded XBOX User IDs.


## Common data fields

### Ms.Device.DeviceInventoryChange

Describes the installation state for all hardware and software components available on a particular device.

The following fields are available:

- **action**  The change that was invoked on a device inventory object.
- **inventoryId**  Device ID used for Compatibility testing
- **objectInstanceId**  Object identity which is unique within the device scope.
- **objectType**  Indicates the object type that the event applies to.
- **syncId**  A string used to group StartSync, EndSync, Add, and Remove operations that belong together. This field is unique by Sync period and is used to disambiguate in situations where multiple agents perform overlapping inventories for the same object.


## Component-based servicing events

### CbsServicingProvider.CbsCapabilitySessionFinalize

This event provides information about the results of installing or uninstalling optional Windows content from Windows Update. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **capabilities**  The names of the optional content packages that were installed.
- **clientId**  The name of the application requesting the optional content.
- **currentID**  The ID of the current install session.
- **downloadSource**  The source of the download.
- **highestState**  The highest final install state of the optional content.
- **hrLCUReservicingStatus**  Indicates whether the optional content was updated to the latest available version.
- **hrStatus**  The HReturn code of the install operation.
- **rebootCount**  The number of reboots required to complete the install.
- **retryID**  The session ID that will be used to retry a failed operation.
- **retryStatus**  Indicates whether the install will be retried in the event of failure.
- **stackBuild**  The build number of the servicing stack.
- **stackMajorVersion**  The major version number of the servicing stack.
- **stackMinorVersion**  The minor version number of the servicing stack.
- **stackRevision**  The revision number of the servicing stack.


### CbsServicingProvider.CbsLateAcquisition

This event sends data to indicate if some Operating System packages couldn't be updated as part of an upgrade, to help keep Windows up to date.

The following fields are available:

- **Features**  The list of feature packages that couldn't be updated.
- **RetryID**  The ID identifying the retry attempt to update the listed packages.


### CbsServicingProvider.CbsQualityUpdateInstall

This event reports on the performance and reliability results of installing Servicing content from Windows Update to keep Windows up to date.

The following fields are available:

- **buildVersion**  The build version number of the update package.
- **clientId**  The name of the application requesting the optional content.
- **corruptionHistoryFlags**  A bitmask of the types of component store corruption that have caused update failures on the device.
- **corruptionType**  An enumeration listing the type of data corruption responsible for the current update failure.
- **currentStateEnd**  The final state of the package after the operation has completed.
- **doqTimeSeconds**  The time in seconds spent updating drivers.
- **executeTimeSeconds**  The number of seconds required to execute the install.
- **failureDetails**  The driver or installer that caused the update to fail.
- **failureSourceEnd**  An enumeration indicating at what phase of the update a failure occurred.
- **hrStatusEnd**  The return code of the install operation.
- **initiatedOffline**  A true or false value indicating whether the package was installed into an offline Windows Imaging Format (WIM) file.
- **majorVersion**  The major version number of the update package.
- **minorVersion**  The minor version number of the update package.
- **originalState**  The starting state of the package.
- **overallTimeSeconds**  The time (in seconds) to perform the overall servicing operation.
- **planTimeSeconds**  The time in seconds required to plan the update operations.
- **poqTimeSeconds**  The time in seconds processing file and registry operations.
- **postRebootTimeSeconds**  The time (in seconds) to do startup processing for the update.
- **preRebootTimeSeconds**  The time (in seconds) between execution of the installation and the reboot.
- **primitiveExecutionContext**  An enumeration indicating at what phase of shutdown or startup the update was installed.
- **rebootCount**  The number of reboots required to install the update.
- **rebootTimeSeconds**  The time (in seconds) before startup processing begins for the update.
- **resolveTimeSeconds**  The time in seconds required to resolve the packages that are part of the update.
- **revisionVersion**  The revision version number of the update package.
- **rptTimeSeconds**  The time in seconds spent executing installer plugins.
- **shutdownTimeSeconds**  The time (in seconds) required to do shutdown processing for the update.
- **stackRevision**  The revision number of the servicing stack.
- **stageTimeSeconds**  The time (in seconds) required to stage all files that are part of the update.


### CbsServicingProvider.CbsSelectableUpdateChangeV2

This event reports the results of enabling or disabling optional Windows Content to keep Windows up to date.

The following fields are available:

- **applicableUpdateState**  Indicates the highest applicable state of the optional content.
- **buildVersion**  The build version of the package being installed.
- **clientId**  The name of the application requesting the optional content change.
- **downloadSource**  Indicates if optional content was obtained from Windows Update or a locally accessible file.
- **downloadtimeInSeconds**  Indicates if optional content was obtained from Windows Update or a locally accessible file.
- **executionID**  A unique ID used to identify events associated with a single servicing operation and not reused for future operations.
- **executionSequence**  A counter that tracks the number of servicing operations attempted on the device.
- **firstMergedExecutionSequence**  The value of a pervious executionSequence counter that is being merged with the current operation, if applicable.
- **firstMergedID**  A unique ID of a pervious servicing operation that is being merged with this operation, if applicable.
- **hrDownloadResult**  The return code of the download operation.
- **hrStatusUpdate**  The return code of the servicing operation.
- **identityHash**  A pseudonymized (hashed) identifier for the Windows Package that is being installed or uninstalled.
- **initiatedOffline**  Indicates whether the operation was performed against an offline Windows image file or a running instance of Windows.
- **majorVersion**  The major version of the package being installed.
- **minorVersion**  The minor version of the package being installed.
- **packageArchitecture**  The architecture of the package being installed.
- **packageLanguage**  The language of the package being installed.
- **packageName**  The name of the package being installed.
- **rebootRequired**  Indicates whether a reboot is required to complete the operation.
- **revisionVersion**  The revision number of the package being installed.
- **stackBuild**  The build number of the servicing stack binary performing the installation.
- **stackMajorVersion**  The major version number of the servicing stack binary performing the installation.
- **stackMinorVersion**  The minor version number of the servicing stack binary performing the installation.
- **stackRevision**  The revision number of the servicing stack binary performing the installation.
- **updateName**  The name of the optional Windows Operation System feature being enabled or disabled.
- **updateStartState**  A value indicating the state of the optional content before the operation started.
- **updateTargetState**  A value indicating the desired state of the optional content.


## Diagnostic data events

### TelClientSynthetic.AbnormalShutdown_0

This event sends data about boot IDs for which a normal clean shutdown wasn't observed. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **AbnormalShutdownBootId**  BootId of the abnormal shutdown being reported by this event.
- **AbsCausedbyAutoChk**  This flag is set when AutoCheck forces a device restart to indicate that the shutdown wasn't an abnormal shutdown.
- **AcDcStateAtLastShutdown**  Identifies if the device was on battery or plugged in.
- **BatteryLevelAtLastShutdown**  The last recorded battery level.
- **BatteryPercentageAtLastShutdown**  The battery percentage at the last shutdown.
- **CrashDumpEnabled**  Are crash dumps enabled?
- **CumulativeCrashCount**  Cumulative count of operating system crashes since the BootId reset.
- **CurrentBootId**  BootId at the time the abnormal shutdown event was being reported.
- **Firmwaredata->ResetReasonEmbeddedController**  The reset reason that was supplied by the firmware.
- **Firmwaredata->ResetReasonEmbeddedControllerAdditional**  Additional data related to reset reason provided by the firmware.
- **Firmwaredata->ResetReasonPch**  The reset reason that was supplied by the hardware.
- **Firmwaredata->ResetReasonPchAdditional**  Additional data related to the reset reason supplied by the hardware.
- **Firmwaredata->ResetReasonSupplied**  Indicates whether the firmware supplied any reset reason or not.
- **FirmwareType**  ID of the FirmwareType as enumerated in DimFirmwareType.
- **HardwareWatchdogTimerGeneratedLastReset**  Indicates whether the hardware watchdog timer caused the last reset.
- **HardwareWatchdogTimerPresent**  Indicates whether hardware watchdog timer was present or not.
- **InvalidBootStat**  This is a sanity check flag that ensures the validity of the bootstat file.
- **LastBugCheckBootId**  bootId of the last captured crash.
- **LastBugCheckCode**  Code that indicates the type of error.
- **LastBugCheckContextFlags**  Additional crash dump settings.
- **LastBugCheckOriginalDumpType**  The type of crash dump the system intended to save.
- **LastBugCheckOtherSettings**  Other crash dump settings.
- **LastBugCheckParameter1**  The first parameter with additional info on the type of the error.
- **LastBugCheckProgress**  Progress towards writing out the last crash dump.
- **LastBugCheckVersion**  The version of the information struct written during the crash.
- **LastSuccessfullyShutdownBootId**  BootId of the last fully successful shutdown.
- **LongPowerButtonPressDetected**  Identifies if the user was pressing and holding power button.
- **LongPowerButtonPressInstanceGuid**  The Instance GUID for the user state of pressing and holding the power button.
- **OOBEInProgress**  Identifies if OOBE is running.
- **OSSetupInProgress**  Identifies if the operating system setup is running.
- **PowerButtonCumulativePressCount**  How many times has the power button been pressed?
- **PowerButtonCumulativeReleaseCount**  How many times has the power button been released?
- **PowerButtonErrorCount**  Indicates the number of times there was an error attempting to record power button metrics.
- **PowerButtonLastPressBootId**  BootId of the last time the power button was pressed.
- **PowerButtonLastPressTime**  Date and time of the last time the power button was pressed.
- **PowerButtonLastReleaseBootId**  BootId of the last time the power button was released.
- **PowerButtonLastReleaseTime**  Date and time of the last time the power button was released.
- **PowerButtonPressCurrentCsPhase**  Represents the phase of Connected Standby exit when the power button was pressed.
- **PowerButtonPressIsShutdownInProgress**  Indicates whether a system shutdown was in progress at the last time the power button was pressed.
- **PowerButtonPressLastPowerWatchdogStage**  Progress while the monitor is being turned on.
- **PowerButtonPressPowerWatchdogArmed**  Indicates whether or not the watchdog for the monitor was active at the time of the last power button press.
- **ShutdownDeviceType**  Identifies who triggered a shutdown. Is it because of battery, thermal zones, or through a Kernel API.
- **SleepCheckpoint**  Provides the last checkpoint when there's a failure during a sleep transition.
- **SleepCheckpointSource**  Indicates whether the source is the EFI variable or bootstat file.
- **SleepCheckpointStatus**  Indicates whether the checkpoint information is valid.
- **StaleBootStatData**  Identifies if the data from bootstat is stale.
- **TransitionInfoBootId**  BootId of the captured transition info.
- **TransitionInfoCSCount**  l number of times the system transitioned from Connected Standby mode.
- **TransitionInfoCSEntryReason**  Indicates the reason the device last entered Connected Standby mode.
- **TransitionInfoCSExitReason**  Indicates the reason the device last exited Connected Standby mode.
- **TransitionInfoCSInProgress**  At the time the last marker was saved, the system was in or entering Connected Standby mode.
- **TransitionInfoLastBootDiagCode**  Tells us about the last boot with a diagnostic code.
- **TransitionInfoLastBootDiagStatus**  Tells us whether the last boot diagnostic code is valid.
- **TransitionInfoLastReferenceTimeChecksum**  The checksum of TransitionInfoLastReferenceTimestamp,
- **TransitionInfoLastReferenceTimestamp**  The date and time that the marker was last saved.
- **TransitionInfoLidState**  Describes the state of the laptop lid.
- **TransitionInfoPowerButtonTimestamp**  The date and time of the last time the power button was pressed.
- **TransitionInfoSleepInProgress**  At the time the last marker was saved, the system was in or entering sleep mode.
- **TransitionInfoSleepTranstionsToOn**  Total number of times the device transitioned from sleep mode.
- **TransitionInfoSystemRunning**  At the time the last marker was saved, the device was running.
- **TransitionInfoSystemShutdownInProgress**  Indicates whether a device shutdown was in progress when the power button was pressed.
- **TransitionInfoUserShutdownInProgress**  Indicates whether a user shutdown was in progress when the power button was pressed.
- **TransitionLatestCheckpointId**  Represents a unique identifier for a checkpoint during the device state transition.
- **TransitionLatestCheckpointSeqNumber**  Represents the chronological sequence number of the checkpoint.
- **TransitionLatestCheckpointType**  Represents the type of the checkpoint, which can be the start of a phase, end of a phase, or just informational.
- **VirtualMachineId**  If the operating system is on a virtual Machine, it gives the virtual Machine ID (GUID) that can be used to correlate events on the host.


### TelClientSynthetic.AuthorizationInfo_Startup

This event is fired by UTC at startup to signal what data we're allowed to collect. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **CanAddMsaToMsTelemetry**  True if we can add MSA PUID and CID to telemetry, false otherwise.
- **CanCollectAnyTelemetry**  True if we're allowed to collect partner telemetry, false otherwise.
- **CanCollectClearUserIds**  True if we're allowed to collect clear user IDs, false if we can only collect omitted IDs.
- **CanCollectCoreTelemetry**  True if we can collect CORE/Basic telemetry, false otherwise.
- **CanCollectHeartbeats**  True if we can collect heartbeat telemetry, false otherwise.
- **CanCollectOsTelemetry**  True if we can collect diagnostic data telemetry, false otherwise.
- **CanCollectWindowsAnalyticsEvents**  True if we can collect Windows Analytics data, false otherwise.
- **CanIncludeDeviceNameInDiagnosticData**  True if we're allowed to add the device name to diagnostic data, false otherwise.
- **CanPerformDiagnosticEscalations**  True if we can perform diagnostic escalation collection, false otherwise.
- **CanPerformSiufEscalations**  True if we can perform System Initiated User Feedback escalation collection, false otherwise.
- **CanReportScenarios**  True if we can report scenario completions, false otherwise.
- **CanReportUifEscalations**  True if we can perform User Initiated Feedback escalation collection, false otherwise.
- **CanUseAuthenticatedProxy**  True if we can use an authenticated proxy to send data, false otherwise.
- **IsProcessorMode**  True if it's Processor Mode, false otherwise.
- **PreviousPermissions**  Bitmask of previous telemetry state.
- **TransitionFromEverythingOff**  True if we're transitioning from all telemetry being disabled, false otherwise.


### TelClientSynthetic.ConnectivityHeartBeat_0

This event sends data about the connectivity status of the Connected User Experience and Telemetry component that uploads telemetry events. If an unrestricted free network (such as Wi-Fi) is available, this event updates the last successful upload time. Otherwise, it checks whether a Connectivity Heartbeat event was fired in the past 24 hours, and if not, it sends an event. A Connectivity Heartbeat event is also sent when a device recovers from costed network to free network.

The following fields are available:

- **CensusExitCode**  Last exit code of Census task
- **CensusStartTime**  Returns timestamp corresponding to last successful census run.
- **CensusTaskEnabled**  Returns Boolean value for the census task (Enable/Disable) on client machine.
- **LastConnectivityLossTime**  The FILETIME at which the last free network loss occurred.
- **NetworkState**  Retrieves the network state: 0 = No network. 1 = Restricted network. 2 = Free network.
- **NoNetworkTime**  Retrieves the time spent with no network (since the last time) in seconds.
- **RestrictedNetworkTime**  The total number of seconds with restricted network during this heartbeat period.


### TelClientSynthetic.HeartBeat_5

This event sends data about the health and quality of the diagnostic data from the given device, to help keep Windows up to date. It also enables data analysts to determine how 'trusted' the data is from a given device.

The following fields are available:

- **AgentConnectionErrorsCount**  Number of non-timeout errors associated with the host/agent channel.
- **CensusExitCode**  The last exit code of the Census task.
- **CensusStartTime**  Time of last Census run.
- **CensusTaskEnabled**  True if Census is enabled, false otherwise.
- **CompressedBytesUploaded**  Number of compressed bytes uploaded.
- **ConsumerDroppedCount**  Number of events dropped at consumer layer of telemetry client.
- **CriticalDataDbDroppedCount**  Number of critical data sampled events dropped at the database layer.
- **CriticalDataThrottleDroppedCount**  The number of critical data sampled events that were dropped because of throttling.
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
- **EventStoreLifetimeResetCounter**  Number of times event DB was reset for the lifetime of UTC.
- **EventStoreResetCounter**  Number of times event DB was reset.
- **EventStoreResetSizeSum**  Total size of event DB across all resets reports in this instance.
- **EventsUploaded**  Number of events uploaded.
- **Flags**  Flags indicating device state such as network state, battery state, and opt-in state.
- **FullTriggerBufferDroppedCount**  Number of events dropped due to trigger buffer being full.
- **HeartBeatSequenceNumber**  The sequence number of this heartbeat.
- **InvalidHttpCodeCount**  Number of invalid HTTP codes received from contacting Vortex.
- **LastAgentConnectionError**  Last non-timeout error encountered in the host/agent channel.
- **LastEventSizeOffender**  Event name of last event which exceeded max event size.
- **LastInvalidHttpCode**  Last invalid HTTP code received from Vortex.
- **MaxActiveAgentConnectionCount**  The maximum number of active agents during this heartbeat timeframe.
- **MaxInUseScenarioCounter**  Soft maximum number of scenarios loaded by UTC.
- **PreviousHeartBeatTime**  Time of last heartbeat event (allows chaining of events).
- **PrivacyBlockedCount**  The number of events blocked due to privacy settings or tags.
- **RepeatedUploadFailureDropped**  Number of events lost due to repeated upload failures for a single buffer.
- **SettingsHttpAttempts**  Number of attempts to contact OneSettings service.
- **SettingsHttpFailures**  The number of failures from contacting the OneSettings service.
- **ThrottledDroppedCount**  Number of events dropped due to throttling of noisy providers.
- **TopUploaderErrors**  List of top errors received from the upload endpoint.
- **UploaderDroppedCount**  Number of events dropped at the uploader layer of telemetry client.
- **UploaderErrorCount**  Number of errors received from the upload endpoint.
- **VortexFailuresTimeout**  The number of timeout failures received from Vortex.
- **VortexHttpAttempts**  Number of attempts to contact Vortex.
- **VortexHttpFailures4xx**  Number of 400-499 error codes received from Vortex.
- **VortexHttpFailures5xx**  Number of 500-599 error codes received from Vortex.
- **VortexHttpResponseFailures**  Number of Vortex responses that aren't 2XX or 400.
- **VortexHttpResponsesWithDroppedEvents**  Number of Vortex responses containing at least 1 dropped event.


### TelClientSynthetic.PrivacyGuardReport

Reports that the Connected User Experiences and Telemetry service encountered an event that may contain privacy data. The event contains information needed to identify and study the source event that triggered the report. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **EventEpoch**  The epoch in which the source event that triggered the report was fired.
- **EventName**  The name of the source event that triggered the report.
- **EventSeq**  The sequence number of the source event that triggered the report.
- **FieldName**  The field of interest in the source event that triggered the report.
- **IsAllowedToSend**  True if the field of interest was sent unmodified in the source event that triggered the report, false if the field of interest was anonymized.
- **IsDebug**  True if the event was logged in a debug build of Windows.
- **TelemetryApi**  The application programming interface used to log the source event that triggered the report. Current values for this field can be "etw" or "rpc".
- **TypeAsText**  The type of issue detected in the source event that triggered the report. Current values for this field can be "UserName" or "DeviceName".


## Driver installation events

### Microsoft.Windows.DriverInstall.NewDevInstallDeviceEnd

This event sends data about the driver installation once it's completed. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **DeviceInstanceId**  The unique identifier of the device in the system.
- **DriverUpdated**  Indicates whether the driver was updated.
- **Error**  The Win32 error code of the installation.
- **InstallDate**  The date the driver was installed.
- **InstallFlags**  The driver installation flags.
- **OptionalData**  Metadata specific to WU (Windows Update) associated with the driver (flight IDs, recovery IDs, etc.)
- **RebootRequired**  Indicates whether a reboot is required after the installation.
- **RollbackPossible**  Indicates whether this driver can be rolled back.


### Microsoft.Windows.DriverInstall.NewDevInstallDeviceStart

This event sends data about the driver that the new driver installation is replacing. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **DeviceInstanceId**  The unique identifier of the device in the system.
- **FirstInstallDate**  The first time a driver was installed on this device.
- **InstallFlags**  Flag indicating how driver setup was called.
- **LastDriverDate**  Date of the driver that is being replaced.
- **LastDriverInbox**  Indicates whether the previous driver was included with Windows.
- **LastDriverInfName**  Name of the INF file (the setup information file) of the driver being replaced.
- **LastDriverPackageId**  ID of the driver package installed on the device before the current install operation began. ID contains the name + architecture + hash.
- **LastDriverVersion**  The version of the driver that is being replaced.
- **LastFirmwareDate**  The date of the last firmware reported from the EFI System Resource Table (ESRT).
- **LastFirmwareRevision**  The last firmware revision number reported from EFI System Resource Table (ESRT).
- **LastFirmwareVersion**  The last firmware version reported from the EFI System Resource Table (ESRT).
- **LastInstallDate**  The date a driver was last installed on this device.
- **LastMatchingDeviceId**  The hardware ID or compatible ID that Windows last used to install the device instance.
- **LastProblem**  The previous problem code that was set on the device.
- **LastProblemStatus**  The previous problem code that was set on the device.
- **LastSubmissionId**  The driver submission identifier of the driver that is being replaced.


## Fault Reporting events

### Microsoft.Windows.FaultReporting.AppCrashEvent

This event sends data about crashes for both native and managed applications, to help keep Windows up to date. The data includes information about the crashing process and a summary of its exception record. It doesn't contain any Watson bucketing information. The bucketing information is recorded in a Windows Error Reporting (WER) event that is generated when the WER client reports the crash to the Watson service, and the WER event will contain the same ReportID (see field 14 of crash event, field 19 of WER event) as the crash event for the crash being reported. AppCrash is emitted once for each crash handled by WER (e.g. from an unhandled exception or FailFast or ReportException). Note that Generic Watson event types (e.g. from PLM) that may be considered crashes\" by a user DO NOT emit this event.

The following fields are available:

- **AppName**  The name of the app that has crashed.
- **AppSessionGuid**  GUID made up of process ID and is used as a correlation vector for process instances in the telemetry backend.
- **AppTimeStamp**  The date/time stamp of the app.
- **AppVersion**  The version of the app that has crashed.
- **ExceptionCode**  The exception code returned by the process that has crashed.
- **ExceptionOffset**  The address where the exception had occurred.
- **Flags**  Flags indicating how reporting is done. For example, queue the report, don't offer JIT debugging, or don't terminate the process after reporting.
- **FriendlyAppName**  The description of the app that has crashed, if different from the AppName. Otherwise, the process name.
- **IsFatal**  True/False to indicate whether the crash resulted in process termination.
- **ModName**  Exception module name (e.g. bar.dll).
- **ModTimeStamp**  The date/time stamp of the module.
- **ModVersion**  The version of the module that has crashed.
- **PackageFullName**  Store application identity.
- **PackageRelativeAppId**  Store application identity.
- **ProcessArchitecture**  Architecture of the crashing process, as one of the PROCESSOR_ARCHITECTURE_* constants: 0: PROCESSOR_ARCHITECTURE_INTEL. 5: PROCESSOR_ARCHITECTURE_ARM. 9: PROCESSOR_ARCHITECTURE_AMD64. 12: PROCESSOR_ARCHITECTURE_ARM64.
- **ProcessCreateTime**  The time of creation of the process that has crashed.
- **ProcessId**  The ID of the process that has crashed.
- **ReportId**  A GUID used to identify the report. This can used to track the report across Watson.
- **TargetAppId**  The kernel reported AppId of the application being reported.
- **TargetAppVer**  The specific version of the application being reported
- **TargetAsId**  The sequence number for the hanging process.


## Feature quality events

### Microsoft.Windows.FeatureQuality.Heartbeat

This event indicates the feature status heartbeat. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **Features**  Array of features.


### Microsoft.Windows.FeatureQuality.StateChange

This event indicates the change of feature state. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **flightId**  Flight id.
- **state**  New state.


### Microsoft.Windows.FeatureQuality.Status

This event indicates the feature status. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **featureId**  Feature id.
- **flightId**  Flight id.
- **time**  Time of status change.
- **variantId**  Variant id.


## Hang Reporting events

### Microsoft.Windows.HangReporting.AppHangEvent

This event sends data about hangs for both native and managed applications, to help keep Windows up to date. It doesn't contain any Watson bucketing information. The bucketing information is recorded in a Windows Error Reporting (WER) event that is generated when the WER client reports the hang to the Watson service, and the WER event will contain the same ReportID (see field 13 of hang event, field 19 of WER event) as the hang event for the hang being reported. AppHang is reported only on PC devices. It handles classic Win32 hangs and is emitted only once per report. Some behaviors that may be perceived by a user as a hang are reported by app managers (e.g. PLM/RM/EM) as Watson Generics and will not produce AppHang events.

The following fields are available:

- **AppName**  The name of the app that has hung.
- **AppSessionGuid**  GUID made up of process id used as a correlation vector for process instances in the telemetry backend.
- **AppVersion**  The version of the app that has hung.
- **IsFatal**  True/False based on whether the hung application caused the creation of a Fatal Hang Report.
- **PackageFullName**  Store application identity.
- **PackageRelativeAppId**  Store application identity.
- **ProcessArchitecture**  Architecture of the hung process, as one of the PROCESSOR_ARCHITECTURE_* constants: 0: PROCESSOR_ARCHITECTURE_INTEL. 5: PROCESSOR_ARCHITECTURE_ARM. 9: PROCESSOR_ARCHITECTURE_AMD64. 12: PROCESSOR_ARCHITECTURE_ARM64.
- **ProcessCreateTime**  The time of creation of the process that has hung.
- **ProcessId**  The ID of the process that has hung.
- **ReportId**  A GUID used to identify the report. This can used to track the report across Watson.
- **TargetAppId**  The kernel reported AppId of the application being reported.
- **TargetAppVer**  The specific version of the application being reported.
- **TargetAsId**  The sequence number for the hanging process.
- **TypeCode**  Bitmap describing the hang type.
- **WaitingOnAppName**  If this is a cross process hang waiting for an application, this has the name of the application.
- **WaitingOnAppVersion**  If this is a cross process hang, this has the version of the application for which it's waiting.
- **WaitingOnPackageFullName**  If this is a cross process hang waiting for a package, this has the full name of the package for which it's waiting.
- **WaitingOnPackageRelativeAppId**  If this is a cross process hang waiting for a package, this has the relative application id of the package.


## Holographic events

### Microsoft.Windows.Analog.HydrogenCompositor.ExclusiveMode_Entered

This event sends data indicating the start of augmented reality application experience. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **SessionID**  Unique value for each attempt.
- **TargetAsId**  The sequence number for the process.
- **windowInstanceId**  Unique value for each window instance.


### Microsoft.Windows.Analog.HydrogenCompositor.ExclusiveMode_Leave

This event sends data indicating the end of augmented reality application experience. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **EventHistory**  Unique number of event history.
- **ExternalComponentState**  State of external component.
- **LastEvent**  Unique number of last event.
- **SessionID**  Unique value for each attempt.
- **TargetAsId**  The sequence number for the process.
- **windowInstanceId**  Unique value for each window instance.


### Microsoft.Windows.Analog.Spectrum.TelemetryHolographicSpaceCreated

This event indicates the state of Windows holographic scene. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **AppSessionGuid**  GUID made up of process ID and is used as a correlation vector for process instances in the telemetry backend.
- **IsForCompositor**  True/False to indicate whether the holographic space is for compositor process.
- **Source**  An enumeration indicating the source of the log.
- **WindowInstanceId**  Unique value for each window instance.


### Microsoft.Windows.Shell.HolographicFirstRun.AppActivated

This event indicates Windows Mixed Reality Portal app activation state. This event also used to count WMR device. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **IsDemoMode**  Windows Mixed Reality Portal app state of demo mode.
- **IsDeviceSetupComplete**  Windows Mixed Reality Portal app state of device setup completion.
- **PackageVersion**  Windows Mixed Reality Portal app package version.
- **PreviousExecutionState**  Windows Mixed Reality Portal app prior execution state.
- **wilActivity**  Windows Mixed Reality Portal app wilActivity ID.


### TraceLoggingOasisUsbHostApiProvider.DeviceInformation

This event provides Windows Mixed Reality device information. This event is also used to count WMR device and device type. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **BootloaderMajorVer**  Windows Mixed Reality device boot loader major version.
- **BootloaderMinorVer**  Windows Mixed Reality device boot loader minor version.
- **BootloaderRevisionNumber**  Windows Mixed Reality device boot loader revision number.
- **CalibrationBlobSize**  Windows Mixed Reality device calibration blob size.
- **CalibrationFwMajorVer**  Windows Mixed Reality device calibration firmware major version.
- **CalibrationFwMinorVer**  Windows Mixed Reality device calibration firmware minor version.
- **CalibrationFwRevNum**  Windows Mixed Reality device calibration firmware revision number.
- **DeviceInfoFlags**  Windows Mixed Reality device info flags.
- **FirmwareMajorVer**  Windows Mixed Reality device firmware major version.
- **FirmwareMinorVer**  Windows Mixed Reality device firmware minor version.
- **FirmwareRevisionNumber**  Windows Mixed Reality device calibration firmware revision number.
- **FpgaFwMajorVer**  Windows Mixed Reality device FPGA firmware major version.
- **FpgaFwMinorVer**  Windows Mixed Reality device FPGA firmware minor version.
- **FpgaFwRevisionNumber**  Windows Mixed Reality device FPGA firmware revision number.
- **FriendlyName**  Windows Mixed Reality device friendly name.
- **HashedSerialNumber**  Windows Mixed Reality device hashed serial number.
- **HeaderSize**  Windows Mixed Reality device header size.
- **HeaderVersion**  Windows Mixed Reality device header version.
- **LicenseKey**  Windows Mixed Reality device header license key.
- **Make**  Windows Mixed Reality device make.
- **ManufacturingDate**  Windows Mixed Reality device manufacturing date.
- **Model**  Windows Mixed Reality device model.
- **PresenceSensorHidVendorPage**  Windows Mixed Reality device presence sensor HID vendor page.
- **PresenceSensorHidVendorUsage**  Windows Mixed Reality device presence sensor HID vendor usage.
- **PresenceSensorUsbVid**  Windows Mixed Reality device presence sensor USB VId.
- **ProductBoardRevision**  Windows Mixed Reality device product board revision number.
- **SerialNumber**  Windows Mixed Reality device serial number.


## Inventory events

### Microsoft.Windows.Inventory.Core.AmiTelCacheChecksum

This event captures basic checksum data about the device inventory items stored in the cache for use in validating data completeness for Microsoft.Windows.Inventory.Core events. The fields in this event may change over time, but they'll always represent a count of a given object. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **DriverPackageExtended**  A count of driverpackageextended objects in cache.
- **InventoryAcpiPhatHealthRecord**  A count of ACPI PHAT Health Record objects in cache.
- **InventoryAcpiPhatVersionElement**  A count of ACPI PHAT Version Element objects in cache.
- **InventoryApplication**  A count of application objects in cache.
- **InventoryApplicationDriver**  A count of application driver objects in cache
- **InventoryApplicationFramework**  A count of application framework objects in cache
- **InventoryDeviceContainer**  A count of device container objects in cache.
- **InventoryDeviceInterface**  A count of Plug and Play device interface objects in cache.
- **InventoryDeviceMediaClass**  A count of device media objects in cache.
- **InventoryDevicePnp**  A count of device Plug and Play objects in cache.
- **InventoryDeviceSensor**  A count of device sensor objects in cache.
- **InventoryDeviceUsbHubClass**  A count of device usb objects in cache
- **InventoryDriverBinary**  A count of driver binary objects in cache.
- **InventoryDriverPackage**  A count of device objects in cache.
- **InventoryVersion**  test


### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkAdd

This event provides the basic metadata about the frameworks an application may depend on. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **FileId**  A hash that uniquely identifies a file.
- **Frameworks**  The list of frameworks this file depends on.
- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkStartSync

This event indicates that a new set of InventoryApplicationFrameworkAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryApplicationRemove

This event indicates that a new set of InventoryDevicePnpAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerAdd

This event sends basic metadata about a device container (such as a monitor or printer as opposed to a Plug and Play device). The data collected with this event is used to help keep Windows up to date and to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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
- **ModelId**  A unique model ID.
- **ModelName**  The model name.
- **ModelNumber**  The model number for the device container.
- **PrimaryCategory**  The primary category for the device container.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerStartSync

This event indicates that a new set of InventoryDeviceContainerAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceInterfaceAdd

This event retrieves information about what sensor interfaces are available on the device. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event indicates that a new set of InventoryDeviceInterfaceAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpRemove

This event indicates that the InventoryDevicePnpRemove object is no longer present. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpStartSync

This event indicates that a new set of InventoryDevicePnpAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceSensorAdd

This event sends basic metadata about sensor devices on a machine. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.
- **Manufacturer**  Sensor manufacturer.


### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassAdd

This event sends basic metadata about the USB hubs on the device. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.
- **TotalUserConnectablePorts**  Total number of connectable USB ports.
- **TotalUserConnectableTypeCPorts**  Total number of connectable USB Type C ports.


### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryStartSync

This event indicates that a new set of InventoryDriverBinaryAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageAdd

This event sends basic metadata about drive packages installed on the system. The data collected with this event is used to help keep Windows up to date and performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Class**  The class name for the device driver.
- **ClassGuid**  The class GUID for the device driver.
- **Date**  The driver package date.
- **Directory**  The path to the driver package.
- **DriverInBox**  Is the driver included with the operating system?
- **FlightIds**  Driver Flight IDs.
- **Inf**  The INF name of the driver package.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Provider**  The provider for the driver package.
- **RecoveryIds**  Driver recovery IDs.
- **SubmissionId**  The HLK submission ID for the driver package.
- **Version**  The version of the driver package.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousMemorySlotArrayInfoRemove

This event indicates that this particular data object represented by the objectInstanceId is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousMemorySlotArrayInfoStartSync

This diagnostic event indicates a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoAdd

This event provides data on Unified Update Platform (UUP) products and what version they are at. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Identifier**  UUP identifier
- **LastActivatedVersion**  Last activated version
- **PreviousVersion**  Previous version
- **Source**  UUP source
- **Version**  UUP version


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoStartSync

This is a diagnostic event that indicates a new sync is being generated for this object type. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.Indicators.Checksum

This event summarizes the counts for the InventoryMiscellaneousUexIndicatorAdd events. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **ChecksumDictionary**  A count of each operating system indicator.
- **PCFP**  Equivalent to the InventoryId field that is found in other core events.


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorAdd

This event represents the basic metadata about the OS indicators installed on the system. The data collected with this event helps ensure the device is up to date and keeps Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **IndicatorValue**  The indicator value.


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorRemove

This event indicates that this particular data object represented by the objectInstanceId is no longer present. This event is used to understand the OS indicators installed on the system. The data collected with this event helps ensure the device is current and Windows is up to date and performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorStartSync

This event indicates that this particular data object represented by the objectInstanceId is no longer present. This event is used to understand the OS indicators installed on the system. The data collected with this event helps ensure the device is current and Windows is up to date and performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



## Kernel events

### Microsoft.Windows.Kernel.PnP.AggregateClearDevNodeProblem

This event is sent when a problem code is cleared from a device. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **Count**  The total number of events.
- **DeviceInstanceId**  The unique identifier of the device on the system.
- **LastProblem**  The previous problem that was cleared.
- **LastProblemStatus**  The previous NTSTATUS value that was cleared.
- **ServiceName**  The name of the driver or service attached to the device.


### Microsoft.Windows.Kernel.Power.AbnormalShutdown

This event provides diagnostic information of the most recent abnormal shutdown.

The following fields are available:

- **BootEnvironment**  Errors from boot environment.
- **BootStatValid**  Status of bootstat file.
- **Bugcheck**  Bugcheck information.
- **CrashDump**  Crash dump information.
- **CurrentBootId**  ID of this boot.
- **FirmwareReset**  System reset by firmware.
- **LastShutdownBootId**  BootID of last shutdown.
- **LongPowerButtonHold**  Long power button hold information.
- **SystemStateTransition**  State transition information.
- **Watchdog**  Watchdog information.


## Microsoft Edge events

### Aria.af397ef28e484961ba48646a5d38cf54.Microsoft.WebBrowser.Installer.EdgeUpdate.Ping

This Ping event sends a detailed inventory of software and hardware information about the EdgeUpdate service, Edge applications, and the current system environment including app configuration, update configuration, and hardware capabilities. This event contains Device Connectivity and Configuration, Product and Service Performance, and Software Setup and Inventory data. One or more events is sent each time any installation, update, or uninstallation occurs with the EdgeUpdate service or with Edge applications. This event is used to measure the reliability and performance of the EdgeUpdate service and if Edge applications are up to date. This is an indication that the event is designed to keep Windows secure and up to date.

The following fields are available:

- **appAp**  Any additional parameters for the specified application. Default: ''.
- **appAppId**  The GUID that identifies the product. Compatible clients must transmit this attribute. Default: undefined.
- **appBrandCode**  The brand code under which the product was installed, if any. A brand code is a short (4-character) string used to identify installations that took place as a result of partner deals or website promotions. Default: ''.
- **appChannel**  An integer indicating the channel of the installation (i.e. Canary or Dev).
- **appClientId**  A generalized form of the brand code that can accept a wider range of values and is used for similar purposes. Default: ''.
- **appCohort**  A machine-readable string identifying the release cohort (channel) that the app belongs to. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortHint**  A machine-readable enum indicating that the client has a desire to switch to a different release cohort. The exact legal values are app-specific and should be shared between the server and app implementations. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortName**  A stable non-localized human-readable enum indicating which (if any) set of messages the app should display to the user. For example, an app with a cohort Name of 'beta' might display beta-specific branding to the user. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appConsentState**  Bit flags describing the diagnostic data disclosure and response flow where 1 indicates the affirmative and 0 indicates the negative or unspecified data. Bit 1 indicates consent was given, bit 2 indicates data originated from the download page, bit 18 indicates choice for sending data about how the browser is used, and bit 19 indicates choice for sending data about websites visited.
- **appDayOfInstall**  The date-based counting equivalent of appInstallTimeDiffSec (the numeric calendar day that the app was installed on). This value is provided by the server in the response to the first request in the installation flow. The client MAY fuzz this value to the week granularity (e.g. send '0' for 0 through 6, '7' for 7 through 13, etc.). The first communication to the server should use a special value of '-1'. A value of '-2' indicates that this value isn't known. Default: '-2'.
- **appExperiments**  A key/value list of experiment identifiers. Experiment labels are used to track membership in different experimental groups, and may be set at install or update time. The experiments string is formatted as a semicolon-delimited concatenation of experiment label strings. An experiment label string is an experiment Name, followed by the '=' character, followed by an experimental label value. For example: 'crdiff=got_bsdiff;optimized=O3'. The client shouldn't transmit the expiration date of any experiments it has, even if the server previously specified a specific expiration date. Default: ''.
- **appInstallTime**  The product install time in seconds. '0' if unknown. Default: '-1'.
- **appInstallTimeDiffSec**  The difference between the current time and the install date in seconds. '0' if unknown. Default: '-1'.
- **appLang**  The language of the product install, in IETF BCP 47 representation. Default: ''.
- **appLastLaunchTime**  The time when browser was last launched.
- **appNextVersion**  The version of the app that the update flow to which this event belongs attempted to reach, regardless of the success or failure of the update operation. Default: '0.0.0.0'.
- **appPingEventAppSize**  The total number of bytes of all downloaded packages. Default: '0'.
- **appPingEventDoneBeforeOOBEComplete**  Indicates whether the install or update was completed before Windows Out of the Box Experience ends. 1 means event completed before OOBE finishes; 0 means event wasn't completed before OOBE finishes; -1 means the field doesn't apply.
- **appPingEventDownloadMetricsCdnCCC**  ISO 2 character country or region code that matches to the country or region updated binaries are delivered from. E.g.: US.
- **appPingEventDownloadMetricsCdnCID**  Numeric value used to internally track the origins of the updated binaries. For example, 2.
- **appPingEventDownloadMetricsDownloadedBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsDownloader**  A string identifying the download algorithm and/or stack. Example values include: 'bits', 'direct', 'winhttp', 'p2p'. Sent in events that have an event type of '14' only. Default: ''.
- **appPingEventDownloadMetricsDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventDownloadMetricsError**  The error code (if any) of the operation, encoded as a signed base-10 integer. Default: '0'.
- **appPingEventDownloadMetricsServerIpHint**  For events representing a download, the CDN Host IP address that corresponds to the update file server. The CDN host is controlled by Microsoft servers and always maps to IP addresses hosting *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadMetricsTotalBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsUrl**  For events representing a download, the CDN URL provided by the update server for the client to download the update, the URL is controlled by Microsoft servers and always maps back to either *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventErrorCode**  The error code (if any) of the operation, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventEventResult**  An enum indicating the result of the event. Default: '0'.
- **appPingEventEventType**  An enum indicating the type of the event. Compatible clients MUST transmit this attribute. 
- **appPingEventExtraCode1**  Additional numeric information about the operation's result, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventInstallTimeMs**  For events representing an install, the time elapsed between the start of the install and the end of the install, in milliseconds. For events representing an entire update flow, the sum of all such durations. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appPingEventNumBytesDownloaded**  The number of bytes downloaded for the specified application. Default: '0'.
- **appPingEventPackageCacheResult**  Whether there's an existing package cached in the system to update or install. 1 means that there's a cache hit under the expected key, 2 means there's a cache hit under a different key, 0 means that there's a cache miss. -1 means the field doesn't apply.
- **appPingEventSequenceId**  An id that uniquely identifies particular events within one requestId. Since a request can contain multiple ping events, this field is necessary to uniquely identify each possible event.
- **appPingEventSourceUrlIndex**  For events representing a download, the position of the download URL in the list of URLs supplied by the server in a "urls" tag.
- **appPingEventUpdateCheckTimeMs**  For events representing an entire update flow, the time elapsed between the start of the update check and the end of the update check, in milliseconds. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appReferralHash**  The hash of the referral code used to install the product. '0' if unknown. Default: '0'.
- **appUpdateCheckIsUpdateDisabled**  The state of whether app updates are restricted by group policy. True if updates have been restricted by group policy or false if they haven't.
- **appUpdateCheckTargetVersionPrefix**  A component-wise prefix of a version number, or a complete version number suffixed with the $ character. The server shouldn't return an update instruction to a version number that doesn't match the prefix or complete version number. The prefix is interpreted a dotted-tuple that specifies the exactly-matching elements; it isn't a lexical prefix (for example, '1.2.3' must match '1.2.3.4' but must not match '1.2.34'). Default: ''.
- **appUpdateCheckTtToken**  An opaque access token that can be used to identify the requesting client as a member of a trusted-tester group. If non-empty, the request should be sent over SSL or another secure protocol. Default: ''.
- **appVersion**  The version of the product install. Default: '0.0.0.0'.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **eventType**  A string indicating the type of the event.
- **expETag**  An identifier representing all service applied configurations and experiments when current update happens. Used for testing only.
- **hwDiskType**  Device’s hardware disk type.
- **hwHasAvx**  '1' if the client's hardware supports the AVX instruction set. '0' if the client's hardware doesn't support the AVX instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse**  '1' if the client's hardware supports the SSE instruction set. '0' if the client's hardware doesn't support the SSE instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse2**  '1' if the client's hardware supports the SSE2 instruction set. '0' if the client's hardware doesn't support the SSE2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse3**  '1' if the client's hardware supports the SSE3 instruction set. '0' if the client's hardware doesn't support the SSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse41**  '1' if the client's hardware supports the SSE4.1 instruction set. '0' if the client's hardware doesn't support the SSE4.1 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse42**  '1' if the client's hardware supports the SSE4.2 instruction set. '0' if the client's hardware doesn't support the SSE4.2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSsse3**  '1' if the client's hardware supports the SSSE3 instruction set. '0' if the client's hardware doesn't support the SSSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwLogicalCpus**  Number of logical CPUs of the device.
- **hwPhysmemory**  The physical memory available to the client, truncated down to the nearest gibibyte. '-1' if unknown. This value is intended to reflect the maximum theoretical storage capacity of the client, not including any hard drive or paging to a hard drive or peripheral. Default: '-1'.
- **isMsftDomainJoined**  '1' if the client is a member of a Microsoft domain. '0' otherwise. Default: '0'.
- **oemProductManufacturer**  The device manufacturer name.
- **oemProductName**  The product name of the device defined by device manufacturer.
- **osArch**  The architecture of the operating system (e.g. 'x86', 'x64', 'arm'). '' if unknown. Default: ''.
- **osPlatform**  The operating system family that the within which the Omaha client is running (e.g. 'win', 'mac', 'linux', 'ios', 'android'). '' if unknown. The operating system Name should be transmitted in lowercase with minimal formatting. Default: ''.
- **osServicePack**  The secondary version of the operating system. '' if unknown. Default: ''.
- **osVersion**  The primary version of the operating system. '' if unknown. Default: ''.
- **requestCheckPeriodSec**  The update interval in seconds. The value is read from the registry. Default: '-1'.
- **requestDlpref**  A comma-separated list of values specifying the preferred download URL behavior. The first value is the highest priority, further values reflect secondary, tertiary, et cetera priorities. Legal values are '' (in which case the entire list must be empty, indicating unknown or no-preference) or 'cacheable' (the server should prioritize sending URLs that are easily cacheable). Default: ''.
- **requestDomainJoined**  '1' if the machine is part of a managed enterprise domain. Otherwise '0'.
- **requestInstallSource**  A string specifying the cause of the update flow. For example: 'ondemand', or 'scheduledtask'. Default: ''.
- **requestIsMachine**  '1' if the client is known to be installed with system-level or administrator privileges. '0' otherwise. Default: '0'.
- **requestOmahaShellVersion**  The version of the Omaha installation folder. Default: ''.
- **requestOmahaVersion**  The version of the Omaha updater itself (the entity sending this request). Default: '0.0.0.0'.
- **requestProtocolVersion**  The version of the Omaha protocol. Compatible clients MUST provide a value of '3.0'. Compatible clients must always transmit this attribute. Default: undefined.
- **requestRequestId**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha request. Each request attempt should have (with high probability) a unique request id. Default: ''.
- **requestSessionCorrelationVectorBase**  A client generated random MS Correlation Vector base code used to correlate the update session with update and CDN servers. Default: ''.
- **requestSessionId**  A randomly-generated (uniformly distributed) GUID. Each single update flow (e.g. update check, update application, event ping sequence) should have (with high probability) a single unique session ID. Default: ''.
- **requestTestSource**  Either '', 'dev', 'qa', 'prober', 'auto', or 'ossdev'. Any value except '' indicates that the request is a test and shouldn't be counted toward normal metrics. Default: ''.
- **requestUid**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha user. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.


## OneSettings events

### Microsoft.Windows.OneSettingsClient.Status

This event indicates the config usage of status update. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **flightId**  Flight id.
- **time**  Time.


## OOBE events

### Microsoft.Windows.Shell.Oobe.ZDP.ZdpTaskCancelled

This event is the result of an attempt to cancel ZDP task

The following fields are available:

- **cancelReason**  Enum for source/reason to cancel.
- **resultCode**  HR result of the cancellation.


## Other events

### Microsoft.Edge.Crashpad.HangEvent

This event sends simple Product and Service Performance data on a hanging/frozen Microsoft Edge browser process to help mitigate future instances of the hang.

The following fields are available:

- **app_name**  The name of the hanging process.
- **app_session_guid**  Encodes the boot session, process, and process start time.
- **app_version**  The version of the hanging process.
- **client_id_hash**  Hash of the browser client id to help identify the installation.
- **etag**  Identifier to help identify running browser experiments.
- **hang_source**  Identifies how the hang was detected.
- **process_type**  The type of the hanging browser process, for example, gpu-process, renderer, etc.
- **stack_hash**  A hash of the hanging stack. Currently not used or set to zero.


### Microsoft.Gaming.Critical.Error

Common error event used by the Gaming Telemetry Library to provide centralized monitoring for critical errors logged by callers using the library.

The following fields are available:

- **callStack**  List of active subroutines running during error occurrence.
- **componentName**  Friendly name meant to represent what feature area this error should be attributed to. Used for aggregations and pivots of data.
- **customAttributes**  List of custom attributes.
- **errorCode**  Error code.
- **extendedData**  JSON blob representing additional, provider-level properties common to the component.
- **featureName**  Friendly name meant to represent which feature this should be attributed to.
- **identifier**  Error identifier.
- **message**  Error message.
- **properties**  List of properties attributed to the error.

### Microsoft.Gaming.Critical.ProviderRegistered

Indicates that a telemetry provider has been registered with the Gaming Telemetry Library.

The following fields are available:

- **providerNamespace**  The telemetry Namespace for the registered provider.

### Microsoft.Gaming.OOBE.HDDBackup

This event describes whether an External HDD back up has been found.

The following fields are available:

- **backupVersion**  version number of backup.
- **extendedData**  JSON blob representing additional, provider-level properties common to the component.
- **hasConsoleSettings**  Indicates whether the console settings stored.
- **hasUserSettings**  Indicates whether the user settings stored.
- **hasWirelessProfile**  Indicates whether the wireless profile stored.
- **hddBackupFound**  Indicates whether hdd backup is found.
- **osVersion**  Operating system version.

### Microsoft.Gaming.OOBE.OobeComplete

This event is triggered when OOBE activation is complete.

The following fields are available:

- **allowAutoUpdate**  Allows auto update.
- **allowAutoUpdateApps**  Allows auto update for apps.
- **appliedTransferToken**  Applied transfer token.
- **connectionType**  Connection type.
- **curSessionId**  Current session id.
- **extendedData**  JSON blob representing additional, provider-level properties common to the component.
- **instantOn**  Instant on.
- **moobeAcceptedState**  Moobe accepted state.
- **phaseOneElapsedTimeMs**  Total elapsed time in milliseconds for phase 1.
- **phaseOneVersion**  Version of phase 1.
- **phaseTwoElapsedTimeMs**  Total elapsed time in milliseconds for phase 2.
- **phaseTwoVersion**  Version of phase 2.
- **systemUpdateRequired**  Indicates whether a system update required.
- **totalElapsedTimeMs**  Total elapsed time in milliseconds of all phases.
- **usedCloudBackup**  Indicates whether cloud backup is used.
- **usedHDDBackup**  Indicates whether HDD backup is used.
- **usedOffConsole**  Indicates whether off console is used.


### Microsoft.Gaming.OOBE.SessionStarted

This event is sent at the start of OOBE session.

The following fields are available:

- **customAttributes**  customAttributes.
- **extendedData**  extendedData.

### Microsoft.Surface.Mcu.Prod.CriticalLog

Error information from Surface device firmware.

The following fields are available:

- **CrashLog**  MCU crash log
- **criticalLogSize** Log size
- **CUtility::GetTargetNameA(target)**  Product identifier.
- **productId**  Product identifier
- **uniqueId**  Correlation ID that can be used with Watson to get more details about the failure.


### Microsoft.Windows.Defender.Engine.Maps.Heartbeat

Heartbeat is sent once a day to indicate Defender is running and functional. Event includes necessary information to understand health of Defender on the device.

The following fields are available:

- **AppVersion**  Version of the Defender platform
- **CampRing**  Camp ring used for monthly deployment
- **CfaMode**  State of Controlled Folder Access
- **ConsumerAsrMode**  State of Attack Surface Reduction
- **CountAsrRules**  Number of Attack Surface Reduction rules in place
- **EngineRing**  Engine ring used for monthly deployment
- **EngineVersion**  Version of the AntiMalware Engine
- **IsAsrAnyAudit**  Flag to indicate if any Attack Surface Reduction rules are running in Audit mode
- **IsAsrAnyBlock**  Flag to indicate if any Attack Surface Reduction rules are running in Block mode
- **IsBeta**  Flag to indicate if the user has opted in for Beta updates for Defender.
- **IsManaged**  Flag to indicate if Defender is running in manage mode
- **IsPassiveMode**  Flag to indicate if Defender is in Passive mode for ATP
- **IsSxsPassiveMode**  Flag to indicate if Defender is in Passive mode for Limited periodic scanning
- **ProductGuid**  Defender Product Guid (static for Defender).
- **PusMode**  Mode for blocking potentially unwanted software
- **ShouldHashIds**  Do we have ISO Compliance requirement to hash IDs for e5
- **SignatureRing**  Signature ring used for deployments
- **SigVersion**  Version of signature VDMs


### Microsoft.Windows.Security.SBServicing.ApplySecureBootUpdateFveAction

Event that indicates BitLocker TPM reseal action was triggered during Secure boot update

The following fields are available:

- **Action**  Action string indicating place of failure
- **hr**  Return HRESULT code

### Microsoft.Windows.Security.SBServicing.ApplySecureBootUpdateStarted

Event that indicates secure boot update has started.

The following fields are available:

- **AvailableUpdates**  Number of available secure boot updates.
- **SecureBootUpdateCaller**  Enum value indicating if this is a servicing or an upgrade.


### Microsoft.Windows.UpdateAssistantApp.UpdateAssistantStartState

This event marks the start of an Update Assistant State. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CV**  The correlation vector.
- **GlobalEventCounter**  The global event counter for all telemetry on the device.
- **UpdateAssistantStateDownloading**  True at the start Downloading.
- **UpdateAssistantStateInitializingApplication**  True at the start of the state InitializingApplication.
- **UpdateAssistantStateInitializingStates**  True at the start of InitializingStates.
- **UpdateAssistantStateInstalling**  True at the start of Installing.
- **UpdateAssistantStatePostInstall**  True at the start of PostInstall.
- **UpdateAssistantVersion**  Current package version of UpdateAssistant.


### MicrosoftWindowsCodeIntegrityTraceLoggingProvider.CodeIntegrityHvciSysprepHvciAlreadyEnabled

This event fires when HVCI is already enabled so no need to continue auto-enablement.

### ShellWNSRegistration.SLSChannelRegistrationFailed

This event is logged when the upload of a channel URI to the SLS service fails.

The following fields are available:

- **baseData**  JSON blob.
- **baseType**  PartB schema type.
- **RetryAttempt**  The retry attempt number for attempting to open and register the channel.
- **RetryTimeInMilliseconds**  The amount of time taken to retry the channel request in milliseconds.


### ShellWNSRegistration.SLSChannelRegistrationSuccess

This event is logged when a channel URI is successfully uploaded to the SLS service.

The following fields are available:

- **RegistrationPayload**  JSON payload containing Channel Uri and other data uploaded to SLS.
- **RetryAttempts**  The retry attempt number for attempting to open and register the channel.
- **RetryTimeInMilliseconds**  The amount of time taken to retry the channel request in milliseconds.
- **TitleId**  TitleId for which channel is uploaded.


### ShellWNSRegistration.WNSChannelRequestFailed

This event is logged when a Channel Request fails. Contains error code and AppUserModelId for which channel was requested.

The following fields are available:

- **baseData**  JSON blob.
- **baseType**  PartB schema type.
- **RetryAttempt**  The retry attempt number for attempting to open and register the channel.
- **RetryTimeInMilliseconds**  The amount of time taken to retry the channel request in milliseconds.


### ShellWNSRegistration.WNSChannelRequestSuccess

This event is triggered immediately following the completion of a Channel Request API call. Contains channel URI and AppUserModelId for which channel was requested.

The following fields are available:

- **AppUserModelId**  Unique identifier for app requesting a channel.
- **ChannelUri**  Channel URI returned by WNS.
- **RetryAttempt**  The retry attempt number for attempting to open and register the channel.
- **RetryTimeInMilliseconds**  The amount of time taken to retry the channel request in milliseconds.

## Privacy consent logging events

### Microsoft.Windows.Shell.PrivacyConsentLogging.PrivacyConsentCompleted

This event is used to determine whether the user successfully completed the privacy consent experience. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **presentationVersion**  Which display version of the privacy consent experience the user completed
- **privacyConsentState**  The current state of the privacy consent experience
- **settingsVersion**  Which setting version of the privacy consent experience the user completed
- **userOobeExitReason**  The exit reason of the privacy consent experience


## Setup events

### Microsoft.Windows.Setup.WinSetupMon.ProtectionViolation

This event provides information about move or deletion of a file or a directory that is being monitored for data safety during feature updates. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **Path**  Path to the file or the directory that is being moved or deleted.
- **Process**  Path to the process that is requesting the move or the deletion.
- **SessionId**   Identifier to correlate this component's telemetry with that of others.
- **TargetPath**  (Optional) If the operation is a move, the target path to which the file or directory is being moved.


### Microsoft.Windows.Setup.WinSetupMon.TraceError

Provides details about error in the functioning of upgrade data safety monitoring filter driver.

The following fields are available:

- **Message**  Text string describing the error condition.
- **SessionId** Identifier to correlate this component's telemetry with that of others.
- **Status**  	NTSTATUS code related to the error.


### Microsoft.Windows.Setup.WinSetupMon.TraceErrorVolume

Provides details about error in the functioning of upgrade data safety monitoring filter driver, related to a specific volume (drive).

The following fields are available:

- **Message**  Text string describing the error condition.
- **SessionId**  Identifier to correlate this component's telemetry with that of others.
- **Status**  NTSTATUS code related to the error.
- **Volume**  Path of the volume on which the error occurs


### SetupPlatformTel.SetupPlatformTelEvent

This service retrieves events generated by SetupPlatform, the engine that drives the various deployment scenarios, to help keep Windows up to date.

The following fields are available:

- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **Value**  Retrieves the value associated with the corresponding event name (Field Name). For example: For time related events this will include the system time.


## Surface events

### Microsoft.Surface.Battery.Prod.BatteryInfoEvent

deny

The following fields are available:

- **batteryData.data()**  Battery performance data.
- **BatteryDataSize:**  Size of the battery performance data.


### Microsoft.Surface.Battery.Prod.BatteryInfoEventV2_BPM

This event includes the hardware level data about battery performance.  The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **BPMCurrentlyEngaged**  Instantaneous snapshot if BPM is engaged on device.
- **BPMExitCriteria**  What is the BPM exit criteria - 20%SOC or 50%SOC?
- **BPMHvtCountA**  Current HVT count for BPM counter A.
- **BPMHvtCountB**  Current HVT count for BPM counter B.
- **bpmOptOutLifetimeCount**  BPM OptOut Lifetime Count.
- **BPMRsocBucketsHighTemp_Values**  Time in temperature range 46°C -60°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMRsocBucketsLowTemp_Values**  Time in temperature range 0°C -20°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMRsocBucketsMediumHighTemp_Values**  Time in temperature range 36°C -45°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMRsocBucketsMediumLowTemp_Values**  Time in temperature range 21°C-35°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMTotalEngagedMinutes**  Total time that BPM was engaged.
- **BPMTotalEntryEvents**  Total number of times entering BPM.
- **ComponentId**  Component ID.
- **FwVersion**  FW version that created this log.
- **LogClass**  Log Class.
- **LogInstance**  Log instance within class (1..n).
- **LogVersion**  Log MGR version.
- **MCUInstance**  Instance id used to identify multiple MCU's in a product.
- **ProductId**  Product ID.
- **SeqNum**  Sequence Number.
- **TimeStamp**  UTC seconds when log was created.
- **Ver**  Schema version.


### Microsoft.Surface.Battery.Prod.BatteryInfoEventV2_CTT

This event includes the hardware level data about battery performance. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **BPMKioskModeStartDateInSeconds**  First time Battery Limit was turned on.
- **BPMKioskModeTotalEngagedMinutes**  Total time Battery Limit was on (SOC value at 50%).
- **CTTMinSOC1day**  Rolling 1 day minimum SOC. Value set to 0 initially.
- **CTTMinSOC28day**  Rolling 28 day minimum SOC. Value set to 0 initially.
- **CTTMinSOC3day**  Rolling 3 day minimum SOC. Value set to 0 initially.
- **CTTMinSOC7day**  Rolling 7 day minimum SOC. Value set to 0 initially.
- **CTTStartDateInSeconds**  Start date from when device was starting to be used.
- **currentAuthenticationState**  Current Authentication State.
- **ProtectionPolicy**  Battery limit engaged. True (0 False).
- **SeqNum**  Sequence Number.
- **Ver**  Schema version.
- **VoltageOptimization**  Current CTT reduction in mV.


### Microsoft.Surface.Battery.Prod.BatteryInfoEventV2_GG

This event includes the hardware level data about battery performance. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **cbTimeCell_Values**  cb time for different cells.
- **ComponentId**  Component ID.
- **cycleCount**  Cycle Count.
- **deltaVoltage**  Delta voltage.
- **eocChargeVoltage_Values**  EOC Charge voltage values.
- **fullChargeCapacity**  Full Charge Capacity.
- **FwVersion**  FW version that created this log.
- **lastCovEvent**  Last Cov event.
- **lastCuvEvent**  Last Cuv event.
- **LogClass**  LOG_CLASS.
- **LogInstance**  Log instance within class (1..n).
- **LogVersion**  LOG_MGR_VERSION.
- **manufacturerName**  Manufacturer name.
- **maxChargeCurrent**  Max charge current.
- **maxDeltaCellVoltage**  Max delta cell voltage.
- **maxDischargeCurrent**  Max discharge current.
- **maxTempCell**  Max temp cell.
- **maxVoltage_Values**  Max voltage values.
- **MCUInstance**  Instance id used to identify multiple MCU's in a product.
- **minTempCell**  Min temp cell.
- **minVoltage_Values**  Min voltage values.
- **numberOfCovEvents**  Number of Cov events.
- **numberOfCuvEvents**  Number of Cuv events.
- **numberOfOCD1Events**  Number of OCD1 events.
- **numberOfOCD2Events**  Number of OCD2 events.
- **numberOfQmaxUpdates**  Number of Qmax updates.
- **numberOfRaUpdates**  Number of Ra updates.
- **numberOfShutdowns**  Number of shutdowns.
- **pfStatus_Values**  pf status values.
- **ProductId**  Product ID.
- **qmax_Values**  Qmax values for different cells.
- **SeqNum**  Sequence Number.
- **TimeStamp**  UTC seconds when log was created.
- **Ver**  Schema version.


### Microsoft.Surface.Battery.Prod.BatteryInfoEventV3

This event includes the hardware level data about battery performance. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **BatteryTelemetry**  Hardware Level Data about battery performance.
- **ComponentId**  Component ID.
- **FwVersion**  FW version that created this log.
- **LogClass**  LOG CLASS.
- **LogInstance**  Log instance within class (1..n).
- **LogVersion**  LOG MGR VERSION.
- **MCUInstance**  Instance id used to identify multiple MCU's in a product.
- **ProductId**  ProductId ID.
- **SeqNum**  Sequence Number.
- **TimeStamp**  UTC seconds when log was created.
- **Ver**  Schema version.


### Microsoft.Surface.SystemReset.Prod.ResetCauseEventV2

This event sends reason for SAM, PCH and SoC reset. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **HostResetCause**  Host reset cause.
- **PchResetCause**  PCH reset cause.
- **SamResetCause**  SAM reset cause.


## UEFI events

### Microsoft.Windows.UEFI.ESRT

This event sends basic data during boot about the firmware loaded or recently installed on the machine. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **DriverFirmwareFilename**  The firmware file name reported by the device hardware key.
- **DriverFirmwareIntegrityFilename**  Filename of the integrity package that is supplied in the firmware package.
- **DriverFirmwarePolicy**  The optional version update policy value.
- **DriverFirmwareStatus**  The firmware status reported by the device hardware key.
- **DriverFirmwareVersion**  The firmware version reported by the device hardware key.
- **FirmwareId**  The UEFI (Unified Extensible Firmware Interface) identifier.
- **FirmwareLastAttemptStatus**  The reported status of the most recent firmware installation attempt, as reported by the EFI System Resource Table (ESRT).
- **FirmwareLastAttemptVersion**  The version of the most recent attempted firmware installation, as reported by the EFI System Resource Table (ESRT).
- **FirmwareType**  The UEFI (Unified Extensible Firmware Interface) type.
- **FirmwareVersion**  The UEFI (Unified Extensible Firmware Interface) version as reported by the EFI System Resource Table (ESRT).
- **InitiateUpdate**  Indicates whether the system is ready to initiate an update.
- **LastAttemptDate**  The date of the most recent attempted firmware installation.
- **LastAttemptStatus**  The result of the most recent attempted firmware installation.
- **LastAttemptVersion**  The version of the most recent attempted firmware installation.
- **LowestSupportedFirmwareVersion**  The oldest (lowest) version of firmware supported.
- **MaxRetryCount**  The maximum number of retries, defined by the firmware class key.
- **RetryCount**  The number of attempted installations (retries), reported by the driver software key.
- **Status**  The status returned to the PnP (Plug-and-Play) manager.
- **UpdateAttempted**  Indicates if installation of the current update has been attempted before.


## Update events

### Update360Telemetry.FellBackToDownloadingAllPackageFiles

This event indicates whether a failure occurred during Missing File List generation and is applicable to Quality Update downloads.

The following fields are available:

- **ErrorCode**  Error code returned during Missing File List generation.
- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique ID for each flight.
- **Package**  Name of the package for which Missing File List generation failed and we fell back to downloading all package files.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each attempt (same value for initialize, download, install commit phases).
- **UpdateId**  Unique ID for each Update.


### Update360Telemetry.UpdateAgentDownloadRequest

This event sends data for the download request phase of updating Windows via the new Unified Update Platform (UUP) scenario. Applicable to PC and Mobile. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CancelRequested**  Boolean indicating whether a cancel was requested.
- **ContainsSafeOSDUPackage**  Boolean indicating whether Safe DU packages are part of the payload.
- **DeletedCorruptFiles**  Boolean indicating whether corrupt payload was deleted.
- **DownloadComplete**  Indicates if the download is complete.
- **DownloadedSizeBundle**  Cumulative size (in bytes) of the downloaded bundle content.
- **DownloadedSizeCanonical**  Cumulative size (in bytes) of downloaded canonical content.
- **DownloadedSizeDiff**  Cumulative size (in bytes) of downloaded diff content.
- **DownloadedSizeExpress**  Cumulative size (in bytes) of downloaded express content.
- **DownloadedSizePSFX**  Cumulative size (in bytes) of downloaded PSFX content.
- **DownloadRequests**  Number of times a download was retried.
- **ErrorCode**  The error code returned for the current download request phase.
- **ExtensionName**  Indicates whether the payload is related to Operating System content or a plugin.
- **FlightId**  Unique ID for each flight.
- **InternalFailureResult**  Indicates a non-fatal error from a plugin.
- **NumberOfHops**  Number of intermediate packages used to reach target version.
- **ObjectId**  Unique value for each Update Agent mode (same concept as InstanceId for Setup360).
- **PackageCategoriesSkipped**  Indicates package categories that were skipped, if applicable.
- **PackageCountOptional**  Number of optional packages requested.
- **PackageCountRequired**  Number of required packages requested.
- **PackageCountTotal**  Total number of packages needed.
- **PackageCountTotalBundle**  Total number of bundle packages.
- **PackageCountTotalCanonical**  Total number of canonical packages.
- **PackageCountTotalDiff**  Total number of diff packages.
- **PackageCountTotalExpress**  Total number of express packages.
- **PackageCountTotalPSFX**  The total number of PSFX packages.
- **PackageExpressType**  Type of express package.
- **PackageSizeCanonical**  Size of canonical packages in bytes.
- **PackageSizeDiff**  Size of diff packages in bytes.
- **PackageSizeExpress**  Size of express packages in bytes.
- **PackageSizePSFX**  The size of PSFX packages, in bytes.
- **RangeRequestState**  Indicates the range request type used.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Outcome of the download request phase of update.
- **SandboxTaggedForReserves**  The sandbox for reserves.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each attempt (same value for initialize, download, install commit phases).
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgentExpand

This event collects information regarding the expansion phase of the new Unified Update Platform (UUP) update scenario, which is leveraged by both Mobile and Desktop. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CancelRequested**  Boolean that indicates whether a cancel was requested.
- **CanonicalRequestedOnError**  Indicates if an error caused a reversion to a different type of compressed update (TRUE or FALSE).
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


### Update360Telemetry.UpdateAgentInitialize

This event sends data for the initialize phase of updating Windows via the new Unified Update Platform (UUP) scenario, which is applicable to both PCs and Mobile. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ErrorCode**  The error code returned for the current install phase.
- **FlightId**  Unique ID for each flight.
- **FlightMetadata**  Contains the FlightId and the build being flighted.
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Outcome of the install phase of the update.
- **ScenarioId**  Indicates the update scenario.
- **SessionData**  String containing instructions to update agent for processing FODs and DUICs (Null for other scenarios).
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgentInstall

This event sends data for the install phase of updating Windows. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CancelRequested**  Boolean to indicate whether a cancel was requested.
- **ErrorCode**  The error code returned for the current install phase.
- **ExtensionName**  Indicates whether the payload is related to Operating System content or a plugin.
- **FlightId**  Unique value for each Update Agent mode (same concept as InstanceId for Setup360).
- **InternalFailureResult**  Indicates a non-fatal error from a plugin.
- **ObjectId**  Correlation vector value generated from the latest USO scan.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  The result for the current install phase.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update.
- **UpdatePriority**  Indicates the priority that Update Agent is requested to run in for the install phase of an update.


### Update360Telemetry.UpdateAgentMitigationResult

This event sends data indicating the result of each update agent mitigation. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **Applicable**  Indicates whether the mitigation is applicable for the current update.
- **CommandCount**  The number of command operations in the mitigation entry.
- **CustomCount**  The number of custom operations in the mitigation entry.
- **FileCount**  The number of file operations in the mitigation entry.
- **FlightId**  Unique identifier for each flight.
- **Index**  The mitigation index of this particular mitigation.
- **MitigationScenario**  The update scenario in which the mitigation was executed.
- **Name**  The friendly name of the mitigation.
- **ObjectId**  Unique value for each Update Agent mode.
- **OperationIndex**  The mitigation operation index (in the event of a failure).
- **OperationName**  The friendly name of the mitigation operation (in the event of failure).
- **RegistryCount**  The number of registry operations in the mitigation entry.
- **RelatedCV**  The correlation vector value generated from the latest USO scan.
- **Result**  The HResult of this operation.
- **ScenarioId**  The update agent scenario ID.
- **SessionId**  Unique value for each update attempt.
- **TimeDiff**  The amount of time spent performing the mitigation (in 100-nanosecond increments).
- **UpdateId**  Unique ID for each Update.


### Update360Telemetry.UpdateAgentMitigationSummary

This event sends a summary of all the update agent mitigations available for an update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **Applicable**  The count of mitigations that were applicable to the system and scenario.
- **Failed**  The count of mitigations that failed.
- **FlightId**  Unique identifier for each flight.
- **MitigationScenario**  The update scenario in which the mitigations were attempted.
- **ObjectId**  The unique value for each Update Agent mode.
- **RelatedCV**  The correlation vector value generated from the latest USO scan.
- **Result**  The HResult of this operation.
- **ScenarioId**  The update agent scenario ID.
- **SessionId**  Unique value for each update attempt.
- **TimeDiff**  The amount of time spent performing all mitigations (in 100-nanosecond increments).
- **Total**  Total number of mitigations that were available.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgentModeStart

This event sends data for the start of each mode during the process of updating Windows via the new Unified Update Platform (UUP) scenario. Applicable to both PCs and Mobile. The data collected with this event is used to help keep Windows secure and up to date.

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

This event collects information for both Mobile and Desktop regarding the post reboot phase of the new Unified Update Platform (UUP) update scenario. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ErrorCode**  The error code returned for the current post reboot phase.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **ObjectId**  Unique value for each Update Agent mode.
- **PostRebootResult**  Indicates the Hresult.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate.
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgentReboot

This event sends information indicating that a request has been sent to suspend an update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ErrorCode**  The error code returned for the current reboot.
- **FlightId**  Unique ID for the flight (test instance version).
- **IsSuspendable**  Indicates whether the update has the ability to be suspended and resumed at the time of reboot. When the machine is rebooted and the update is in middle of Predownload or Install and Setup.exe is running, this field is TRUE, if not its FALSE.
- **ObjectId**  The unique value for each Update Agent mode.
- **Reason**  Indicates the HResult why the machine couldn't be suspended. If it's successfully suspended, the result is 0.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **ScenarioId**  The ID of the update scenario.
- **SessionId**  The ID of the update attempt.
- **UpdateId**  The ID of the update.
- **UpdateState**  Indicates the state of the machine when Suspend is called. For example, Install, Download, Commit.


### Update360Telemetry.UpdateAgentSetupBoxLaunch

The UpdateAgent_SetupBoxLaunch event sends data for the launching of the setup box when updating Windows via the new Unified Update Platform (UUP) scenario. This event is only applicable to PCs. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ContainsExpressPackage**  Indicates whether the download package is express.
- **FlightId**  Unique ID for each flight.
- **FreeSpace**  Free space on OS partition.
- **InstallCount**  Number of install attempts using the same sandbox.
- **ObjectId**  Unique value for each Update Agent mode.
- **Quiet**  Indicates whether setup is running in quiet mode.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **SandboxSize**  Size of the sandbox.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each update attempt.
- **SetupLaunchAttemptCount**  Indicates the count of attempts to launch setup for the current Update Agent instance.
- **SetupMode**  Mode of setup to be launched.
- **UpdateId**  Unique ID for each Update.
- **UserSession**  Indicates whether install was invoked by user actions.


## Upgrade events

### Setup360Telemetry.Finalize

This event sends data indicating that the device has started the phase of finalizing the upgrade, to help keep Windows up-to-date and secure.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightData**  Unique value that identifies the flight.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  More detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, canceled.
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


### Setup360Telemetry.OsUninstall

This event sends data regarding OS updates and upgrades from Windows 7, Windows 8, and Windows 10. Specifically, it indicates the outcome of an OS uninstall. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightData**  Unique value that identifies the flight.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase or action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  Exit state of a Setup360 run. Example: succeeded, failed, blocked, canceled.
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  Windows Update client ID.


### Setup360Telemetry.PreInstallUX

This event sends data regarding OS updates and upgrades from Windows 7, Windows 8, and Windows 10, to help keep Windows up-to-date.  Specifically, it indicates the outcome of the PreinstallUX portion of the update process.

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightData**  Unique value that identifies the flight.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type, Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, canceled.
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  Windows Update client ID.


### Setup360Telemetry.Setup360MitigationResult

This event sends data indicating the result of each setup mitigation. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **Applicable**  TRUE if the mitigation is applicable for the current update.
- **ClientId**  In the Windows Update scenario, this is the client ID passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **CommandCount**  The number of command operations in the mitigation entry.
- **CustomCount**  The number of custom operations in the mitigation entry.
- **FileCount**  The number of file operations in the mitigation entry.
- **FlightData**  The unique identifier for each flight (test release).
- **Index**  The mitigation index of this particular mitigation.
- **InstanceId**  The GUID (Globally Unique ID) that identifies each instance of SetupHost.EXE.
- **MitigationScenario**  The update scenario in which the mitigation was executed.
- **Name**  The friendly (descriptive) name of the mitigation.
- **OperationIndex**  The mitigation operation index (in the event of a failure).
- **OperationName**  The friendly (descriptive) name of the mitigation operation (in the event of failure).
- **RegistryCount**  The number of registry operations in the mitigation entry.
- **ReportId**  In the Windows Update scenario, the Update ID that is passed to Setup. In media setup, this is the GUID for the INSTALL.WIM.
- **Result**  HResult of this operation.
- **ScenarioId**  Setup360 flow type.
- **TimeDiff**  The amount of time spent performing the mitigation (in 100-nanosecond increments).


### Setup360Telemetry.Setup360MitigationSummary

This event sends a summary of all the setup mitigations available for this update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **Applicable**  The count of mitigations that were applicable to the system and scenario.
- **ClientId**  The Windows Update client ID passed to Setup.
- **Failed**  The count of mitigations that failed.
- **FlightData**  The unique identifier for each flight (test release).
- **InstanceId**  The GUID (Globally Unique ID) that identifies each instance of SetupHost.EXE.
- **MitigationScenario**  The update scenario in which the mitigations were attempted.
- **ReportId**  In the Windows Update scenario, the Update ID that is passed to Setup. In media setup, this is the GUID for the INSTALL.WIM.
- **Result**  HResult of this operation.
- **ScenarioId**  Setup360 flow type.
- **TimeDiff**  The amount of time spent performing the mitigation (in 100-nanosecond increments).
- **Total**  The total number of mitigations that were available.


### Setup360Telemetry.Setup360OneSettings

This event collects information regarding the post reboot phase of the new UUP (Unified Update Platform) update scenario; which is leveraged by both Mobile and Desktop. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  The Windows Update client ID passed to Setup.
- **Count**  The count of applicable OneSettings for the device.
- **FlightData**  The ID for the flight (test instance version).
- **InstanceId**  The GUID (Globally-Unique ID) that identifies each instance of setuphost.exe.
- **Parameters**  The set of name value pair parameters sent to OneSettings to determine if there are any applicable OneSettings.
- **ReportId**  The Update ID passed to Setup.
- **Result**  The HResult of the event error.
- **ScenarioId**  The update scenario ID.
- **Values**  Values sent back to the device, if applicable.


### Setup360Telemetry.UnexpectedEvent

This event sends data indicating that the device has invoked the unexpected event phase of the upgrade, to help keep Windows up to date.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, canceled.
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


## Windows as a Service diagnostic events

### Microsoft.Windows.WaaSMedic.StackDataResetPerformAction

This event removes the datastore allowing for corrupt devices to reattempt an update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **DatastoreSizeInMB**  Size of Datastore.edb file. Default: -1 if not set/unknown.
- **FreeSpaceInGB**  Free space on the device before deleting the datastore. Default: -1 if not set/unknown.
- **HrLastFailure**  Error code from the failed removal.
- **HrResetDatastore**  Result of the attempted removal.
- **HrStopGroupOfServices**  Result of stopping the services.
- **MaskServicesStopped**  Bit field to indicate which services were stopped succesfully. Bit on means success. List of services: usosvc(1<<0), dosvc(1<<1), wuauserv(1<<2), bits(1<<3).
- **NumberServicesToStop**  The number of services that require manual stopping.


### Microsoft.Windows.WaaSMedic.SummaryEvent

This event provides the result of the WaaSMedic operation. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **callerApplication**  The name of the calling application.
- **capsuleCount**  The number of Sediment Pack capsules.
- **capsuleFailureCount**  The number of capsule failures.
- **detectionSummary**  Result of each applicable detection that was run.
- **featureAssessmentImpact**  WaaS Assessment impact for feature updates.
- **hrEngineBlockReason**  Indicates the reason for stopping WaaSMedic.
- **hrEngineResult**  Error code from the engine operation.
- **hrLastSandboxError**  The last error sent by the WaaSMedic sandbox.
- **initSummary**  Summary data of the initialization method.
- **isInteractiveMode**  The user started a run of WaaSMedic.
- **isManaged**  Device is managed for updates.
- **isWUConnected**  Device is connected to Windows Update.
- **noMoreActions**  No more applicable diagnostics.
- **pluginFailureCount**  The number of plugins that have failed.
- **pluginsCount**  The number of plugins.
- **qualityAssessmentImpact**  WaaS Assessment impact for quality updates.
- **remediationSummary**  Result of each operation performed on a device to fix an invalid state or configuration that's preventing the device from getting updates. For example, if Windows Update service is turned off, the fix is to turn the it back on.
- **usingBackupFeatureAssessment**  Relying on backup feature assessment.
- **usingBackupQualityAssessment**  Relying on backup quality assessment.
- **usingCachedFeatureAssessment**  WaaS Medic run didn't get OS build age from the network on the previous run.
- **usingCachedQualityAssessment**  WaaS Medic run didn't get OS revision age from the network on the previous run.
- **uusVersion**  The version of the UUS package.
- **versionString**  Version of the WaaSMedic engine.
- **waasMedicRunMode**  Indicates whether this was a background regular run of the medic or whether it was triggered by a user launching Windows Update Troubleshooter.


## Windows Store events

### Microsoft.Windows.StoreAgent.Telemetry.BeginGetInstalledContentIds

This event is sent when an inventory of the apps installed is started to determine whether updates for those apps are available. It's used to help keep Windows up-to-date and secure.



### Microsoft.Windows.StoreAgent.Telemetry.BeginUpdateMetadataPrepare

This event is sent when the Store Agent cache is refreshed with any available package updates. It's used to help keep Windows up-to-date and secure.



### Microsoft.Windows.StoreAgent.Telemetry.CompleteInstallOperationRequest

This event is sent at the end of app installations or updates to help keep Windows up-to-date and secure.

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
- **WUContentId**  The Windows Update content ID.


### Microsoft.Windows.StoreAgent.Telemetry.EndDownload

This event is sent after an app is downloaded to help keep Windows up-to-date and secure.

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


### Microsoft.Windows.StoreAgent.Telemetry.EndGetInstalledContentIds

This event is sent after sending the inventory of the products installed to determine whether updates for those products are available.  It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed before this operation.


### Microsoft.Windows.StoreAgent.Telemetry.EndInstall

This event is sent after a product has been installed to help keep Windows up-to-date and secure.

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
- **WUContentId**  The Windows Update content ID.


### Microsoft.Windows.StoreAgent.Telemetry.EndScanForUpdates

This event is sent after a scan for product updates to determine if there are packages to install. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **AutoUpdateWorkScheduledWithUOTime**  The time when work was first scheduled with UO. Value deleted when UO calls UnblockLowPriorityWorkItems.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  The result code of the last action performed.
- **IsApplicability**  Is this request to only check if there are any applicable packages to install?
- **IsInteractive**  Is this user requested?
- **IsOnline**  Is the request doing an online check?
- **NumberOfApplicableUpdates**  The number of packages returned by this operation.
- **PFN**  The PackageFullName of the app currently installed on the machine. This operation is scanning for an update for this app. Value will be empty if operation is scanning for updates for more than one app.


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
- **WUContentId**  The Windows Update content ID.


### Microsoft.Windows.StoreAgent.Telemetry.EndUpdateMetadataPrepare

This event is sent after a scan for available app updates to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed.


### Microsoft.Windows.StoreAgent.Telemetry.FulfillmentComplete

This event is sent at the end of an app install or update to help keep Windows up-to-date and secure.

The following fields are available:

- **CatalogId**  The name of the product catalog from which this app was chosen.
- **FailedRetry**  Indicates whether the installation or update retry was successful.
- **HResult**  The HResult code of the operation.
- **PFN**  The Package Family Name of the app that is being installed or updated.
- **ProductId**  The product ID of the app that is being updated or installed.


### Microsoft.Windows.StoreAgent.Telemetry.FulfillmentInitiate

This event is sent at the beginning of an app install or update to help keep Windows up-to-date and secure.

The following fields are available:

- **CatalogId**  The name of the product catalog from which this app was chosen.
- **FulfillmentPluginId**  The ID of the plugin needed to install the package type of the product.
- **PFN**  The Package Family Name of the app that is being installed or updated.
- **PluginTelemetryData**  Diagnostic information specific to the package-type plug-in.
- **ProductId**  The product ID of the app that is being updated or installed.


### Microsoft.Windows.StoreAgent.Telemetry.InstallOperationRequest

This event is sent when a product install or update is initiated, to help keep Windows up-to-date and secure.

The following fields are available:

- **BundleId**  The identity of the build associated with this product.
- **CatalogId**  If this product is from a private catalog, the Store Product ID for the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SkuId**  Specific edition ID being installed.
- **VolumePath**  The disk path of the installation.


### Microsoft.Windows.StoreAgent.Telemetry.ResumeInstallation

This event is sent when a product install or update is resumed (either by a user or the system), to help keep Windows up-to-date and secure.

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
- **ResumeClientId**  The ID of the app that initiated the resume operation.
- **SystemAttemptNumber**  The total number of system attempts.
- **UserAttemptNumber**  The total number of user attempts.
- **WUContentId**  The Windows Update content ID.


### Microsoft.Windows.StoreAgent.Telemetry.StateTransition

Products in the process of being fulfilled (installed or updated) are maintained in a list. This event is sent any time there's a change in a product's fulfillment status (pending, working, paused, canceled, or complete), to help keep Windows up to date and secure.

The following fields are available:

- **CatalogId**  The ID for the product being installed if the product is from a private catalog, such as the Enterprise catalog.
- **FulfillmentPluginId**  The ID of the plugin needed to install the package type of the product.
- **HResult**  The resulting HResult error/success code of this operation.
- **NewState**  The current fulfillment state of this product.
- **PFN**  The Package Family Name of the app that is being installed or updated.
- **PluginLastStage**  The most recent product fulfillment step that the plug-in has reported (different than its state).
- **PluginTelemetryData**  Diagnostic information specific to the package-type plug-in.
- **Prevstate**  The previous fulfillment state of this product.
- **ProductId**  Product ID of the app that is being updated or installed.


## Windows Update CSP events

### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureNotApplicable

This event sends basic telemetry on whether Feature Rollback (rolling back features updates) is applicable to a device. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **current**  Result of currency check.
- **dismOperationSucceeded**  Dism uninstall operation status.
- **oSVersion**  Build number of the device.
- **paused**  Indicates whether the device is paused.
- **rebootRequestSucceeded**  Reboot Configuration Service Provider (CSP) call success status.
- **sacDevice**  Represents the device info.
- **wUfBConnected**  Result of WUfB connection check.


### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureStarted

This event sends basic information indicating that Feature Rollback has started. The data collected with this event is used to help keep Windows secure and up to date.



## Windows Update Delivery Optimization events

### Microsoft.OSG.DU.DeliveryOptClient.DownloadCompleted

This event describes when a download has completed with Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **background**  Is the download a background download?
- **bytesFromCacheServer**  Bytes received from a cache host.
- **bytesFromCDN**  The number of bytes received from a CDN source.
- **bytesFromGroupPeers**  The number of bytes received from a peer in the same domain group.
- **bytesFromIntPeers**  The number of bytes received from peers not in the same LAN or in the same domain group.
- **bytesFromLedbat**  The number of bytes received from source using an Ledbat enabled connection.
- **bytesFromLinkLocalPeers**  The number of bytes received from local peers.
- **bytesFromLocalCache**  Bytes copied over from local (on disk) cache.
- **bytesFromPeers**  The number of bytes received from a peer in the same LAN.
- **bytesRequested**  The total number of bytes requested for download.
- **cacheServerConnectionCount**  Number of connections made to cache hosts.
- **cdnConnectionCount**  The total number of connections made to the CDN.
- **cdnErrorCodes**  A list of CDN connection errors since the last FailureCDNCommunication event.
- **cdnErrorCounts**  The number of times each error in cdnErrorCodes was encountered.
- **cdnIp**  The IP address of the source CDN.
- **cdnUrl**  Url of the source Content Distribution Network (CDN).
- **congestionPrevention**  Indicates a download may have been suspended to prevent network congestion.
- **dataSourcesTotal**  Bytes received per source type, accumulated for the whole session.
- **downlinkBps**  The maximum measured available download bandwidth (in bytes per second).
- **downlinkUsageBps**  The download speed (in bytes per second).
- **downloadMode**  The download mode used for this file download session.
- **downloadModeReason**  Reason for the download.
- **downloadModeSrc**  Source of the DownloadMode setting.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **expiresAt**  The time when the content will expire from the Delivery Optimization Cache.
- **fileID**  The ID of the file being downloaded.
- **fileSize**  The size of the file being downloaded.
- **groupConnectionCount**  The total number of connections made to peers in the same group.
- **groupID**  A GUID representing a custom group of devices.
- **internetConnectionCount**  The total number of connections made to peers not in the same LAN or the same group.
- **isEncrypted**  TRUE if the file is encrypted and will be decrypted after download.
- **isThrottled**  Event Rate throttled (event represents aggregated data).
- **isVpn**  Is the device connected to a Virtual Private Network?
- **jobID**  Identifier for the Windows Update job.
- **lanConnectionCount**  The total number of connections made to peers in the same LAN.
- **linkLocalConnectionCount**  The number of connections made to peers in the same Link-local network.
- **numPeers**  The total number of peers used for this download.
- **numPeersLocal**  The total number of local peers used for this download.
- **predefinedCallerName**  The name of the API Caller.
- **restrictedUpload**  Is the upload restricted?
- **routeToCacheServer**  The cache server setting, source, and value.
- **rttMs**  Min, Max, Avg round-trip time to the source.
- **rttRLedbatMs**  Min, Max, Avg round-trip time to a Ledbat enabled source.
- **sessionID**  The ID of the download session.
- **sessionTimeMs**  The duration of the session, in milliseconds.
- **totalTimeMs**  Duration of the download (in seconds).
- **updateID**  The ID of the update being downloaded.
- **uplinkBps**  The maximum measured available upload bandwidth (in bytes per second).
- **uplinkUsageBps**  The upload speed (in bytes per second).


### Microsoft.OSG.DU.DeliveryOptClient.FailureCdnCommunication

This event represents a failure to download from a CDN with Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **cdnHeaders**  The HTTP headers returned by the CDN.
- **cdnIp**  The IP address of the CDN.
- **cdnUrl**  The URL of the CDN.
- **errorCode**  The error code that was returned.
- **errorCount**  The total number of times this error code was seen since the last FailureCdnCommunication event was encountered.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **fileID**  The ID of the file being downloaded.
- **httpStatusCode**  The HTTP status code returned by the CDN.
- **isHeadRequest**  The type of  HTTP request that was sent to the CDN. Example: HEAD or GET
- **peerType**  The type of peer (LAN, Group, Internet, CDN, Cache Host, etc.).
- **requestOffset**  The byte offset within the file in the sent request.
- **requestSize**  The size of the range requested from the CDN.
- **responseSize**  The size of the range response received from the CDN.
- **sessionID**  The ID of the download session.


## Windows Update events

### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentAnalysisSummary

This event collects information regarding the state of devices and drivers on the system following a reboot after the install phase of the new device manifest UUP (Unified Update Platform) update scenario that is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **activated**  Whether the entire device manifest update is considered activated and in use.
- **analysisErrorCount**  The number of driver packages that couldn't be analyzed because errors occurred during analysis.
- **flightId**  Unique ID for each flight.
- **missingDriverCount**  The number of driver packages delivered by the device manifest that are missing from the system.
- **missingUpdateCount**  The number of updates in the device manifest that are missing from the system.
- **objectId**  Unique value for each diagnostics session.
- **publishedCount**  The number of drivers packages delivered by the device manifest that are published and available to be used on devices.
- **relatedCV**  Correlation vector value generated from the latest USO scan.
- **scenarioId**  Indicates the update scenario.
- **sessionId**  Unique value for each update session.
- **summary**  A summary string that contains basic information about driver packages that are part of the device manifest and any devices on the system that those driver packages match.
- **summaryAppendError**  A Boolean indicating if there was an error appending more information to the summary string.
- **truncatedDeviceCount**  The number of devices missing from the summary string because there isn't enough room in the string.
- **truncatedDriverCount**  The number of driver packages missing from the summary string because there isn't enough room in the string.
- **unpublishedCount**  How many drivers packages that were delivered by the device manifest that are still unpublished and unavailable to be used on devices.
- **updateId**  The unique ID for each update.


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentDownloadRequest

This event collects information regarding the download request phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **deletedCorruptFiles**  Indicates if UpdateAgent found any corrupt payload files and whether the payload was deleted.
- **errorCode**  The error code returned for the current session initialization.
- **flightId**  The unique identifier for each flight.
- **objectId**  Unique value for each Update Agent mode.
- **packageCountOptional**  Number of optional packages requested.
- **packageCountRequired**  Number of required packages requested.
- **packageCountTotal**  Total number of packages needed.
- **packageCountTotalCanonical**  Total number of canonical packages.
- **packageCountTotalDiff**  Total number of diff packages.
- **packageCountTotalExpress**  Total number of express packages.
- **packageSizeCanonical**  Size of canonical packages in bytes.
- **packageSizeDiff**  Size of diff packages in bytes.
- **packageSizeExpress**  Size of express packages in bytes.
- **rangeRequestState**  Represents the state of the download range request.
- **relatedCV**  Correlation vector value generated from the latest USO scan.
- **result**  Result of the download request phase of update.
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate.
- **sessionId**  Unique value for each Update Agent mode attempt.
- **updateId**  Unique ID for each update.


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentInitialize

This event sends data for initializing a new update session for the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **errorCode**  The error code returned for the current session initialization.
- **flightId**  The unique identifier for each flight.
- **flightMetadata**  Contains the FlightId and the build being flighted.
- **objectId**  Unique value for each Update Agent mode.
- **relatedCV**  Correlation vector value generated from the latest USO scan.
- **result**  Result of the initialize phase of the update. 0 = Succeeded, 1 = Failed, 2 = Cancelled, 3 = Blocked, 4 = BlockCancelled.
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate.
- **sessionData**  Contains instructions to update agent for processing FODs and DUICs (Null for other scenarios).
- **sessionId**  Unique value for each Update Agent mode attempt.
- **updateId**  Unique ID for each update.


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentInstall

This event collects information regarding the install phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **errorCode**  The error code returned for the current install phase.
- **flightId**  The unique identifier for each flight.
- **objectId**  The unique identifier for each diagnostics session.
- **relatedCV**  Correlation vector value generated from the latest USO scan.
- **result**  Outcome of the install phase of the update.
- **scenarioId**  The unique identifier for the update scenario.
- **sessionId**  The unique identifier for each update session.
- **updateId**  The unique identifier for each update.


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentModeStart

This event sends data for the start of each mode during the process of updating device manifest assets via the UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **flightId**  The unique identifier for each flight.
- **mode**  The mode that is starting.
- **objectId**  The unique value for each diagnostics session.
- **relatedCV**  Correlation vector value generated from the latest USO scan.
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate.
- **sessionId**  Unique value for each Update Agent mode attempt.
- **updateId**  Unique identifier for each update.


### Microsoft.Windows.Update.Orchestrator.ScheduledScanBeforeInitialLogon

Indicates that a scan before an initial logon is being scheduled

The following fields are available:

- **deferDurationInMinutes**  The delay in minutes until the scan for updates is performed.


### Microsoft.Windows.Update.Orchestrator.UpdatePolicyCacheRefresh

This event sends data on whether Update Management Policies were enabled on a device, to help keep Windows secure and up to date.

The following fields are available:

- **configuredPoliciescount**  Number of policies on the device.
- **policiesNamevaluesource**  Policy name and source of policy (group policy, MDM or flight).
- **updateInstalluxsetting**  Indicates whether a user has set policies via a user experience option.


### Microsoft.Windows.Update.SIHClient.TaskRunCompleted

This event is a launch event for Server Initiated Healing client.

The following fields are available:

- **CallerApplicationName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **CmdLineArgs**  Command line arguments passed in by the caller.
- **EventInstanceID**  A globally unique identifier for event instance.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UusVersion**  The version of the Update Undocked Stack.
- **WUDeviceID**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc).


### Microsoft.Windows.Update.SIHClient.TaskRunStarted

This event is a launch event for Server Initiated Healing client.

The following fields are available:

- **CallerApplicationName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **CmdLineArgs**  Command line arguments passed in by the caller.
- **EventInstanceID**  A globally unique identifier for event instance.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc).
- **UusVersion**  The version of the Update Undocked Stack.
- **WUDeviceID**  Unique device id controlled by the software distribution client.


### Microsoft.Windows.Update.Ux.MusUpdateSettings.Derived.ClientAggregated.LaunchPageDuration

This event is derived event results for the LaunchPageDuration scenario.


### Microsoft.Windows.Update.WUClient.DownloadPaused

This event is fired when the Download stage is paused.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **DownloadPriority**  Indicates the priority of the download activity.
- **EventType**  Indicates the purpose of the event - whether because scan started, succeeded, failed, etc.
- **FlightId**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **HandlerInfo**  Blob of Handler related information.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Commit Props {MergedUpdate}
- **RegulationResult**  The result code (HResult) of the last attempt to contact the regulation web service for download regulation of update content.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClientExt.UpdateMetadataIntegrityGeneral

Ensures Windows Updates are secure and complete. Event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack.

The following fields are available:

- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EndpointUrl**  Ensures Windows Updates are secure and complete. Event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce
- **RawMode**  Raw unparsed mode string from the SLS response. May be null if not applicable.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc)
- **SLSPrograms**  A test program a machine may be opted in. Examples include "Canary" and "Insider Fast".
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult)
- **UusVersion**  The version of the Update Undocked Stack


### Microsoft.Windows.WindowsUpdate.RUXIM.ICSExit

This event is generated when the RUXIM Interaction Campaign Scheduler (RUXIMICS) exits. The data collected with this event is used to help keep Windows up to date and performing properly.



### Microsoft.Windows.WindowsUpdate.RUXIM.ICSLaunch

This event is generated when the RUXIM Interaction Campaign Scheduler (RUXIMICS.EXE) is launched. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CommandLine**  The command line used to launch RUXIMICS.


### Microsoft.Windows.WindowsUpdate.RUXIM.ICSOneSettingsSyncExit

This event is sent when RUXIM completes checking with OneSettings to retrieve any UX interaction campaigns that may need to be displayed. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **ETagValue**  eTag for sync.
- **hrInitialize**  Error, if any, that occurred while initializing OneSettings.
- **hrQuery**  Error, if any, that occurred while retrieving UX interaction campaign data from OneSettings.


### Microsoft.Windows.WindowsUpdate.RUXIM.ICSOneSettingsSyncLaunch

This event is sent when RUXIM begins checking with OneSettings to retrieve any UX interaction campaigns that may need to be displayed. The data collected with this event is used to help keep Windows up to date.



## Windows Update mitigation events

### Mitigation360Telemetry.MitigationCustom.FixupWimmountSysPath

This event sends data specific to the FixupWimmountSysPath mitigation used for OS Updates. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **ClientId**  In the WU scenario, this will be the WU client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightId**  Unique identifier for each flight.
- **ImagePathDefault**  Default path to wimmount.sys driver defined in the system registry.
- **ImagePathFixedup**  Boolean indicating whether the wimmount.sys driver path was fixed by this mitigation.
- **InstanceId**  Unique GUID that identifies each instances of setuphost.exe.
- **MitigationScenario**  The update scenario in which the mitigations were attempted.
- **RelatedCV**  Correlation vector value.
- **Result**  HResult of this operation.
- **ScenarioId**  Setup360 flow type.
- **ScenarioSupported**  Whether the updated scenario that was passed in was supported.
- **SessionId**  The UpdateAgent “SessionId” value.
- **UpdateId**  Unique identifier for the Update.
- **WuId**  Unique identifier for the Windows Update client.



