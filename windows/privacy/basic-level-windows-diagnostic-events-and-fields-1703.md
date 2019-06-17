---
description: Use this article to learn more about what Windows diagnostic data is gathered at the basic level.
title: Windows 10, version 1703 basic diagnostic events and fields (Windows 10)
keywords: privacy, telemetry
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
audience: ITPro
ms.date: 04/19/2019
ms.reviewer: 
---


# Windows 10, version 1703 basic level Windows diagnostic events and fields

 **Applies to**

- Windows 10, version 1703


The Basic level gathers a limited set of information that is critical for understanding the device and its configuration including: basic device information, quality-related information, app compatibility, and Microsoft Store. When the level is set to Basic, it also includes the Security level information.

The Basic level helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. This helps Microsoft fix operating system or app problems.

Use this article to learn about diagnostic events, grouped by event area, and the fields within each event. A brief description is provided for each field. Every event generated includes common data, which collects device data.

You can learn more about Windows functional and diagnostic data through these articles:


- [Windows 10, version 1903 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1903.md)
- [Windows 10, version 1809 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1809.md)
- [Windows 10, version 1803 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1803.md)
- [Windows 10, version 1709 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1709.md)
- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
- [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md)




## Appraiser events

### Microsoft.Windows.Appraiser.General.ChecksumTotalPictureCount

This event lists the types of objects and how many of each exist on the client device. This allows for a quick way to ensure that the records present on the server match what is present on the client.

The following fields are available:

- **DatasourceApplicationFile_RS3**  The total DecisionApplicationFile objects targeting the next release of Windows on this device.
- **DatasourceDevicePnp_RS3**  The total DatasourceDevicePnp objects targeting the next release of Windows on this device.
- **DatasourceDriverPackage_RS3**  The total DatasourceDriverPackage objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoBlock_RS3**  The total DataSourceMatchingInfoBlock objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoPassive_RS3**  The total DataSourceMatchingInfoPassive objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoPostUpgrade_RS3**  The total DataSourceMatchingInfoPostUpgrade objects targeting the next release of Windows on this device.
- **DatasourceSystemBios_RS3**  The total DatasourceSystemBios objects targeting the next release of Windows on this device.
- **DecisionApplicationFile_RS3**  The total DecisionApplicationFile objects targeting the next release of Windows on this device.
- **DecisionDevicePnp_RS3**  The total DecisionDevicePnp objects targeting the next release of Windows on this device.
- **DecisionDriverPackage_RS3**  The total DecisionDriverPackage objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoBlock_RS3**  The total DecisionMatchingInfoBlock objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoPassive_RS3**  The total DataSourceMatchingInfoPassive objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoPostUpgrade_RS3**  The total DecisionMatchingInfoPostUpgrade objects targeting the next release of Windows on this device.
- **DecisionMediaCenter_RS3**  The total DecisionMediaCenter objects targeting the next release of Windows on this device.
- **DecisionSystemBios_RS3**  The total DecisionSystemBios objects targeting the next release of Windows on this device.
- **InventoryLanguagePack**  The count of DecisionApplicationFile objects present on this machine targeting the next release of Windows
- **InventorySystemBios**  The count of DecisionDevicePnp objects present on this machine targeting the next release of Windows
- **PCFP**  The count of DecisionDriverPackage objects present on this machine targeting the next release of Windows
- **SystemProcessorCompareExchange**  The count of DecisionMatchingInfoBlock objects present on this machine targeting the next release of Windows
- **SystemProcessorNx**  The total number of objects of this type present on this device.
- **SystemProcessorPrefetchW**  The total number of objects of this type present on this device.
- **SystemProcessorSse2**  The total number of objects of this type present on this device.
- **SystemWim**  The total number of objects of this type present on this device.
- **SystemWindowsActivationStatus**  The count of DecisionSystemBios objects present on this machine targeting the next release of Windows
- **SystemWlan**  The total number of objects of this type present on this device.
- **Wmdrm_RS3**  The total Wmdrm objects targeting the next release of Windows on this device.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileAdd

Represents the basic metadata about specific application files installed on the system.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file that is generating the events.
- **AvDisplayName**  If the app is an anti-virus app, this is its display name.
- **CompatModelIndex**  The compatibility prediction for this file.
- **HasCitData**  Indicates whether the file is present in CIT data.
- **HasUpgradeExe**  Indicates whether the anti-virus app has an upgrade.exe file.
- **IsAv**  Is the file an anti-virus reporting EXE?
- **ResolveAttempted**  This will always be an empty string when sending telemetry.
- **SdbEntries**  An array of fields that indicates the SDB entries that apply to this file.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileRemove

This event indicates that the DatasourceApplicationFile object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileStartSync

This event indicates that a new set of DatasourceApplicationFileAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpAdd

This event sends compatibility data for a Plug and Play device, to help keep Windows up to date.

The following fields are available:

- **ActiveNetworkConnection**  Indicates whether the device is an active network device.
- **AppraiserVersion**  The version of the appraiser file generating the events.
- **IsBootCritical**  Indicates whether the device boot is critical.
- **SdbEntries**  An array of fields indicating the SDB entries that apply to this device.
- **WuDriverCoverage**  Indicates whether there is a driver uplevel for this device, according to Windows Update.
- **WuDriverUpdateId**  The Windows Update ID of the applicable uplevel driver.
- **WuDriverUpdateID**  The Update ID of the applicable uplevel driver from Windows Update.
- **WuPopulatedFromId**  The expected uplevel driver matching ID based on driver coverage from Windows Update.
- **WuPopulatedFromID**  The expected uplevel driver matching ID based on driver coverage from Windows Update.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpRemove

This event indicates that the DatasourceDevicePnp object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpStartSync

This event indicates that a new set of DatasourceDevicePnpAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageAdd

This event sends compatibility database data about driver packages to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageRemove

This event indicates that the DatasourceDriverPackage object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageStartSync

This event indicates that a new set of DatasourceDriverPackageAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockAdd

This event sends blocking data about any compatibility blocking entries hit on the system that are not directly related to specific applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockRemove

This event indicates that the DataSourceMatchingInfoBlock object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockStartSync

This event indicates that a full set of DataSourceMatchingInfoBlockStAdd events have been sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveAdd

This event sends compatibility database information about non-blocking compatibility entries on the system that are not keyed by either applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveRemove

This event indicates that the DataSourceMatchingInfoPassive object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveStartSync

This event indicates that a new set of DataSourceMatchingInfoPassiveAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeAdd

This event sends compatibility database information about entries requiring reinstallation after an upgrade on the system that are not keyed by either applications or devices, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeRemove

This event indicates that the DataSourceMatchingInfoPostUpgrade object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeStartSync

This event indicates that a new set of DataSourceMatchingInfoPostUpgradeAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosAdd

This event sends compatibility database information about the BIOS to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **SdbEntries**  An array of fields indicating the SDB entries that apply to this BIOS.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosRemove

This event indicates that the DatasourceSystemBios object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosStartSync

This event indicates that a new set of DatasourceSystemBiosAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionApplicationFileAdd

This event sends compatibility decision data about a file to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file that is generating the events.
- **BlockAlreadyInbox**  The uplevel runtime block on the file already existed on the current OS.
- **BlockingApplication**  Indicates whether there are any application issues that interfere with the upgrade due to the file in question.
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

This event indicates that the DecisionApplicationFile object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionApplicationFileStartSync

This event indicates that a new set of DecisionApplicationFileAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpAdd

This event sends compatibility decision data about a PNP device to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **AssociatedDriverIsBlocked**  Is the driver associated with this PNP device blocked?
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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpStartSync

This event indicates that the DecisionDevicePnp object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageAdd

This event sends decision data about driver package compatibility to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **DriverBlockOverridden**  Does the driver package have an SDB block that blocks it from migrating, but that block has been overridden?
- **DriverIsDeviceBlocked**  Was the driver package was blocked because of a device block?
- **DriverIsDriverBlocked**  Is the driver package blocked because of a driver block?
- **DriverShouldNotMigrate**  Should the driver package be migrated during upgrade?
- **SdbDriverBlockOverridden**  Does the driver package have an SDB block that blocks it from migrating, but that block has been overridden?


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageRemove

This event indicates that the DecisionDriverPackage object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageStartSync

This event indicates that a new set of DecisionDriverPackageAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockAdd

This event sends compatibility decision data about blocking entries on the system that are not keyed by either applications or devices, to help keep Windows up to date.

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoBlockStartSync

This event indicates that a new set of DecisionMatchingInfoBlockAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveAdd

This event sends compatibility decision data about non-blocking entries on the system that are not keyed by either applications or devices, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BlockingApplication**  Are there any application issues that interfere with upgrade due to matching info blocks?
- **MigApplication**  Is there a matching info block with a mig for the current mode of upgrade?


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveRemove

This event Indicates that the DecisionMatchingInfoPassive object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveStartSync

This event indicates that a new set of DecisionMatchingInfoPassiveAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeAdd

This event sends compatibility decision data about entries that require reinstall after upgrade. It's used to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **NeedsInstallPostUpgradeData**  Will the file have a notification after upgrade to install a replacement for the app?
- **NeedsNotifyPostUpgradeData**  Should a notification be shown for this file after upgrade?
- **NeedsReinstallPostUpgradeData**  Will the file have a notification after upgrade to reinstall the app?
- **SdbReinstallUpgrade**  The file is tagged as needing to be reinstalled after upgrade in the compatibility database (but is not blocking upgrade).


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeRemove

This event indicates that the DecisionMatchingInfoPostUpgrade object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeStartSync

This event indicates that a new set of DecisionMatchingInfoPostUpgradeAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMediaCenterAdd

This event sends decision data about the presence of Windows Media Center, to help keep Windows up to date.

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMediaCenterStartSync

This event indicates that a new set of DecisionMediaCenterAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosAdd

This event sends compatibility decision data about the BIOS to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the device blocked from upgrade due to a BIOS block?
- **HasBiosBlock**  Does the device have a BIOS block?


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosRemove

This event indicates that the DecisionSystemBios object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosStartSync

This event indicates that a new set of DecisionSystemBiosAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.EnterpriseScenarioWithDiagTrackServiceRunning

This event indicates that Appraiser has been triggered to run an enterprise scenario while the DiagTrack service is installed. This event can only be sent if a special flag is used to trigger the enterprise scenario.

The following fields are available:

- **PCFP**  An ID for the system calculated by hashing hardware identifiers.
- **Time**  The client time of the event.


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

This event represents the basic metadata about a file on the system.  The file must be part of an app and either have a block in the compatibility database or be part of an antivirus program.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **BinaryType**  A binary type.  Example: UNINITIALIZED, ZERO_BYTE, DATA_ONLY, DOS_MODULE, NE16_MODULE, PE32_UNKNOWN, PE32_I386, PE32_ARM, PE64_UNKNOWN, PE64_AMD64, PE64_ARM64, PE64_IA64, PE32_CLR_32, PE32_CLR_IL, PE32_CLR_IL_PREFER32, PE64_CLR_64.
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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryApplicationFileStartSync

This event indicates that a new set of InventoryApplicationFileAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackAdd

This event sends data about the number of language packs installed on the system, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **HasLanguagePack**  Indicates whether this device has 2 or more language packs.
- **LanguagePackCount**  The number of language packs are installed.


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackRemove

This event indicates that the InventoryLanguagePack object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackStartSync

This event indicates that a new set of InventoryLanguagePackAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryMediaCenterStartSync

This event indicates that a new set of InventoryMediaCenterAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventorySystemBiosStartSync

This event indicates that a new set of InventorySystemBiosAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageAdd

This event is only runs during setup. It provides a listing of the uplevel driver packages that were downloaded before the upgrade. Is critical to understanding if failures in setup can be traced to not having sufficient uplevel drivers before the upgrade.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BootCritical**  Is the driver package marked as boot critical?
- **Build**  The build value from the driver package.
- **CatalogFile**  The name of the catalog file within the driver package.
- **Class**  The device class from the driver package.
- **ClassGuid**  The device class unique ID from the driver package.
- **Date**  The date from the driver package.
- **Inbox**  Is the driver package of a driver that is included with Windows?
- **OriginalName**  The original name of the INF file before it was renamed. Generally a path under $WINDOWS.~BT\Drivers\DU.
- **Provider**  The provider of the driver package.
- **PublishedName**  The name of the INF file after it was renamed.
- **Revision**  The revision of the driver package.
- **SignatureStatus**  Indicates if the driver package is signed. Unknown = 0, Unsigned = 1, Signed = 2.
- **VersionMajor**  The major version of the driver package.
- **VersionMinor**  The minor version of the driver package.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageRemove

This event indicates that the InventoryUplevelDriverPackage object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageStartSync

This event indicates that a new set of InventoryUplevelDriverPackageAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemMemoryStartSync

This event indicates that a new set of SystemMemoryAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorCompareExchangeStartSync

This event indicates that a new set of SystemProcessorCompareExchangeAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorLahfSahfStartSync

This event indicates that a new set of SystemProcessorLahfSahfAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorNxStartSync

This event  indicates that a new set of SystemProcessorNxAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWAdd

This event sends data indicating whether the system supports the PrefetchW CPU requirement, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **PrefetchWSupport**  Does the processor support PrefetchW?


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWRemove

This event indicates that the SystemProcessorPrefetchW object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWStartSync

This event indicates that a new set of SystemProcessorPrefetchWAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorSse2Add

This event sends data indicating whether the system supports the SSE2 CPU requirement, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked due to the processor?
- **SSE2ProcessorSupport**  Does the processor support SSE2?


### Microsoft.Windows.Appraiser.General.SystemProcessorSse2Remove

This event indicates that the SystemProcessorSse2 object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorSse2StartSync

This event indicates that a new set of SystemProcessorSse2Add events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemTouchAdd

This event sends data indicating whether the system supports touch, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **IntegratedTouchDigitizerPresent**  Is there an integrated touch digitizer?
- **MaximumTouches**  The maximum number of touch points supported by the device hardware.


### Microsoft.Windows.Appraiser.General.SystemTouchRemove

This event indicates that the SystemTouch object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemTouchStartSync

This event indicates that a new set of SystemTouchAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWimAdd

This event sends data indicating whether the operating system is running from a compressed Windows Imaging Format (WIM) file, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **IsWimBoot**  Is the current operating system running from a compressed WIM file?
- **RegistryWimBootValue**  The raw value from the registry that is used to indicate if the device is running from a WIM.


### Microsoft.Windows.Appraiser.General.SystemWimRemove

This event indicates that the SystemWim object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWimStartSync

This event indicates that a new set of SystemWimAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusAdd

This event sends data indicating whether the current operating system is activated, to help keep Windows up to date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **WindowsIsLicensedApiValue**  The result from the API that's used to indicate if operating system is activated.
- **WindowsNotActivatedDecision**  Is the current operating system activated?


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusRemove

This event indicates that the SystemWindowsActivationStatus object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusStartSync

This event indicates that a new set of SystemWindowsActivationStatusAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWlanAdd

This event sends data indicating whether the system has WLAN, and if so, whether it uses an emulated driver that could block an upgrade, to help keep Windows up-to-date.

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **Blocking**  Is the upgrade blocked because of an emulated WLAN driver?
- **HasWlanBlock**  Does the emulated WLAN driver have an upgrade block?
- **WlanEmulatedDriver**  Does the device have an emulated WLAN driver?
- **WlanExists**  Does the device support WLAN at all?
- **WlanModulePresent**  Are any WLAN modules present?
- **WlanNativeDriver**  Does the device have a non-emulated WLAN driver?


### Microsoft.Windows.Appraiser.General.SystemWlanRemove

This event indicates that the SystemWlan object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemWlanStartSync

This event indicates that a new set of SystemWlanAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.TelemetryRunHealth

This event indicates the parameters and result of a telemetry (diagnostic) run. This allows the rest of the data sent over the course of the run to be properly contextualized and understood, which is then used to keep Windows up to date.

The following fields are available:

- **AppraiserBranch**  The source branch in which the version of Appraiser that is running was built.
- **AppraiserDataVersion**  The version of the data files being used by the Appraiser telemetry run.
- **AppraiserProcess**  The name of the process that launched Appraiser.
- **AppraiserVersion**  The file version (major, minor and build) of the Appraiser DLL, concatenated without dots.
- **AuxFinal**  Obsolete, always set to false.
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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.
- **BlockingApplication**  Same as NeedsDismissAction.
- **NeedsDismissAction**  Indicates if a dismissible message is needed to warn the user about a potential loss of data due to DRM deprecation.
- **WmdrmApiResult**  Raw value of the API used to gather DRM state.
- **WmdrmCdRipped**  Indicates if the system has any files encrypted with personal DRM, which was used for ripped CDs.
- **WmdrmIndicators**  WmdrmCdRipped OR WmdrmPurchased.
- **WmdrmInUse**  WmdrmIndicators AND dismissible block in setup was not dismissed.
- **WmdrmNonPermanent**  Indicates if the system has any files with non-permanent licenses.
- **WmdrmPurchased**  Indicates if the system has any files with permanent licenses.


### Microsoft.Windows.Appraiser.General.WmdrmRemove

This event indicates that the Wmdrm object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.WmdrmStartSync

This event indicates that a new set of WmdrmAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


## Census events

### Census.App

This event sends version data about the Apps running on this device, to help keep Windows up to date.

The following fields are available:

- **CensusVersion**  The version of Census that generated the current data for this device.
- **IEVersion**  The version of Internet Explorer that is running on the device.


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
- **HashedDomain**  The hashed representation of the user domain used for login.
- **IsCloudDomainJoined**  Is this device joined to an Azure Active Directory (AAD) tenant? true/false
- **IsDERequirementMet**  Represents if the device can do device encryption.
- **IsDeviceProtected**  Represents if Device protected by BitLocker/Device Encryption
- **IsDomainJoined**  Indicates whether a machine is joined to a domain.
- **IsEDPEnabled**  Represents if Enterprise data protected on the device.
- **IsMDMEnrolled**  Whether the device has been MDM Enrolled or not.
- **MPNId**  Returns the Partner ID/MPN ID from Regkey. HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\DeployID
- **SCCMClientId**  This ID correlate systems that send data to Compat Analytics (OMS) and other OMS based systems with systems in an Enterprise System Center Configuration Manager (SCCM) environment.
- **ServerFeatures**  Represents the features installed on a Windows   Server. This can be used by developers and administrators who need to automate the process of determining the features installed on a set of server computers.
- **SystemCenterID**  The SCCM ID is an anonymized one-way hash of the Active Directory Organization identifier.


### Census.Firmware

This event sends data about the BIOS and startup embedded in the device, to help keep Windows up to date.

The following fields are available:

- **FirmwareManufacturer**  Represents the manufacturer of the device's firmware (BIOS).
- **FirmwareReleaseDate**  Represents the date the current firmware was released.
- **FirmwareType**  Represents the firmware type. The various types can be unknown, BIOS, UEFI.
- **FirmwareVersion**  Represents the version of the current firmware.


### Census.Flighting

This event sends Windows Insider data from customers participating in improvement testing and feedback programs, to help keep Windows up to date.

The following fields are available:

- **DeviceSampleRate**  The telemetry sample rate assigned to the device.
- **EnablePreviewBuilds**  Used to enable Windows Insider builds on a device.
- **FlightIds**  A list of the different Windows Insider builds on this device.
- **FlightingBranchName**  The name of the Windows Insider branch currently used by the device.
- **IsFlightsDisabled**  Represents if the device is participating in the Windows Insider program.
- **MSA_Accounts**  Represents a list of hashed IDs of the Microsoft Accounts that are flighting (pre-release builds) on this device.
- **SSRK**  Retrieves the mobile targeting settings.


### Census.Hardware

This event sends data about the device, including hardware type, OEM brand, model line, model, telemetry level setting, and TPM support, to help keep Windows up to date.

The following fields are available:

- **ActiveMicCount**  The number of active microphones attached to the device.
- **ChassisType**  Represents the type of device chassis, such as desktop or low profile desktop. The possible values can range between 1 - 36.
- **ComputerHardwareID**  Identifies a device class that is represented by a hash of different SMBIOS fields.
- **DeviceColor**  Indicates a color of the device.
- **DeviceForm**  Indicates the form as per the device classification.
- **DeviceName**  The device name that is set by the user.
- **DigitizerSupport**  Is a digitizer supported?
- **DUID**  The device unique ID.
- **InventoryId**  The device ID used for compatibility testing.
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
- **TelemetrySettingAuthority**  Determines who set the telemetry level, such as GP, MDM, or the user.
- **TPMVersion**  The supported Trusted Platform Module (TPM) on the device. If no TPM is present, the value is 0.
- **VoiceSupported**  Does the device have a cellular radio capable of making voice calls?


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

This event sends data about the processor to help keep Windows up to date.

The following fields are available:

- **ProcessorArchitecture**  Retrieves the processor architecture of the installed operating system.
- **ProcessorClockSpeed**  Retrieves the clock speed of the processor in MHz.
- **ProcessorCores**  Retrieves the number of cores in the processor.
- **ProcessorIdentifier**  The processor identifier of a manufacturer.
- **ProcessorManufacturer**  Retrieves the name of the processor's manufacturer.
- **ProcessorModel**  Retrieves the name of the processor model.
- **ProcessorPhysicalCores**  Number of physical cores in the processor.
- **SocketCount**  Number of physical CPU sockets of the machine.


### Census.Security

Provides information on several important data points about security settings.



### Census.Speech

This event is used to gather basic speech settings on the device.

The following fields are available:

- **AboveLockEnabled**  Cortana setting that represents if Cortana can be invoked when the device is locked.
- **GPAllowInputPersonalization**  Indicates if a Group Policy setting has enabled speech functionalities.
- **HolographicSpeechInputDisabled**  Holographic setting that represents if the attached HMD devices have speech functionality disabled by the user.
- **HolographicSpeechInputDisabledRemote**  Indicates if a remote policy has disabled speech functionalities for the HMD devices.
- **KWSEnabled**  Cortana setting that represents if a user has enabled the "Hey Cortana" keyword spotter (KWS).
- **MDMAllowInputPersonalization**  Indicates if an MDM policy has enabled speech functionalities.
- **RemotelyManaged**  Indicates if the device is being controlled by a remote admininistrator (MDM or Group Policy) in the context of speech functionalities.
- **SpeakerIdEnabled**  Cortana setting that represents if keyword detection has been trained to try to respond to a single user's voice.
- **SpeechServicesEnabled**  Windows setting that represents whether a user is opted-in for speech services on the device.


### Census.Storage

This event sends data about the total capacity of the system volume and primary disk, to help keep Windows up to date.

The following fields are available:

- **PrimaryDiskTotalCapacity**  Retrieves the amount of disk space on the primary disk of the device in MB.
- **PrimaryDiskType**  Retrieves an enumerator value of type STORAGE_BUS_TYPE that indicates the type of bus to which the device is connected. This should be used to interpret the raw device properties at the end of this structure (if any).
- **SystemVolumeTotalCapacity**  Retrieves the size of the partition that the System volume is installed on in MB.


### Census.Userdefault

This event sends data about the current user's default preferences for browser and several of the most popular extensions and protocols, to help keep Windows up to date.

The following fields are available:

- **DefaultApp**  The current uer's default program selected for the following extension or protocol: .html, .htm, .jpg, .jpeg, .png, .mp3, .mp4, .mov, .pdf.
- **DefaultBrowserProgId**  The ProgramId of the current user's default browser.


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


### Census.VM

This event sends data indicating whether virtualization is enabled on the device, and its various characteristics, to help keep Windows up to date.

The following fields are available:

- **HyperVisor**  Retrieves whether the current OS is running on top of a Hypervisor.
- **IOMMUPresent**  Represents if an input/output memory management unit (IOMMU) is present.
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
- **OSRollbackCount**  The number of times feature updates have rolled back on the device.
- **OSRolledBack**  A flag that represents when a feature update has rolled back during setup.
- **OSUninstalled**  A flag that represents when a feature update is uninstalled on a device .
- **OSWUAutoUpdateOptions**  Retrieves the auto update settings on the device.
- **UninstallActive**  A flag that represents when a device has uninstalled a previous upgrade recently.
- **UpdateServiceURLConfigured**  Retrieves if the device is managed by Windows Server Update Services (WSUS).
- **WUDeferUpdatePeriod**  Retrieves if deferral is set for Updates.
- **WUDeferUpgradePeriod**  Retrieves if deferral is set for Upgrades.
- **WUDODownloadMode**  Retrieves whether DO is turned on and how to acquire/distribute updates Delivery Optimization (DO) allows users to deploy previously downloaded WU updates to other devices on the same network.
- **WUMachineId**  Retrieves the Windows Update (WU) Machine Identifier.
- **WUPauseState**  Retrieves WU setting to determine if updates are paused.
- **WUServer**  Retrieves the HTTP(S) URL of the WSUS server that is used by Automatic Updates and API callers (by default).


### Census.Xbox

This event sends data about the Xbox Console, such as Serial Number and DeviceId, to help keep Windows up to date.

The following fields are available:

- **XboxConsolePreferredLanguage**  Retrieves the preferred language selected by the user on Xbox console.
- **XboxConsoleSerialNumber**  Retrieves the serial number of the Xbox console.
- **XboxLiveDeviceId**  Retrieves the unique device ID of the console.
- **XboxLiveSandboxId**  Retrieves the developer sandbox ID if the device is internal to Microsoft.


## Common data extensions

### Common Data Extensions.app

Describes the properties of the running application. This extension could be populated by a client app or a web app.

The following fields are available:

- **asId**  An integer value that represents the app session. This value starts at 0 on the first app launch and increments after each subsequent app launch per boot session.
- **env**  The environment from which the event was logged.
- **expId**  Associates a flight, such as an OS flight, or an experiment, such as a web site UX experiment, with an event.
- **id**  Represents a unique identifier of the client application currently loaded in the process producing the event; and is used to group events together and understand usage pattern, errors by application.
- **userId**  The userID as known by the application.
- **ver**  Represents the version number of the application. Used to understand errors by Version, Usage by Version across an app.


### Common Data Extensions.container

Describes the properties of the container for events logged within a container.

The following fields are available:

- **localId**  The device ID as known by the client.
- **osVer**  The operating system version.
- **type**  The container type. Examples: Process or VMHost


### Common Data Extensions.cs

Describes properties related to the schema of the event.

The following fields are available:

- **sig**  A common schema signature that identifies new and modified event schemas.


### Common Data Extensions.device

Describes the device-related fields.

The following fields are available:

- **deviceClass**  Represents the classification of the device, the device “family”.  For example, Desktop, Server, or Mobile.
- **localId**  Represents a locally defined unique ID for the device, not the human readable device name. Most likely equal to the value stored at HKLM\Software\Microsoft\SQMClient\MachineId


### Common Data Extensions.Envelope

Represents an envelope that contains all of the common data extensions.

The following fields are available:

- **appId**  Represents a unique identifier of the client application currently loaded in the process producing the event; and is used to group events together and understand usage pattern, errors by application.
- **appVer**  Represents the version number of the application. Used to understand errors by version and usage by version across an app.
- **cV**  Represents the Correlation Vector: A single field for tracking partial order of related telemetry events across component boundaries.
- **data**  Represents the optional unique diagnostic data for a particular event schema.
- **epoch**  ID used to help distinguish events in the sequence by indicating the current boot session.
- **ext_app**  Describes the properties of the running application. This extension could be populated by either a client app or a web app. See [Common Data Extensions.app](#common-data-extensionsapp).
- **ext_container**  Describes the properties of the container for events logged within a container. See [Common Data Extensions.container](#common-data-extensionscontainer).
- **ext_cs**  Describes properties related to the schema of the event. See [Common Data Extensions.cs](#common-data-extensionscs).
- **ext_device**  Describes the device-related fields. See [Common Data Extensions.device](#common-data-extensionsdevice).
- **ext_os**  Describes the operating system properties that would be populated by the client. See [Common Data Extensions.os](#common-data-extensionsos).
- **ext_user**  Describes the fields related to a user. See [Common Data Extensions.user](#common-data-extensionsuser).
- **ext_utc**  Describes the fields that might be populated by a logging library on Windows. See [Common Data Extensions.utc](#common-data-extensionsutc).
- **ext_xbl**  Describes the fields related to XBOX Live. See [Common Data Extensions.xbl](#common-data-extensionsxbl).
- **flags**  Represents a collection of bits that describe how the event should be processed by the Connected User Experience and Telemetry component pipeline. The lowest-order byte is the event persistence. The next byte is the event latency.
- **iKey**  Represents an ID for applications or other logical groupings of events.
- **name**  Represents the uniquely qualified name for the event.
- **os**  The operating system name.
- **osVer**  The operating system version.
- **popSample**  Represents the effective sample rate for this event at the time it was generated by a client.
- **seqNum**  Used to track the absolute order of uploaded events.
- **tags**  A header for semi-managed extensions.
- **time**  Represents the event date time in Coordinated Universal Time (UTC) when the event was generated on the client. This should be in ISO 8601 format.
- **ver**  Represents the major and minor version of the extension.


### Common Data Extensions.os

Describes some properties of the operating system.

The following fields are available:

- **bootId**  An integer value that represents the boot session. This value starts at 0 on first boot after OS install and increments after every reboot.
- **expId**  Represents the experiment ID. The standard for associating a flight, such as an OS flight (pre-release build), or an experiment, such as a web site UX experiment, with an event is to record the flight / experiment IDs in Part A of the common schema.
- **locale**  Represents the locale of the operating system.


### Common Data Extensions.user

Describes the fields related to a user.

The following fields are available:

- **authId**  This is an ID of the user associated with this event that is deduced from a token such as a Microsoft Account ticket or an XBOX token.
- **localId**  Represents a unique user identity that is created locally and added by the client. This is not the user's account ID.


### Common Data Extensions.utc

Describes the properties that could be populated by a logging library on Windows.

The following fields are available:

- **aId**  Represents the ETW ActivityId. Logged via TraceLogging or directly via ETW.
- **bSeq**  Upload buffer sequence number in the format: buffer identifier:sequence number
- **cat**  Represents a bitmask of the ETW Keywords associated with the event.
- **cpId**  The composer ID, such as Reference, Desktop, Phone, Holographic, Hub, IoT Composer.
- **flags**  Represents the bitmap that captures various Windows specific flags.
- **mon**  Combined monitor and event sequence numbers in the format: monitor sequence : event sequence
- **op**  Represents the ETW Op Code.
- **raId**  Represents the ETW Related ActivityId. Logged via TraceLogging or directly via ETW.
- **sqmId**  The Windows SQM ID.
- **stId**  Represents the Scenario Entry Point ID. This is a unique GUID for each event in a diagnostic scenario. This used to be Scenario Trigger ID.
- **tickets**  An array of strings that refer back to a key in the X-Tickets http header that the client uploaded along with a batch of events.


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


## Component-based Servicing events

### CbsServicingProvider.CbsCapabilitySessionFinalize

This event provides information about the results of installing or uninstalling optional Windows content from Windows Update.



### CbsServicingProvider.CbsCapabilitySessionPended

This event provides information about the results of installing optional Windows content that requires a reboot to keep Windows up to date.



## Content Delivery Manager events

### Microsoft.Windows.ContentDeliveryManager.ProcessCreativeEvent

This event sends tracking data about the reliability of interactions with Windows spotlight content, to help keep Windows up to date.

The following fields are available:

- **creativeId**  A serialized string containing the ID of the offer being rendered, the ID of the current rotation period, the ID of the surface/ring/market combination, the offer index in the current branch, the ID of the batch, the rotation period length, and the expiration timestamp.
- **eventToken**  In there are multiple item offers, such as Start tiles, this indicates which tile the event corresponds to.
- **eventType**  A code that indicates the type of creative event, such a impression, click, positive feedback, negative feedback, etc..
- **placementId**  Name of surface, such as LockScreen or Start.


### Microsoft.Windows.ContentDeliveryManager.ReportPlacementHealth

This event sends aggregated client health data, summarizing information about the state of offers on a device, to help keep Windows up to date.

The following fields are available:

- **dataVersion**  Schema version of the event that is used to determine what serialized content is available for placementReportedInfo and trackingInfo fields.
- **healthResult**  A code that identifies user account health status as Unknown, Healthy, Unhealthy.
- **healthStateFlags**  A code that represents a set of flags used to group devices in a health/unhealthy way. For example, Unhealthy, Healthy, RefreshNotScheduled, EmptyResponse, RenderedDefault, RenderFailure, RenderDelayed, and CacheEmpty.
- **placementHealthId**  A code that represents which surface's health is being reported. For example, Default, LockScreen, LockScreenOverlay, StartMenu, SoftLanding, DefaultStartLayout1, DefaultStartLayout2, OemPreInstalledApps, FeatureManagement, SilentInstalledApps, NotificationChannel, SuggestedPenAppsSubscribedContent, TestAppSubscribedContent, OneDriveSyncNamespaceSubscribedContent, OneDriveLocalNamespaceSubscribedContent, OneDriveSyncNamespaceInternalSubscribedContent, and OneDriveLocalNamespaceInternalSubscribedContent.
- **placementReportedInfo**  Serialized information that contains domain-specific health information written by each surface, such as lastUpportunityTime, lastOpportunityReportedTime, expectedExpirationTime, and rotationPeriod.
- **trackingInfo**  Serialized information that contains domain-specific health information written by the content delivery manager, such as lastRefreshTime, nextRefreshTime, nextUpdateTime,renderPriorToLastOpportunityTime, lastRenderTime, lastImpressionTime, lastRulesRegistrationTime, registrationTime, lastRefreshBatchCount, lastEligibleCreativeCount, availableAppSlotCount, placeholderAppSlotCount, lastRenderSuccess, lastRenderDefault, isEnabled.


### Microsoft.Windows.ContentDeliveryManager.ReportPlacementState

This event sends data about the opt-out state of a device or user that uses Windows spotlight, to help keep Windows up to date.

The following fields are available:

- **isEnabled**  Indicates if the surface is enable to receive offers.
- **lastImpressionTime**  The time when the last offer was seen.
- **lastRenderedCreativeId**  ID of the last offer rendered by the surface.
- **lastRenderedTime**  The time that the last offer was rendered.
- **nextRotationTime**  The time in which the next offer will be rendered.
- **placementName**  Name of surface, such as LockScreen or Start.
- **placementStateReportFlags**  Flags that represent if the surface is capable of receiving offers, such as off by edition, off by Group Policy, off by user choice.
- **selectedPlacementId**  ID of the surface/ring/markey combination, such as Lock-Internal-en-US.


## Diagnostic data events

### TelClientSynthetic.AuthorizationInfo_RuntimeTransition

This event sends data indicating that a device has undergone a change of telemetry opt-in level detected at UTC startup, to help keep Windows up to date. The telemetry opt-in level signals what data we are allowed to collect.

The following fields are available:

- **CanAddMsaToMsTelemetry**  True if UTC is allowed to add MSA user identity onto telemetry from the OS provider groups.
- **CanCollectAnyTelemetry**  True if UTC is allowed to collect non-OS telemetry. Non-OS telemetry is responsible for providing its own opt-in mechanism.
- **CanCollectCoreTelemetry**  True if UTC is allowed to collect data which is tagged with both MICROSOFT_KEYWORD_CRITICAL_DATA and MICROSOFT_EVENTTAG_CORE_DATA.
- **CanCollectHeartbeats**  True if UTC is allowed to collect heartbeats.
- **CanCollectOsTelemetry**  True if UTC is allowed to collect telemetry from the OS provider groups (often called Microsoft Telemetry).
- **CanPerformDiagnosticEscalations**  True if UTC is allowed to perform all scenario escalations.
- **CanPerformScripting**  True if UTC is allowed to perform scripting.
- **CanPerformTraceEscalations**  True if UTC is allowed to perform scenario escalations with tracing actions.
- **CanReportScenarios**  True if UTC is allowed to load and report scenario completion, failure, and cancellation events.
- **PreviousPermissions**  Bitmask representing the previously configured permissions since the telemetry opt-in level was last changed.
- **TransitionFromEverythingOff**  True if this transition is moving from not allowing core telemetry to allowing core telemetry.


### TelClientSynthetic.AuthorizationInfo_Startup

This event sends data indicating that a device has undergone a change of telemetry opt-in level detected at UTC startup, to help keep Windows up to date. The telemetry opt-in level signals what data we are allowed to collect.

The following fields are available:

- **CanAddMsaToMsTelemetry**  True if UTC is allowed to add MSA user identity onto telemetry from the OS provider groups.
- **CanCollectAnyTelemetry**  True if UTC is allowed to collect non-OS telemetry. Non-OS telemetry is responsible for providing its own opt-in mechanism.
- **CanCollectCoreTelemetry**  True if UTC is allowed to collect data which is tagged with both MICROSOFT_KEYWORD_CRITICAL_DATA and MICROSOFT_EVENTTAG_CORE_DATA.
- **CanCollectHeartbeats**  True if UTC is allowed to collect heartbeats.
- **CanCollectOsTelemetry**  True if UTC is allowed to collect telemetry from the OS provider groups (often called Microsoft Telemetry).
- **CanPerformDiagnosticEscalations**  True if UTC is allowed to perform all scenario escalations.
- **CanPerformScripting**  True if UTC is allowed to perform scripting.
- **CanPerformTraceEscalations**  True if UTC is allowed to perform scenario escalations with tracing actions.
- **CanReportScenarios**  True if we can report scenario completions, false otherwise.
- **PreviousPermissions**  Bitmask representing the previously configured permissions since the telemetry client was last started.
- **TransitionFromEverythingOff**  True if this transition is moving from not allowing core telemetry to allowing core telemetry.


### TelClientSynthetic.ConnectivityHeartBeat_0

This event sends data about the connectivity status of the Connected User Experience and Telemetry component that uploads telemetry events. If an unrestricted free network (such as Wi-Fi) is available, this event updates the last successful upload time. Otherwise, it checks whether a Connectivity Heartbeat event was fired in the past 24 hours, and if not, it fires an event. A Connectivity Heartbeat event also fires when a device recovers from costed network to free network.

The following fields are available:

- **CensusExitCode**  Returns last execution codes from census client run.
- **CensusStartTime**  Returns timestamp corresponding to last successful census run.
- **CensusTaskEnabled**  Returns Boolean value for the census task (Enable/Disable) on client machine.
- **LastConnectivityLossTime**  Retrieves the last time the device lost free network.
- **LastConntectivityLossTime**  Retrieves the last time the device lost free network.
- **NetworkState**  Retrieves the network state: 0 = No network. 1 = Restricted network. 2 = Free network.
- **NoNetworkTime**  Retrieves the time spent with no network (since the last time) in seconds.
- **RestrictedNetworkTime**  Retrieves the time spent on a metered (cost restricted) network in seconds.


### TelClientSynthetic.HeartBeat_5

This event sends data about the health and quality of the diagnostic data from the given device, to help keep Windows up to date. It also enables data analysts to determine how 'trusted' the data is from a given device.

The following fields are available:

- **AgentConnectionErrorsCount**  The number of non-timeout errors associated with the host/agent channel.
- **CensusExitCode**  The last exit code of the Census task.
- **CensusStartTime**  The time of the last Census run.
- **CensusTaskEnabled**  Indicates whether Census is enabled.
- **ConsumerDroppedCount**  The number of events dropped by the consumer layer of the telemetry client.
- **CriticalDataDbDroppedCount**  The number of critical data sampled events that were dropped at the database layer.
- **CriticalDataThrottleDroppedCount**  The number of critical data sampled events that were dropped because of throttling.
- **CriticalOverflowEntersCounter**  The number of times a critical overflow mode was entered into the event database.
- **DbCriticalDroppedCount**  The total number of dropped critical events in the event database.
- **DbDroppedCount**  The number of events that were dropped because the database was full.
- **DecodingDroppedCount**  The number of events dropped because of decoding failures.
- **EnteringCriticalOverflowDroppedCounter**  The number of events that was dropped because a critical overflow mode was initiated.
- **EtwDroppedBufferCount**  The number of buffers dropped in the CUET ETW session.
- **EtwDroppedCount**  The number of events dropped by the ETW layer of the telemetry client.
- **EventSubStoreResetCounter**  The number of times the event database was reset.
- **EventSubStoreResetSizeSum**  The total size of the event database across all resets reports in this instance.
- **EventsUploaded**  The number of events that have been uploaded.
- **Flags**  Flags that indicate device state, such as network, battery, and opt-in state.
- **FullTriggerBufferDroppedCount**  The number of events that were dropped because the trigger buffer was full.
- **HeartBeatSequenceNumber**  A monotonically increasing heartbeat counter.
- **InvalidHttpCodeCount**  The number of invalid HTTP codes received from Vortex.
- **LastAgentConnectionError**  The last non-timeout error that happened in the host/agent channel.
- **LastEventSizeOffender**  The name of the last event that exceeded the maximum event size.
- **LastInvalidHttpCode**  The last invalid HTTP code received from Vortex.
- **MaxActiveAgentConnectionCount**  The maximum number of active agents during this heartbeat timeframe.
- **MaxInUseScenarioCounter**  The soft maximum number of scenarios loaded by the Connected User Experience and Telemetry component.
- **PreviousHeartBeatTime**  The time of last heartbeat event. This allows chaining of events.
- **SettingsHttpAttempts**  The number of attempts to contact the OneSettings service.
- **SettingsHttpFailures**  The number of failures from contacting the OneSettings service.
- **ThrottledDroppedCount**  The number of events dropped due to throttling of noisy providers.
- **UploaderDroppedCount**  The number of events dropped by the uploader layer of the telemetry client.
- **VortexFailuresTimeout**  The number of timeout failures received from Vortex.
- **VortexHttpAttempts**  The number of attempts to contact the Vortex service.
- **VortexHttpFailures4xx**  The number of 400-499 error codes received from Vortex.
- **VortexHttpFailures5xx**  The number of 500-599 error codes received from Vortex.


### TelClientSynthetic.HeartBeat_Aria_5

This event is the telemetry client ARIA heartbeat.



### TelClientSynthetic.HeartBeat_Seville_5

This event is sent by the universal telemetry client (UTC) as a heartbeat signal for Sense.



### TelClientSynthetic.TailoredExperiencesWithDiagnosticDataUpdate

This event is triggered when UTC determines it needs to send information about personalization settings of the user.



## DxgKernelTelemetry events

### DxgKrnlTelemetry.GPUAdapterInventoryV2

This event sends basic GPU and display driver information to keep Windows and display drivers up-to-date.

The following fields are available:

- **aiSeqId**  The event sequence ID.
- **bootId**  The system boot ID.
- **ComputePreemptionLevel**  The maximum preemption level supported by GPU for compute payload.
- **DedicatedSystemMemoryB**  The amount of system memory dedicated for GPU use (in bytes).
- **DedicatedVideoMemoryB**  The amount of dedicated VRAM of the GPU (in bytes).
- **DisplayAdapterLuid**  The display adapter LUID.
- **DriverDate**  The date of the display driver.
- **DriverRank**  The rank of the display driver.
- **DriverVersion**  The display driver version.
- **GPUDeviceID**  The GPU device ID.
- **GPUPreemptionLevel**  The maximum preemption level supported by GPU for graphics payload.
- **GPURevisionID**  The GPU revision ID.
- **GPUVendorID**  The GPU vendor ID.
- **InterfaceId**  The GPU interface ID.
- **IsDisplayDevice**  Does the GPU have displaying capabilities?
- **IsHybridDiscrete**  Does the GPU have discrete GPU capabilities in a hybrid device?
- **IsHybridIntegrated**  Does the GPU have integrated GPU capabilities in a hybrid device?
- **IsLDA**  Is the GPU comprised of Linked Display Adapters?
- **IsMiracastSupported**  Does the GPU support Miracast?
- **IsMismatchLDA**  Is at least one device in the Linked Display Adapters chain from a different vendor?
- **IsMPOSupported**  Does the GPU support Multi-Plane Overlays?
- **IsMsMiracastSupported**  Are the GPU Miracast capabilities driven by a Microsoft solution?
- **IsPostAdapter**  Is this GPU the POST GPU in the device?
- **IsRenderDevice**  Does the GPU have rendering capabilities?
- **IsSoftwareDevice**  Is this a software implementation of the GPU?
- **MeasureEnabled**  Is the device listening to MICROSOFT_KEYWORD_MEASURES?
- **NumVidPnSources**  The number of supported display output sources.
- **NumVidPnTargets**  The number of supported display output targets.
- **SharedSystemMemoryB**  The amount of system memory shared by GPU and CPU (in bytes).
- **SubSystemID**  The subsystem ID.
- **SubVendorID**  The GPU sub vendor ID.
- **TelemetryEnabled**  Is the device listening to MICROSOFT_KEYWORD_TELEMETRY?
- **TelInvEvntTrigger**  What triggered this event to be logged?  Example: 0 (GPU enumeration) or 1 (DxgKrnlTelemetry provider toggling)
- **version**  The event version.
- **WDDMVersion**  The Windows Display Driver Model version.


## Failover Clustering events

### Microsoft.Windows.Server.FailoverClusteringCritical.ClusterSummary2

This event returns information about how many resources and of what type are in the server cluster. This data is collected to keep Windows Server safe, secure, and up to date. The data includes information about whether hardware is configured correctly, if the software is patched correctly, and assists in preventing crashes by attributing issues (like fatal errors) to workloads and system configurations.

The following fields are available:

- **autoAssignSite**  The cluster parameter: auto site.
- **autoBalancerLevel**  The cluster parameter: auto balancer level.
- **autoBalancerMode**  The cluster parameter: auto balancer mode.
- **blockCacheSize**  The configured size of the block cache.
- **ClusterAdConfiguration**  The ad configuration of the cluster.
- **clusterAdType**  The cluster parameter: mgmt_point_type.
- **clusterDumpPolicy**  The cluster configured dump policy.
- **clusterFunctionalLevel**  The current cluster functional level.
- **clusterGuid**  The unique identifier for the cluster.
- **clusterWitnessType**  The witness type the cluster is configured for.
- **countNodesInSite**  The number of nodes in the cluster.
- **crossSiteDelay**  The cluster parameter: CrossSiteDelay.
- **crossSiteThreshold**  The cluster parameter: CrossSiteThreshold.
- **crossSubnetDelay**  The cluster parameter: CrossSubnetDelay.
- **crossSubnetThreshold**  The cluster parameter: CrossSubnetThreshold.
- **csvCompatibleFilters**  The cluster parameter: ClusterCsvCompatibleFilters.
- **csvIncompatibleFilters**  The cluster parameter: ClusterCsvIncompatibleFilters.
- **csvResourceCount**  The number of resources in the cluster.
- **currentNodeSite**  The name configured for the current site for the cluster.
- **dasModeBusType**  The direct storage bus type of the storage spaces.
- **downLevelNodeCount**  The number of nodes in the cluster that are running down-level.
- **drainOnShutdown**  Specifies whether a node should be drained when it is shut down.
- **dynamicQuorumEnabled**  Specifies whether dynamic Quorum has been enabled.
- **enforcedAntiAffinity**  The cluster parameter: enforced anti affinity.
- **genAppNames**  The win32 service name of a clustered service.
- **genSvcNames**  The command line of a clustered genapp.
- **hangRecoveryAction**  The cluster parameter: hang recovery action.
- **hangTimeOut**  Specifies the “hang time out” parameter for the cluster.
- **isCalabria**  Specifies whether storage spaces direct is enabled.
- **isMixedMode**  Identifies if the cluster is running with different version of OS for nodes.
- **isRunningDownLevel**  Identifies if the current node is running down-level.
- **logLevel**  Specifies the granularity that is logged in the cluster log.
- **logSize**  Specifies the size of the cluster log.
- **lowerQuorumPriorityNodeId**  The cluster parameter: lower quorum priority node ID.
- **minNeverPreempt**  The cluster parameter: minimum never preempt.
- **minPreemptor**  The cluster parameter: minimum preemptor priority.
- **netftIpsecEnabled**  The parameter: netftIpsecEnabled.
- **NodeCount**  The number of nodes in the cluster.
- **nodeId**  The current node number in the cluster.
- **nodeResourceCounts**  Specifies the number of node resources.
- **nodeResourceOnlineCounts**  Specifies the number of node resources that are online.
- **numberOfSites**  The number of different sites.
- **numNodesInNoSite**  The number of nodes not belonging to a site.
- **plumbAllCrossSubnetRoutes**  The cluster parameter: plumb all cross subnet routes.
- **preferredSite**  The preferred site location.
- **privateCloudWitness**  Specifies whether a private cloud witness exists for this cluster.
- **quarantineDuration**  The quarantine duration.
- **quarantineThreshold**  The quarantine threshold.
- **quorumArbitrationTimeout**  In the event of an arbitration event, this specifies the quorum timeout period.
- **resiliencyLevel**  Specifies the level of resiliency.
- **resourceCounts**  Specifies the number of resources.
- **resourceTypeCounts**  Specifies the number of resource types in the cluster.
- **resourceTypes**  Data representative of each resource type.
- **resourceTypesPath**  Data representative of the DLL path for each resource type.
- **sameSubnetDelay**  The cluster parameter: same subnet delay.
- **sameSubnetThreshold**  The cluster parameter: same subnet threshold.
- **secondsInMixedMode**  The amount of time (in seconds) that the cluster has been in mixed mode (nodes with different operating system versions in the same cluster).
- **securityLevel**  The cluster parameter: security level.
- **sharedVolumeBlockCacheSize**  Specifies the block cache size for shared for shared volumes.
- **shutdownTimeoutMinutes**  Specifies the amount of time it takes to time out when shutting down.
- **upNodeCount**  Specifies the number of nodes that are up (online).
- **useClientAccessNetworksForCsv**  The cluster parameter: use client access networks for CSV.
- **vmIsolationTime**  The cluster parameter: VM isolation time.
- **witnessDatabaseWriteTimeout**  Specifies the timeout period for writing to the quorum witness database.


## Fault Reporting events

### Microsoft.Windows.FaultReporting.AppCrashEvent

This event sends data about crashes for both native and managed applications, to help keep Windows up to date. The data includes information about the crashing process and a summary of its exception record. It does not contain any Watson bucketing information. The bucketing information is recorded in a Windows Error Reporting (WER) event that is generated when the WER client reports the crash to the Watson service, and the WER event will contain the same ReportID (see field 14 of crash event, field 19 of WER event) as the crash event for the crash being reported. AppCrash is emitted once for each crash handled by WER (e.g. from an unhandled exception or FailFast or ReportException). Note that Generic Watson event types (e.g. from PLM) that may be considered crashes\" by a user DO NOT emit this event.

The following fields are available:

- **AppName**  The name of the app that has crashed.
- **AppSessionGuid**  GUID made up of process ID and is used as a correlation vector for process instances in the telemetry backend.
- **AppTimeStamp**  The date/time stamp of the app.
- **AppVersion**  The version of the app that has crashed.
- **ExceptionCode**  The exception code returned by the process that has crashed.
- **ExceptionOffset**  The address where the exception had occurred.
- **Flags**  Flags indicating how reporting is done. For example, queue the report, do not offer JIT debugging, or do not terminate the process after reporting.
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


## Feature update events

### Microsoft.Windows.Upgrade.Uninstall.UninstallGoBackButtonClicked

This event sends basic metadata about the starting point of uninstalling a feature update, which helps ensure customers can safely revert to a well-known state if the update caused any problems.



## Hang Reporting events

### Microsoft.Windows.HangReporting.AppHangEvent

This event sends data about hangs for both native and managed applications, to help keep Windows up to date. It does not contain any Watson bucketing information. The bucketing information is recorded in a Windows Error Reporting (WER) event that is generated when the WER client reports the hang to the Watson service, and the WER event will contain the same ReportID (see field 13 of hang event, field 19 of WER event) as the hang event for the hang being reported. AppHang is reported only on PC devices. It handles classic Win32 hangs and is emitted only once per report. Some behaviors that may be perceived by a user as a hang are reported by app managers (e.g. PLM/RM/EM) as Watson Generics and will not produce AppHang events.

The following fields are available:

- **AppName**  The name of the app that has hung.
- **AppSessionGuid**  GUID made up of process id used as a correlation vector for process instances in the telemetry backend.
- **AppVersion**  The version of the app that has hung.
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
- **WaitingOnAppVersion**  If this is a cross process hang, this has the version of the application for which it is waiting.
- **WaitingOnPackageFullName**  If this is a cross process hang waiting for a package, this has the full name of the package for which it is waiting.
- **WaitingOnPackageRelativeAppId**  If this is a cross process hang waiting for a package, this has the relative application id of the package.


## Inventory events

### ChecksumDictionary

The list of values sent by each object type.

The following fields are available:

- **Key**  The object type being described.
- **Value**  The number of objects of this type that were sent.


### COMPID

This event provides a device's internal application compatible ID, a vendor-defined identification that Windows uses to match a device to an INF file. A device can have a list of compatible IDs associated with it.

The following fields are available:

- **Order**  The index of the array of compatible IDs for the device.
- **Value**  The array of compatible IDs for the device.


### HWID

This event provides a device's internal hardware ID, a vendor-defined identification that Windows uses to match a device to an INF file. In most cases, a device has associated with it a list of hardware IDs.

The following fields are available:

- **Order**  The index of the array of internal hardware IDs for the device.
- **Value**  The array of internal hardware IDs for the device.


### InstallDateArpLastModified

This event indicates the date the add/remove program (ARP) entry was last modified by an update.

The following fields are available:

- **Order**  The index of the ordered array.
- **Value**  The value contained in the ordered array.


### InstallDateFromLinkFile

This event provides the application installation date from the linked file.

The following fields are available:

- **Order**  The index of the ordered array.
- **Value**  The value contained in the ordered array.


### InstallDateMsi

The install date from the Microsoft installer (MSI) database.

The following fields are available:

- **Order**  The index of the ordered array.
- **Value**  The value contained in the ordered array.


### Microsoft.Windows.Inventory.Core.AmiTelCacheChecksum

This event captures basic checksum data about the device inventory items stored in the cache for use in validating data completeness for Microsoft.Windows.Inventory.Core events. The fields in this event may change over time, but they will always represent a count of a given object.

The following fields are available:

- **Device**  A count of device objects in cache.
- **DeviceCensus**  A count of devicecensus objects in cache.
- **DriverPackageExtended**  A count of driverpackageextended objects in cache.
- **File**  A count of file objects in cache.
- **FileSigningInfo**  A count of file signing objects in cache.
- **Generic**  A count of generic objects in cache.
- **HwItem**  A count of hwitem objects in cache.
- **InventoryApplication**  A count of application objects in cache.
- **InventoryApplicationFile**  A count of application file objects in cache.
- **InventoryDeviceContainer**  A count of device container objects in cache.
- **InventoryDeviceInterface**  A count of Plug and Play device interface objects in cache.
- **InventoryDeviceMediaClass**  A count of device media objects in cache.
- **InventoryDevicePnp**  A count of device Plug and Play objects in cache.
- **InventoryDriverBinary**  A count of driver binary objects in cache.
- **InventoryDriverPackage**  A count of device objects in cache.
- **Metadata**  A count of metadata objects in cache.
- **Orphan**  A count of orphan file objects in cache.
- **Programs**  A count of program objects in cache.


### Microsoft.Windows.Inventory.Core.AmiTelCacheVersions

This event sends inventory component versions for the Device Inventory data.

The following fields are available:

- **aeinv**  The version of the App inventory component.
- **aeinv.dll**  The version of the App inventory component.
- **devinv**  The file version of the Device inventory component.
- **devinv.dll**  The file version of the Device inventory component.


### Microsoft.Windows.Inventory.Core.FileSigningInfoAdd

This event enumerates the signatures of files, either driver packages or application executables. For driver packages, this data is collected on demand via Telecommand to limit it only to unrecognized driver packages, saving time for the client and space on the server. For applications, this data is collected for up to 10 random executables on a system.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **CatalogSigners**  Signers from catalog. Each signer starts with Chain.
- **DriverPackageStrongName**  Optional. Available only if FileSigningInfo is collected on a driver package.
- **EmbeddedSigners**  Embedded signers. Each signer starts with Chain.
- **FileName**  The file name of the file whose signatures are listed.
- **FileType**  Either exe or sys, depending on if a driver package or application executable.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Thumbprint**  Comma separated hash of the leaf node of each signer. Semicolon is used to separate CatalogSigners from EmbeddedSigners. There will always be a trailing comma.


### Microsoft.Windows.Inventory.Core.InventoryApplicationAdd

This event sends basic metadata about an application on the system to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **HiddenArp**  Indicates whether a program hides itself from showing up in ARP.
- **InstallDate**  The date the application was installed (a best guess based on folder creation date heuristics).
- **InstallDateArpLastModified**  The date of the registry ARP key for a given application. Hints at install date but not always accurate. Passed as an array. Example: 4/11/2015  00:00:00 See [InstallDateArpLastModified](#installdatearplastmodified).
- **InstallDateFromLinkFile**  The estimated date of install based on the links to the files.  Passed as an array. See [InstallDateFromLinkFile](#installdatefromlinkfile).
- **InstallDateMsi**  The install date if the application was installed via Microsoft Installer (MSI). Passed as an array. See [InstallDateMsi](#installdatemsi).
- **InventoryVersion**  The version of the inventory file generating the events.
- **Language**  The language code of the program.
- **MsiPackageCode**  A GUID that describes the MSI Package. Multiple 'Products' (apps) can make up an MsiPackage.
- **MsiProductCode**  A GUID that describe the MSI Product.
- **Name**  The name of the application.
- **OSVersionAtInstallTime**  The four octets from the OS version at the time of the application's install.
- **PackageFullName**  The package full name for a Store application.
- **ProgramInstanceId**  A hash of the file IDs in an app.
- **Publisher**  The Publisher of the application. Location pulled from depends on the 'Source' field.
- **RootDirPath**  The path to the root directory where the program was installed.
- **Source**  How the program was installed (for example, ARP, MSI, Appx).
- **StoreAppType**  A sub-classification for the type of Microsoft Store app, such as UWP or Win8StoreApp.
- **Type**  One of ("Application", "Hotfix", "BOE", "Service", "Unknown"). Application indicates Win32 or Appx app, Hotfix indicates app updates (KBs), BOE indicates it's an app with no ARP or MSI entry, Service indicates that it is a service. Application and BOE are the ones most likely seen.
- **Version**  The version number of the program.


### Microsoft.Windows.Inventory.Core.InventoryApplicationDriverAdd

This event represents what drivers an application installs.



### Microsoft.Windows.Inventory.Core.InventoryApplicationDriverStartSync

The InventoryApplicationDriverStartSync event indicates that a new set of InventoryApplicationDriverStartAdd events will be sent.



### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkAdd

This event provides the basic metadata about the frameworks an application may depend on.



### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkStartSync

This event indicates that a new set of InventoryApplicationFrameworkAdd events will be sent.



### Microsoft.Windows.Inventory.Core.InventoryApplicationRemove

This event indicates that a new set of InventoryDevicePnpAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryApplicationStartSync

This event indicates that a new set of InventoryApplicationAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerAdd

This event sends basic metadata about a device container (such as a monitor or printer as opposed to a Plug and Play device) to help keep Windows up to date.

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


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerRemove

This event indicates that the InventoryDeviceContainer object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerStartSync

This event indicates that a new set of InventoryDeviceContainerAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceInterfaceAdd

This event retrieves information about what sensor interfaces are available on the device.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Accelerometer3D**  Indicates if an Accelerator3D sensor is found.
- **ActivityDetection**  Indicates if an Activity Detection sensor is found.
- **AmbientLight**  Indicates if an Ambient Light sensor is found.
- **Barometer**  Indicates if a Barometer sensor is found.
- **Custom**  Indicates if a Custom sensor is found.
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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassAdd

This event sends additional metadata about a Plug and Play device that is specific to a particular class of devices to help keep Windows up to date while reducing overall size of data payload.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Audio_CaptureDriver**  The Audio device capture driver endpoint.
- **Audio_RenderDriver**  The Audio device render driver endpoint.
- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassRemove

This event indicates that the InventoryDeviceMediaClassRemove object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassStartSync

This event indicates that a new set of InventoryDeviceMediaClassSAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpAdd

This event represents the basic metadata about a plug and play (PNP) device and its associated driver.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Class**  The device setup class of the driver loaded for the device.
- **ClassGuid**  The device class unique identifier of the driver package loaded on the device.
- **COMPID**  The list of “Compatible IDs” for this device. See [COMPID](#compid).
- **ContainerId**  The system-supplied unique identifier that specifies which group(s) the device(s) installed on the parent (main) device belong to.
- **Description**  The description of the device.
- **DeviceState**  Identifies the current state of the parent (main) device.
- **DriverId**  The unique identifier for the installed driver.
- **DriverName**  The name of the driver image file.
- **DriverPackageStrongName**  The immediate parent directory name in the Directory field of InventoryDriverPackage.
- **DriverVerDate**  The date of the driver loaded for the device
- **DriverVerVersion**  The version of the driver loaded for the device
- **Enumerator**  Identifies the bus that enumerated the device.
- **HWID**  A list of hardware IDs for the device. See [HWID](#hwid).
- **Inf**  The name of the INF file (possibly renamed by the OS, such as oemXX.inf).
- **InstallState**  The device installation state. For a list of values, see: https://msdn.microsoft.com/en-us/library/windows/hardware/ff543130.aspx
- **InventoryVersion**  The version number of the inventory process generating the events.
- **LowerClassFilters**  The identifiers of the Lower Class filters installed for the device.
- **LowerFilters**  The identifiers of the Lower filters installed for the device.
- **Manufacturer**  The manufacturer of the device.
- **MatchingID**  The Hardware ID or Compatible ID that Windows uses to install a device instance.
- **Model**  Identifies the model of the device.
- **ParentId**  The Device Instance ID of the parent of the device.
- **ProblemCode**  The error code currently returned by the device, if applicable.
- **Provider**  Identifies the device provider.
- **Service**  The name of the device service.
- **STACKID**  The list of hardware IDs for the stack. See [STACKID](#stackid).
- **UpperClassFilters**  The identifiers of the Upper Class filters installed for the device.
- **UpperFilters**  The identifiers of the Upper filters installed for the device.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpRemove

This event indicates that the InventoryDevicePnpRemove object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpStartSync

This event indicates that a new set of InventoryDevicePnpAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassAdd

This event sends basic metadata about the USB hubs on the device.



### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassStartSync

This event indicates that a new set of InventoryDeviceUsbHubClassAdd events will be sent.



### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryAdd

This event provides the basic metadata about driver binaries running on the system.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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
- **Service**  The name of the service that is installed for the device.
- **WdfVersion**  The Windows Driver Framework version.


### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryRemove

This event indicates that the InventoryDriverBinary object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryStartSync

This event indicates that a new set of InventoryDriverBinaryAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageAdd

This event sends basic metadata about drive packages installed on the system  to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Class**  The class name for the device driver.
- **ClassGuid**  The class GUID for the device driver.
- **Date**  The driver package date.
- **Directory**  The path to the driver package.
- **Inf**  The INF name of the driver package.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Provider**  The provider for the driver package.
- **SubmissionId**  The HLK submission ID for the driver package.
- **Version**  The version of the driver package.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageRemove

This event indicates that the InventoryDriverPackageRemove object is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageStartSync

This event indicates that a new set of InventoryDriverPackageAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInAdd

Invalid variant - Provides data on the installed Office Add-ins



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInStartSync

This event indicates that a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIdentifiersAdd

Provides data on the Office identifiers.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIdentifiersStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIESettingsAdd

Provides data on Office-related Internet Explorer features.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIESettingsStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsAdd

This event provides insight data on the installed Office products



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsStartSync

This diagnostic event indicates that a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeProductsAdd

Describes Office Products installed.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeProductsStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeSettingsAdd

This event describes various Office settings



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeSettingsStartSync

Indicates a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARuleViolationsStartSync

This event indicates that a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBAStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoAdd

Provides data on Unified Update Platform (UUP) products and what version they are at.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoStartSync

Diagnostic event to indicate a new sync is being generated for this object type.



### Microsoft.Windows.Inventory.Indicators.Checksum

This event summarizes the counts for the InventoryMiscellaneousUexIndicatorAdd events.

The following fields are available:

- **ChecksumDictionary**  A count of each operating system indicator. See [ChecksumDictionary](#checksumdictionary).
- **PCFP**  Equivalent to the InventoryId field that is found in other core events.


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorAdd

These events represent the basic metadata about the OS indicators installed on the system which are used for keeping the device up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **IndicatorValue**  The indicator value.


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorRemove

This event is a counterpart to InventoryMiscellaneousUexIndicatorAdd that indicates that the item has been removed.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorStartSync

This event indicates that a new set of InventoryMiscellaneousUexIndicatorAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### STACKID

This event provides the internal compatible ID for the stack.

The following fields are available:

- **Order**  The index of the ordered array.
- **Value**  The value contained in the ordered array.


## Kernel events

### IO

This event indicates the number of bytes read from or read by the OS and written to or written by the OS upon system startup.

The following fields are available:

- **BytesRead**  The total number of bytes read from or read by the OS upon system startup.
- **BytesWritten**  The total number of bytes written to or written by the OS upon system startup.


### Microsoft.Windows.Kernel.BootEnvironment.OsLaunch

This event includes basic data about the Operating System, collected during Boot and used to evaluate the success of the upgrade process.

The following fields are available:

- **BootApplicationId**  This field tells us what the OS Loader Application Identifier is.
- **BootAttemptCount**  The number of consecutive times the boot manager has attempted to boot into this operating system.
- **BootSequence**  The current Boot ID, used to correlate events related to a particular boot session.
- **BootStatusPolicy**  Identifies the applicable Boot Status Policy.
- **BootType**  Identifies the type of boot (e.g.: "Cold", "Hiber", "Resume").
- **EventTimestamp**  Seconds elapsed since an arbitrary time point. This can be used to identify the time difference in successive boot attempts being made.
- **FirmwareResetReasonEmbeddedController**  Reason for system reset provided by firmware.
- **FirmwareResetReasonEmbeddedControllerAdditional**  Additional information on system reset reason provided by firmware if needed.
- **FirmwareResetReasonPch**  Reason for system reset provided by firmware.
- **FirmwareResetReasonPchAdditional**  Additional information on system reset reason provided by firmware if needed.
- **FirmwareResetReasonSupplied**  Flag indicating that a reason for system reset was provided by firmware.
- **IO**  Amount of data written to and read from the disk by the OS Loader during boot. See [IO](#io).
- **LastBootSucceeded**  Flag indicating whether the last boot was successful.
- **LastShutdownSucceeded**  Flag indicating whether the last shutdown was successful.
- **MenuPolicy**  Type of advanced options menu that should be shown to the user (Legacy, Standard, etc.).
- **RecoveryEnabled**  Indicates whether recovery is enabled.
- **UserInputTime**  The amount of time the loader application spent waiting for user input.


### Microsoft.Windows.Kernel.Power.OSStateChange

This event denotes the transition between operating system states (e.g., On, Off, Sleep, etc.). By using this event with Windows Analytics, organizations can use this to help monitor reliability and performance of managed devices.

The following fields are available:

- **AcPowerOnline**  If "TRUE," the device is using AC power. If "FALSE," the device is using battery power.
- **ActualTransitions**  This will give the actual transitions number
- **BatteryCapacity**  Maximum battery capacity in mWh
- **BatteryCharge**  Current battery charge as a percentage of total capacity
- **BatteryDischarging**  Flag indicating whether the battery is discharging or charging
- **BootId**  Monotonically increasing boot id, reset on upgrades.
- **BootTimeUTC**  Boot time in UTC  file time.
- **EventSequence**  Monotonically increasing event number for OsStateChange events logged during this boot.
- **LastStateTransition**  The previous state transition on the device.
- **LastStateTransitionSub**  The previous state subtransition on the device.
- **StateDurationMS**  Milliseconds spent in the state being departed
- **StateTransition**  Transition type PowerOn=1, Shutdown, Suspend, Resume, Heartbeat.
- **StateTransitionSub**  Subtransition type Normal=1, Reboot, Hiberboot, Standby, Hibernate, ConnectedStandby, Reserved, HybridSleep.
- **TotalDurationMS**  Total time device has been up in milliseconds in wall clock time.
- **TotalUptimeMS**  Total time device has been on (not in a suspended state) in milliseconds.
- **TransitionsToOn**  TransitionsToOn increments each time the system successfully completes a system sleep event, and is sent as part of the PowerTransitionEnd ETW event.
- **UptimeDeltaMS**  Duration in last state in milliseconds.


## OneDrive events

### Microsoft.OneDrive.Sync.Setup.APIOperation

This event includes basic data about install and uninstall OneDrive API operations.

The following fields are available:

- **APIName**  The name of the API.
- **Duration**  How long the operation took.
- **IsSuccess**  Was the operation successful?
- **ResultCode**  The result code.
- **ScenarioName**  The name of the scenario.


### Microsoft.OneDrive.Sync.Setup.EndExperience

This event includes a success or failure summary of the installation.

The following fields are available:

- **APIName**  The name of the API.
- **HResult**  Indicates the result code of the event
- **IsSuccess**  Was the operation successful?
- **ScenarioName**  The name of the scenario.


### Microsoft.OneDrive.Sync.Setup.OSUpgradeInstallationOperation

This event is related to the OS version when the OS is upgraded with OneDrive installed.

The following fields are available:

- **CurrentOneDriveVersion**  The current version of OneDrive.
- **CurrentOSBuildBranch**  The current branch of the operating system.
- **CurrentOSBuildNumber**  The current build number of the operating system.
- **CurrentOSVersion**  The current version of the operating system.
- **HResult**  The HResult of the operation.
- **SourceOSBuildBranch**  The source branch of the operating system.
- **SourceOSBuildNumber**  The source build number of the operating system.
- **SourceOSVersion**  The source version of the operating system.


### Microsoft.OneDrive.Sync.Setup.RegisterStandaloneUpdaterAPIOperation

This event is related to registering or unregistering the OneDrive update task.

The following fields are available:

- **APIName**  The name of the API.
- **IsSuccess**  Was the operation successful?
- **RegisterNewTaskResult**  The HResult of the RegisterNewTask operation.
- **ScenarioName**  The name of the scenario.
- **UnregisterOldTaskResult**  The HResult of the UnregisterOldTask operation.


### Microsoft.OneDrive.Sync.Updater.ComponentInstallState

This event includes basic data about the installation state of dependent OneDrive components.

The following fields are available:

- **ComponentName**  The name of the dependent component.
- **isInstalled**  Is the dependent component installed?


### Microsoft.OneDrive.Sync.Updater.OfficeRegistration

This event indicates the status of the OneDrive integration with Microsoft Office.

The following fields are available:

- **isValid**  Is the Microsoft Office registration valid?


### Microsoft.OneDrive.Sync.Updater.OverlayIconStatus

This event indicates if the OneDrive overlay icon is working correctly. 0 = healthy; 1 = can be fixed; 2 = broken

The following fields are available:

- **32bit**  The status of the OneDrive overlay icon on a 32-bit operating system.
- **64bit**  The status of the OneDrive overlay icon on a 64-bit operating system.


### Microsoft.OneDrive.Sync.Updater.RepairResult

The event determines the result of the installation repair.

The following fields are available:

- **hr**  The HResult of the operation.


### Microsoft.OneDrive.Sync.Updater.SetupBinaryDownloadHResult

This event indicates the status when downloading the OneDrive setup file.

The following fields are available:

- **hr**  The HResult of the operation.


### Microsoft.OneDrive.Sync.Updater.UpdateOverallResult

This event sends information describing the result of the update.

The following fields are available:

- **hr**  The HResult of the operation.
- **IsLoggingEnabled**  Indicates whether logging is enabled for the updater.
- **UpdaterVersion**  The version of the updater.


### Microsoft.OneDrive.Sync.Updater.UpdateTierReg

This event determines status of the update tier registry values.

The following fields are available:

- **regReadEnterpriseHr**  The HResult of the enterprise reg read value.
- **regReadTeamHr**  The HResult of the team reg read value.


### Microsoft.OneDrive.Sync.Updater.UpdateXmlDownloadHResult

This event determines the status when downloading the OneDrive update configuration file.

The following fields are available:

- **hr**  The HResult of the operation.


### Microsoft.OneDrive.Sync.Updater.WebConnectionStatus

This event determines the error code that was returned when verifying Internet connectivity.

The following fields are available:

- **winInetError**  The HResult of the operation.


## Privacy logging notification events

### Microsoft.Windows.Shell.PrivacyNotifierLogging.PrivacyNotifierCompleted

This event returns data to report the efficacy of a single-use tool to inform users impacted by a known issue and to take corrective action to address the issue.

The following fields are available:

- **cleanupTask**  Indicates whether the task that launched the dialog should be cleaned up.
- **cleanupTaskResult**  The return code of the attempt to clean up the task used to show the dialog.
- **deviceEvaluated**  Indicates whether the device was eligible for evaluation of a known issue.
- **deviceImpacted**  Indicates whether the device was impacted by a known issue.
- **modalAction**  The action the user took on the dialog that was presented to them.
- **modalResult**  The return code of the attempt to show a dialog to the user explaining the issue.
- **resetSettingsResult**  The return code of the action to correct the known issue.


## Remediation events

### Microsoft.Windows.Remediation.Applicable

deny

The following fields are available:

- **ActionName**  The name of the action to be taken by the plug-in.
- **AppraiserBinariesValidResult**  Indicates whether the plug-in was appraised as valid.
- **AppraiserDetectCondition**  Indicates whether the plug-in passed the appraiser's check.
- **AppraiserRegistryValidResult**  Indicates whether the registry entry checks out as valid.
- **AppraiserTaskDisabled**  Indicates the appraiser task is disabled.
- **AppraiserTaskValidFailed**  Indicates the Appraiser task did not function and requires intervention.
- **CV**  Correlation vector
- **DateTimeDifference**  The difference between local and reference clock times.
- **DateTimeSyncEnabled**  Indicates whether the Datetime Sync plug-in is enabled.
- **DaysSinceLastSIH**  The number of days since the most recent SIH executed.
- **DaysToNextSIH**  The number of days until the next scheduled SIH execution.
- **DetectedCondition**  Indicates whether detected condition is true and the perform action will be run.
- **EvalAndReportAppraiserBinariesFailed**  Indicates the EvalAndReportAppraiserBinaries event failed.
- **EvalAndReportAppraiserRegEntries**  Indicates the EvalAndReportAppraiserRegEntriesFailed event failed.
- **EvalAndReportAppraiserRegEntriesFailed**  Indicates the EvalAndReportAppraiserRegEntriesFailed event failed.
- **GlobalEventCounter**  Client side counter that indicates ordering of events sent by the remediation system.
- **HResult**  The HRESULT for detection or perform action phases of the plugin.
- **IsAppraiserLatestResult**  The HRESULT from the appraiser task.
- **IsConfigurationCorrected**  Indicates whether the configuration of SIH task was successfully corrected.
- **LastHresult**  The HRESULT for detection or perform action phases of the plugin.
- **LastRun**  The date of the most recent SIH run.
- **NextRun**  Date of the next scheduled SIH run.
- **PackageVersion**  The version of the current remediation package.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Reload**  True if SIH reload is required.
- **RemediationNoisyHammerAcLineStatus**  Indicates the AC Line Status of the device.
- **RemediationNoisyHammerAutoStartCount**  The number of times hammer auto-started.
- **RemediationNoisyHammerCalendarTaskEnabled**  Event that indicates Update Assistant Calendar Task is enabled.
- **RemediationNoisyHammerCalendarTaskExists**  Event that indicates an Update Assistant Calendar Task exists.
- **RemediationNoisyHammerCalendarTaskTriggerEnabledCount**  Event that indicates calendar triggers are enabled in the task.
- **RemediationNoisyHammerDaysSinceLastTaskRunTime**  The number of days since the most recent Noisy Hammer task ran.
- **RemediationNoisyHammerGetCurrentSize**  Size in MB of the $GetCurrent folder.
- **RemediationNoisyHammerIsInstalled**  TRUE if the noisy hammer is installed.
- **RemediationNoisyHammerLastTaskRunResult**  The result of the last hammer task run.
- **RemediationNoisyHammerMeteredNetwork**  TRUE if the machine is on a metered network.
- **RemediationNoisyHammerTaskEnabled**  Indicates whether the Update Assistant Task (Noisy Hammer) is enabled.
- **RemediationNoisyHammerTaskExists**  Indicates whether the Update Assistant Task (Noisy Hammer) exists.
- **RemediationNoisyHammerTaskTriggerEnabledCount**  Indicates whether counting is enabled for the Update Assistant (Noisy Hammer) task trigger.
- **RemediationNoisyHammerUAExitCode**  The exit code of the Update Assistant (Noisy Hammer) task.
- **RemediationNoisyHammerUAExitState**  The code for the exit state of the Update Assistant (Noisy Hammer) task.
- **RemediationNoisyHammerUserLoggedIn**  TRUE if there is a user logged in.
- **RemediationNoisyHammerUserLoggedInAdmin**  TRUE if there is the user currently logged in is an Admin.
- **RemediationShellDeviceManaged**  TRUE if the device is WSUS managed or Windows Updated disabled.
- **RemediationShellDeviceNewOS**  TRUE if the device has a recently installed OS.
- **RemediationShellDeviceSccm**  TRUE if the device is managed by SCCM (Microsoft System Center Configuration Manager).
- **RemediationShellDeviceZeroExhaust**  TRUE if the device has opted out of Windows Updates completely.
- **RemediationTargetMachine**  Indicates whether the device is a target of the specified fix.
- **RemediationTaskHealthAutochkProxy**  True/False based on the health of the AutochkProxy task.
- **RemediationTaskHealthChkdskProactiveScan**  True/False based on the health of the Check Disk task.
- **RemediationTaskHealthDiskCleanup_SilentCleanup**  True/False based on the health of the Disk Cleanup task.
- **RemediationTaskHealthMaintenance_WinSAT**  True/False based on the health of the Health Maintenance task.
- **RemediationTaskHealthServicing_ComponentCleanupTask**  True/False based on the health of the Health Servicing Component task.
- **RemediationTaskHealthUSO_ScheduleScanTask**  True/False based on the health of the USO (Update Session Orchestrator) Schedule task.
- **RemediationTaskHealthWindowsUpdate_ScheduledStartTask**  True/False based on the health of the Windows Update Scheduled Start task.
- **RemediationTaskHealthWindowsUpdate_SihbootTask**  True/False based on the health of the Sihboot task.
- **RemediationUHServiceBitsServiceEnabled**  Indicates whether BITS service is enabled.
- **RemediationUHServiceDeviceInstallEnabled**  Indicates whether Device Install service is enabled.
- **RemediationUHServiceDoSvcServiceEnabled**  Indicates whether DO service is enabled.
- **RemediationUHServiceDsmsvcEnabled**  Indicates whether DSMSVC service is enabled.
- **RemediationUHServiceLicensemanagerEnabled**  Indicates whether License Manager service is enabled.
- **RemediationUHServiceMpssvcEnabled**  Indicates whether MPSSVC service is enabled.
- **RemediationUHServiceTokenBrokerEnabled**  Indicates whether Token Broker service is enabled.
- **RemediationUHServiceTrustedInstallerServiceEnabled**  Indicates whether Trusted Installer service is enabled.
- **RemediationUHServiceUsoServiceEnabled**  Indicates whether USO (Update Session Orchestrator) service is enabled.
- **RemediationUHServicew32timeServiceEnabled**  Indicates whether W32 Time service is enabled.
- **RemediationUHServiceWecsvcEnabled**  Indicates whether WECSVC service is enabled.
- **RemediationUHServiceWinmgmtEnabled**  Indicates whether WMI service is enabled.
- **RemediationUHServiceWpnServiceEnabled**  Indicates whether WPN service is enabled.
- **RemediationUHServiceWuauservServiceEnabled**  Indicates whether WUAUSERV service is enabled.
- **Result**  This is the HRESULT for Detection or Perform Action phases of the plugin.
- **RunAppraiserFailed**  Indicates RunAppraiser failed to run correctly.
- **RunTask**  TRUE if SIH task should be run by the plug-in.
- **TimeServiceNTPServer**  The URL for the NTP time server used by device.
- **TimeServiceStartType**  The startup type for the NTP time service.
- **TimeServiceSyncDomainJoined**  True if device domain joined and hence uses DC for clock.
- **TimeServiceSyncType**  Type of sync behavior for Date & Time service on device.


### Microsoft.Windows.Remediation.Completed

This event is sent when Windows Update sediment remediations have completed on the sediment device to keep Windows up to date. A sediment device is one that has been on a previous OS version for an extended period. The remediations address issues on the system that prevent the device from receiving OS updates.

The following fields are available:

- **ActionName**  Name of the action to be completed by the plug-in.
- **AppraiserTaskCreationFailed**  TRUE if the appraiser task creation failed to complete successfully.
- **AppraiserTaskDeleteFailed**  TRUE if deletion of appraiser task failed to complete successfully.
- **AppraiserTaskExistFailed**  TRUE if detection of the appraiser task failed to complete successfully.
- **AppraiserTaskLoadXmlFailed**  TRUE if the Appraiser XML Loader failed to complete successfully.
- **AppraiserTaskMissing**  TRUE if the Appraiser task is missing.
- **AppraiserTaskTimeTriggerUpdateFailedId**  TRUE if the Appraiser Task Time Trigger failed to update successfully.
- **AppraiserTaskValidateTaskXmlFailed**  TRUE if the Appraiser Task XML failed to complete successfully.
- **CrossedDiskSpaceThreshold**  Indicates if cleanup resulted in hard drive usage threshold required for feature update to be exceeded.
- **CV**  The Correlation Vector.
- **DateTimeDifference**  The difference between the local and reference clocks.
- **DaysSinceOsInstallation**  The number of days since the installation of the Operating System.
- **DiskMbCleaned**  The amount of space cleaned on the hard disk, measured in megabytes.
- **DiskMbFreeAfterCleanup**  The amount of free hard disk space after cleanup, measured in Megabytes.
- **DiskMbFreeBeforeCleanup**  The amount of free hard disk space before cleanup, measured in Megabytes.
- **ForcedAppraiserTaskTriggered**  TRUE if Appraiser task ran from the plug-in.
- **GlobalEventCounter**  Client-side counter that indicates ordering of events sent by the active user.
- **HandlerCleanupFreeDiskInMegabytes**  The amount of hard disk space cleaned by the storage sense handlers, measured in megabytes.
- **HResult**  The result of the event execution.
- **LatestState**  The final state of the plug-in component.
- **PackageVersion**  The package version for the current Remediation.
- **PageFileCount**  The number of Windows Page files.
- **PageFileCurrentSize**  The size of the Windows Page file, measured in Megabytes.
- **PageFileLocation**  The storage location (directory path) of the Windows Page file.
- **PageFilePeakSize**  The maximum amount of hard disk space used by the Windows Page file, measured in Megabytes.
- **PluginName**  The name of the plug-in specified for each generic plug-in event.
- **RanCleanup**  TRUE if the plug-in ran disk cleanup.
- **RemediationConfigurationTroubleshooterExecuted**  True/False based on whether the Remediation Configuration Troubleshooter executed successfully.
- **RemediationConfigurationTroubleshooterIpconfigFix**  TRUE if IPConfig Fix completed successfully.
- **RemediationConfigurationTroubleshooterNetShFix**  TRUE if network card cache reset ran successfully.
- **RemediationDiskCleanSizeBtWindowsFolderInMegabytes**  The size of the Windows BT folder (used to store Windows upgrade files), measured in Megabytes.
- **RemediationDiskCleanupBTFolderEsdSizeInMB**  The size of the Windows BT folder (used to store Windows upgrade files) ESD (Electronic Software Delivery), measured in Megabytes.
- **RemediationDiskCleanupGetCurrentEsdSizeInMB**  The size of any existing ESD (Electronic Software Delivery) folder, measured in Megabytes.
- **RemediationDiskCleanupSearchFileSizeInMegabytes**  The size of the Cleanup Search index file, measured in Megabytes.
- **RemediationDiskCleanupUpdateAssistantSizeInMB**  The size of the Update Assistant folder, measured in Megabytes.
- **RemediationDoorstopChangeSucceeded**  TRUE if Doorstop registry key was successfully modified.
- **RemediationDoorstopExists**  TRUE if there is a OneSettings Doorstop value.
- **RemediationDoorstopRegkeyError**  TRUE if an error occurred accessing the Doorstop registry key.
- **RemediationDRFKeyDeleteSucceeded**  TRUE if the RecoveredFrom (Doorstop) registry key was successfully deleted.
- **RemediationDUABuildNumber**  The build number of the DUA.
- **RemediationDUAKeyDeleteSucceeded**  TRUE if the UninstallActive registry key was successfully deleted.
- **RemediationDuplicateTokenSucceeded**  TRUE if the user token was successfully duplicated.
- **RemediationImpersonateUserSucceeded**  TRUE if the user was successfully impersonated.
- **RemediationNoisyHammerTaskKickOffIsSuccess**  TRUE if the NoisyHammer task started successfully.
- **RemediationQueryTokenSucceeded**  TRUE if the user token was successfully queried.
- **RemediationRanHibernation**  TRUE if the system entered Hibernation.
- **RemediationRevertToSystemSucceeded**  TRUE if reversion to the system context succeeded.
- **RemediationUpdateServiceHealthRemediationResult**  The result of the Update Service Health plug-in.
- **RemediationUpdateTaskHealthRemediationResult**  The result of the Update Task Health plug-in.
- **RemediationUpdateTaskHealthTaskList**  A list of tasks fixed by the Update Task Health plug-in.
- **RemediationWindowsLogSpaceFound**  The size of the Windows log files found, measured in Megabytes.
- **RemediationWindowsLogSpaceFreed**  The amount of disk space freed by deleting the Windows log files, measured in Megabytes.
- **RemediationWindowsSecondaryDriveFreeSpace**  The amount of free space on the secondary drive, measured in Megabytes.
- **RemediationWindowsSecondaryDriveLetter**  The letter designation of the first secondary drive with a total capacity of 10GB or more.
- **RemediationWindowsSecondaryDriveTotalSpace**  The total storage capacity of the secondary drive, measured in Megabytes.
- **RemediationWindowsTotalSystemDiskSize**  The total storage capacity of the System Disk Drive, measured in Megabytes.
- **Result**  The HRESULT for Detection or Perform Action phases of the plug-in.
- **RunResult**  The HRESULT for Detection or Perform Action phases of the plug-in.
- **ServiceHealthPlugin**  The nae of the Service Health plug-in.
- **StartComponentCleanupTask**  TRUE if the Component Cleanup task started successfully.
- **TotalSizeofOrphanedInstallerFilesInMegabytes**  The size of any orphaned Windows Installer files, measured in Megabytes.
- **TotalSizeofStoreCacheAfterCleanupInMegabytes**  The size of the Microsoft Store cache after cleanup, measured in Megabytes.
- **TotalSizeofStoreCacheBeforeCleanupInMegabytes**  The size of the Microsoft Store cache (prior to cleanup), measured in Megabytes.
- **usoScanDaysSinceLastScan**  The number of days since the last USO (Update Session Orchestrator) scan.
- **usoScanInProgress**  TRUE if a USO (Update Session Orchestrator) scan is in progress, to prevent multiple simultaneous scans.
- **usoScanIsAllowAutoUpdateKeyPresent**  TRUE if the AllowAutoUpdate registry key is set.
- **usoScanIsAllowAutoUpdateProviderSetKeyPresent**  TRUE if AllowAutoUpdateProviderSet registry key is set.
- **usoScanIsAuOptionsPresent**  TRUE if Auto Update Options registry key is set.
- **usoScanIsFeatureUpdateInProgress**  TRUE if a USO (Update Session Orchestrator) scan is in progress, to prevent multiple simultaneous scans.
- **usoScanIsNetworkMetered**  TRUE if the device is currently connected to a metered network.
- **usoScanIsNoAutoUpdateKeyPresent**  TRUE if no Auto Update registry key is set/present.
- **usoScanIsUserLoggedOn**  TRUE if the user is logged on.
- **usoScanPastThreshold**  TRUE if the most recent Update Session Orchestrator (USO) scan is past the threshold (late).
- **usoScanType**  The type of USO (Update Session Orchestrator) scan: "Interactive" or "Background".
- **WindowsHyberFilSysSizeInMegabytes**  The size of the Windows Hibernation file, measured in Megabytes.
- **WindowsInstallerFolderSizeInMegabytes**  The size of the Windows Installer folder, measured in Megabytes.
- **WindowsOldFolderSizeInMegabytes**  The size of the Windows.OLD folder, measured in Megabytes.
- **WindowsOldSpaceCleanedInMB**  The amount of disk space freed by removing the Windows.OLD folder, measured in Megabytes.
- **WindowsPageFileSysSizeInMegabytes**  The size of the Windows Page file, measured in Megabytes.
- **WindowsSoftwareDistributionFolderSizeInMegabytes**  The size of the SoftwareDistribution folder, measured in Megabytes.
- **WindowsSwapFileSysSizeInMegabytes**  The size of the Windows Swap file, measured in Megabytes.
- **WindowsSxsFolderSizeInMegabytes**  The size of the WinSxS (Windows Side-by-Side) folder, measured in Megabytes.
- **WindowsSxsTempFolderSizeInMegabytes**  The size of the WinSxS (Windows Side-by-Side) Temp folder, measured in Megabytes.


### Microsoft.Windows.Remediation.DiskCleanUnExpectedErrorEvent

This event indicates that an unexpected error occurred during an update and provides information to help address the issue.

The following fields are available:

- **CV**  The Correlation vector.
- **ErrorMessage**  A description of any errors encountered while the plug-in was running.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **Hresult**  The result of the event execution.
- **PackageVersion**  The version number of the current remediation package.
- **SessionGuid**  GUID associated with a given execution of sediment pack.


### Microsoft.Windows.Remediation.Error

This event indicates a Sediment Pack error (update stack failure) has been detected and provides information to help address the issue.

The following fields are available:

- **HResult**  The result of the event execution.
- **Message**  A message containing information about the error that occurred.
- **PackageVersion**  The version number of the current remediation package.


### Microsoft.Windows.Remediation.FallbackError

This event indicates an error when Self Update results in a Fallback and provides information to help address the issue.

The following fields are available:

- **s0**  Indicates the Fallback error level. See [Microsoft.Windows.Remediation.wilResult](#microsoftwindowsremediationwilresult).
- **wilResult**  The result of the Windows Installer Logging. See [wilResult](#wilresult).


### Microsoft.Windows.Remediation.RemediationNotifyUserFixIssuesInvokeUIEvent

This event occurs when the Notify User task executes and provides information about the cause of the notification.

The following fields are available:

- **CV**  The Correlation vector.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **PackageVersion**  The version number of the current remediation package.
- **RemediationNotifyUserFixIssuesCallResult**  The result of calling the USO (Update Session Orchestrator) sequence steps.
- **RemediationNotifyUserFixIssuesUsoDownloadCalledHr**  The error code from the USO (Update Session Orchestrator) download call.
- **RemediationNotifyUserFixIssuesUsoInitializedHr**  The error code from the USO (Update Session Orchestrator) initialize call.
- **RemediationNotifyUserFixIssuesUsoProxyBlanketHr**  The error code from the USO (Update Session Orchestrator) proxy blanket call.
- **RemediationNotifyUserFixIssuesUsoSetSessionHr**  The error code from the USO (Update Session Orchestrator) session call.


### Microsoft.Windows.Remediation.RemediationShellFailedAutomaticAppUpdateModifyEventId

This event provides the modification of the date on which an Automatic App Update scheduled task failed and provides information about the failure.

The following fields are available:

- **CV**  The Correlation Vector.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **hResult**  The result of the event execution.
- **PackageVersion**  The version number of the current remediation package.


### Microsoft.Windows.Remediation.RemediationShellUnexpectedExceptionId

This event identifies the remediation plug-in that returned an unexpected exception and provides information about the exception.

The following fields are available:

- **CV**  The Correlation Vector.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **PackageVersion**  The version number of the current remediation package.
- **RemediationShellUnexpectedExceptionId**  The ID of the remediation plug-in that caused the exception.


### Microsoft.Windows.Remediation.RemediationUHEnableServiceFailed

This event tracks the health of key update (Remediation) services and whether they are enabled.

The following fields are available:

- **CV**  The Correlation Vector.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **hResult**  The result of the event execution.
- **PackageVersion**  The version number of the current remediation package.
- **serviceName**  The name associated with the operation.


### Microsoft.Windows.Remediation.RemediationUpgradeSucceededDataEventId

This event returns information about the upgrade upon success to help ensure Windows is up to date.

The following fields are available:

- **AppraiserPlugin**  TRUE / FALSE depending on whether the Appraiser plug-in task fix was successful.
- **ClearAUOptionsPlugin**  TRUE / FALSE depending on whether the AU (Auto Updater) Options registry keys were successfully deleted.
- **CV**  The Correlation Vector.
- **DatetimeSyncPlugin**  TRUE / FALSE depending on whether the DateTimeSync plug-in ran successfully.
- **DiskCleanupPlugin**  TRUE / FALSE depending on whether the DiskCleanup plug-in ran successfully.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **NoisyHammerPlugin**  TRUE / FALSE depending on whether the NoisyHammer plug-in ran successfully.
- **PackageVersion**  The version number of the current remediation package.
- **RebootRequiredPlugin**  TRUE / FALSE depending on whether the Reboot plug-in ran successfully.
- **RemediationNotifyUserFixIssuesPlugin**  TRUE / FALSE depending on whether the User Fix Issues plug-in ran successfully
- **RemediationPostUpgradeDiskSpace**  The amount of disk space available after the upgrade.
- **RemediationPostUpgradeHibernationSize**  The size of the Hibernation file after the upgrade.
- **ServiceHealthPlugin**  A list of services updated by the plug-in.
- **SIHHealthPlugin**  TRUE / FALSE depending on whether the SIH Health plug-in ran successfully.
- **StackDataResetPlugin**  TRUE / FALSE depending on whether the update stack completed successfully.
- **TaskHealthPlugin**  A list of tasks updated by the plug-in.
- **UpdateApplicabilityFixerPlugin**  TRUE / FALSE depending on whether the update applicability fixer plug-in completed successfully.
- **WindowsUpdateEndpointPlugin**  TRUE / FALSE depending on whether the Windows Update Endpoint was successful.


### Microsoft.Windows.Remediation.Started

deny

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  The version of the current remediation package.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.


### Microsoft.Windows.Remediation.wilResult

This event provides Self Update information to help keep Windows up to date.

The following fields are available:

- **callContext**  A list of diagnostic activities containing this error.
- **currentContextId**  An identifier for the newest diagnostic activity containing this error.
- **currentContextMessage**  A message associated with the most recent diagnostic activity containing this error (if any).
- **currentContextName**  Name of the most recent diagnostic activity containing this error.
- **failureCount**  Number of failures seen within the binary where the error occurred.
- **failureId**  The identifier assigned to this failure.
- **failureType**  Indicates the type of failure observed (exception, returned, error, logged error, or fail fast).
- **fileName**  The source code file name where the error occurred.
- **function**  The name of the function where the error occurred.
- **hresult**  The failure error code.
- **lineNumber**  The Line Number within the source code file where the error occurred.
- **message**  A message associated with the failure (if any).
- **module**  The name of the binary module in which the error occurred.
- **originatingContextId**  The identifier for the oldest diagnostic activity containing this error.
- **originatingContextMessage**  A message associated with the oldest diagnostic activity containing this error (if any).
- **originatingContextName**  The name of the oldest diagnostic activity containing this error.
- **threadId**  The identifier of the thread the error occurred on.


## Sediment events

### Microsoft.Windows.Sediment.Info.AppraiserData

This event provides data on the current Appraiser status of the device to help ensure Windows is up to date.

The following fields are available:

- **ErrorCode**  The value of the Return Code for the registry query.
- **GStatus**  The pre-upgrade GStatus value.
- **PayloadVersion**  The version information for the remediation component.
- **RegKeyName**  The name of the registry subkey where data was found for this event.
- **Time**  The system time at which the event began.
- **UpgEx**  The pre-upgrade UpgEx value.


### Microsoft.Windows.Sediment.Info.BinaryInfo

This event provides information about the binary returned by the Operating System Remediation System Service (OSRSS) to help ensure Windows is up to date.

The following fields are available:

- **BinaryPath**  The sanitized name of the system binary from which the data was gathered.
- **ErrorCode**  The value of the return code for querying the version from the binary.
- **FileVerBuild**  The binary’s build number.
- **FileVerMajor**  The binary’s major version number.
- **FileVerMinor**  The binary’s minor version number.
- **FileVerRev**  The binary’s revision number.
- **PayloadVersion**  The version information for the remediation component.
- **Time**  The system time at which the event began.


### Microsoft.Windows.Sediment.Info.DetailedState

This event is sent when detailed state information is needed from an update trial run.



### Microsoft.Windows.Sediment.Info.DownloadServiceError

This event provides information when the Download Service returns an error. The information provided helps keep Windows up to date.

The following fields are available:

- **Architecture**  The platform architecture used to identify the correct download payload.
- **BuildNumber**  The starting build number used to identify the correct download payload.
- **Edition**  The Operating System Edition used to identify the correct download payload.
- **Error**  The description of the error encountered.
- **LanguageCode**  The system User Interface Language used to identify the correct download payload.
- **Stack**  Details about the error encountered.
- **WorkingDirectory**  The folder location (path) downloader was attempting to say the payload to.


### Microsoft.Windows.Sediment.Info.DownloadServiceProgress

This event indicates the progress of the downloader in 1% increments.

The following fields are available:

- **Percentage**  The amount successfully downloaded, measured as a percentage of the whole.


### Microsoft.Windows.Sediment.Info.Error

This event indicates an error in the updater payload. This information assists in keeping Windows up to date.

The following fields are available:

- **FailureType**  The type of error encountered.
- **FileName**  The code file in which the error occurred.
- **HResult**  The failure error code.
- **LineNumber**  The line number in the code file at which the error occurred.
- **ReleaseVer**  The version information for the component in which the error occurred.
- **Time**  The system time at which the error occurred.


### Microsoft.Windows.Sediment.Info.PhaseChange

The event indicates progress made by the updater. This information assists in keeping Windows up to date.

The following fields are available:

- **NewPhase**  The phase of progress made.
- **ReleaseVer**  The version information for the component in which the change occurred.
- **Time**  The system time at which the phase chance occurred.


### Microsoft.Windows.Sediment.Info.ServiceInfo

This event provide information about the system service for which data is being gathered by the Operating System Remediation System Service (OSRSS) to help ensure Windows is up to date.

The following fields are available:

- **ErrorCode**  The value returned by the error for querying the service information.
- **PayloadVersion**  The version information for the remediation component.
- **ServiceName**  The name of the system service for which data was gathered.
- **ServiceStatus**  The status of the specified service.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.Info.Uptime

This event provides information about how long the device has been operating. This information helps ensure Windows is up to date.

The following fields are available:

- **Days**  The number of days the device has been on.
- **Hours**  The number of hours the device has been on.
- **Minutes**  The number of minutes the device has been on.
- **PayloadVersion**  The version information for the remediation component.
- **Seconds**  The number of seconds the machine has been on.
- **Ticks**  The number of system clock “ticks” the device has been on.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.OSRSS.CheckingOneSettings

This event indicates the parameters that the Operating System Remediation System Service (OSRSS) uses for a secure ping to Microsoft to help ensure Windows is up to date.

The following fields are available:

- **CustomVer**  The registry value for targeting.
- **IsMetered**  TRUE if the machine is on a metered network.
- **LastVer**  The version of the last successful run.
- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.OSRSS.DownloadingUrl

This event provides information about the URL from which the Operating System Remediation System Service (OSRSS) is attempting to download. This information helps ensure Windows is up to date.

The following fields are available:

- **AttemptNumber**  The count indicating which download attempt is starting.
- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.
- **Url**  The URL from which data was downloaded.


### Microsoft.Windows.Sediment.OSRSS.DownloadSuccess

This event indicates the Operating System Remediation System Service (OSRSS)  successfully download data from the indicated URL. This information helps ensure Windows is up to date.

The following fields are available:

- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.
- **Url**  The URL from which data was downloaded.


### Microsoft.Windows.Sediment.OSRSS.Error

This event indicates an error occurred in the Operating System Remediation System Service (OSRSS). The information provided helps ensure future upgrade/update attempts are more successful.

The following fields are available:

- **FailureType**  The type of error encountered.
- **FileName**  The code file in which the error occurred.
- **HResult**  The failure error code.
- **LineNumber**  The line number in the code file at which the error occurred.
- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.OSRSS.ExeSignatureValidated

This event indicates the Operating System Remediation System Service (OSRSS) successfully validated the signature of an EXE from the indicated URL. The information provided helps ensure Windows is up to date.

The following fields are available:

- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.
- **Url**  The URL from which the validated EXE was downloaded.


### Microsoft.Windows.Sediment.OSRSS.ExtractSuccess

This event indicates that the Operating System Remediation System Service (OSRSS) successfully extracted downloaded content. The information provided helps ensure Windows is up to date.

The following fields are available:

- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.
- **Url**  The URL from which the successfully extracted content was downloaded.


### Microsoft.Windows.Sediment.OSRSS.NewUrlFound

This event indicates the Operating System Remediation System Service (OSRSS) succeeded in finding a new URL to download from. This helps ensure Windows is up to date.

The following fields are available:

- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.
- **Url**  The new URL from which content will be downloaded.


### Microsoft.Windows.Sediment.OSRSS.ProcessCreated

This event indicates the Operating System Remediation System Service (OSRSS) created a new process to execute content downloaded from the indicated URL. This information helps ensure Windows is up to date.

The following fields are available:

- **ServiceVersionMajor**  The Major version information of the component.
- **ServiceVersionMinor**  The Minor version information of the component.
- **Time**  The system time at which the event occurred.
- **Url**  The new URL from which content will be executed.


### Microsoft.Windows.Sediment.OSRSS.SelfUpdate

This event returns metadata after Operating System Remediation System Service (OSRSS) successfully replaces itself with a new version.

The following fields are available:

- **ServiceVersionMajor**  The major version number for the component.
- **ServiceVersionMinor**  The minor version number for the component.
- **Time**  The system timestamp for when the event occurred.


### Microsoft.Windows.Sediment.OSRSS.UrlState

This event indicates the state the Operating System Remediation System Service (OSRSS)  is in while attempting a download from the URL.

The following fields are available:

- **Id**  A number identifying the URL
- **ServiceVersionMajor**  Version info for the component
- **ServiceVersionMinor**  Version info for the component
- **StateData**  State-specific data, such as which attempt number for the download
- **StateNumber**  A number identifying which state the URL is in (found, downloading, extracted, etc.)
- **Time**  System timestamp the event was fired


### Microsoft.Windows.Sediment.ServiceInstaller.ApplicabilityCheckFailed

This event returns data relating to the error state after one of the applicability checks for the installer component of the Operating System Remediation System Service (OSRSS) has failed.

The following fields are available:

- **CheckName**  The name of the applicability check that failed.
- **InstallerVersion**  The version information for the installer component.
- **Time**  The system timestamp for when the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.AttemptingUpdate

This event indicates the Operating System Remediation System Service (OSRSS) installer is attempting an update to itself. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.BinaryUpdated

This event indicates the Operating System Remediation System Service (OSRSS) updated installer binaries with new binaries as part of its self-update process. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.Error

This event indicates an error occurred in the Operating System Remediation System Service (OSRSS). The information provided helps ensure future upgrade/update attempts are more successful.

The following fields are available:

- **FailureType**  The type of error encountered.
- **FileName**  The code file in which the error occurred.
- **HResult**  The failure error code.
- **InstallerVersion**  The version information of the Installer component.
- **LineNumber**  The line number in the code file at which the error occurred.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.InstallerLaunched

This event indicates the Operating System Remediation System Service (OSRSS) has launched. The information provided helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.ServiceInstalled

This event indicates the Operating System Remediation System Service (OSRSS) successfully installed the Installer Component. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.ServiceRestarted

This event indicates the Operating System Remediation System Service (OSRSS) has restarted after installing an updated version of itself. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.ServiceStarted

This event indicates the Operating System Remediation System Service (OSRSS) has started after installing an updated version of itself. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.ServiceStopped

This event indicates the Operating System Remediation System Service (OSRSS) was stopped by a self-updated to install an updated version of itself. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.UninstallerCompleted

This event indicates the Operating System Remediation System Service (OSRSS) successfully uninstalled the installed version as part of a self-update. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.UninstallerLaunched

This event indicates the Operating System Remediation System Service (OSRSS) successfully started the Uninstaller as part of a self-update. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.UpdaterCompleted

This event indicates the Operating System Remediation System Service (OSRSS) successfully completed the self-update operation. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.Sediment.ServiceInstaller.UpdaterLaunched

This event indicates the Operating System Remediation System Service (OSRSS) successfully launched the self-updater after downloading it. This information helps ensure Windows is up to date.

The following fields are available:

- **InstallerVersion**  The version information of the Installer component.
- **Time**  The system time at which the event occurred.


### Microsoft.Windows.SedimentLauncher.Applicable

This event is sent when the Windows Update sediment remediations launcher finds that an applicable plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period.

The following fields are available:

- **CV**  Correlation vector.
- **DetectedCondition**  Boolean true if detect condition is true and perform action will be run.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **IsSelfUpdateEnabledInOneSettings**  True if self update enabled in Settings.
- **IsSelfUpdateNeeded**  True if self update needed by device.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.


### Microsoft.Windows.SedimentLauncher.Completed

This event is sent when the Windows Update sediment remediations launcher finishes running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period.

The following fields are available:

- **CV**  Correlation vector.
- **FailedReasons**  Concatenated list of failure reasons.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.
- **SedLauncherExecutionResult**  HRESULT for one execution of the Sediment Launcher.


### Microsoft.Windows.SedimentLauncher.Error

This event indicates an error occurred during the execution of the plug-in. The information provided helps ensure future upgrade/update attempts are more successful.

The following fields are available:

- **HResult**  The result for the Detection or Perform Action phases of the plug-in.
- **Message**  A message containing information about the error that occurred (if any).
- **PackageVersion**  The version number of the current remediation package.


### Microsoft.Windows.SedimentLauncher.FallbackError

This event indicates that an error occurred during execution of the plug-in fallback.

The following fields are available:

- **s0**  Error occurred during execution of the plugin fallback. See [Microsoft.Windows.SedimentLauncher.wilResult](#microsoftwindowssedimentlauncherwilresult).


### Microsoft.Windows.SedimentLauncher.Information

This event provides general information returned from the plug-in.

The following fields are available:

- **HResult**  This is the HRESULT for detection or perform action phases of the plugin.
- **Message**  Information message returned from a plugin containing only information internal to the plugins execution.
- **PackageVersion**  Current package version of Remediation.


### Microsoft.Windows.SedimentLauncher.Started

This event is sent when the Windows Update sediment remediations launcher starts running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.


### Microsoft.Windows.SedimentLauncher.wilResult

This event provides the result from the Windows internal library.

The following fields are available:

- **callContext**  List of telemetry activities containing this error.
- **currentContextId**  Identifier for the newest telemetry activity containing this error.
- **currentContextMessage**  Custom message associated with the newest telemetry activity containing this error (if any).
- **currentContextName**  Name of the newest telemetry activity containing this error.
- **failureCount**  Number of failures seen within the binary where the error occurred.
- **failureId**  Identifier assigned to this failure.
- **failureType**  Indicates what type of failure was observed (exception, returned error, logged error or fail fast).
- **fileName**  Source code file name where the error occurred.
- **function**  Name of the function where the error occurred.
- **hresult**  Failure error code.
- **lineNumber**  Line number within the source code file where the error occurred.
- **message**  Custom message associated with the failure (if any).
- **module**  Name of the binary where the error occurred.
- **originatingContextId**  Identifier for the oldest telemetry activity containing this error.
- **originatingContextMessage**  Custom message associated with the oldest telemetry activity containing this error (if any).
- **originatingContextName**  Name of the oldest telemetry activity containing this error.
- **threadId**  Identifier of the thread the error occurred on.


### Microsoft.Windows.SedimentService.Applicable

This event is sent when the Windows Update sediment remediations service finds that an applicable plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period.

The following fields are available:

- **CV**  Correlation vector.
- **DetectedCondition**  Determine whether action needs to run based on device properties.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **IsSelfUpdateEnabledInOneSettings**  Indicates if self update is enabled in One Settings.
- **IsSelfUpdateNeeded**  Indicates if self update is needed.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.


### Microsoft.Windows.SedimentService.Completed

This event is sent when the Windows Update sediment remediations service finishes running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period.

The following fields are available:

- **CV**  Correlation vector.
- **FailedReasons**  List of reasons when the plugin action failed.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.
- **SedimentServiceCheckTaskFunctional**  True/False if scheduled task check succeeded.
- **SedimentServiceCurrentBytes**  Number of current private bytes of memory consumed by sedsvc.exe.
- **SedimentServiceKillService**  True/False if service is marked for kill (Shell.KillService).
- **SedimentServiceMaximumBytes**  Maximum bytes allowed for the service.
- **SedimentServiceRetrievedKillService**  True/False if result of One Settings check for kill succeeded - we only send back one of these indicators (not for each call).
- **SedimentServiceStopping**  True/False indicating whether the service is stopping.
- **SedimentServiceTaskFunctional**  True/False if scheduled task is functional. If task is not functional this indicates plugins will be run.
- **SedimentServiceTotalIterations**  Number of 5 second iterations service will wait before running again.


### Microsoft.Windows.SedimentService.Error

This event indicates whether an error condition occurred in the plug-in.

The following fields are available:

- **HResult**  This is the HRESULT for detection or perform action phases of the plugin.
- **Message**  Custom message associated with the failure (if any).
- **PackageVersion**  Current package version of Remediation.


### Microsoft.Windows.SedimentService.FallbackError

This event indicates whether an error occurred for a fallback in the plug-in.

The following fields are available:

- **s0**  Event returned when an error occurs for a fallback in the plugin. See [Microsoft.Windows.SedimentService.wilResult](#microsoftwindowssedimentservicewilresult).


### Microsoft.Windows.SedimentService.Information

This event provides general information returned from the plug-in.

The following fields are available:

- **HResult**  This is the HRESULT for detection or perform action phases of the plugin.
- **Message**  Custom message associated with the failure (if any).
- **PackageVersion**  Current package version of Remediation.


### Microsoft.Windows.SedimentService.Started

This event is sent when the Windows Update sediment remediations service starts running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period.

The following fields are available:

- **CV**  The Correlation Vector.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **PackageVersion**  The version number of the current remediation package.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for Detection or Perform Action phases of the plugin.


### Microsoft.Windows.SedimentService.wilResult

This event provides the result from the Windows internal library.

The following fields are available:

- **callContext**  List of telemetry activities containing this error.
- **currentContextId**  Identifier for the newest telemetry activity containing this error.
- **currentContextMessage**  Custom message associated with the newest telemetry activity containing this error (if any).
- **currentContextName**  Name of the newest telemetry activity containing this error.
- **failureCount**  Number of failures seen within the binary where the error occurred.
- **failureId**  Identifier assigned to this failure.
- **failureType**  Indicates what type of failure was observed (exception, returned error, logged error or fail fast).
- **fileName**  Source code file name where the error occurred.
- **function**  Name of the function where the error occurred.
- **hresult**  Failure error code.
- **lineNumber**  Line number within the source code file where the error occurred.
- **message**  Custom message associated with the failure (if any).
- **module**  Name of the binary where the error occurred.
- **originatingContextId**  Identifier for the oldest telemetry activity containing this error.
- **originatingContextMessage**  Custom message associated with the oldest telemetry activity containing this error (if any).
- **originatingContextName**  Name of the oldest telemetry activity containing this error.
- **threadId**  Identifier of the thread the error occurred on.


## Setup events

### SetupPlatformTel.SetupPlatformTelActivityEvent

This event sends basic metadata about the SetupPlatform update installation process, to help keep Windows up to date.

The following fields are available:

- **ActivityId**  Provides a unique Id to correlate events that occur between a activity start event, and a stop event
- **ActivityName**  Provides a friendly name of the package type that belongs to the ActivityId (Setup, LanguagePack, GDR, Driver, etc.)
- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **value**  Value associated with the corresponding event name. For example, time-related events will include the system time
- **Value**  Value associated with the corresponding event name. For example, time-related events will include the system time


### SetupPlatformTel.SetupPlatformTelActivityStarted

This event sends basic metadata about the update installation process generated by SetupPlatform to help keep Windows up to date.

The following fields are available:

- **Name**  The name of the dynamic update type. Example: GDR driver


### SetupPlatformTel.SetupPlatformTelActivityStopped

This event sends basic metadata about the update installation process generated by SetupPlatform to help keep Windows up to date.



### SetupPlatformTel.SetupPlatformTelEvent

This service retrieves events generated by SetupPlatform, the engine that drives the various deployment scenarios.

The following fields are available:

- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **Value**  Retrieves the value associated with the corresponding event name (Field Name). For example: For time related events this will include the system time.


## Shared PC events

### Microsoft.Windows.SharedPC.AccountManager.DeleteUserAccount

Activity for deletion of a user account for devices set up for Shared PC mode as part of the Transient Account Manager to help keep Windows up to date. Deleting unused user accounts on shared devices frees up disk space to improve Windows Update success rates.

The following fields are available:

- **accountType**  The type of account that was deleted. Example: AD, AAD, or Local
- **userSid**  The security identifier of the account.
- **wilActivity**  Windows Error Reporting data collected when there is a failure in deleting a user account with the Transient Account Manager. See [wilActivity](#wilactivity).


### Microsoft.Windows.SharedPC.AccountManager.SinglePolicyEvaluation

Activity for run of the Transient Account Manager that determines if any user accounts should be deleted for devices set up for Shared PC mode to help keep Windows up to date. Deleting unused user accounts on shared devices frees up disk space to improve Windows Update success rates

The following fields are available:

- **evaluationTrigger**  When was the Transient Account Manager policies ran? Example: At log off or during maintenance hours
- **totalAccountCount**  The number of accounts on a device after running the Transient Account Manager policies.
- **wilActivity**  Windows Error Reporting data collected when there is a failure in evaluating accounts to be deleted with the Transient Account Manager. See [wilActivity](#wilactivity).


### wilActivity

This event provides a Windows Internal Library context used for Product and Service diagnostics.

The following fields are available:

- **callContext**  The function where the failure occurred.
- **currentContextId**  The ID of the current call context where the failure occurred.
- **currentContextMessage**  The message of the current call context where the failure occurred.
- **currentContextName**  The name of the current call context where the failure occurred.
- **failureCount**  The number of failures for this failure ID.
- **failureId**  The ID of the failure that occurred.
- **failureType**  The type of the failure that occurred.
- **fileName**  The file name where the failure occurred.
- **function**  The function where the failure occurred.
- **hresult**  The HResult of the overall activity.
- **lineNumber**  The line number where the failure occurred.
- **message**  The message of the failure that occurred.
- **module**  The module where the failure occurred.
- **originatingContextId**  The ID of the originating call context that resulted in the failure.
- **originatingContextMessage**  The message of the originating call context that resulted in the failure.
- **originatingContextName**  The name of the originating call context that resulted in the failure.
- **threadId**  The ID of the thread on which the activity is executing.


### wilResult

This event provides a Windows Internal Library context used for Product and Service diagnostics.

The following fields are available:

- **callContext**  The call context stack where failure occurred.
- **currentContextId**  The ID of the current call context where the failure occurred.
- **currentContextMessage**  The message of the current call context where the failure occurred.
- **currentContextName**  The name of the current call context where the failure occurred.
- **failureCount**  The number of failures for this failure ID.
- **failureId**  The ID of the failure that occurred.
- **failureType**  The type of the failure that occurred.
- **fileName**  The file name where the failure occurred.
- **function**  The function where the failure occurred.
- **hresult**  The HResult of the overall activity.
- **lineNumber**  The line number where the failure occurred.
- **message**  The message of the failure that occurred.
- **module**  The module where the failure occurred.
- **originatingContextId**  The ID of the originating call context that resulted in the failure.
- **originatingContextMessage**  The message of the originating call context that resulted in the failure.
- **originatingContextName**  The name of the originating call context that resulted in the failure.
- **threadId**  The ID of the thread on which the activity is executing.


## SIH events

### SIHEngineTelemetry.EvalApplicability

This event is sent when targeting logic is evaluated to determine if a device is eligible for a given action.



### SIHEngineTelemetry.ExecuteAction

This event is triggered with SIH attempts to execute (e.g. install) the update or action in question. Includes important information like if the update required a reboot.



### SIHEngineTelemetry.PostRebootReport

This event reports the status of an action following a reboot, should one have been required.



## Software update events

### SoftwareUpdateClientTelemetry.CheckForUpdates

This event sends tracking data about the software distribution client check for content that is applicable to a device, to help keep Windows up to date

The following fields are available:

- **ActivityMatchingId**  Contains a unique ID identifying a single CheckForUpdates session from initialization to completion.
- **AllowCachedResults**  Indicates if the scan allowed using cached results.
- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable
- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BranchReadinessLevel**  The servicing branch configured on the device.
- **CachedEngineVersion**  For self-initiated healing, the version of the SIH engine that is cached on the device. If the SIH engine does not exist, the value is null.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **CapabilityDetectoidGuid**  The GUID for a hardware applicability detectoid that could not be evaluated.
- **CDNCountryCode**  Two letter country abbreviation for the Content Distribution Network (CDN) location.
- **CDNId**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.
- **ClientVersion**  The version number of the software distribution client.
- **Context**  Gives context on where the error has occurred. Example: AutoEnable, GetSLSData, AddService, Misc, or Unknown
- **CurrentMobileOperator**  The mobile operator the device is currently connected to.
- **DeferralPolicySources**  Sources for any update deferral policies defined (GPO = 0x10, MDM = 0x100, Flight = 0x1000, UX = 0x10000).
- **DeferredUpdates**  Update IDs which are currently being deferred until a later time
- **DeviceModel**  What is the device model.
- **DriverError**  The error code hit during a driver scan. This is 0 if no error was encountered.
- **DriverExclusionPolicy**  Indicates if the policy for not including drivers with Windows Update is enabled.
- **DriverSyncPassPerformed**  Were drivers scanned this time?
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **ExtendedMetadataCabUrl**  Hostname that is used to download an update.
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode wasn't specific enough.
- **FailedUpdateGuids**  The GUIDs for the updates that failed to be evaluated during the scan.
- **FailedUpdatesCount**  The number of updates that failed to be evaluated during the scan.
- **FeatureUpdateDeferral**  The deferral period configured for feature OS updates on the device (in days).
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FeatureUpdatePausePeriod**  The pause duration configured for feature OS updates on the device (in days).
- **FlightBranch**  The branch that a device is on if participating in flighting (pre-release builds).
- **FlightRing**  The ring (speed of getting builds) that a device is on if participating in flighting (pre-release builds).
- **HomeMobileOperator**  The mobile operator that the device was originally intended to work with.
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **IPVersion**  Indicates whether the download took place over IPv4 or IPv6
- **IsWUfBDualScanEnabled**  Indicates if Windows Update for Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Indicates if Windows Update for Business is enabled on the device.
- **MetadataIntegrityMode**  The mode of the update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce
- **MSIError**  The last error that was encountered during a scan for updates.
- **NetworkConnectivityDetected**  Indicates the type of network connectivity that was detected. 0 - IPv4, 1 - IPv6
- **NumberOfApplicableUpdates**  The number of updates which were ultimately deemed applicable to the system after the detection process is complete
- **NumberOfApplicationsCategoryScanEvaluated**  The number of categories (apps) for which an app update scan checked
- **NumberOfLoop**  The number of round trips the scan required
- **NumberOfNewUpdatesFromServiceSync**  The number of updates which were seen for the first time in this scan
- **NumberOfUpdatesEvaluated**  The total number of updates which were evaluated as a part of the scan
- **NumFailedMetadataSignatures**  The number of metadata signatures checks which failed for new metadata synced down.
- **Online**  Indicates if this was an online scan.
- **PausedUpdates**  A list of UpdateIds which that currently being paused.
- **PauseFeatureUpdatesEndTime**  If feature OS updates are paused on the device, this is the date and time for the end of the pause time window.
- **PauseFeatureUpdatesStartTime**  If feature OS updates are paused on the device, this is the date and time for the beginning of the pause time window.
- **PauseQualityUpdatesEndTime**  If quality OS updates are paused on the device, this is the date and time for the end of the pause time window.
- **PauseQualityUpdatesStartTime**  If quality OS updates are paused on the device, this is the date and time for the beginning of the pause time window.
- **PhonePreviewEnabled**  Indicates whether a phone was getting preview build, prior to flighting (pre-release builds) being introduced.
- **ProcessName**  The process name of the caller who initiated API calls, in the event where CallerApplicationName was not provided.
- **QualityUpdateDeferral**  The deferral period configured for quality OS updates on the device (in days).
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **QualityUpdatePausePeriod**  The pause duration configured for quality OS updates on the device (in days).
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **ScanDurationInSeconds**  The number of seconds a scan took
- **ScanEnqueueTime**  The number of seconds it took to initialize a scan
- **ServiceGuid**  An ID which represents which service the software distribution client is checking for content (Windows Update, Microsoft Store, etc.).
- **ServiceUrl**  The environment URL a device is configured to scan with
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **StatusCode**  Indicates the result of a CheckForUpdates event (success, cancellation, failure code HResult).
- **SyncType**  Describes the type of scan the event was
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetMetadataVersion**  For self-initiated healing, this is the target version of the SIH engine to download (if needed). If not, the value is null.
- **TotalNumMetadataSignatures**  The total number of metadata signatures checks done for new metadata that was synced down.
- **WebServiceRetryMethods**  Web service method requests that needed to be retried to complete operation.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.


### SoftwareUpdateClientTelemetry.Commit

This event sends data on whether the Update Service has been called to execute an upgrade, to help keep Windows up to date.

The following fields are available:

- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BundleId**  Identifier associated with the specific content bundle; should not be all zeros if the bundleID was found.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client
- **ClientVersion**  The version number of the software distribution client.
- **DeviceModel**  What is the device model.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  State of call
- **EventType**  Possible values are "Child", "Bundle", or "Driver".
- **FlightId**  The specific id of the flight the device is getting
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.)
- **RevisionNumber**  Unique revision number of Update
- **ServerId**  Identifier for the service to which the software distribution client is connecting, such as Windows Update and Microsoft Store.
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **UpdateId**  Unique Update ID
- **WUDeviceID**  UniqueDeviceID


### SoftwareUpdateClientTelemetry.Download

This event sends tracking data about the software distribution client download of the content for that update, to help keep Windows up to date.

The following fields are available:

- **ActiveDownloadTime**  How long the download took, in seconds, excluding time where the update wasn't actively being downloaded.
- **AppXBlockHashValidationFailureCount**  A count of the number of blocks that have failed validation after being downloaded.
- **AppXDownloadScope**  Indicates the scope of the download for application content.
- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The SKU number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BundleBytesDownloaded**  Number of bytes downloaded for the specific content bundle.
- **BundleId**  Identifier associated with the specific content bundle.
- **BundleRepeatFailFlag**  Indicates whether this particular update bundle had previously failed to download.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **BytesDownloaded**  How many bytes were downloaded for an individual piece of content (not the entire bundle).
- **CachedEngineVersion**  The version of the “Self-Initiated Healing” (SIH) engine that is cached on the device, if applicable.
- **CallerApplicationName**  The name provided by the application that initiated API calls into the software distribution client.
- **CbsDownloadMethod**  Indicates whether the download was a full- or a partial-file download.
- **CDNCountryCode**  Two letter country abbreviation for the Content Distribution Network (CDN) location.
- **CDNId**  ID which defines which CDN the software distribution client downloaded the content from.
- **ClientManagedByWSUSServer**  Indicates whether the client is managed by Windows Server Update Services (WSUS).
- **ClientVersion**  The version number of the software distribution client.
- **CurrentMobileOperator**  The mobile operator the device is currently connected to.
- **DeviceModel**  The model of the device.
- **DeviceOEM**  Identifies the Original Equipment Manufacturer (OEM) of the device.
- **DownloadPriority**  Indicates whether a download happened at background, normal, or foreground priority.
- **DownloadScenarioId**  A unique ID for a given download, used to tie together Windows Update and Delivery Optimizer events.
- **DownloadType**  Differentiates the download type of “Self-Initiated Healing” (SIH) downloads between Metadata and Payload downloads.
- **Edition**  Identifies the edition of Windows currently running on the device.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventNamespaceID**  The ID of the test events environment.
- **EventScenario**  Indicates the purpose for sending this event: whether because the software distribution just started downloading content; or whether it was cancelled, succeeded, or failed.
- **EventType**  Identifies the type of the event (Child, Bundle, or Driver).
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode wasn't specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBranch**  The branch that a device is on if participating in flighting (pre-release builds).
- **FlightBuildNumber**  If this download was for a flight (pre-release build), this indicates the build number of that flight.
- **FlightId**  The specific id of the flight (pre-release build) the device is getting.
- **FlightRing**  The ring (speed of getting builds) that a device is on if participating in flighting (pre-release builds).
- **HandlerType**  Indicates what kind of content is being downloaded (app, driver, windows patch, etc.).
- **HardwareId**  If this download was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **HomeMobileOperator**  The mobile operator that the device was originally intended to work with.
- **HostName**  The parent URL the content is downloading from.
- **IPVersion**  Indicates whether the download took place over IPv4 or IPv6.
- **IsAOACDevice**  Indicates whether the device is an Always On, Always Connected (AOAC) device.
- **IsDependentSet**  Indicates whether a driver is a part of a larger System Hardware/Firmware Update
- **IsWUfBDualScanEnabled**  Indicates if Windows Update for Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Indicates if Windows Update for Business is enabled on the device.
- **NetworkCostBitMask**  A flag indicating the cost of the network (congested, fixed, variable, over data limit, roaming, etc.) used for downloading the update content.
- **NetworkRestrictionStatus**  More general version of NetworkCostBitMask, specifying whether Windows considered the current network to be "metered."
- **PackageFullName**  The package name of the content.
- **PhonePreviewEnabled**  Indicates whether a phone was opted-in to getting preview builds, prior to flighting (pre-release builds) being introduced.
- **PlatformRole**  The role of the OS platform (Desktop, Mobile, Workstation, etc.).
- **ProcessName**  The process name of the caller who initiated API calls, in the event where CallerApplicationName was not provided.
- **ProcessorArchitecture**  Processor architecture of the system (x86, AMD64, ARM).
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RelatedCV**  The Correlation Vector that was used before the most recent change to a new Correlation Vector.
- **RepeatFailFlag**  Indicates whether this specific piece of content had previously failed to download.
- **RevisionNumber**  The revision number of the specified piece of content.
- **ServiceGuid**  A unique identifier for the service that the software distribution client is installing content for (Windows Update, Microsoft Store, etc).
- **Setup360Phase**  Identifies the active phase of the upgrade download if the current download is for an Operating System upgrade.
- **ShippingMobileOperator**  The mobile operator linked to the device when the device shipped.
- **StatusCode**  Indicates the result of a Download event (success, cancellation, failure code HResult).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **TargetMetadataVersion**  The version of the currently downloading (or most recently downloaded) package.
- **ThrottlingServiceHResult**  Result code (success/failure) while contacting a web service to determine whether this device should download content yet.
- **TimeToEstablishConnection**  Time (in milliseconds) it took to establish the connection prior to beginning downloaded.
- **TotalExpectedBytes**  The total size (in Bytes) expected to be downloaded.
- **UpdateId**  An identifier associated with the specific piece of content.
- **UpdateID**  An identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates whether the content was marked as Important, Recommended, or Optional.
- **UsedDO**  Indicates whether the download used the Delivery Optimization (DO) service.
- **UsedSystemVolume**  Indicates whether the content was downloaded to the device's main system storage drive, or an alternate storage drive.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.
- **WUSetting**  Indicates the users' current updating settings.


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

- **BundleID**  Identifier associated with the specific content bundle. If this value is found, it shouldn't report as all zeros
- **BytesTotal**  Total bytes to transfer for this content
- **BytesTransferred**  Total bytes transferred for this content at the time of heartbeat
- **ConnectionStatus**  Indicates the connectivity state of the device at the time of heartbeat
- **CurrentError**  Last (transient) error encountered by the active download
- **DownloadFlags**  Flags indicating if power state is ignored
- **DownloadState**  Current state of the active download for this content (queued, suspended, or progressing)
- **IsNetworkMetered**  Indicates whether Windows considered the current network to be ?metered"
- **MOAppDownloadLimit**  Mobile operator cap on size of application downloads, if any
- **MOUpdateDownloadLimit**  Mobile operator cap on size of operating system update downloads, if any
- **PowerState**  Indicates the power state of the device at the time of heartbeart (DC, AC, Battery Saver, or Connected Standby)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one
- **ResumeCount**  Number of times this active download has resumed from a suspended state
- **ServiceID**  Identifier for the service to which the software distribution client is connecting (Windows Update, Microsoft Store, etc)
- **SuspendCount**  Number of times this active download has entered a suspended state
- **SuspendReason**  Last reason for why this active download entered a suspended state


### SoftwareUpdateClientTelemetry.Install

This event sends tracking data about the software distribution client installation of the content for that update, to help keep Windows up to date.

The following fields are available:

- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BundleBytesDownloaded**  How many bytes were downloaded for the specific content bundle?
- **BundleId**  Identifier associated with the specific content bundle; should not be all zeros if the bundleID was found.
- **BundleRepeatFailFlag**  Has this particular update bundle previously failed to install?
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **CachedEngineVersion**  For self-initiated healing, the version of the SIH engine that is cached on the device. If the SIH engine does not exist, the value is null.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **CbsDownloadMethod**  Was the download a full download or a partial download?
- **ClientManagedByWSUSServer**  Is the client managed by Windows Server Update Services (WSUS)?
- **ClientVersion**  The version number of the software distribution client.
- **CSIErrorType**  The stage of CBS installation where it failed.
- **CurrentMobileOperator**  Mobile operator that device is currently connected to.
- **DeviceModel**  What is the device model.
- **DeviceOEM**  What OEM does this device belong to.
- **DownloadPriority**  The priority of the download activity.
- **DownloadScenarioId**  A unique ID for a given download used to tie together WU and DO events.
- **DriverPingBack**  Contains information about the previous driver and system state.
- **Edition**  Indicates the edition of Windows being used.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventNamespaceID**  Indicates whether the event succeeded or failed. Has the format EventType+Event where Event is Succeeded, Cancelled, Failed, etc.
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
- **IsAOACDevice**  Is it Always On, Always Connected? (Mobile device usage model)
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
- **PlatformRole**  The PowerPlatformRole as defined on MSDN.
- **ProcessName**  The process name of the caller who initiated API calls, in the event where CallerApplicationName was not provided.
- **ProcessorArchitecture**  Processor architecture of the system (x86, AMD64, ARM).
- **QualityUpdatePause**  Are quality OS updates paused on the device?
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **RepeatFailFlag**  Indicates whether this specific piece of content had previously failed to install.
- **RepeatSuccessInstallFlag**  Indicates whether this specific piece of content had previously installed successful, for example if another user had already installed it.
- **RevisionNumber**  The revision number of this specific piece of content.
- **ServiceGuid**  An ID which represents which service the software distribution client is installing content for (Windows Update, Microsoft Store, etc.).
- **Setup360Phase**  If the install is for an operating system upgrade, indicates which phase of the upgrade is underway.
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **StatusCode**  Indicates the result of an installation event (success, cancellation, failure code HResult).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **TransactionCode**  The ID which represents a given MSI installation
- **UpdateId**  Unique update ID
- **UpdateID**  An identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates whether a piece of content was marked as Important, Recommended, or Optional.
- **UsedSystemVolume**  Indicates whether the content was downloaded and then installed from the device's main system storage drive, or an alternate storage drive.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.
- **WUSetting**  Indicates the user's current updating settings.


### SoftwareUpdateClientTelemetry.SLSDiscovery

This event sends data about the ability of Windows to discover the location of a backend server with which it must connect to perform updates or content acquisition, in order to determine disruptions in availability of update services and provide context for Windows Update errors.

The following fields are available:

- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed
- **HResult**  Indicates the result code of the event (success, cancellation, failure code HResult)
- **IsBackground**  Indicates whether the SLS discovery event took place in the foreground or background
- **NextExpirationTime**  Indicates when the SLS cab expires
- **ServiceID**  An ID which represents which service the software distribution client is connecting to (Windows Update, Microsoft Store, etc.)
- **SusClientId**  The unique device ID controlled by the software distribution client
- **UrlPath**  Path to the SLS cab that was downloaded
- **WUAVersion**  The version number of the software distribution client


### SoftwareUpdateClientTelemetry.UpdateDetected

This event sends data about an AppX app that has been updated from the Microsoft Store, including what app needs an update and what version/architecture is required, in order to understand and address problems with apps getting required updates.

The following fields are available:

- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **NumberOfApplicableUpdates**  The number of updates ultimately deemed applicable to the system after the detection process is complete.
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one.
- **ServiceGuid**  An ID that represents which service the software distribution client is connecting to (Windows Update, Microsoft Store, etc.).
- **WUDeviceID**  The unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.UpdateMetadataIntegrity

This event identifies whether updates have been tampered with and protects against man-in-the-middle attacks.

The following fields are available:

- **EndpointUrl**  The endpoint URL where the device obtains update metadata. This is used to distinguish between test, staging, and production environments.
- **EventScenario**  The purpose of this event, such as scan started, scan succeeded, or scan failed.
- **ExtendedStatusCode**  The secondary status code of the event.
- **LeafCertId**  The integral ID from the FragmentSigning data for the certificate that failed.
- **ListOfSHA256OfIntermediateCerData**  A semicolon delimited list of base64 encoding of hashes for the Base64CerData in the FragmentSigning data of an intermediate certificate.
- **MetadataIntegrityMode**  The mode of the transport metadata integrity check. 0 = unknown; 1 = ignore; 2 = audit; 3 = enforce
- **MetadataSignature**  A base64-encoded string of the signature associated with the update metadata (specified by revision ID).
- **RawMode**  The raw unparsed mode string from the SLS response. This field is null if not applicable.
- **RawValidityWindowInDays**  The raw unparsed validity window string in days of the timestamp token. This field is null if not applicable.
- **RevisionId**  The revision ID for a specific piece of content.
- **RevisionNumber**  The revision number for a specific piece of content.
- **ServiceGuid**  Identifies the service to which the software distribution client is connected, Example: Windows Update or Microsoft Store
- **SHA256OfLeafCerData**  A base64 encoding of the hash for the Base64CerData in the FragmentSigning data of the leaf certificate.
- **SHA256OfLeafCertPublicKey**  A base64 encoding of the hash of the Base64CertData in the FragmentSigning data of the leaf certificate.
- **SHA256OfTimestampToken**  An encoded string of the timestamp token.
- **SignatureAlgorithm**  The hash algorithm for the metadata signature.
- **SLSPrograms**  A test program to which a device may have opted in. Example: Insider Fast
- **StatusCode**  The status code of the event.
- **TimestampTokenCertThumbprint**  The thumbprint of the encoded timestamp token.
- **TimestampTokenId**  The time this was created. It is encoded in a timestamp blob and will be zero if the token is malformed.
- **UpdateId**  The update ID for a specific piece of content.
- **ValidityWindowInDays**  The validity window that's in effect when verifying the timestamp.


## Update Assistant events

### Microsoft.Windows.UpdateAssistant.Orchestrator.BlockingEventId

The event sends basic info on the reason that Windows 10 was not updated due to compatibility issues, previous rollbacks, or admin policies.

The following fields are available:

- **ApplicabilityBlockedReason**  Blocked due to an applicability issue.
- **BlockWuUpgrades**  The upgrade assistant is currently blocked.
- **clientID**  An identification of the current release of Update Assistant.
- **CloverTrail**  This device is Clovertrail.
- **DeviceIsMdmManaged**  This device is MDM managed.
- **IsNetworkAvailable**  If the device network is not available.
- **IsNetworkMetered**  If network is metered.
- **IsSccmManaged**  This device is SCCM managed.
- **NewlyInstalledOs**  OS is newly installed quiet period.
- **PausedByPolicy**  Updates are paused by policy.
- **RecoveredFromRS3**  Previously recovered from RS3.
- **RS1UninstallActive**  Blocked due to an active RS1 uninstall.
- **RS3RollBacks**  Exceeded number of allowable RS3 rollbacks.
- **triggerTaskSource**  Describe which task launches this instance.
- **WsusManaged**  This device is WSUS managed.
- **ZeroExhaust**  This device is zero exhaust.


### Microsoft.Windows.UpdateAssistant.Orchestrator.DeniedLaunchEventId

The event sends basic info when a device was blocked or prevented from updating to the latest Windows 10 version.

The following fields are available:

- **clientID**  An identification of the current release of Update Assistant.
- **denyReason**  All the reasons why the Update Assistant was prevented from launching. Bitmask with values from UpdateAssistant.cpp eUpgradeModeReason.
- **triggerTaskSource**  Describe which task launches this instance.


### Microsoft.Windows.UpdateAssistant.Orchestrator.FailedLaunchEventId

Event to mark that Update Assistant Orchestrator failed to launch Update Assistant.

The following fields are available:

- **clientID**  An identification of the current release of Update Assistant.
- **hResult**  Error code of the Update Assistant Orchestrator failure.
- **triggerTaskSource**  Describe which task launches this instance.


### Microsoft.Windows.UpdateAssistant.Orchestrator.FailedOneSettingsQueryEventId

Event indicating One Settings was not queried by update assistant.

The following fields are available:

- **clientID**  An identification of the current release of Update Assistant.
- **hResult**  Error code of One Settings query failure.


### Microsoft.Windows.UpdateAssistant.Orchestrator.LaunchEventId

This event sends basic information on whether the device should be updated to the latest Windows 10 version.

The following fields are available:

- **autoStartRunCount**  The auto start run count of Update Assistant.
- **clientID**  The ID of the current release of Update Assistant.
- **launchMode**  Indicates the type of launch performed.
- **launchTypeReason**  A bitmask of all the reasons for type of launch.
- **triggerTaskSource**  Indicates which task launches this instance.
- **UALaunchRunCount**  Total number of times Update Assistant launched.


### Microsoft.Windows.UpdateAssistant.Orchestrator.RestoreEventId

The event sends basic info on whether the Windows 10 update notification has previously launched.

The following fields are available:

- **clientID**  ID of the current release of Update Assistant.
- **restoreReason**  All the reasons for the restore.
- **triggerTaskSource**  Indicates which task launches this instance.


## Update events

### Update360Telemetry.UpdateAgent_DownloadRequest

This event sends data during the download request phase of updating Windows.

The following fields are available:

- **DeletedCorruptFiles**  Indicates if UpdateAgent found any corrupt payload files and whether the payload was deleted.
- **ErrorCode**  The error code returned for the current download request phase.
- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique value for each Update Agent mode.
- **PackageCountOptional**  Number of optional packages requested.
- **PackageCountRequired**  Number of required packages requested.
- **PackageCountTotal**  Total number of packages needed.
- **PackageCountTotalCanonical**  Total number of canonical packages.
- **PackageCountTotalDiff**  Total number of diff packages.
- **PackageCountTotalExpress**  Total number of express packages.
- **PackageSizeCanonical**  Size of canonical packages in bytes
- **PackageSizeDiff**  Size of diff packages in bytes
- **PackageSizeExpress**  Size of express packages in bytes
- **RangeRequestState**  Represents the state of the download range request.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Result of the download request phase of update.
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **SessionId**  Unique value for each Update Agent mode attempt.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgent_FellBackToCanonical

This event collects information when Express could not be used, and the update had to fall back to “canonical” during the new UUP (Unified Update Platform) update scenario; which is leveraged by both Mobile and Desktop.

The following fields are available:

- **FlightId**  Unique ID for the flight (test instance version).
- **ObjectId**  The unique value for each Update Agent mode.
- **PackageCount**  The number of packages that fell back to “canonical”.
- **PackageList**  PackageIDs which fell back to “canonical”.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **ScenarioId**  The ID of the update scenario.
- **SessionId**  The ID of the update attempt.
- **UpdateId**  The ID of the update.


### Update360Telemetry.UpdateAgent_Initialize

This event sends data during the initialize phase of updating Windows.

The following fields are available:

- **ErrorCode**  The error code returned for the current initialize phase.
- **FlightId**  Unique ID for each flight.
- **FlightMetadata**  Contains the FlightId and the build being flighted.
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Result of the initialize phase of update. 0 = Succeeded, 1 = Failed, 2 = Cancelled, 3 = Blocked, 4 = BlockCancelled
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **SessionData**  Contains instructions to update agent for processing FODs and DUICs (Null for other scenarios).
- **SessionId**  Unique value for each Update Agent mode attempt .
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgent_Install

This event sends data during the install phase of updating Windows.

The following fields are available:

- **ErrorCode**  The error code returned for the current install phase.
- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  Correlation vector value generated from the latest scan.
- **Result**  Result of the install phase of update. 0 = Succeeded 1 = Failed, 2 = Cancelled, 3 = Blocked, 4 = BlockCancelled
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **SessionId**  Unique value for each Update Agent mode attempt.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgent_Merge

This event sends data on the merge phase when updating Windows.

The following fields are available:

- **ErrorCode**  The error code returned for the current reboot.
- **FlightId**  Unique ID for the flight (test instance version).
- **ObjectId**  The unique value for each Update Agent mode.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **Result**  The HResult of the event.
- **ScenarioId**  The ID of the update scenario.
- **SessionId**  The ID of the update attempt.
- **UpdateId**  The ID of the update.


### Update360Telemetry.UpdateAgent_ModeStart

This event sends data for the start of each mode during the process of updating Windows.

The following fields are available:

- **FlightId**  Unique ID for each flight.
- **Mode**  Indicates that the Update Agent mode that has started. 1 = Initialize, 2 = DownloadRequest, 3 = Install, 4 = Commit
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  The correlation vector value generated from the latest scan.
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **SessionId**  Unique value for each Update Agent mode attempt.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgent_SetupBoxLaunch

This event sends data during the launching of the setup box when updating Windows.

The following fields are available:

- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique value for each Update Agent mode.
- **Quiet**  Indicates whether setup is running in quiet mode. 0 = false 1 = true
- **RelatedCV**  Correlation vector value generated from the latest scan.
- **SandboxSize**  The size of the sandbox folder on the device.
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **SessionId**  Unique value for each Update Agent mode attempt.
- **SetupMode**  Setup mode 1 = predownload, 2 = install, 3 = finalize
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgentCommit

This event collects information regarding the commit phase of the new Unified Update Platform (UUP) update scenario, which is leveraged by both Mobile and Desktop.

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

This event sends data for the download request phase of updating Windows via the new Unified Update Platform (UUP) scenario. Applicable to PC and Mobile.

The following fields are available:

- **DeletedCorruptFiles**  Boolean indicating whether corrupt payload was deleted.
- **DownloadRequests**  Number of times a download was retried.
- **ErrorCode**  The error code returned for the current download request phase.
- **ExtensionName**  Indicates whether the payload is related to Operating System content or a plugin.
- **FlightId**  Unique ID for each flight.
- **InternalFailureResult**  Indicates a non-fatal error from a plugin.
- **ObjectId**  Unique value for each Update Agent mode (same concept as InstanceId for Setup360).
- **PackageCountOptional**  # of optional packages requested.
- **PackageCountRequired**  # of required packages requested.
- **PackageCountTotal**  Total # of packages needed.
- **PackageCountTotalCanonical**  Total number of canonical packages.
- **PackageCountTotalDiff**  Total number of diff packages.
- **PackageCountTotalExpress**  Total number of express packages.
- **PackageExpressType**  Type of express package.
- **PackageSizeCanonical**  Size of canonical packages in bytes.
- **PackageSizeDiff**  Size of diff packages in bytes.
- **PackageSizeExpress**  Size of express packages in bytes.
- **RangeRequestState**  Indicates the range request type used.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Outcome of the download request phase of update.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each attempt (same value for initialize, download, install commit phases).
- **UpdateId**  Unique ID for each Update.


### Update360Telemetry.UpdateAgentExpand

This event collects information regarding the expansion phase of the new Unified Update Platform (UUP) update scenario, which is leveraged by both Mobile and Desktop.

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


### Update360Telemetry.UpdateAgentInitialize

This event sends data for the initialize phase of updating Windows via the new Unified Update Platform (UUP) scenario, which is applicable to both PCs and Mobile.

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

This event sends data for the install phase of updating Windows.

The following fields are available:

- **ErrorCode**  The error code returned for the current install phase.
- **FlightId**  Unique value for each Update Agent mode (same concept as InstanceId for Setup360).
- **ObjectId**  Correlation vector value generated from the latest USO scan.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  The result for the current install phase.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgentMitigationResult

This event sends data indicating the result of each update agent mitigation.

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

This event sends a summary of all the update agent mitigations available for an this update.



### Update360Telemetry.UpdateAgentModeStart

This event sends data for the start of each mode during the process of updating Windows via the new Unified Update Platform (UUP) scenario. Applicable to both PCs and Mobile.

The following fields are available:

- **FlightId**  Unique ID for each flight.
- **Mode**  Indicates the mode that has started.
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update.
- **Version**  Version of update


### Update360Telemetry.UpdateAgentOneSettings

This event collects information regarding the post reboot phase of the new UUP (Unified Update Platform) update scenario; which is leveraged by both Mobile and Desktop.



### Update360Telemetry.UpdateAgentSetupBoxLaunch

The UpdateAgent_SetupBoxLaunch event sends data for the launching of the setup box when updating Windows via the new Unified Update Platform (UUP) scenario. This event is only applicable to PCs.

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
- **SetupMode**  Mode of setup to be launched.
- **UpdateId**  Unique ID for each Update.
- **UserSession**  Indicates whether install was invoked by user actions.


## Upgrade events

### FacilitatorTelemetry.DCATDownload

This event indicates whether devices received additional or critical supplemental content during an OS Upgrade, to help keep Windows up-to-date and secure.



### FacilitatorTelemetry.InitializeDU

This event determines whether devices received additional or critical supplemental content during an OS upgrade.



### Setup360Telemetry.Downlevel

This event sends data indicating that the device has started the downlevel phase of the upgrade, to help keep Windows up-to-date and secure.

The following fields are available:

- **ClientId**  If using Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, the default value is Media360, but it can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the downlevel OS.
- **HostOsSkuName**  The operating system edition which is running Setup360 instance (downlevel OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  In the Windows Update scenario, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  More detailed information about phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360 (for example, Predownload, Install, Finalize, Rollback).
- **Setup360Result**  The result of Setup360 (HRESULT used to diagnose errors).
- **Setup360Scenario**  The Setup360 flow type (for example, Boot, Media, Update, MCT).
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of the target OS).
- **State**  Exit state of given Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  An ID that uniquely identifies a group of events.
- **WuId**  This is the Windows Update Client ID. In the Windows Update scenario, this is the same as the clientId.


### Setup360Telemetry.Finalize

This event sends data indicating that the device has started the phase of finalizing the upgrade, to help keep Windows up-to-date and secure.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  More detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


### Setup360Telemetry.OsUninstall

This event sends data regarding OS updates and upgrades from Windows 7, Windows 8, and Windows 10. Specifically, it indicates the outcome of an OS uninstall.

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase or action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  Exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  Windows Update client ID.


### Setup360Telemetry.PostRebootInstall

This event sends data indicating that the device has invoked the post reboot install phase of the upgrade, to help keep Windows up-to-date.

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


### Setup360Telemetry.PreDownloadQuiet

This event sends data indicating that the device has invoked the predownload quiet phase of the upgrade, to help keep Windows up to date.

The following fields are available:

- **ClientId**  Using Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous operating system).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  Using Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, canceled.
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  This is the Windows Update Client ID. Using Windows Update, this is the same as the clientId.


### Setup360Telemetry.PreDownloadUX

This event sends data regarding OS Updates and Upgrades from Windows 7.X, Windows 8.X, Windows 10 and RS, to help keep Windows up-to-date and secure. Specifically, it indicates the outcome of the PredownloadUX portion of the update process.

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous operating system.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous operating system).
- **InstanceId**  Unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of the target OS).
- **State**  The exit state of the Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  Windows Update client ID.


### Setup360Telemetry.PreInstallQuiet

This event sends data indicating that the device has invoked the preinstall quiet phase of the upgrade, to help keep Windows up-to-date.

The following fields are available:

- **ClientId**  With Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used to diagnose errors.
- **Setup360Scenario**  Setup360 flow type (Boot, Media, Update, MCT).
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


### Setup360Telemetry.PreInstallUX

This event sends data regarding OS updates and upgrades from Windows 7, Windows 8, and Windows 10, to help keep Windows up-to-date.  Specifically, it indicates the outcome of the PreinstallUX portion of the update process.

The following fields are available:

- **ClientId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running the Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe.
- **ReportId**  For Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that is used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type, Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  Windows Update client ID.


### Setup360Telemetry.Setup360

This event sends data about OS deployment scenarios, to help keep Windows up-to-date.

The following fields are available:

- **ClientId**  Retrieves the upgrade ID. In the Windows Update scenario, this will be the Windows Update client ID. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FieldName**  Retrieves the data point.
- **FlightData**  Specifies a unique identifier for each group of Windows Insider builds.
- **InstanceId**  Retrieves a unique identifier for each instance of a setup session.
- **ReportId**  Retrieves the report ID.
- **ScenarioId**  Retrieves the deployment scenario.
- **Value**  Retrieves the value associated with the corresponding FieldName.


### Setup360Telemetry.Setup360DynamicUpdate

This event helps determine whether the device received supplemental content during an operating system upgrade, to help keep Windows up-to-date.



### Setup360Telemetry.Setup360MitigationResult

This event sends data indicating the result of each setup mitigation.



### Setup360Telemetry.Setup360MitigationSummary

This event sends a summary of all the setup mitigations available for this update.



### Setup360Telemetry.Setup360OneSettings

This event collects information regarding the post reboot phase of the new UUP (Unified Update Platform) update scenario; which is leveraged by both Mobile and Desktop.



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
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


## Windows Error Reporting events

### Microsoft.Windows.WERVertical.OSCrash

This event sends binary data from the collected dump file wheneveer a bug check occurs, to help keep Windows up to date. The is the OneCore version of this event.

The following fields are available:

- **BootId**  Uint32 identifying the boot number for this device.
- **BugCheckCode**  Uint64 "bugcheck code" that identifies a proximate cause of the bug check.
- **BugCheckParameter1**  Uint64 parameter providing additional information.
- **BugCheckParameter2**  Uint64 parameter providing additional information.
- **BugCheckParameter3**  Uint64 parameter providing additional information.
- **BugCheckParameter4**  Uint64 parameter providing additional information.
- **DumpFileAttributes**  Codes that identify the type of data contained in the dump file
- **DumpFileSize**  Size of the dump file
- **IsValidDumpFile**  True if the dump file is valid for the debugger, false otherwise
- **ReportId**  WER Report Id associated with this bug check (used for finding the corresponding report archive in Watson).


### WerTraceloggingProvider.AppCrashEvent

This event sends data about crashes for both native and managed applications, to help keep Windows up to date. The data includes information about the crashing process and a summary of its exception record.

The following fields are available:

- **AppName**  The name of the app that crashed.
- **AppSessionGuid**  The unique ID used as a correlation vector for process instances in the telemetry backend.
- **AppTimeStamp**  The date time stamp of the app.
- **AppVersion**  The version of the app that crashed.
- **ExceptionCode**  The exception code returned by the process that crashed.
- **ExceptionOffset**  The address where the exception occurred.
- **Flags**  Flags indicating how reporting is done. For example, queue the report, do not offer JIT debugging, do not terminate the process after reporting.
- **ModName**  The module name of the process that crashed.
- **ModTimeStamp**  The date time stamp of the module.
- **ModVersion**  The module version of the process that crashed.
- **PackageFullName**  The package name if the crashing application is packaged.
- **PackageRelativeAppId**  The relative application ID if the crashing application is packaged.
- **ProcessArchitecture**  The architecture of the system.
- **ProcessCreateTime**  The time of creation of the process that crashed.
- **ProcessId**  The ID of the process that crashed.
- **ReportId**  A unique ID used to identify the report. This can be used to track the report.
- **TargetAppId**  The target app ID.
- **TargetAppVer**  The target app version.


## Windows Phone events

### Microsoft.Windows.Phone.Telemetry.OnBoot.RebootReason

This event lists the reboot reason when an app is going to reboot.

The following fields are available:

- **BootId**  The system boot ID.
- **BoottimeSinceLastShutdown**  The boot time since the last shutdown.
- **RebootReason**  Reason for the reboot.


## Windows Store events

### Microsoft.Windows.Store.Partner.ReportApplication

Report application event for Microsoft Store client.



### Microsoft.Windows.Store.StoreActivating

This event sends tracking data about when the Store app activation via protocol URI is in progress, to help keep Windows up to date.

The following fields are available:

- **correlationVectorRoot**  Identifies multiple events within a session/sequence. Initial value before incrementation or extension.
- **protocolUri**  Protocol URI used to activate the store.
- **reason**  The reason for activating the store.


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
- **WUContentId**  The Windows Update content ID.


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
- **WUContentId**  The Windows Update content ID.


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
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  HResult code to show the result of the operation (success/failure).
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Did the user initiate the installation?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this happening after a device restore?
- **IsUpdate**  Is this an update?
- **ParentBundledId**  The product's parent bundle ID.
- **PFN**  Product Family Name of the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  The number of attempts by the system to acquire this product.
- **UpdateId**  The update ID (if this is an update)
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


### Microsoft.Windows.StoreAgent.Telemetry.EndFrameworkUpdate

This event is sent when an app update requires an updated Framework package and the process starts to download it. It is used to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed before this operation.


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

- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  The result code of the last action performed.
- **IsApplicability**  Is this request to only check if there are any applicable packages to install?
- **IsInteractive**  Is this user requested?
- **IsOnline**  Is the request doing an online check?


### Microsoft.Windows.StoreAgent.Telemetry.EndSearchUpdatePackages

This event is sent after searching for update packages to install. It is used to help keep Windows up-to-date and secure.

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


### Microsoft.Windows.StoreAgent.Telemetry.EndStageUserData

This event is sent after restoring user data (if any) that needs to be restored following a product install. It is used to keep Windows up-to-date and secure.

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
- **WUContentId**  The Windows Update content ID.


### Microsoft.Windows.StoreAgent.Telemetry.EndUpdateMetadataPrepare

This event happens after a scan for available app updates. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed.


### Microsoft.Windows.StoreAgent.Telemetry.FulfillmentComplete

This event is sent at the end of an app install or update to help keep Windows up-to-date and secure.

The following fields are available:

- **FailedRetry**  Indicates whether the installation or update retry was successful.
- **HResult**  The HResult code of the operation.
- **PFN**  The Package Family Name of the app that is being installed or updated.
- **ProductId**  The product ID of the app that is being updated or installed.


### Microsoft.Windows.StoreAgent.Telemetry.FulfillmentInitiate

This event is sent at the beginning of an app install or update to help keep Windows up-to-date and secure.

The following fields are available:

- **PFN**  The Package Family Name of the app that is being installed or updated.
- **ProductId**  The product ID of the app that is being updated or installed.


### Microsoft.Windows.StoreAgent.Telemetry.InstallOperationRequest

This event is sent when a product install or update is initiated, to help keep Windows up-to-date and secure.

The following fields are available:

- **BundleId**  The identity of the build associated with this product.
- **CatalogId**  If this product is from a private catalog, the Store Product ID for the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SkuId**  Specific edition ID being installed.
- **VolumePath**  The disk path of the installation.


### Microsoft.Windows.StoreAgent.Telemetry.PauseInstallation

This event is sent when a product install or update is paused (either by a user or the system), to help keep Windows up-to-date and secure.

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
- **WUContentId**  The Windows Update content ID.


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
- **SystemAttemptNumber**  The total number of system attempts.
- **UserAttemptNumber**  The total number of user attempts.
- **WUContentId**  The Windows Update content ID.


### Microsoft.Windows.StoreAgent.Telemetry.ResumeOperationRequest

This event is sent when a product install or update is resumed by a user or on installation retries, to help keep Windows up-to-date and secure.

The following fields are available:

- **ProductId**  The Store Product ID for the product being installed.


### Microsoft.Windows.StoreAgent.Telemetry.SearchForUpdateOperationRequest

This event is sent when searching for update packages to install, to help keep Windows up-to-date and secure.

The following fields are available:

- **CatalogId**  The Store Catalog ID for the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SkuId**  Specfic edition of the app being updated.


### Microsoft.Windows.StoreAgent.Telemetry.UpdateAppOperationRequest

This event occurs when an update is requested for an app, to help keep Windows up-to-date and secure.

The following fields are available:

- **PFamN**  The name of the app that is requested for update.


## Windows Update Delivery Optimization events

### Microsoft.OSG.DU.DeliveryOptClient.DownloadCanceled

This event describes when a download was canceled with Delivery Optimization. It's used to understand and address problems regarding downloads.

The following fields are available:

- **background**  Is the download being done in the background?
- **bytesFromCDN**  The number of bytes received from a CDN source.
- **bytesFromGroupPeers**  The number of bytes received from a peer in the same group.
- **bytesFromIntPeers**  The number of bytes received from peers not in the same LAN or in the same group.
- **bytesFromPeers**  The number of bytes received from a peer in the same LAN.
- **cdnErrorCodes**  A list of CDN connection errors since the last FailureCDNCommunication event.
- **cdnErrorCounts**  The number of times each error in cdnErrorCodes was encountered.
- **clientTelId**  A random number used for device sampling.
- **doErrorCode**  The Delivery Optimization error code that was returned.
- **errorCode**  The error code that was returned.
- **experimentId**  When running a test, this is used to correlate events that are part of the same test.
- **fileID**  The ID of the file being downloaded.
- **isVpn**  Indicates whether the device is connected to a VPN (Virtual Private Network).
- **scenarioID**  The ID of the scenario.
- **sessionID**  The ID of the file download session.
- **updateID**  The ID of the update being downloaded.
- **usedMemoryStream**  TRUE if the download is using memory streaming for App downloads.


### Microsoft.OSG.DU.DeliveryOptClient.DownloadCompleted

This event describes when a download has completed with Delivery Optimization. It's used to understand and address problems regarding downloads.

The following fields are available:

- **background**  Is the download a background download?
- **bytesFromCDN**  The number of bytes received from a CDN source.
- **bytesFromGroupPeers**  The number of bytes received from a peer in the same domain group.
- **bytesFromIntPeers**  The number of bytes received from peers not in the same LAN or in the same domain group.
- **bytesFromPeers**  The number of bytes received from a peer in the same LAN.
- **bytesRequested**  The total number of bytes requested for download.
- **cdnConnectionCount**  The total number of connections made to the CDN.
- **cdnErrorCodes**  A list of CDN connection errors since the last FailureCDNCommunication event.
- **cdnErrorCounts**  The number of times each error in cdnErrorCodes was encountered.
- **cdnIp**  The IP address of the source CDN.
- **clientTelId**  A random number used for device sampling.
- **doErrorCode**  The Delivery Optimization error code that was returned.
- **downlinkBps**  The maximum measured available download bandwidth (in bytes per second).
- **downlinkUsageBps**  The download speed (in bytes per second).
- **downloadMode**  The download mode used for this file download session.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **fileID**  The ID of the file being downloaded.
- **fileSize**  The size of the file being downloaded.
- **groupConnectionCount**  The total number of connections made to peers in the same group.
- **internetConnectionCount**  The total number of connections made to peers not in the same LAN or the same group.
- **isVpn**  Is the device connected to a Virtual Private Network?
- **lanConnectionCount**  The total number of connections made to peers in the same LAN.
- **numPeers**  The total number of peers used for this download.
- **restrictedUpload**  Is the upload restricted?
- **scenarioID**  The ID of the scenario.
- **sessionID**  The ID of the download session.
- **totalTimeMs**  Duration of the download (in seconds).
- **updateID**  The ID of the update being downloaded.
- **uplinkBps**  The maximum measured available upload bandwidth (in bytes per second).
- **uplinkUsageBps**  The upload speed (in bytes per second).
- **usedMemoryStream**  TRUE if the download is using memory streaming for App downloads.


### Microsoft.OSG.DU.DeliveryOptClient.DownloadPaused

This event represents a temporary suspension of a download with Delivery Optimization. It's used to understand and address problems regarding downloads.

The following fields are available:

- **background**  Is the download a background download?
- **clientTelId**  A random number used for device sampling.
- **errorCode**  The error code that was returned.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **fileID**  The ID of the file being paused.
- **isVpn**  Is the device connected to a Virtual Private Network?
- **reasonCode**  The reason for pausing the download.
- **scenarioID**  The ID of the scenario.
- **sessionID**  The ID of the download session.
- **updateID**  The ID of the update being paused.


### Microsoft.OSG.DU.DeliveryOptClient.DownloadStarted

This event sends data describing the start of a new download to enable Delivery Optimization. It's used to understand and address problems regarding downloads.

The following fields are available:

- **background**  Indicates whether the download is happening in the background.
- **cdnUrl**  The URL of the source CDN.
- **clientTelId**  A random number used for device sampling.
- **costFlags**  A set of flags representing network cost.
- **deviceProfile**  Identifies the usage or form factor (such as Desktop, Xbox, or VM).
- **diceRoll**  Random number used for determining if a client will use peering.
- **doClientVersion**  The version of the Delivery Optimization client.
- **doErrorCode**  The Delivery Optimization error code that was returned.
- **downloadMode**  The download mode used for this file download session (CdnOnly = 0, Lan = 1, Group = 2, Internet = 3, Simple = 99, Bypass = 100).
- **errorCode**  The error code that was returned.
- **experimentId**  ID used to correlate client/services calls that are part of the same test during A/B testing.
- **fileID**  The ID of the file being downloaded.
- **filePath**  The path to where the downloaded file will be written.
- **groupID**  ID for the group.
- **isVpn**  Indicates whether the device is connected to a Virtual Private Network.
- **jobID**  The ID of the Windows Update job.
- **minDiskSizeGB**  The minimum disk size (in GB) policy set for the device to allow peering with delivery optimization.
- **minDiskSizePolicyEnforced**  Indicates whether there is an enforced minimum disk size requirement for peering.
- **minFileSizePolicy**  The minimum content file size policy to allow the download using peering with delivery optimization.
- **peerID**  The ID for this delivery optimization client.
- **scenarioID**  The ID of the scenario.
- **sessionID**  The ID for the file download session.
- **updateID**  The ID of the update being downloaded.
- **usedMemoryStream**  Indicates whether the download used memory streaming.


### Microsoft.OSG.DU.DeliveryOptClient.FailureCdnCommunication

This event represents a failure to download from a CDN with Delivery Optimization. It's used to understand and address problems regarding downloads.

The following fields are available:

- **cdnHeaders**  The HTTP headers returned by the CDN.
- **cdnIp**  The IP address of the CDN.
- **cdnUrl**  The URL of the CDN.
- **clientTelId**  A random number used for device sampling.
- **errorCode**  The error code that was returned.
- **errorCount**  The total number of times this error code was seen since the last FailureCdnCommunication event was encountered.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **fileID**  The ID of the file being downloaded.
- **httpStatusCode**  The HTTP status code returned by the CDN.
- **isHeadRequest**  The type of  HTTP request that was sent to the CDN. Example: HEAD or GET
- **requestSize**  The size of the range requested from the CDN.
- **responseSize**  The size of the range response received from the CDN.
- **sessionID**  The ID of the download session.


### Microsoft.OSG.DU.DeliveryOptClient.JobError

This event represents a Windows Update job error. It allows for investigation of top errors.

The following fields are available:

- **clientTelId**  A random number used for device sampling.
- **errorCode**  The error code returned.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **fileID**  The ID of the file being downloaded.
- **jobID**  The Windows Update job ID.


## Windows Update events

### Microsoft.Windows.Update.DataMigrationFramework.DmfMigrationCompleted

This event sends data collected at the end of the Data Migration Framework (DMF) and parameters involved in its invocation, to help keep Windows up to date.

The following fields are available:

- **MigrationDurationInMilliseconds**  How long the DMF migration took (in milliseconds)
- **MigrationEndTime**  A system timestamp of when the DMF migration completed.
- **RevisionNumbers**  A collection of revision numbers for the updates associated with the DMF session.
- **UpdateIds**  A collection of GUIDs for updates that are associated with the DMF session.
- **WuClientId**  The GUID of the Windows Update client responsible for triggering the DMF migration


### Microsoft.Windows.Update.DataMigrationFramework.DmfMigrationStarted

This event sends data collected at the beginning of the Data Migration Framework (DMF) and parameters involved in its invocation, to help keep Windows up to date.

The following fields are available:

- **MigrationMicrosoftPhases**  Revision numbers for the updates that were installed.
- **MigrationOEMPhases**  WU Update IDs for the updates that were installed.
- **MigrationStartTime**  The timestamp representing the beginning of the DMF migration
- **RevisionNumbers**  A collection of the revision numbers associated with the UpdateIds.
- **UpdateIds**  A collection of GUIDs identifying the upgrades that are running.
- **WuClientId**  The GUID of the Windows Update client invoking DMF


### Microsoft.Windows.Update.DataMigrationFramework.MigratorResult

This event sends DMF migrator data to help keep Windows up to date.

The following fields are available:

- **CurrentStep**  This is the last step the migrator reported before returning a result. This tells us how far through the individual migrator the device was before failure.
- **ErrorCode**  The result (as an HRESULT) of the migrator that just completed.
- **MigratorId**  A GUID identifying the migrator that just completed.
- **MigratorName**  The name of the migrator that just completed.
- **RunDurationInSeconds**  The time it took for the migrator to complete.
- **TotalSteps**  Migrators report progress in number of completed steps against the total steps. This is the total number of steps.


### Microsoft.Windows.Update.NotificationUx.DialogNotificationToBeDisplayed

This event indicates that a notification dialog box is about to be displayed to user.

The following fields are available:

- **AcceptAutoModeLimit**  The maximum number of days for a device to automatically enter Auto Reboot mode.
- **AutoToAutoFailedLimit**  The maximum number of days for Auto Reboot mode to fail before the RebootFailed dialog box is shown.
- **DeviceLocalTime**  The local time on the device sending the event.
- **EngagedModeLimit**  The number of days to switch between DTE dialog boxes.
- **EnterAutoModeLimit**  The maximum number of days for a device to enter Auto Reboot mode.
- **ETag**  OneSettings versioning value.
- **IsForcedEnabled**  Indicates whether Forced Reboot mode is enabled for this device.
- **IsUltimateForcedEnabled**  Indicates whether Ultimate Forced Reboot mode is enabled for this device.
- **NotificationUxState**  Indicates which dialog box is shown.
- **NotificationUxStateString**  Indicates which dialog box is shown.
- **RebootUxState**  Indicates  the state of the restart (Engaged, Auto, Forced, or UltimateForced).
- **RebootUxStateString**  Indicates the state of the restart (Engaged, Auto, Forced, or UltimateForced).
- **RebootVersion**  Version of DTE.
- **SkipToAutoModeLimit**  The minimum length of time to pass in restart pending before a device can be put into auto mode.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootAcceptAutoDialog

This event indicates that the Enhanced Engaged restart "accept automatically" dialog box was displayed.

The following fields are available:

- **DeviceLocalTime**  The local time on the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that user chose on this dialog box.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootFirstReminderDialog

This event indicates that the Enhanced Engaged restart "first reminder" dialog box was displayed.

The following fields are available:

- **DeviceLocalTime**  The local time on the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that user chose in this dialog box.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootForcedPrecursorDialog

This event indicates that the Enhanced Engaged restart "forced precursor" dialog box was displayed.

The following fields are available:

- **DeviceLocalTime**  The local time on the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that the user chose in this dialog box.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootForcedWarningDialog

This event indicates that the Enhanced Engaged "forced warning" dialog box was displayed.

The following fields are available:

- **DeviceLocalTime**  The local time on the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that the user chose in this dialog box.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootRebootFailedDialog

This event indicates that the Enhanced Engaged restart "restart failed" dialog box was displayed.

The following fields are available:

- **DeviceLocalTime**  The local time of the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that the user chose in this dialog box.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootRebootImminentDialog

This event indicates that the Enhanced Engaged restart "restart imminent" dialog box was displayed.

The following fields are available:

- **DeviceLocalTime**  Time the dialog box was shown on the local device.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that user chose in this dialog box.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootSecondReminderDialog

This event indicates that the second reminder dialog box was displayed for Enhanced Engaged restart.

The following fields are available:

- **DeviceLocalTime**  The time the dialog box was shown on the local device.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that the user chose in this dialog box.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootThirdReminderDialog

This event indicates that the third reminder dialog box for Enhanced Engaged restart was displayed.

The following fields are available:

- **DeviceLocalTime**  The time the dialog box was shown on the local device.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that the user chose in this dialog box.


### Microsoft.Windows.Update.Orchestrator.CommitFailed

This event indicates that a device was unable to restart after an update.

The following fields are available:

- **errorCode**  The error code that was returned.
- **wuDeviceid**  The Windows Update device GUID.


### Microsoft.Windows.Update.Orchestrator.DeferRestart

This event indicates that a restart required for installing updates was postponed.

The following fields are available:

- **filteredDeferReason**  Applicable filtered reasons why reboot was postponed (such as user active, or low battery).
- **raisedDeferReason**  Indicates all potential reasons for postponing restart (such as user active, or low battery).
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.Detection

This event indicates that a scan for a Windows Update occurred.

The following fields are available:

- **deferReason**  The reason why the device could not check for updates.
- **detectionBlockreason**  The reason detection did not complete.
- **detectionDeferreason**  A log of deferral reasons for every update state.
- **errorCode**  The error code returned for the current process.
- **eventScenario**  End-to-end update session ID, or indicates the purpose of sending this event - whether because the software distribution just started installing content, or whether it was cancelled, succeeded, or failed.
- **flightID**  The unique identifier for the flight (Windows Insider pre-release build) should be delivered to the device, if applicable.
- **interactive**  Indicates whether the user initiated the session.
- **revisionNumber**  The Update revision number.
- **updateId**  The unique identifier of the Update.
- **updateScenarioType**  Identifies the type of update session being performed.
- **wuDeviceid**  The unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.Download

This event sends launch data for a Windows Update download to help keep Windows up to date.

The following fields are available:

- **deferReason**  Reason for download not completing.
- **detectionDeferreason**  Reason for download not completing
- **errorCode**  An error code represented as a hexadecimal value.
- **eventScenario**  End-to-end update session ID.
- **flightID**  The specific ID of the Windows Insider build the device is getting.
- **interactive**  Indicates whether the session is user initiated.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.FlightInapplicable

This event indicates that the update is no longer applicable to this device.

The following fields are available:

- **EventPublishedTime**  Time when this event was generated.
- **flightID**  The specific ID of the Windows Insider build.
- **revisionNumber**  Update revision number.
- **updateId**  Unique Windows Update ID.
- **updateScenarioType**  Update session type.
- **UpdateStatus**  Last status of update.
- **wuDeviceid**  Unique Device ID.


### Microsoft.Windows.Update.Orchestrator.InitiatingReboot

This event sends data about an Orchestrator requesting a reboot from power management to help keep Windows up to date.

The following fields are available:

- **EventPublishedTime**  Time of the event.
- **flightID**  Unique update ID
- **interactive**  Indicates whether the reboot initiation stage of the update process was entered as a result of user action.
- **rebootOutsideOfActiveHours**  Indicates whether the reboot was to occur outside of active hours.
- **revisionNumber**  Revision number of the update.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.Install

This event sends launch data for a Windows Update install to help keep Windows up to date.

The following fields are available:

- **batteryLevel**  Current battery capacity in mWh or percentage left.
- **deferReason**  Reason for install not completing.
- **errorCode**  The error code reppresented by a hexadecimal value.
- **eventScenario**  End-to-end update session ID.
- **flightID**  The ID of the Windows Insider build the device is getting.
- **flightUpdate**  Indicates whether the update is a Windows Insider build.
- **ForcedRebootReminderSet**  A boolean value that indicates if a forced reboot will happen for updates.
- **installCommitfailedtime**  The time it took for a reboot to happen but the upgrade failed to progress.
- **installRebootinitiatetime**  The time it took for a reboot to be attempted.
- **interactive**  Identifies if session is user initiated.
- **minutesToCommit**  The time it took to install updates.
- **rebootOutsideOfActiveHours**  Indicates whether a reboot is scheduled outside of active hours.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.LowUptimes

This event is sent if a device is identified as not having sufficient uptime to reliably process updates in order to keep secure.

The following fields are available:

- **lowUptimeMinHours**  Current setting for the minimum number of hours needed to not be considered low uptime.
- **lowUptimeQueryDays**  Current setting for the number of recent days to check for uptime.
- **uptimeMinutes**  Number of minutes of uptime measured.
- **wuDeviceid**  Unique device ID for Windows Update.


### Microsoft.Windows.Update.Orchestrator.OneshotUpdateDetection

This event returns data about scans initiated through settings UI, or background scans that are urgent; to help keep Windows up to date.

The following fields are available:

- **externalOneshotupdate**  The last time a task-triggered scan was completed.
- **interactiveOneshotupdate**  The last time an interactive scan was completed.
- **oldlastscanOneshotupdate**  The last time a scan completed successfully.
- **wuDeviceid**  The Windows Update Device GUID (Globally-Unique ID).


### Microsoft.Windows.Update.Orchestrator.PostInstall

This event is sent after a Windows update install completes.

The following fields are available:

- **batteryLevel**  Current battery capacity in megawatt-hours (mWh) or percentage left.
- **bundleId**  The unique identifier associated with the specific content bundle.
- **bundleRevisionnumber**  Identifies the revision number of the content bundle.
- **errorCode**  The error code returned for the current phase.
- **eventScenario**  State of update action.
- **flightID**  The unique identifier for the flight (Windows Insider pre-release build) should be delivered to the device, if applicable.
- **sessionType**  The Windows Update session type (Interactive or Background).
- **wuDeviceid**  The unique device identifier used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.PowerMenuOptionsChanged

This event is sent when the options in power menu changed, usually due to an update pending reboot, or after a update is installed.

The following fields are available:

- **powermenuNewOptions**  The new options after the power menu changed.
- **powermenuOldOptions**  The old options before the power menu changed.
- **rebootPendingMinutes**  If the power menu changed because a reboot is pending due to a update, this indicates how long that reboot has been pending.
- **wuDeviceid**  The device ID recorded by Windows Update if the power menu changed because a reboot is pending due to an update.


### Microsoft.Windows.Update.Orchestrator.PreShutdownStart

This event is generated before the shutdown and commit operations.

The following fields are available:

- **wuDeviceid**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.


### Microsoft.Windows.Update.Orchestrator.RebootFailed

This event sends information about whether an update required a reboot and reasons for failure, to help keep Windows up to date.

The following fields are available:

- **batteryLevel**  Current battery capacity in mWh or percentage left.
- **deferReason**  Reason for install not completing.
- **EventPublishedTime**  The time that the reboot failure occurred.
- **flightID**  Unique update ID.
- **installRebootDeferreason**  Reason for reboot not occurring.
- **rebootOutsideOfActiveHours**  Indicates whether a reboot was scheduled outside of active hours.
- **RebootResults**  Hex code indicating failure reason. Typically, we expect this to be a specific USO generated hex code.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.RefreshSettings

This event sends basic data about the version of upgrade settings applied to the system to help keep Windows up to date.

The following fields are available:

- **errorCode**  Hex code for the error message, to allow lookup of the specific error.
- **settingsDownloadTime**  Timestamp of the last attempt to acquire settings.
- **settingsETag**  Version identifier for the settings.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.RestoreRebootTask

This event sends data indicating that a reboot task is missing unexpectedly on a device and the task is restored because a reboot is still required, to help keep Windows up to date.

The following fields are available:

- **RebootTaskRestoredTime**  Time at which this reboot task was restored.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **wuDeviceid**  Device ID for the device on which the reboot is restored.


### Microsoft.Windows.Update.Orchestrator.SystemNeeded

This event sends data about why a device is unable to reboot, to help keep Windows up to date.

The following fields are available:

- **eventScenario**  End-to-end update session ID.
- **rebootOutsideOfActiveHours**  Indicates whether a reboot is scheduled outside of active hours.
- **revisionNumber**  Update revision number.
- **systemNeededReason**  List of apps or tasks that are preventing the system from restarting.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.UpdatePolicyCacheRefresh

This event sends data on whether Update Management Policies were enabled on a device, to help keep Windows up to date.

The following fields are available:

- **configuredPoliciescount**  Number of policies on the device.
- **policiesNamevaluesource**  Policy name and source of policy (group policy, MDM or flight).
- **policyCacherefreshtime**  Time when policy cache was refreshed.
- **updateInstalluxsetting**  Indicates whether a user has set policies via a user experience option.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.UpdateRebootRequired

This event sends data about whether an update required a reboot to help keep Windows up to date.

The following fields are available:

- **flightID**  The specific ID of the Windows Insider build the device is getting.
- **interactive**  Indicates whether the reboot initiation stage of the update process was entered as a result of user action.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.updateSettingsFlushFailed

This event sends information about an update that encountered problems and was not able to complete.

The following fields are available:

- **errorCode**  The error code encountered.
- **wuDeviceid**  The ID of the device in which the error occurred.


### Microsoft.Windows.Update.Orchestrator.USODiagnostics

This event sends data on whether the state of the update attempt, to help keep Windows up to date.

The following fields are available:

- **errorCode**  result showing success or failure of current update
- **revisionNumber**  Unique revision number of the Update
- **updateId**  Unique ID for Update
- **updateState**  Progress within an update state
- **wuDeviceid**  Unique ID for Device


### Microsoft.Windows.Update.Orchestrator.UsoSession

This event represents the state of the USO service at start and completion.

The following fields are available:

- **activeSessionid**  A unique session GUID.
- **eventScenario**  The state of the update action.
- **interactive**  Is the USO session interactive?
- **lastErrorcode**  The last error that was encountered.
- **lastErrorstate**  The state of the update when the last error was encountered.
- **sessionType**  A GUID that refers to the update session type.
- **updateScenarioType**  A descriptive update session type.
- **wuDeviceid**  The Windows Update device GUID.


### Microsoft.Windows.Update.UpdateStackServicing.CheckForUpdates

This event sends data about the UpdateStackServicing check for updates, to help keep Windows up to date.

The following fields are available:

- **BspVersion**  The version of the BSP.
- **CallerApplicationName**  The name of the USS scheduled task. Example UssScheduled or UssBoot
- **ClientVersion**  The version of the client.
- **CommercializationOperator**  The name of the operator.
- **DetectionVersion**  The string returned from the GetDetectionVersion export of the downloaded detection DLL.
- **DeviceName**  The name of the device.
- **EventInstanceID**  The USS session ID.
- **EventScenario**  The scenario of the event. Example: Started, Failed, or Succeeded
- **OemName**  The name of the manufacturer.
- **ServiceGuid**  The GUID of the service.
- **StatusCode**  The HRESULT code of the operation.
- **WUDeviceID**  The Windows Update device ID.


### Microsoft.Windows.Update.Ux.MusNotification.EnhancedEngagedRebootUxState

This event sends information about the configuration of Enhanced Direct-to-Engaged (eDTE), which includes values for the timing of how eDTE will progress through each phase of the reboot.

The following fields are available:

- **AcceptAutoModeLimit**  The maximum number of days for a device to automatically enter Auto Reboot mode.
- **AutoToAutoFailedLimit**  The maximum number of days for Auto Reboot mode to fail before a Reboot Failed dialog will be shown.
- **DeviceLocalTime**  The date and time (based on the device date/time settings) the reboot mode changed.
- **EngagedModeLimit**  The number of days to switch between DTE (Direct-to-Engaged) dialogs.
- **EnterAutoModeLimit**  The maximum number of days a device can enter Auto Reboot mode.
- **ETag**  The Entity Tag that represents the OneSettings version.
- **IsForcedEnabled**  Identifies whether Forced Reboot mode is enabled for the device.
- **IsUltimateForcedEnabled**  Identifies whether Ultimate Forced Reboot mode is enabled for the device.
- **OldestUpdateLocalTime**  The date and time (based on the device date/time settings) this update’s reboot began pending.
- **RebootUxState**  Identifies the reboot state: Engaged, Auto, Forced, UltimateForced.
- **RebootVersion**  The version of the DTE (Direct-to-Engaged).
- **SkipToAutoModeLimit**  The maximum number of days to switch to start while in Auto Reboot mode.
- **UpdateId**  The ID of the update that is waiting for reboot to finish installation.
- **UpdateRevision**  The revision of the update that is waiting for reboot to finish installation.


### Microsoft.Windows.Update.Ux.MusNotification.RebootNoLongerNeeded

This event is sent when a security update has successfully completed.

The following fields are available:

- **UtcTime**  The Coordinated Universal Time that the restart was no longer needed.


### Microsoft.Windows.Update.Ux.MusNotification.RebootScheduled

This event sends data about a required reboot that is scheduled with no user interaction, to help keep Windows up to date.

The following fields are available:

- **activeHoursApplicable**  Indicates whether Active Hours applies on this device.
- **forcedReboot**  True, if a reboot is forced on the device. Otherwise, this is False
- **rebootArgument**  Argument for the reboot task. It also represents specific reboot related action.
- **rebootOutsideOfActiveHours**  True, if a reboot is scheduled outside of active hours. False, otherwise.
- **rebootScheduledByUser**  True, if a reboot is scheduled by user. False, if a reboot is scheduled automatically.
- **rebootState**  Current state of the reboot.
- **revisionNumber**  Revision number of the OS.
- **scheduledRebootTime**  Time scheduled for the reboot.
- **updateId**  Identifies which update is being scheduled.
- **wuDeviceid**  The unique device ID used by Windows Update.


### Microsoft.Windows.Update.Ux.MusNotification.ToastDisplayedToScheduleReboot

This event is sent when a toast notification is shown to the user about scheduling a device restart.

The following fields are available:

- **UtcTime**  The Coordinated Universal Time when the toast notification was shown.


### Microsoft.Windows.Update.Ux.MusUpdateSettings.RebootScheduled

This event sends basic information for scheduling a device restart to install security updates. It's used to help keep Windows up to date.

The following fields are available:

- **activeHoursApplicable**  Is the restart respecting Active Hours?
- **forcedReboot**  True, if a reboot is forced on the device. Otherwise, this is False
- **rebootArgument**  The arguments that are passed to the OS for the restarted.
- **rebootOutsideOfActiveHours**  Was the restart scheduled outside of Active Hours?
- **rebootScheduledByUser**  Was the restart scheduled by the user? If the value is false, the restart was scheduled by the device.
- **rebootState**  The state of the restart.
- **revisionNumber**  The revision number of the OS being updated.
- **scheduledRebootTime**  Time of the scheduled reboot
- **updateId**  The Windows Update device GUID.
- **wuDeviceid**  The Windows Update device GUID.


## Windows Update mitigation events

### Mitigation360Telemetry.MitigationCustom.CleanupSafeOsImages

This event sends data specific to the CleanupSafeOsImages mitigation used for OS Updates.

The following fields are available:

- **ClientId**  The client ID used by Windows Update.
- **FlightId**  The ID of each Windows Insider build the device received.
- **InstanceId**  A unique device ID that identifies each update instance.
- **MitigationScenario**  The update scenario in which the mitigation was executed.
- **MountedImageCount**  The number of mounted images.
- **MountedImageMatches**  The number of mounted image matches.
- **MountedImagesFailed**  The number of mounted images that could not be removed.
- **MountedImagesRemoved**  The number of mounted images that were successfully removed.
- **MountedImagesSkipped**  The number of mounted images that were not found.
- **RelatedCV**  The correlation vector value generated from the latest USO scan.
- **Result**  HResult of this operation.
- **ScenarioId**  ID indicating the mitigation scenario.
- **ScenarioSupported**  Indicates whether the scenario was supported.
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each Windows Update.
- **WuId**  Unique ID for the Windows Update client.


### Mitigation360Telemetry.MitigationCustom.FixupEditionId

This event sends data specific to the FixupEditionId mitigation used for OS Updates.



## Windows Update Reserve Manager events

### Microsoft.Windows.UpdateReserveManager.InitializeUpdateReserveManager

This event returns data about the Update Reserve Manager, including whether it’s been initialized.



### Microsoft.Windows.UpdateReserveManager.RemovePendingHardReserveAdjustment

This event is sent when the Update Reserve Manager removes a pending hard reserve adjustment.



## Winlogon events

### Microsoft.Windows.Security.Winlogon.SetupCompleteLogon

This event signals the completion of the setup process. It happens only once during the first logon.



## XBOX events

### Microsoft.Xbox.XamTelemetry.AppActivationError

This event indicates whether the system detected an activation error in the app.

The following fields are available:

- **ActivationUri**  Activation URI (Uniform Resource Identifier) used in the attempt to activate the app.
- **AppId**  The Xbox LIVE Title ID.
- **AppUserModelId**  The AUMID (Application User Model ID) of the app to activate.
- **Result**  The HResult error.
- **UserId**  The Xbox LIVE User ID (XUID).


### Microsoft.Xbox.XamTelemetry.AppActivity

This event is triggered whenever the current app state is changed by: launch, switch, terminate, snap, etc.

The following fields are available:

- **AppActionId**  The ID of the application action.
- **AppCurrentVisibilityState**  The ID of the current application visibility state.
- **AppId**  The Xbox LIVE Title ID of the app.
- **AppPackageFullName**  The full name of the application package.
- **AppPreviousVisibilityState**  The ID of the previous application visibility state.
- **AppSessionId**  The application session ID.
- **AppType**  The type ID of the application (AppType_NotKnown, AppType_Era, AppType_Sra, AppType_Uwa).
- **BCACode**  The BCA (Burst Cutting Area) mark code of the optical disc used to launch the application.
- **DurationMs**  The amount of time (in milliseconds) since the last application state transition.
- **IsTrialLicense**  This boolean value is TRUE if the application is on a trial license.
- **LicenseType**  The type of licensed used to authorize the app (0 - Unknown, 1 - User, 2 - Subscription, 3 - Offline, 4 - Disc).
- **LicenseXuid**  If the license type is 1 (User), this field contains the XUID (Xbox User ID) of the registered owner of the license.
- **ProductGuid**  The Xbox product GUID (Globally-Unique ID) of the application.
- **UserId**  The XUID (Xbox User ID) of the current user.



