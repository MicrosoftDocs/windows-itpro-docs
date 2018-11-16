---
description: Use this article to learn more about what Windows diagnostic data is gathered at the basic level.
title: Windows 10, version 1809 basic diagnostic events and fields (Windows 10)
keywords: privacy, telemetry
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
localizationpriority: high
author: brianlic-msft
ms.author: brianlic
ms.date: 11/07/2018
---


# Windows 10, version 1809 basic level Windows diagnostic events and fields

 **Applies to**

- Windows 10, version 1809


The Basic level gathers a limited set of information that is critical for understanding the device and its configuration including: basic device information, quality-related information, app compatibility, and Windows Store. When the level is set to Basic, it also includes the Security level information.

The Basic level helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. This helps Microsoft fix operating system or app problems.

Use this article to learn about diagnostic events, grouped by event area, and the fields within each event. A brief description is provided for each field. Every event generated includes common data, which collects device data.

You can learn more about Windows functional and diagnostic data through these articles:


- [Windows 10, version 1803 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1803.md)
- [Windows 10, version 1709 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1709.md)
- [Windows 10, version 1703 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1703.md)
- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
- [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md)




## AppLocker events

### Microsoft.Windows.Security.AppLockerCSP.ActivityStoppedAutomatically

Automatically closed activity for start/stop operations that aren't explicitly closed.



### Microsoft.Windows.Security.AppLockerCSP.AddParams

Parameters passed to Add function of the AppLockerCSP Node.

The following fields are available:

- **child**  The child URI of the node to add.
- **uri**  URI of the node relative to %SYSTEM32%/AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.AddStart

Start of "Add" Operation for the AppLockerCSP Node.



### Microsoft.Windows.Security.AppLockerCSP.AddStop

End of "Add" Operation for AppLockerCSP Node.

The following fields are available:

- **hr**  The HRESULT returned by Add function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.CAppLockerCSP::Rollback

Result of the 'Rollback' operation in AppLockerCSP.

The following fields are available:

- **oldId**  Previous id for the CSP transaction.
- **txId**  Current id for the CSP transaction.


### Microsoft.Windows.Security.AppLockerCSP.ClearParams

Parameters passed to the "Clear" operation for AppLockerCSP.

The following fields are available:

- **uri**  The URI relative to the %SYSTEM32%\AppLocker folder.


### Microsoft.Windows.Security.AppLockerCSP.ClearStart

Start of the "Clear" operation for the AppLockerCSP Node.



### Microsoft.Windows.Security.AppLockerCSP.ClearStop

End of the "Clear" operation for the AppLockerCSP node.

The following fields are available:

- **hr**  HRESULT reported at the end of the 'Clear' function.


### Microsoft.Windows.Security.AppLockerCSP.ConfigManagerNotificationStart

Start of the "ConfigManagerNotification" operation for AppLockerCSP.

The following fields are available:

- **NotifyState**  State sent by ConfigManager to AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.ConfigManagerNotificationStop

End of the "ConfigManagerNotification" operation for AppLockerCSP.

The following fields are available:

- **hr**  HRESULT returned by the ConfigManagerNotification function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.CreateNodeInstanceParams

Parameters passed to the CreateNodeInstance function of the AppLockerCSP node.

The following fields are available:

- **NodeId**  NodeId passed to CreateNodeInstance.
- **nodeOps**  NodeOperations parameter passed to CreateNodeInstance.
- **uri**  URI passed to CreateNodeInstance, relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.CreateNodeInstanceStart

Start of the "CreateNodeInstance" operation for the AppLockerCSP node.



### Microsoft.Windows.Security.AppLockerCSP.CreateNodeInstanceStop

End of the "CreateNodeInstance" operation for the AppLockerCSP node

The following fields are available:

- **hr**  HRESULT returned by the CreateNodeInstance function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.DeleteChildParams

Parameters passed to the DeleteChild function of the AppLockerCSP node.

The following fields are available:

- **child**  The child URI of the node to delete.
- **uri**  URI relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.DeleteChildStart

Start of the "DeleteChild" operation for the AppLockerCSP node.



### Microsoft.Windows.Security.AppLockerCSP.DeleteChildStop

End of the "DeleteChild" operation for the AppLockerCSP node.

The following fields are available:

- **hr**  HRESULT returned by the DeleteChild function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.EnumPolicies

Logged URI relative to %SYSTEM32%\AppLocker, if the Plugin GUID is null, or the CSP doesn't believe the old policy is present.

The following fields are available:

- **uri**  URI relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.GetChildNodeNamesParams

Parameters passed to the GetChildNodeNames function of the AppLockerCSP node.

The following fields are available:

- **uri**  URI relative to %SYSTEM32%/AppLocker for MDM node.


### Microsoft.Windows.Security.AppLockerCSP.GetChildNodeNamesStart

Start of the "GetChildNodeNames" operation for the AppLockerCSP node.



### Microsoft.Windows.Security.AppLockerCSP.GetChildNodeNamesStop

End of the "GetChildNodeNames" operation for the AppLockerCSP node.

The following fields are available:

- **child[0]**  If function succeeded, the first child's name, else "NA".
- **count**  If function succeeded, the number of child node names returned by the function, else 0.
- **hr**  HRESULT returned by the GetChildNodeNames function of AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.GetLatestId

The result of 'GetLatestId' in AppLockerCSP (the latest time stamped GUID).

The following fields are available:

- **dirId**  The latest directory identifier found by GetLatestId.
- **id**  The id returned by GetLatestId if id > 0 - otherwise the dirId parameter.


### Microsoft.Windows.Security.AppLockerCSP.HResultException

HRESULT thrown by any arbitrary function in AppLockerCSP.

The following fields are available:

- **file**  File in the OS code base in which the exception occurs.
- **function**  Function in the OS code base in which the exception occurs.
- **hr**  HRESULT that is reported.
- **line**  Line in the file in the OS code base in which the exception occurs.


### Microsoft.Windows.Security.AppLockerCSP.SetValueParams

Parameters passed to the SetValue function of the AppLockerCSP node.

The following fields are available:

- **dataLength**  Length of the value to set.
- **uri**  The node URI to that should contain the value, relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.SetValueStart

Start of the "SetValue" operation for the AppLockerCSP node.



### Microsoft.Windows.Security.AppLockerCSP.SetValueStop

End of the "SetValue" operation for the AppLockerCSP node.

The following fields are available:

- **hr**  HRESULT returned by the SetValue function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.TryRemediateMissingPolicies

EntryPoint of fix step or policy remediation, includes URI relative to %SYSTEM32%\AppLocker that needs to be fixed.

The following fields are available:

- **uri**  URI for node relative to %SYSTEM32%/AppLocker.


## Appraiser events

### Microsoft.Windows.Appraiser.General.ChecksumTotalPictureCount

This event lists the types of objects and how many of each exist on the client device. This allows for a quick way to ensure that the records present on the server match what is present on the client.

The following fields are available:

- **DatasourceApplicationFile_RS1**  An ID for the system, calculated by hashing hardware identifiers.
- **DatasourceApplicationFile_RS2**  An ID for the system, calculated by hashing hardware identifiers.
- **DatasourceApplicationFile_RS3**  The total DecisionApplicationFile objects targeting the next release of Windows on this device.
- **DatasourceApplicationFile_RS4**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_RS4Setup**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_TH1**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_TH2**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_RS1**  The total DataSourceDevicePnp objects targeting Windows 10 version 1607 on this device.
- **DatasourceDevicePnp_RS2**  The total DatasourceDevicePnp objects targeting Windows 10 version 1703 present on this device.
- **DatasourceDevicePnp_RS3**  The total DatasourceDevicePnp objects targeting the next release of Windows on this device.
- **DatasourceDevicePnp_RS4**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_RS4Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_TH1**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_TH2**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_RS1**  The total DataSourceDriverPackage objects targeting Windows 10 version 1607 on this device.
- **DatasourceDriverPackage_RS2**  The total DataSourceDriverPackage objects targeting Windows 10, version 1703 on this device.
- **DatasourceDriverPackage_RS3**  The total DatasourceDriverPackage objects targeting the next release of Windows on this device.
- **DatasourceDriverPackage_RS4**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_RS4Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_TH1**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_TH2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_RS1**  The total DataSourceMatchingInfoBlock objects targeting Windows 10 version 1607 on this device.
- **DataSourceMatchingInfoBlock_RS2**  The total DataSourceMatchingInfoBlock objects targeting Windows 10 version 1703 present on this device.
- **DataSourceMatchingInfoBlock_RS3**  The total DataSourceMatchingInfoBlock objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoBlock_RS4**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_RS4Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_TH1**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_TH2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_RS1**  The total DataSourceMatchingInfoPassive objects targeting Windows 10 version 1607 on this device.
- **DataSourceMatchingInfoPassive_RS2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_RS3**  The total DataSourceMatchingInfoPassive objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoPassive_RS4**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_RS4Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_TH1**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_TH2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS1**  The total DataSourceMatchingInfoPostUpgrade objects targeting Windows 10 version 1607 on this device.
- **DataSourceMatchingInfoPostUpgrade_RS2**  The total DataSourceMatchingInfoPostUpgrade objects targeting Windows 10 version 1703 present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS3**  The total DataSourceMatchingInfoPostUpgrade objects targeting the next release of Windows on this device.
- **DataSourceMatchingInfoPostUpgrade_RS4**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS4Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_TH1**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_TH2**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_RS1**  The total DatasourceSystemBios objects targeting Windows 10 version 1607 present on this device.
- **DatasourceSystemBios_RS2**  The total DatasourceSystemBios objects targeting Windows 10 version 1703 present on this device.
- **DatasourceSystemBios_RS3**  The total DatasourceSystemBios objects targeting the next release of Windows on this device.
- **DatasourceSystemBios_RS4**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_RS4Setup**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_TH1**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_TH2**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_RS1**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_RS2**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_RS3**  The total DecisionApplicationFile objects targeting the next release of Windows on this device.
- **DecisionApplicationFile_RS4**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_RS4Setup**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_TH1**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_TH2**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_RS1**  The total DecisionDevicePnp objects targeting Windows 10 version 1607 on this device.
- **DecisionDevicePnp_RS2**  The total DecisionDevicePnp objects targeting Windows 10 version 1703 present on this device.
- **DecisionDevicePnp_RS3**  The total DecisionDevicePnp objects targeting the next release of Windows on this device.
- **DecisionDevicePnp_RS4**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_RS4Setup**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_TH1**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_TH2**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_RS1**  The total DecisionDriverPackage objects targeting Windows 10 version 1607 on this device.
- **DecisionDriverPackage_RS2**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_RS3**  The total DecisionDriverPackage objects targeting the next release of Windows on this device.
- **DecisionDriverPackage_RS4**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_RS4Setup**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_TH1**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_TH2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_RS1**  The total DecisionMatchingInfoBlock objects targeting Windows 10 version 1607 present on this device.
- **DecisionMatchingInfoBlock_RS2**  The total DecisionMatchingInfoBlock objects targeting Windows 10 version 1703 present on this device.
- **DecisionMatchingInfoBlock_RS3**  The total DecisionMatchingInfoBlock objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoBlock_RS4**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_RS4Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_TH1**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_TH2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_RS1**  The total DecisionMatchingInfoPassive objects targeting Windows 10 version 1607 on this device.
- **DecisionMatchingInfoPassive_RS2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_RS3**  The total DataSourceMatchingInfoPassive objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoPassive_RS4**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_RS4Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_TH1**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_TH2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS1**  The total DecisionMatchingInfoPostUpgrade objects targeting Windows 10 version 1607 on this device.
- **DecisionMatchingInfoPostUpgrade_RS2**  The total DecisionMatchingInfoPostUpgrade objects targeting Windows 10 version 1703 present on this device.
- **DecisionMatchingInfoPostUpgrade_RS3**  The total DecisionMatchingInfoPostUpgrade objects targeting the next release of Windows on this device.
- **DecisionMatchingInfoPostUpgrade_RS4**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS4Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_TH1**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_TH2**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_RS1**  The total DecisionMediaCenter objects targeting Windows 10 version 1607 present on this device.
- **DecisionMediaCenter_RS2**  The total DecisionMediaCenter objects targeting Windows 10 version 1703 present on this device.
- **DecisionMediaCenter_RS3**  The total DecisionMediaCenter objects targeting the next release of Windows on this device.
- **DecisionMediaCenter_RS4**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_RS4Setup**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_TH1**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_TH2**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_RS1**  The total DecisionSystemBios objects targeting Windows 10 version 1607 on this device.
- **DecisionSystemBios_RS2**  The total DecisionSystemBios objects targeting Windows 10 version 1703 present on this device.
- **DecisionSystemBios_RS3**  The total DecisionSystemBios objects targeting the next release of Windows on this device.
- **DecisionSystemBios_RS4**  The total DecisionSystemBios objects targeting Windows 10 version, 1803 present on this device.
- **DecisionSystemBios_RS4Setup**  The total DecisionSystemBios objects targeting the next release of Windows on this device.
- **DecisionSystemBios_TH1**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_TH2**  The count of the number of this particular object type present on this device.
- **InventoryApplicationFile**  The count of the number of this particular object type present on this device.
- **InventoryLanguagePack**  The count of the number of this particular object type present on this device.
- **InventoryMediaCenter**  The count of the number of this particular object type present on this device.
- **InventorySystemBios**  The count of the number of this particular object type present on this device.
- **InventoryUplevelDriverPackage**  The count of the number of this particular object type present on this device.
- **PCFP**  The count of the number of this particular object type present on this device.
- **SystemMemory**  The count of the number of this particular object type present on this device.
- **SystemProcessorCompareExchange**  The count of the number of this particular object type present on this device.
- **SystemProcessorLahfSahf**  The count of the number of this particular object type present on this device.
- **SystemProcessorNx**  The count of the number of this particular object type present on this device.
- **SystemProcessorPrefetchW**  The count of the number of this particular object type present on this device.
- **SystemProcessorSse2**  The count of the number of this particular object type present on this device.
- **SystemTouch**  The count of the number of this particular object type present on this device.
- **SystemWim**  The count of the number of this particular object type present on this device.
- **SystemWindowsActivationStatus**  The count of the number of this particular object type present on this device.
- **SystemWlan**  The count of the number of this particular object type present on this device.
- **Wmdrm_RS1**  An ID for the system, calculated by hashing hardware identifiers.
- **Wmdrm_RS2**  The total Wmdrm objects targeting Windows 10 version 1703 present on this device.
- **Wmdrm_RS3**  The total Wmdrm objects targeting the next release of Windows on this device.
- **Wmdrm_RS4**  The total Wmdrm objects targeting Windows 10, version 1803 present on this device.
- **Wmdrm_RS4Setup**  The count of the number of this particular object type present on this device.
- **Wmdrm_TH1**  The count of the number of this particular object type present on this device.
- **Wmdrm_TH2**  The count of the number of this particular object type present on this device.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileAdd

Represents the basic metadata about specific application files installed on the system.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **ActiveNetworkConnection**  Indicates whether the device is an active network device.
- **AppraiserVersion**  The version of the appraiser file generating the events.
- **IsBootCritical**  Indicates whether the device boot is critical.
- **WuDriverCoverage**  Indicates whether there is a driver uplevel for this device, according to Windows Update.
- **WuDriverUpdateId**  The Windows Update ID of the applicable uplevel driver.
- **WuPopulatedFromId**  The expected uplevel driver matching ID based on driver coverage from Windows Update.


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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageStartSync

This event indicates that a new set of DatasourceDriverPackageAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockAdd

This event sends blocking data about any compatibility blocking entries hit on the system that are not directly related to specific applications or devices, to help keep Windows up-to-date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.


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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpStartSync

The DecisionDevicePnpStartSync event indicates that a new set of DecisionDevicePnpAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageAdd

This event sends decision data about driver package compatibility to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event sends compatibility decision data about non-blocking entries on the system that are not keyed by either applications or devices, to help keep Windows up-to-date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **AvDisplayName**  If the app is an antivirus app, this is its display name.
- **AvProductState**  Indicates whether the antivirus program is turned on and the signatures are up to date.
- **BinaryType**  A binary type.  Example: UNINITIALIZED, ZERO_BYTE, DATA_ONLY, DOS_MODULE, NE16_MODULE, PE32_UNKNOWN, PE32_I386, PE32_ARM, PE64_UNKNOWN, PE64_AMD64, PE64_ARM64, PE64_IA64, PE32_CLR_32, PE32_CLR_IL, PE32_CLR_IL_PREFER32, PE64_CLR_64.
- **BinFileVersion**  An attempt to clean up FileVersion at the client that tries to place the version into 4 octets.
- **BinProductVersion**  An attempt to clean up ProductVersion at the client that tries to place the version into 4 octets.
- **BoeProgramId**  If there is no entry in Add/Remove Programs, this is the ProgramID that is generated from the file metadata.
- **CompanyName**  The company name of the vendor who developed this file.
- **FileId**  A hash that uniquely identifies a file.
- **FileVersion**  The File version field from the file metadata under Properties -> Details.
- **HasUpgradeExe**  Indicates whether the antivirus app has an upgrade.exe file.
- **IsAv**  Indicates whether the file an antivirus reporting EXE.
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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

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
- **InboxDataVersion**  The original version of the data files before retrieving any newer version.
- **IndicatorsWritten**  Indicates if all relevant UEX indicators were successfully written or updated.
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

Provides information on IE and Census versions running on the device

The following fields are available:

- **AppraiserEnterpriseErrorCode**  The error code of the last Appraiser enterprise run.
- **AppraiserErrorCode**  The error code of the last Appraiser run.
- **AppraiserRunEndTimeStamp**  The end time of the last Appraiser run.
- **AppraiserRunIsInProgressOrCrashed**  Flag that indicates if the Appraiser run is in progress or has crashed.
- **AppraiserRunStartTimeStamp**  The start time of the last Appraiser run.
- **AppraiserTaskEnabled**  Whether the Appraiser task is enabled.
- **AppraiserTaskExitCode**  The Appraiser task exist code.
- **AppraiserTaskLastRun**  The last runtime for the Appraiser task.
- **CensusVersion**  The version of Census that generated the current data for this device.
- **IEVersion**  IE version running on the device.


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

- **AADDeviceId**  Azure Active Directory device ID.
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
- **TPMManufacturerId**  The ID of the TPM manufacturer.
- **TPMManufacturerVersion**  The version of the TPM manufacturer.
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


### Census.PrivacySettings

This event provides information about the device level privacy settings and whether device-level access was granted to these capabilities. Not all settings are applicable to all devices. Each field records the consent state for the corresponding privacy setting. The consent state is encoded as a 16-bit signed integer, where the first 8 bits represents the effective consent value, and the last 8 bits represent the authority that set the value. The effective consent (first 8 bits) is one of the following values:  -3 = unexpected consent value, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = undefined, 1 = allow, 2 = deny, 3 = prompt. The consent authority (last 8 bits) is one of the following values: -3 = unexpected authority, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = system, 1 = a higher authority (a gating setting, the system-wide setting, or a group policy), 2 = advertising ID group policy, 3 = advertising ID policy for child account, 4 = privacy setting provider doesn't know the actual consent authority, 5 = consent was not configured and a default set in code was used, 6 = system default, 7 = organization policy, 8 = OneSettings.

The following fields are available:

- **Activity**  Current state of the activity history setting.
- **ActivityHistoryCloudSync**  Current state of the activity history cloud sync setting.
- **ActivityHistoryCollection**  Current state of the activity history collection setting.
- **AdvertisingId**  Current state of the advertising ID setting.
- **AppDiagnostics**  Current state of the app diagnostics setting.
- **Appointments**  Current state of the calendar setting.
- **AppointmentsSystem**  Current state of the calendar setting.
- **Bluetooth**  Current state of the Bluetooth capability setting.
- **BluetoothSync**  Current state of the Bluetooth sync capability setting.
- **BroadFileSystemAccess**  Current state of the broad file system access setting.
- **CellularData**  Current state of the cellular data capability setting.
- **Chat**  Current state of the chat setting.
- **ChatSystem**  Current state of the chat setting.
- **Contacts**  Current state of the contacts setting.
- **ContactsSystem**  Current state of the Contacts setting.
- **DocumentsLibrary**  Current state of the documents library setting.
- **Email**  Current state of the email setting.
- **EmailSystem**  Current state of the email setting.
- **FindMyDevice**  Current state of the "find my device" setting.
- **GazeInput**  Current state of the gaze input setting.
- **HumanInterfaceDevice**  Current state of the human interface device setting.
- **InkTypeImprovement**  Current state of the improve inking and typing setting.
- **Location**  Current state of the location setting.
- **LocationHistory**  Current state of the location history setting.
- **LocationHistoryCloudSync**  Current state of the location history cloud sync setting.
- **LocationHistoryOnTimeline**  Current state of the location history on timeline setting.
- **Microphone**  Current state of the microphone setting.
- **PhoneCall**  Current state of the phone call setting.
- **PhoneCallHistory**  Current state of the call history setting.
- **PhoneCallHistorySystem**  Current state of the call history setting.
- **PicturesLibrary**  Current state of the pictures library setting.
- **Radios**  Current state of the radios setting.
- **SensorsCustom**  Current state of the custom sensor setting.
- **SerialCommunication**  Current state of the serial communication setting.
- **Sms**  Current state of the text messaging setting.
- **SpeechPersonalization**  Current state of the speech services setting.
- **USB**  Current state of the USB setting.
- **UserAccountInformation**  Current state of the account information setting.
- **UserDataTasks**  Current state of the tasks setting.
- **UserDataTasksSystem**  Current state of the tasks setting.
- **UserNotificationListener**  Current state of the notifications setting.
- **VideosLibrary**  Current state of the videos library setting.
- **Webcam**  Current state of the camera setting.
- **WiFiDirect**  Current state of the Wi-Fi direct setting.


### Census.Processor

Provides information on several important data points about Processor settings

The following fields are available:

- **KvaShadow**  Microcode info of the processor.
- **MMSettingOverride**  Microcode setting of the processor.
- **MMSettingOverrideMask**  Microcode setting override of the processor.
- **PreviousUpdateRevision**  Previous microcode revision
- **ProcessorArchitecture**  Retrieves the processor architecture of the installed operating system.
- **ProcessorClockSpeed**  Clock speed of the processor in MHz.
- **ProcessorCores**  Number of logical cores in the processor.
- **ProcessorIdentifier**  Processor Identifier of a manufacturer.
- **ProcessorManufacturer**  Name of the processor manufacturer.
- **ProcessorModel**  Name of the processor model.
- **ProcessorPhysicalCores**  Number of physical cores in the processor.
- **ProcessorUpdateRevision**  Microcode revision
- **ProcessorUpdateStatus**  Enum value that represents the processor microcode load status
- **SocketCount**  Count of CPU sockets.
- **SpeculationControl**  If the system has enabled protections needed to validate the speculation control vulnerability.


### Census.Security

This event provides information on about security settings used to help keep Windows up to date and secure.

The following fields are available:

- **AvailableSecurityProperties**  This field helps to enumerate and report state on the relevant security properties for Device Guard.
- **CGRunning**  Credential Guard isolates and hardens key system and user secrets against compromise, helping to minimize the impact and breadth of a Pass the Hash style attack in the event that malicious code is already running via a local or network based vector. This field tells if Credential Guard is running.
- **DGState**  This field summarizes the Device Guard state.
- **HVCIRunning**  Hypervisor Code Integrity (HVCI) enables Device Guard to help protect kernel mode processes and drivers from vulnerability exploits and zero days. HVCI uses the processor’s functionality to force all software running in kernel mode to safely allocate memory. This field tells if HVCI is running.
- **IsSawGuest**  Indicates whether the device is running as a Secure Admin Workstation Guest.
- **IsSawHost**  Indicates whether the device is running as a Secure Admin Workstation Host.
- **RequiredSecurityProperties**  Describes the required security properties to enable virtualization-based security.
- **SecureBootCapable**  Systems that support Secure Boot can have the feature turned off via BIOS. This field tells if the system is capable of running Secure Boot, regardless of the BIOS setting.
- **SModeState**  The Windows S mode trail state.
- **VBSState**  Virtualization-based security (VBS) uses the hypervisor to help protect the kernel and other parts of the operating system. Credential Guard and Hypervisor Code Integrity (HVCI) both depend on VBS to isolate/protect secrets, and kernel-mode code integrity validation.  VBS has a tri-state that can be Disabled, Enabled, or Running.


### Census.Speech

This event is used to gather basic speech settings on the device.

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


### Census.UserPrivacySettings

This event provides information about the current users privacy settings and whether device-level access was granted to these capabilities. Not all settings are applicable to all devices. Each field records the consent state for the corresponding privacy setting. The consent state is encoded as a 16-bit signed integer, where the first 8 bits represents the effective consent value, and the last 8 bits represents the authority that set the value. The effective consent is one of the following values: -3 = unexpected consent value, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = undefined, 1 = allow, 2 = deny, 3 = prompt. The consent authority is one of the following values: -3 = unexpected authority, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = user, 1 = a higher authority (a gating setting, the system-wide setting, or a group policy), 2 = advertising ID group policy, 3 = advertising ID policy for child account, 4 = privacy setting provider doesn't know the actual consent authority, 5 = consent was not configured and a default set in code was used, 6 = system default, 7 = organization policy, 8 = OneSettings.

The following fields are available:

- **Activity**  Current state of the activity history setting.
- **ActivityHistoryCloudSync**  Current state of the activity history cloud sync setting.
- **ActivityHistoryCollection**  Current state of the activity history collection setting.
- **AdvertisingId**  Current state of the advertising ID setting.
- **AppDiagnostics**  Current state of the app diagnostics setting.
- **Appointments**  Current state of the calendar setting.
- **AppointmentsSystem**  Current state of the calendar setting.
- **Bluetooth**  Current state of the Bluetooth capability setting.
- **BluetoothSync**  Current state of the Bluetooth sync capability setting.
- **BroadFileSystemAccess**  Current state of the broad file system access setting.
- **CellularData**  Current state of the cellular data capability setting.
- **Chat**  Current state of the chat setting.
- **ChatSystem**  Current state of the chat setting.
- **Contacts**  Current state of the contacts setting.
- **ContactsSystem**  Current state of the contacts setting.
- **DocumentsLibrary**  Current state of the documents library setting.
- **Email**  Current state of the email setting.
- **EmailSystem**  Current state of the email setting.
- **GazeInput**  Current state of the gaze input setting.
- **HumanInterfaceDevice**  Current state of the human interface device setting.
- **InkTypeImprovement**  Current state of the improve inking and typing setting.
- **InkTypePersonalization**  Current state of the inking and typing personalization setting.
- **Location**  Current state of the location setting.
- **LocationHistory**  Current state of the location history setting.
- **LocationHistoryCloudSync**  Current state of the location history cloud synchronization setting.
- **LocationHistoryOnTimeline**  Current state of the location history on timeline setting.
- **Microphone**  Current state of the microphone setting.
- **PhoneCall**  Current state of the phone call setting.
- **PhoneCallHistory**  Current state of the call history setting.
- **PhoneCallHistorySystem**  Current state of the call history setting.
- **PicturesLibrary**  Current state of the pictures library setting.
- **Radios**  Current state of the radios setting.
- **SensorsCustom**  Current state of the custom sensor setting.
- **SerialCommunication**  Current state of the serial communication setting.
- **Sms**  Current state of the text messaging setting.
- **SpeechPersonalization**  Current state of the speech services setting.
- **USB**  Current state of the USB setting.
- **UserAccountInformation**  Current state of the account information setting.
- **UserDataTasks**  Current state of the tasks setting.
- **UserDataTasksSystem**  Current state of the tasks setting.
- **UserNotificationListener**  Current state of the notifications setting.
- **VideosLibrary**  Current state of the videos library setting.
- **Webcam**  Current state of the camera setting.
- **WiFiDirect**  Current state of the Wi-Fi direct setting.


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
- **OSWUAutoUpdateOptionsSource**  The source of auto update setting that appears in the OSWUAutoUpdateOptions field.  For example: Group Policy (GP), Mobile Device Management (MDM), and Default.
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


### Common Data Extensions.cs

Describes properties related to the schema of the event.

The following fields are available:

- **sig**  A common schema signature that identifies new and modified event schemas.


### Common Data Extensions.device

Describes the device-related fields.

The following fields are available:

- **deviceClass**  The device classification. For example, Desktop, Server, or Mobile.
- **localId**  A locally-defined unique ID for the device. This is not the human-readable device name. Most likely equal to the value stored at HKLM\Software\Microsoft\SQMClient\MachineId
- **make**  Device manufacturer.
- **model**  Device model.


### Common Data Extensions.Envelope

Represents an envelope that contains all of the common data extensions.

The following fields are available:

- **cV**  Represents the Correlation Vector: A single field for tracking partial order of related telemetry events across component boundaries.
- **data**  Represents the optional unique diagnostic data for a particular event schema.
- **ext_app**  Describes the properties of the running application. This extension could be populated by either a client app or a web app. See [Common Data Extensions.app](#common-data-extensionsapp).
- **ext_container**  Describes the properties of the container for events logged within a container. See [Common Data Extensions.container](#common-data-extensionscontainer).
- **ext_cs**  Describes properties related to the schema of the event. See [Common Data Extensions.cs](#common-data-extensionscs).
- **ext_device**  Describes the device-related fields. See [Common Data Extensions.device](#common-data-extensionsdevice).
- **ext_os**  Describes the operating system properties that would be populated by the client. See [Common Data Extensions.os](#common-data-extensionsos).
- **ext_receipts**  Describes the fields related to time as provided by the client for debugging purposes. See [Common Data Extensions.receipts](#common-data-extensionsreceipts).
- **ext_sdk**  Describes the fields related to a platform library required for a specific SDK. See [Common Data Extensions.sdk](#common-data-extensionssdk).
- **ext_user**  Describes the fields related to a user. See [Common Data Extensions.user](#common-data-extensionsuser).
- **ext_utc**  Describes the fields that might be populated by a logging library on Windows. See [Common Data Extensions.utc](#common-data-extensionsutc).
- **ext_xbl**  Describes the fields related to XBOX Live. See [Common Data Extensions.xbl](#common-data-extensionsxbl).
- **flags**  Represents a collection of bits that describe how the event should be processed by the Connected User Experience and Telemetry component pipeline. The lowest-order byte is the event persistence. The next byte is the event latency.
- **iKey**  Represents an ID for applications or other logical groupings of events.
- **name**  Represents the uniquely qualified name for the event.
- **popSample**  Represents the effective sample rate for this event at the time it was generated by a client.
- **time**  Represents the event date time in Coordinated Universal Time (UTC) when the event was generated on the client. This should be in ISO 8601 format.
- **ver**  Represents the major and minor version of the extension.


### Common Data Extensions.os

Describes some properties of the operating system.

The following fields are available:

- **bootId**  An integer value that represents the boot session. This value starts at 0 on first boot after OS install and increments after every reboot.
- **expId**  Represents the experiment ID. The standard for associating a flight, such as an OS flight (pre-release build), or an experiment, such as a web site UX experiment, with an event is to record the flight / experiment IDs in Part A of the common schema.
- **locale**  Represents the locale of the operating system.
- **name**  Represents the operating system name.
- **ver**  Represents the major and minor version of the extension.


### Common Data Extensions.receipts

Represents various time information as provided by the client and helps for debugging purposes.

The following fields are available:

- **originalTime**  The original event time.
- **uploadTime**  The time the event was uploaded.


### Common Data Extensions.sdk

Used by platform specific libraries to record fields that are required for a specific SDK.

The following fields are available:

- **epoch**  An ID that is incremented for each SDK initialization.
- **installId**  An ID that's created during the initialization of the SDK for the first time.
- **libVer**  The SDK version.
- **seq**  An ID that is incremented for each event.


### Common Data Extensions.user

Describes the fields related to a user.

The following fields are available:

- **authId**  This is an ID of the user associated with this event that is deduced from a token such as a Microsoft Account ticket or an XBOX token.
- **locale**  The language and region.
- **localId**  Represents a unique user identity that is created locally and added by the client. This is not the user's account ID.


### Common Data Extensions.utc

Describes the properties that could be populated by a logging library on Windows.

The following fields are available:

- **aId**  Represents the ETW ActivityId. Logged via TraceLogging or directly via ETW.
- **bSeq**  Upload buffer sequence number in the format: buffer identifier:sequence number
- **cat**  Represents a bitmask of the ETW Keywords associated with the event.
- **cpId**  The composer ID, such as Reference, Desktop, Phone, Holographic, Hub, IoT Composer.
- **epoch**  Represents the epoch and seqNum fields, which help track how many events were fired and how many events were uploaded, and enables identification of data lost during upload and de-duplication of events on the ingress server.
- **flags**  Represents the bitmap that captures various Windows specific flags.
- **mon**  Combined monitor and event sequence numbers in the format: monitor sequence : event sequence
- **op**  Represents the ETW Op Code.
- **raId**  Represents the ETW Related ActivityId. Logged via TraceLogging or directly via ETW.
- **seq**  Represents the sequence field used to track absolute order of uploaded events. It is an incrementing identifier for each event added to the upload queue.  The Sequence helps track how many events were fired and how many events were uploaded and enables identification of data lost during upload and de-duplication of events on the ingress server.
- **stId**  Represents the Scenario Entry Point ID. This is a unique GUID for each event in a diagnostic scenario. This used to be Scenario Trigger ID.


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

### CbsServicingProvider.CbsCapabilityEnumeration

This event reports on the results of scanning for optional Windows content on Windows Update.

The following fields are available:

- **architecture**  Indicates the scan was limited to the specified architecture.
- **capabilityCount**  The number of optional content packages found during the scan.
- **clientId**  The name of the application requesting the optional content.
- **duration**  The amount of time it took to complete the scan.
- **hrStatus**  The HReturn code of the scan.
- **language**  Indicates the scan was limited to the specified language.
- **majorVersion**  Indicates the scan was limited to the specified major version.
- **minorVersion**  Indicates the scan was limited to the specified minor version.
- **namespace**  Indicates the scan was limited to packages in the specified namespace.
- **sourceFilter**  A bitmask indicating the scan checked for locally available optional content.
- **stackBuild**  The build number of the servicing stack.
- **stackMajorVersion**  The major version number of the servicing stack.
- **stackMinorVersion**  The minor version number of the servicing stack.
- **stackRevision**  The revision number of the servicing stack.


### CbsServicingProvider.CbsCapabilitySessionFinalize

This event provides information about the results of installing or uninstalling optional Windows content from Windows Update.

The following fields are available:

- **capabilities**  The names of the optional content packages that were installed.
- **clientId**  The name of the application requesting the optional content.
- **currentID**  The ID of the current install session.
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


### CbsServicingProvider.CbsCapabilitySessionPended

This event provides information about the results of installing optional Windows content that requires a reboot to keep Windows up to date.

The following fields are available:

- **clientId**  The name of the application requesting the optional content.
- **pendingDecision**  Indicates the cause of reboot, if applicable.


### CbsServicingProvider.CbsLateAcquisition

This event sends data to indicate if some Operating System packages could not be updated as part of an upgrade, to help keep Windows up to date.

The following fields are available:

- **Features**  The list of feature packages that could not be updated.
- **RetryID**  The ID identifying the retry attempt to update the listed packages.


### CbsServicingProvider.CbsPackageRemoval

This event provides information about the results of uninstalling a Windows Cumulative Security Update to help keep Windows up to date.

The following fields are available:

- **buildVersion**  The build number of the security update being uninstalled.
- **clientId**  The name of the application requesting the uninstall.
- **currentStateEnd**  The final state of the update after the operation.
- **failureDetails**  Information about the cause of a failure, if applicable.
- **failureSourceEnd**  The stage during the uninstall where the failure occurred.
- **hrStatusEnd**  The overall exit code of the operation.
- **initiatedOffline**  Indicates if the uninstall was initiated for a mounted Windows image.
- **majorVersion**  The major version number of the security update being uninstalled.
- **minorVersion**  The minor version number of the security update being uninstalled.
- **originalState**  The starting state of the update before the operation.
- **pendingDecision**  Indicates the cause of reboot, if applicable.
- **primitiveExecutionContext**  The state during system startup when the uninstall was completed.
- **revisionVersion**  The revision number of the security update being uninstalled.
- **transactionCanceled**  Indicates whether the uninstall was cancelled.


## Deployment extensions

### DeploymentTelemetry.Deployment_End

This event indicates that a Deployment 360 API has completed.

The following fields are available:

- **ClientId**  Client ID of the user utilizing the D360 API.
- **ErrorCode**  Error code of action.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Mode**  Phase in upgrade.
- **RelatedCV**  The correction vector (CV) of any other related events
- **Result**  End result of the action.


### DeploymentTelemetry.Deployment_SetupBoxLaunch

This event indicates that the Deployment 360 APIs have launched Setup Box.

The following fields are available:

- **ClientId**  The client ID of the user utilizing the D360 API.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Quiet**  Whether Setup will run in quiet mode or full mode.
- **RelatedCV**  The correlation vector (CV) of any other related events.
- **SetupMode**  The current setup phase.


### DeploymentTelemetry.Deployment_SetupBoxResult

This event indicates that the Deployment 360 APIs have received a return from Setup Box.

The following fields are available:

- **ClientId**  Client ID of the user utilizing the D360 API.
- **ErrorCode**  Error code of the action.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Quiet**  Indicates whether Setup will run in quiet mode or full mode.
- **RelatedCV**  The correlation vector (CV) of any other related events.
- **SetupMode**  The current Setup phase.


### DeploymentTelemetry.Deployment_Start

This event indicates that a Deployment 360 API has been called.

The following fields are available:

- **ClientId**  Client ID of the user utilizing the D360 API.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Mode**  The current phase of the upgrade.
- **RelatedCV**  The correlation vector (CV) of any other related events.


## Diagnostic data events

### TelClientSynthetic.AbnormalShutdown_0

This event sends data about boot IDs for which a normal clean shutdown was not observed, to help keep Windows up to date.

The following fields are available:

- **AbnormalShutdownBootId**  BootId of the abnormal shutdown being reported by this event.
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
- **SleepCheckpoint**  Provides the last checkpoint when there is a failure during a sleep transition.
- **SleepCheckpointSource**  Indicates whether the source is the EFI variable or bootstat file.
- **SleepCheckpointStatus**  Indicates whether the checkpoint information is valid.
- **StaleBootStatData**  Identifies if the data from bootstat is stale.
- **TransitionInfoBootId**  BootId of the captured transition info.
- **TransitionInfoCSCount**  l number of times the system transitioned from Connected Standby mode.
- **TransitionInfoCSEntryReason**  Indicates the reason the device last entered Connected Standby mode.
- **TransitionInfoCSExitReason**  Indicates the reason the device last exited Connected Standby mode.
- **TransitionInfoCSInProgress**  At the time the last marker was saved, the system was in or entering Connected Standby mode.
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
- **VortexHttpResponseFailures**  Number of Vortex responses that are not 2XX or 400.
- **VortexHttpResponsesWithDroppedEvents**  Number of Vortex responses containing at least 1 dropped event.


### TelClientSynthetic.HeartBeat_Aria_5

This event is the telemetry client ARIA heartbeat.

The following fields are available:

- **CompressedBytesUploaded**  Number of compressed bytes uploaded.
- **CriticalDataDbDroppedCount**  Number of critical data sampled events dropped at the database layer.
- **CriticalOverflowEntersCounter**  Number of times critical overflow mode was entered in event database.
- **DbCriticalDroppedCount**  Total number of dropped critical events in event database.
- **DbDroppedCount**  Number of events dropped at the database layer.
- **DbDroppedFailureCount**  Number of events dropped due to database failures.
- **DbDroppedFullCount**  Number of events dropped due to database being full.
- **EnteringCriticalOverflowDroppedCounter**  Number of events dropped due to critical overflow mode being initiated.
- **EventsPersistedCount**  Number of events that reached the PersistEvent stage.
- **EventStoreLifetimeResetCounter**  Number of times the event store has been reset.
- **EventStoreResetCounter**  Number of times the event store has been reset during this heartbeat.
- **EventStoreResetSizeSum**  Size of event store reset in bytes.
- **EventsUploaded**  Number of events uploaded.
- **HeartBeatSequenceNumber**  The sequence number of this heartbeat.
- **InvalidHttpCodeCount**  Number of invalid HTTP codes received from contacting Vortex.
- **LastEventSizeOffender**  Event name of last event which exceeded max event size.
- **LastInvalidHttpCode**  Last invalid HTTP code received from Vortex.
- **PreviousHeartBeatTime**  The FILETIME of the previous heartbeat fire.
- **RepeatedUploadFailureDropped**  Number of events lost due to repeated upload failures for a single buffer.
- **SettingsHttpAttempts**  Number of attempts to contact OneSettings service.
- **SettingsHttpFailures**  Number of failures from contacting OneSettings service.
- **TopUploaderErrors**  List of top errors received from the upload endpoint.
- **UploaderDroppedCount**  Number of events dropped at the uploader layer of telemetry client.
- **UploaderErrorCount**  Number of errors received from the upload endpoint.
- **VortexFailuresTimeout**  Number of time out failures received from Vortex.
- **VortexHttpAttempts**  Number of attempts to contact Vortex.
- **VortexHttpFailures4xx**  Number of 400-499 error codes received from Vortex.
- **VortexHttpFailures5xx**  Number of 500-599 error codes received from Vortex.
- **VortexHttpResponseFailures**  Number of Vortex responses that are not 2XX or 400.
- **VortexHttpResponsesWithDroppedEvents**  Number of Vortex responses containing at least 1 dropped event.


### TelClientSynthetic.HeartBeat_Seville_5

This event is sent by the universal telemetry client (UTC) as a heartbeat signal for Sense.

The following fields are available:

- **AgentConnectionErrorsCount**  Number of non-timeout errors associated with the host or agent channel.
- **CompressedBytesUploaded**  Number of compressed bytes uploaded.
- **ConsumerDroppedCount**  Number of events dropped at consumer layer of the telemetry client.
- **CriticalDataDbDroppedCount**  Number of critical data sampled events dropped at the database layer.
- **CriticalDataThrottleDroppedCount**  Number of critical data sampled events dropped due to throttling.
- **CriticalOverflowEntersCounter**  Number of times critical overflow mode was entered in event database.
- **DailyUploadQuotaInBytes**  Daily upload quota for Sense in bytes (only in in-proc mode).
- **DbCriticalDroppedCount**  Total number of dropped critical events in event database.
- **DbDroppedCount**  Number of events dropped due to database being full.
- **DbDroppedFailureCount**  Number of events dropped due to database failures.
- **DbDroppedFullCount**  Number of events dropped due to database being full.
- **DecodingDroppedCount**  Number of events dropped due to decoding failures.
- **DiskSizeInBytes**  Size of event store for Sense in bytes (only in in-proc mode).
- **EnteringCriticalOverflowDroppedCounter**  Number of events dropped due to critical overflow mode being initiated.
- **EtwDroppedBufferCount**  Number of buffers dropped in the universal telemetry client (UTC) event tracing for Windows (ETW) session.
- **EtwDroppedCount**  Number of events dropped at the event tracing for Windows (ETW) layer of telemetry client.
- **EventsPersistedCount**  Number of events that reached the PersistEvent stage.
- **EventStoreLifetimeResetCounter**  Number of times event the database was reset for the lifetime of the universal telemetry client (UTC).
- **EventStoreResetCounter**  Number of times the event database was reset.
- **EventStoreResetSizeSum**  Total size of the event database across all resets reports in this instance.
- **EventsUploaded**  Number of events uploaded.
- **Flags**  Flags indicating device state, such as network state, battery state, and opt-in state.
- **FullTriggerBufferDroppedCount**  Number of events dropped due to trigger buffer being full.
- **HeartBeatSequenceNumber**  The sequence number of this heartbeat.
- **InvalidHttpCodeCount**  Number of invalid HTTP codes received from contacting Vortex.
- **LastAgentConnectionError**  Last non-timeout error encountered in the host/agent channel.
- **LastEventSizeOffender**  Event name of last event which exceeded the maximum event size.
- **LastInvalidHttpCode**  Last invalid HTTP code received from Vortex.
- **MaxActiveAgentConnectionCount**  Maximum number of active agents during this heartbeat timeframe.
- **NormalUploadTimerMillis**  Number of milliseconds between each upload of normal events for SENSE (only in in-proc mode).
- **PreviousHeartBeatTime**  Time of last heartbeat event (allows chaining of events).
- **RepeatedUploadFailureDropped**  Number of events lost due to repeated failed uploaded attempts.
- **SettingsHttpAttempts**  Number of attempts to contact OneSettings service.
- **SettingsHttpFailures**  Number of failures from contacting the OneSettings service.
- **ThrottledDroppedCount**  Number of events dropped due to throttling of noisy providers.
- **TopUploaderErrors**  Top uploader errors, grouped by endpoint and error type.
- **UploaderDroppedCount**  Number of events dropped at the uploader layer of the telemetry client.
- **UploaderErrorCount**  Number of input for the TopUploaderErrors mode estimation.
- **VortexFailuresTimeout**  Number of time out failures received from Vortex.
- **VortexHttpAttempts**  Number of attempts to contact Vortex.
- **VortexHttpFailures4xx**  Number of 400-499 error codes received from Vortex.
- **VortexHttpFailures5xx**  Number of 500-599 error codes received from Vortex.
- **VortexHttpResponseFailures**  Number of Vortex responses that are not 2XX or 400.
- **VortexHttpResponsesWithDroppedEvents**  Number of Vortex responses containing at least 1 dropped event.


## Direct to update events

### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCheckApplicabilityGenericFailure

This event indicatse that we have received an unexpected error in the Direct to Update (DTU) Coordinators CheckApplicability call.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCleanupGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Cleanup call.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCleanupSuccess

This event indicates that the Coordinator Cleanup call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCommitGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Commit call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCommitSuccess

This event indicates that the Coordinator Commit call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Download call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadIgnoredFailure

This event indicates that we have received an error in the Direct to Update (DTU) Coordinator Download call that will be ignored.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadSuccess

This event indicates that the Coordinator Download call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorHandleShutdownGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator HandleShutdown call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinate version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorHandleShutdownSuccess

This event indicates that the Coordinator HandleShutdown call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInitializeGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Initialize call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInitializeSuccess

This event indicates that the Coordinator Initialize call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Install call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallIgnoredFailure

This event indicates that we have received an error in the Direct to Update (DTU) Coordinator Install call that will be ignored.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallSuccess

This event indicates that the Coordinator Install call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorProgressCallBack

This event indicates that the Coordinator's progress callback has been called.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **DeployPhase**  Current Deploy Phase.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorSetCommitReadySuccess

This event indicates that the Coordinator SetCommitReady call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiNotShown

This event indicates that the Coordinator WaitForRebootUi call succeeded.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiSelection

This event indicates that the user selected an option on the Reboot UI.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **rebootUiSelection**  Selection on the Reboot UI.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiSuccess

This event indicates that the Coordinator WaitForRebootUi call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityInternalGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler CheckApplicabilityInternal call.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityInternalSuccess

This event indicates that the Handler CheckApplicabilityInternal call succeeded.

The following fields are available:

- **ApplicabilityResult**  The result of the applicability check.
- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilitySuccess

This event indicates that the Handler CheckApplicability call succeeded.

The following fields are available:

- **ApplicabilityResult**  The result code indicating whether the update is applicable.
- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **CV_new**  New correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckIfCoordinatorMinApplicableVersionSuccess

This event indicates that the Handler CheckIfCoordinatorMinApplicableVersion call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **CheckIfCoordinatorMinApplicableVersionResult**  Result of CheckIfCoordinatorMinApplicableVersion function.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCommitGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Commit call.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **CV_new**  New correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCommitSuccess

This event indicates that the Handler Commit call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.run
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **CV_new**  New correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadAndExtractCabFailure

This event indicates that the Handler Download and Extract cab call failed.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **DownloadAndExtractCabFunction_failureReason**  Reason why the update download and extract process failed.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadAndExtractCabSuccess

This event indicates that the Handler Download and Extract cab call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Download call.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadSuccess

This event indicates that the Handler Download call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInitializeGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Initialize call.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **DownloadAndExtractCabFunction_hResult**  HRESULT of the download and extract.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInitializeSuccess

This event indicates that the Handler Initialize call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **DownloadAndExtractCabFunction_hResult**  HRESULT of the download and extraction.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInstallGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Install call.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInstallSuccess

This event indicates that the Coordinator Install call succeeded.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerSetCommitReadySuccess

This event indicates that the Handler SetCommitReady call succeeded.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerWaitForRebootUiGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler WaitForRebootUi call.

The following fields are available:

- **CampaignID**  The ID of the campaigning being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  The HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerWaitForRebootUiSuccess

This event indicates that the Handler WaitForRebootUi call succeeded.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


## DxgKernelTelemetry events

### DxgKrnlTelemetry.GPUAdapterInventoryV2

This event sends basic GPU and display driver information to keep Windows and display drivers up-to-date.

The following fields are available:

- **AdapterTypeValue**  The numeric value indicating the type of Graphics adapter.
- **aiSeqId**  The event sequence ID.
- **bootId**  The system boot ID.
- **BrightnessVersionViaDDI**  The version of the Display Brightness Interface.
- **ComputePreemptionLevel**  The maximum preemption level supported by GPU for compute payload.
- **DedicatedSystemMemoryB**  The amount of system memory dedicated for GPU use (in bytes).
- **DedicatedVideoMemoryB**  The amount of dedicated VRAM of the GPU (in bytes).
- **DisplayAdapterLuid**  The display adapter LUID.
- **DriverDate**  The date of the display driver.
- **DriverRank**  The rank of the display driver.
- **DriverVersion**  The display driver version.
- **DX10UMDFilePath**  The file path to the location of the DirectX 10 Display User Mode Driver in the Driver Store.
- **DX11UMDFilePath**  The file path to the location of the DirectX 11 Display User Mode Driver in the Driver Store.
- **DX12UMDFilePath**  The file path to the location of the DirectX 12 Display User Mode Driver in the Driver Store.
- **DX9UMDFilePath**  The file path to the location of the DirectX 9 Display User Mode Driver in the Driver Store.
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
- **IsRemovable**  TRUE if the adapter supports being disabled or removed.
- **IsRenderDevice**  Does the GPU have rendering capabilities?
- **IsSoftwareDevice**  Is this a software implementation of the GPU?
- **KMDFilePath**  The file path to the location of the Display Kernel Mode Driver in the Driver Store.
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


## Hang Reporting events

### Microsoft.Windows.HangReporting.AppHangEvent

This event sends data about hangs for both native and managed applications, to help keep Windows up to date. It does not contain any Watson bucketing information. The bucketing information is recorded in a Windows Error Reporting (WER) event that is generated when the WER client reports the hang to the Watson service, and the WER event will contain the same ReportID (see field 13 of hang event, field 19 of WER event) as the hang event for the hang being reported. AppHang is reported only on PC devices. It handles classic Win32 hangs and is emitted only once per report. Some behaviors that may be perceived by a user as a hang are reported by app managers (e.g. PLM/RM/EM) as Watson Generics and will not produce AppHang events.

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
- **WaitingOnAppVersion**  If this is a cross process hang, this has the version of the application for which it is waiting.
- **WaitingOnPackageFullName**  If this is a cross process hang waiting for a package, this has the full name of the package for which it is waiting.
- **WaitingOnPackageRelativeAppId**  If this is a cross process hang waiting for a package, this has the relative application id of the package.


## Inventory events

### Microsoft.Windows.Inventory.Core.AmiTelCacheChecksum

This event captures basic checksum data about the device inventory items stored in the cache for use in validating data completeness for Microsoft.Windows.Inventory.Core events. The fields in this event may change over time, but they will always represent a count of a given object.

The following fields are available:

- **DeviceCensus**  A count of device census objects in cache.
- **DriverPackageExtended**  A count of driverpackageextended objects in cache.
- **FileSigningInfo**  A count of file signing objects in cache.
- **InventoryApplication**  A count of application objects in cache.
- **InventoryApplicationAppV**  A count of application AppV objects in cache.
- **InventoryApplicationDriver**  A count of application driver objects in cache
- **InventoryApplicationFile**  A count of application file objects in cache.
- **InventoryApplicationFramework**  A count of application framework objects in cache
- **InventoryApplicationShortcut**  A count of application shortcut objects in cache
- **InventoryDeviceContainer**  A count of device container objects in cache.
- **InventoryDeviceInterface**  A count of Plug and Play device interface objects in cache.
- **InventoryDeviceMediaClass**  A count of device media objects in cache.
- **InventoryDevicePnp**  A count of device Plug and Play objects in cache.
- **InventoryDeviceUsbHubClass**  A count of device usb objects in cache
- **InventoryDriverBinary**  A count of driver binary objects in cache.
- **InventoryDriverPackage**  A count of device objects in cache.
- **InventoryMiscellaneousOfficeAddIn**  A count of office add-in objects in cache
- **InventoryMiscellaneousOfficeAddInUsage**  A count of office add-in usage objects in cache.
- **InventoryMiscellaneousOfficeIdentifiers**  A count of office identifier objects in cache
- **InventoryMiscellaneousOfficeIESettings**  A count of office ie settings objects in cache
- **InventoryMiscellaneousOfficeInsights**  A count of office insights objects in cache
- **InventoryMiscellaneousOfficeProducts**  A count of office products objects in cache
- **InventoryMiscellaneousOfficeSettings**  A count of office settings objects in cache
- **InventoryMiscellaneousOfficeVBA**  A count of office vba objects in cache
- **InventoryMiscellaneousOfficeVBARuleViolations**  A count of office vba rule violations objects in cache
- **InventoryMiscellaneousUUPInfo**  A count of uup info objects in cache


### Microsoft.Windows.Inventory.Core.AmiTelCacheFileInfo

Diagnostic data about the inventory cache.

The following fields are available:

- **CacheFileSize**  Size of the cache.
- **InventoryVersion**  Inventory version of the cache.
- **TempCacheCount**  Number of temp caches created.
- **TempCacheDeletedCount**  Number of temp caches deleted.


### Microsoft.Windows.Inventory.Core.AmiTelCacheVersions

This event sends inventory component versions for the Device Inventory data.

The following fields are available:

- **aeinv**  The version of the App inventory component.
- **devinv**  The file version of the Device inventory component.


### Microsoft.Windows.Inventory.Core.InventoryApplicationAdd

This event sends basic metadata about an application on the system to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **HiddenArp**  Indicates whether a program hides itself from showing up in ARP.
- **InstallDate**  The date the application was installed (a best guess based on folder creation date heuristics).
- **InstallDateArpLastModified**  The date of the registry ARP key for a given application. Hints at install date but not always accurate. Passed as an array. Example: 4/11/2015  00:00:00
- **InstallDateFromLinkFile**  The estimated date of install based on the links to the files.  Passed as an array.
- **InstallDateMsi**  The install date if the application was installed via Microsoft Installer (MSI). Passed as an array.
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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory component.
- **ProgramIds**  The unique program identifier the driver is associated with.


### Microsoft.Windows.Inventory.Core.InventoryApplicationDriverStartSync

The InventoryApplicationDriverStartSync event indicates that a new set of InventoryApplicationDriverStartAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory component.


### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkAdd

This event provides the basic metadata about the frameworks an application may depend on.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **FileId**  A hash that uniquely identifies a file.
- **Frameworks**  The list of frameworks this file depends on.
- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryApplicationFrameworkStartSync

This event indicates that a new set of InventoryApplicationFrameworkAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


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

- **BusReportedDescription**  The description of the device reported by the bux.
- **Class**  The device setup class of the driver loaded for the device.
- **ClassGuid**  The device class GUID from the driver package
- **COMPID**  The device setup class guid of the driver loaded for the device.
- **ContainerId**  The list of compat ids for the device.
- **Description**  System-supplied GUID that uniquely groups the functional devices associated with a single-function or multifunction device installed in the computer.
- **DeviceState**  The device description.
- **DriverId**  DeviceState is a bitmask of the following: DEVICE_IS_CONNECTED 0x0001 (currently only for container). DEVICE_IS_NETWORK_DEVICE 0x0002 (currently only for container). DEVICE_IS_PAIRED 0x0004 (currently only for container). DEVICE_IS_ACTIVE 0x0008 (currently never set). DEVICE_IS_MACHINE 0x0010 (currently only for container). DEVICE_IS_PRESENT 0x0020 (currently always set). DEVICE_IS_HIDDEN 0x0040. DEVICE_IS_PRINTER 0x0080 (currently only for container). DEVICE_IS_WIRELESS 0x0100. DEVICE_IS_WIRELESS_FAT 0x0200. The most common values are therefore: 32 (0x20)= device is present. 96 (0x60)= device is present but hidden. 288 (0x120)= device is a wireless device that is present
- **DriverName**  A unique identifier for the driver installed.
- **DriverPackageStrongName**  The immediate parent directory name in the Directory field of InventoryDriverPackage
- **DriverVerDate**  Name of the .sys image file (or wudfrd.sys if using user mode driver framework).
- **DriverVerVersion**  The immediate parent directory name in the Directory field of InventoryDriverPackage.
- **Enumerator**  The date of the driver loaded for the device.
- **ExtendedInfs**  The extended INF file names.
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

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.
- **TotalUserConnectablePorts**  Total number of connectable USB ports.
- **TotalUserConnectableTypeCPorts**  Total number of connectable USB Type C ports.


### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassStartSync

This event indicates that a new set of InventoryDeviceUsbHubClassAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


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
- **DriverInBox**  Is the driver included with the operating system?
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


### Microsoft.Windows.Inventory.Core.StartUtcJsonTrace

This event collects traces of all other Core events, not used in typical customer scenarios. This event signals the beginning of the event download, and that tracing should begin.



### Microsoft.Windows.Inventory.Core.StopUtcJsonTrace

This event collects traces of all other Core events, not used in typical customer scenarios. This event signals the end of the event download, and that tracing should end.



### Microsoft.Windows.Inventory.General.AppHealthStaticAdd

This event sends details collected for a specific application on the source device.

The following fields are available:

- **AhaVersion**  The binary version of the App Health Analyzer tool.
- **ApplicationErrors**  The count of application errors from the event log.
- **Bitness**  The architecture type of the application (16 Bit or 32 bit or 64 bit).
- **device_level**  Various JRE/JAVA versions installed on a particular device.
- **ExtendedProperties**  Attribute used for aggregating all other attributes under this event type.
- **Jar**  Flag to determine if an app has a Java JAR file dependency.
- **Jre**  Flag to determine if an app has JRE framework dependency.
- **Jre_version**  JRE versions an app has declared framework dependency for.
- **Name**  Name of the application.
- **NonDPIAware**  Flag to determine if an app is non-DPI aware.
- **NumBinaries**  Count of all binaries (.sys,.dll,.ini) from application install location.
- **RequiresAdmin**  Flag to determine if an app requests admin privileges for execution.
- **RequiresAdminv2**  Additional flag to determine if an app requests admin privileges for execution.
- **RequiresUIAccess**  Flag to determine if an app is based on UI features for accessibility.
- **VB6**  Flag to determine if an app is based on VB6 framework.
- **VB6v2**  Additional flag to determine if an app is based on VB6 framework.
- **Version**  Version of the application.
- **VersionCheck**  Flag to determine if an app has a static dependency on OS version.
- **VersionCheckv2**  Additional flag to determine if an app has a static dependency on OS version.


### Microsoft.Windows.Inventory.General.AppHealthStaticStartSync

This event indicates the beginning of a series of AppHealthStaticAdd events.

The following fields are available:

- **AllowTelemetry**  Indicates the presence of the 'allowtelemetry' command line argument.
- **CommandLineArgs**  Command line arguments passed when launching the App Health Analyzer executable.
- **Enhanced**  Indicates the presence of the 'enhanced' command line argument.
- **StartTime**  UTC date and time at which this event was sent.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInAdd

Provides data on the installed Office Add-ins.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AddinCLSID**  The CLSID for the Office addin
- **AddInId**  Office addin ID
- **AddinType**  The type of the Office addin.
- **BinFileTimestamp**  Timestamp of the Office addin
- **BinFileVersion**  Version of the Office addin
- **Description**  Office addin description
- **FileId**  FileId of the Office addin
- **FileSize**  File size of the Office addin
- **FriendlyName**  Friendly name for office addin
- **FullPath**  Unexpanded path to the office addin
- **InventoryVersion**  The version of the inventory binary generating the events.
- **LoadBehavior**  Uint32 that describes the load behavior
- **OfficeApplication**  The office application for this addin
- **OfficeArchitecture**  Architecture of the addin
- **OfficeVersion**  The office version for this addin
- **OutlookCrashingAddin**  Boolean that indicates if crashes have been found for this addin
- **ProductCompany**  The name of the company associated with the Office addin
- **ProductName**  The product name associated with the Office addin
- **ProductVersion**  The version associated with the Office addin
- **ProgramId**  The unique program identifier of the Office addin
- **Provider**  Name of the provider for this addin


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInStartSync

This event indicates that a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIdentifiersAdd

Provides data on the Office identifiers.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.
- **OAudienceData**  Sub-identifier for Microsoft Office release management, identifying the pilot group for a device
- **OAudienceId**  Microsoft Office identifier for Microsoft Office release management, identifying the pilot group for a device
- **OMID**  Identifier for the Office SQM Machine
- **OPlatform**  Whether the installed Microsoft Office product is 32-bit or 64-bit
- **OTenantId**  Unique GUID representing the Microsoft O365 Tenant
- **OVersion**  Installed version of Microsoft Office. For example, 16.0.8602.1000
- **OWowMID**  Legacy Microsoft Office telemetry identifier (SQM Machine ID) for WoW systems (32-bit Microsoft Office on 64-bit Windows)


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIdentifiersStartSync

Diagnostic event to indicate a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIESettingsAdd

Provides data on Office-related Internet Explorer features.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.
- **OIeFeatureAddon**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_ADDON_MANAGEMENT feature lets applications hosting the WebBrowser Control to respect add-on management selections made using the Add-on Manager feature of Internet Explorer. Add-ons disabled by the user or by administrative group policy will also be disabled in applications that enable this feature.
- **OIeMachineLockdown**  Flag indicating which Microsoft Office products have this setting enabled. When the FEATURE_LOCALMACHINE_LOCKDOWN feature is enabled, Internet Explorer applies security restrictions on content loaded from the user's local machine, which helps prevent malicious behavior involving local files.
- **OIeMimeHandling**  Flag indicating which Microsoft Office products have this setting enabled. When the FEATURE_MIME_HANDLING feature control is enabled, Internet Explorer handles MIME types more securely. Only applies to Windows Internet Explorer 6 for Windows XP Service Pack 2 (SP2)
- **OIeMimeSniffing**  Flag indicating which Microsoft Office products have this setting enabled. Determines a file's type by examining its bit signature. Windows Internet Explorer uses this information to determine how to render the file. The FEATURE_MIME_SNIFFING feature, when enabled, allows to be set differently for each security zone by using the URLACTION_FEATURE_MIME_SNIFFING URL action flag
- **OIeNoAxInstall**  Flag indicating which Microsoft Office products have this setting enabled. When a webpage attempts to load or install an ActiveX control that isn't already installed, the FEATURE_RESTRICT_ACTIVEXINSTALL feature blocks the request. When a webpage tries to load or install an ActiveX control that isn't already installed, the FEATURE_RESTRICT_ACTIVEXINSTALL feature blocks the request
- **OIeNoDownload**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_RESTRICT_FILEDOWNLOAD feature blocks file download requests that navigate to a resource, that display a file download dialog box, or that are not initiated explicitly by a user action (for example, a mouse click or key press). Only applies to Windows Internet Explorer 6 for Windows XP Service Pack 2 (SP2)
- **OIeObjectCaching**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_OBJECT_CACHING feature prevents webpages from accessing or instantiating ActiveX controls cached from different domains or security contexts
- **OIePasswordDisable**  Flag indicating which Microsoft Office products have this setting enabled. After Windows Internet Explorer 6 for Windows XP Service Pack 2 (SP2), Internet Explorer no longer allows usernames and passwords to be specified in URLs that use the HTTP or HTTPS protocols. URLs using other protocols, such as FTP, still allow usernames and passwords
- **OIeSafeBind**  Flag indicating which Microsoft Office products have this setting enabled.  The FEATURE_SAFE_BINDTOOBJECT feature performs additional safety checks when calling MonikerBindToObject to create and initialize Microsoft ActiveX controls. Specifically, prevent the control from being created if COMPAT_EVIL_DONT_LOAD is in the registry for the control
- **OIeSecurityBand**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_SECURITYBAND feature controls the display of the Internet Explorer Information bar. When enabled, the Information bar appears when file download or code installation is restricted
- **OIeUncSaveCheck**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_UNC_SAVEDFILECHECK feature enables the Mark of the Web (MOTW) for local files loaded from network locations that have been shared by using the Universal Naming Convention (UNC)
- **OIeValidateUrl**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_VALIDATE_NAVIGATE_URL feature control prevents Windows Internet Explorer from navigating to a badly formed URL
- **OIeWebOcPopup**  Flag indicating which Microsoft Office products have this setting enabled. The FEATURE_WEBOC_POPUPMANAGEMENT feature allows applications hosting the WebBrowser Control to receive the default Internet Explorer pop-up window management behavior
- **OIeWinRestrict**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_WINDOW_RESTRICTIONS feature adds several restrictions to the size and behavior of popup windows
- **OIeZoneElevate**  Flag indicating which Microsoft Office products have this setting enabled. When enabled, the FEATURE_ZONE_ELEVATION feature prevents pages in one zone from navigating to pages in a higher security zone unless the navigation is generated by the user


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeIESettingsStartSync

Diagnostic event to indicate a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsAdd

This event provides insight data on the installed Office products

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.
- **OfficeApplication**  The name of the Office application.
- **OfficeArchitecture**  The bitness of the Office application.
- **OfficeVersion**  The version of the Office application.
- **Value**  The insights collected about this entity.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeInsightsStartSync

This diagnostic event indicates that a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeProductsAdd

Describes Office Products installed.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.
- **OC2rApps**  A GUID the describes the Office Click-To-Run apps
- **OC2rSkus**  Comma-delimited list (CSV) of Office Click-To-Run products installed on the device. For example, Office 2016 ProPlus
- **OMsiApps**  Comma-delimited list (CSV) of Office MSI products installed on the device. For example, Microsoft Word
- **OProductCodes**  A GUID that describes the Office MSI products


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeProductsStartSync

Diagnostic event to indicate a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeSettingsAdd

This event describes various Office settings

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **BrowserFlags**  Browser flags for Office-related products.
- **ExchangeProviderFlags**  Provider policies for Office Exchange.
- **InventoryVersion**  The version of the inventory binary generating the events.
- **SharedComputerLicensing**  Office shared computer licensing policies.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeSettingsStartSync

Indicates a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBAAdd

This event provides a summary rollup count of conditions encountered while performing a local scan of Office files, analyzing for known VBA programmability compatibility issues between legacy office version and ProPlus, and between 32 and 64-bit versions

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Design**  Count of files with design issues found.
- **Design_x64**  Count of files with 64 bit design issues found.
- **DuplicateVBA**  Count of files with duplicate VBA code.
- **HasVBA**  Count of files with VBA code.
- **Inaccessible**  Count of files that were inaccessible for scanning.
- **InventoryVersion**  The version of the inventory binary generating the events.
- **Issues**  Count of files with issues detected.
- **Issues_x64**  Count of files with 64-bit issues detected.
- **IssuesNone**  Count of files with no issues detected.
- **IssuesNone_x64**  Count of files with no 64-bit issues detected.
- **Locked**  Count of files that were locked, preventing scanning.
- **NoVBA**  Count of files with no VBA inside.
- **Protected**  Count of files that were password protected, preventing scanning.
- **RemLimited**  Count of files that require limited remediation changes.
- **RemLimited_x64**  Count of files that require limited remediation changes for 64-bit issues.
- **RemSignificant**  Count of files that require significant remediation changes.
- **RemSignificant_x64**  Count of files that require significant remediation changes for 64-bit issues.
- **Score**  Overall compatibility score calculated for scanned content.
- **Score_x64**  Overall 64-bit compatibility score calculated for scanned content.
- **Total**  Total number of files scanned.
- **Validation**  Count of files that require additional manual validation.
- **Validation_x64**  Count of files that require additional manual validation for 64-bit issues.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARuleViolationsAdd

This event provides data on Microsoft Office VBA rule violations, including a rollup count per violation type, giving an indication of remediation requirements for an organization. The event identifier is a unique GUID, associated with the validation rule

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Count**  Count of total Microsoft Office VBA rule violations
- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARuleViolationsRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBARuleViolationsStartSync

This event indicates that a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeVBAStartSync

Diagnostic event to indicate a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoAdd

Provides data on Unified Update Platform (UUP) products and what version they are at.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Identifier**  UUP identifier
- **LastActivatedVersion**  Last activated version
- **PreviousVersion**  Previous version
- **Source**  UUP source
- **Version**  UUP version


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoRemove

Indicates that this particular data object represented by the objectInstanceId is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoStartSync

Diagnostic event to indicate a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.Indicators.Checksum

This event summarizes the counts for the InventoryMiscellaneousUexIndicatorAdd events.

The following fields are available:

- **ChecksumDictionary**  A count of each operating system indicator.
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



## Kernel events

### IO

This event indicates the number of bytes read from or read by the OS and written to or written by the OS upon system startup.

The following fields are available:

- **BytesRead**  The total number of bytes read from or read by the OS upon system startup.
- **BytesWritten**  The total number of bytes written to or written by the OS upon system startup.


### Microsoft.Windows.Kernel.BootEnvironment.OsLaunch

OS information collected during Boot, used to evaluate the success of the upgrade process.

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
- **MaxAbove4GbFreeRange**  This field describes the largest memory range available above 4Gb.
- **MaxBelow4GbFreeRange**  This field describes the largest memory range available below 4Gb.
- **MeasuredLaunchPrepared**  This field tells us if the OS launch was initiated using Measured/Secure Boot over DRTM (Dynamic Root of Trust for Measurement).
- **MeasuredLaunchResume**  This field tells us if Dynamic Root of Trust for Measurement (DRTM) was used when resuming from hibernation.
- **MenuPolicy**  Type of advanced options menu that should be shown to the user (Legacy, Standard, etc.).
- **RecoveryEnabled**  Indicates whether recovery is enabled.
- **SecureLaunchPrepared**  This field indicates if DRTM was prepared during boot.
- **TcbLaunch**  Indicates whether the Trusted Computing Base was used during the boot flow.
- **UserInputTime**  The amount of time the loader application spent waiting for user input.


## OneDrive events

### Microsoft.OneDrive.Sync.Updater.ComponentInstallState

This event includes basic data about the installation state of dependent OneDrive components.

The following fields are available:

- **ComponentName**  The name of the dependent component.
- **isInstalled**  Is the dependent component installed?


### Microsoft.OneDrive.Sync.Updater.OverlayIconStatus

This event indicates if the OneDrive overlay icon is working correctly. 0 = healthy; 1 = can be fixed; 2 = broken

The following fields are available:

- **32bit**  The status of the OneDrive overlay icon on a 32-bit operating system.
- **64bit**  The status of the OneDrive overlay icon on a 64-bit operating system.


### Microsoft.OneDrive.Sync.Updater.UpdateOverallResult

This event sends information describing the result of the update.

The following fields are available:

- **hr**  The HResult of the operation.
- **IsLoggingEnabled**  Indicates whether logging is enabled for the updater.
- **UpdaterVersion**  The version of the updater.


### Microsoft.OneDrive.Sync.Updater.UpdateXmlDownloadHResult

This event determines the status when downloading the OneDrive update configuration file.

The following fields are available:

- **hr**  The HResult of the operation.


### Microsoft.OneDrive.Sync.Updater.WebConnectionStatus

This event determines the error code that was returned when verifying Internet connectivity.

The following fields are available:

- **winInetError**  The HResult of the operation.


## Other events

### Microsoft.Windows.Kits.WSK.WskImageCreate

This event sends simple Product and Service usage data when a user is using the Windows System Kit to create new OS “images”. The data includes the version of the Windows System Kit and the state of the event and is used to help investigate “image” creation failures.

The following fields are available:

- **Phase**  The image creation phase. Values are “Start” or “End”.
- **WskVersion**  The version of the Windows System Kit being used.


### Microsoft.Windows.Kits.WSK.WskImageCustomization

This event sends simple Product and Service usage data when a user is using the Windows System Kit to create/modify configuration files allowing the customization of a new OS image with Apps or Drivers. The data includes the version of the Windows System Kit, the state of the event, the customization type (drivers or apps) and the mode (new or updating) and is used to help investigate configuration file creation failures.

The following fields are available:

- **Mode**  The mode of update to image configuration files. Values are “New” or “Update”.
- **Phase**  The image creation phase. Values are “Start” or “End”.
- **Type**  The type of update to image configuration files. Values are “Apps” or “Drivers”.
- **WskVersion**  The version of the Windows System Kit being used.


### Microsoft.Windows.Kits.WSK.WskWorkspaceCreate

This event sends simple Product and Service usage data when a user is using the Windows System Kit to create new workspace for generating OS “images”. The data includes the version of the Windows System Kit and the state of the event and is used to help investigate workspace creation failures.

The following fields are available:

- **Architecture**  The OS architecture that the workspace will target. Values are one of: “AMD64”, “ARM64”, “x86”, or “ARM”.
- **OsEdition**  The Operating System Edition that the workspace will target.
- **Phase**  The image creation phase. Values are “Start” or “End”.
- **WskVersion**  The version of the Windows System Kit being used.


### Microsoft.Windows.Mitigation.AccountTraceLoggingProvider.General

This event provides information about application properties to indicate the successful execution.

The following fields are available:

- **AppMode**  Indicates the mode the app is being currently run around privileges.
- **ExitCode**  Indicates the exit code of the app.
- **Help**  Indicates if the app needs to be launched in the help mode.
- **ParseError**  Indicates if there was a parse error during the execution.
- **RightsAcquired**  Indicates if the right privileges were acquired for successful execution.
- **RightsWereEnabled**  Indicates if the right privileges were enabled for successful execution.
- **TestMode**  Indicates whether the app is being run in test mode.


### Microsoft.Windows.Mitigation.AccountTraceLoggingProvider.GetCount

This event provides information about the properties of user accounts in the Administrator group.

The following fields are available:

- **Internal**  Indicates the internal property associated with the count group.
- **LastError**  The error code (if applicable) for the cause of the failure to get the count of the user account.


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

- **isAdmin**  whether the person who is logging in is an admin
- **isExistingUser**  whether the account existed in a downlevel OS
- **isLaunching**  Whether or not the privacy consent experience will be launched
- **isSilentElevation**  whether the user has most restrictive UAC controls
- **privacyConsentState**  whether the user has completed privacy experience
- **userRegionCode**  The current user's region setting


## Setup events

### SetupPlatformTel.SetupPlatformTelActivityEvent

This event sends basic metadata about the SetupPlatform update installation process, to help keep Windows up to date.

The following fields are available:

- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **Value**  Value associated with the corresponding event name. For example, time-related events will include the system time


### SetupPlatformTel.SetupPlatformTelActivityStarted

This event sends basic metadata about the update installation process generated by SetupPlatform to help keep Windows up to date.

The following fields are available:

- **Name**  The name of the dynamic update type. Example: GDR driver


### SetupPlatformTel.SetupPlatformTelActivityStopped

This event sends basic metadata about the update installation process generated by SetupPlatform to help keep Windows up to date.



### SetupPlatformTel.SetupPlatfOrmTelEvent

This service retrieves events generated by SetupPlatform, the engine that drives the various deployment scenarios.

The following fields are available:

- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.


## Software update events

### SoftwareUpdateClientTelemetry.CheckForUpdates

Scan process event on Windows Update client. See the EventScenario field for specifics (started/failed/succeeded).

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
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior. No data is currently reported in this field. Expected value for this field is 0.
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
- **IsWUfBFederatedScanDisabled**  Indicates if Windows Update for Business federated scan is disabled on the device.
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
- **ScanProps**  This is a 32-bit integer containing Boolean properties for a given Windows Update scan. The following bits are used; all remaining bits are reserved and set to zero. Bit 0 (0x1): IsInteractive - is set to 1 if the scan is requested by a user, or 0 if the scan is requested by Automatic Updates. Bit 1 (0x2): IsSeeker - is set to 1 if the Windows Update client's Seeker functionality is enabled. Seeker functionality is enabled on certain interactive scans, and results in the scans returning certain updates that are in the initial stages of release (not yet released for full adoption via Automatic Updates).
- **ServiceGuid**  An ID which represents which service the software distribution client is checking for content (Windows Update, Windows Store, etc.).
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


### SoftwareUpdateClientTelemetry.Download

Download process event for target update on Windows Update client. See the EventScenario field for specifics (started/failed/succeeded).

The following fields are available:

- **ActiveDownloadTime**  Number of seconds the update was actively being downloaded.
- **AppXBlockHashFailures**  Indicates the number of blocks that failed hash validation during download of the app payload.
- **AppXBlockHashValidationFailureCount**  A count of the number of blocks that have failed validation after being downloaded.
- **AppXDownloadScope**  Indicates the scope of the download for application content. For streaming install scenarios, AllContent - non-streaming download, RequiredOnly - streaming download requested content required for launch, AutomaticOnly - streaming download requested automatic streams for the app, and Unknown - for events sent before download scope is determined by the Windows Update client.
- **AppXScope**  Indicates the scope of the app download. The values can be one of the following: "RequiredContentOnly" - only the content required to launch the app is being downloaded; "AutomaticContentOnly" - only the optional [automatic] content for the app (the ones that can downloaded after the app has been launched) is being downloaded; "AllContent" - all content for the app, including the optional [automatic] content, is being downloaded.
- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BundleBytesDownloaded**  Number of bytes downloaded for the specific content bundle.
- **BundleId**  Identifier associated with the specific content bundle; should not be all zeros if the bundleID was found.
- **BundleRepeatFailCount**  Indicates whether this particular update bundle has previously failed.
- **BundleRepeatFailFlag**  Indicates whether this particular update bundle previously failed to download.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **BytesDownloaded**  Number of bytes that were downloaded for an individual piece of content (not the entire bundle).
- **CachedEngineVersion**  For self-initiated healing, the version of the SIH engine that is cached on the device. If the SIH engine does not exist, the value is null.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **CbsDownloadMethod**  Indicates whether the download was a full-file download or a partial/delta download.
- **CbsMethod**  The method used for downloading the update content related to the Component Based Servicing (CBS) technology. This value can be one of the following: (1) express download method was used for download; (2) SelfContained download method was used for download indicating the update had no express content; (3) SelfContained download method was used indicating that the update has an express payload, but the server is not hosting it; (4) SelfContained download method was used indicating that range requests are not supported; (5) SelfContained download method was used indicating that the system does not support express download (dpx.dll is not present); (6) SelfContained download method was used indicating that self-contained download method was selected previously; (7) SelfContained download method was used indicating a fall back to self-contained if the number of requests made by DPX exceeds a certain threshold.
- **CDNCountryCode**  Two letter country abbreviation for the Content Distribution Network (CDN) location.
- **CDNId**  ID which defines which CDN the software distribution client downloaded the content from.
- **ClientVersion**  The version number of the software distribution client.
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior. No value is currently reported in this field. Expected value for this field is 0.
- **ConnectTime**  Indicates the cumulative sum (in seconds) of the time it took to establish the connection for all updates in an update bundle.
- **CurrentMobileOperator**  The mobile operator the device is currently connected to.
- **DeviceModel**  What is the device model.
- **DownloadPriority**  Indicates whether a download happened at background, normal, or foreground priority.
- **DownloadProps**  Indicates a bitmask for download operations indicating: (1) if an update was downloaded to a system volume (least significant bit i.e. bit 0); (2) if the update was from a channel other than the installed channel (bit 1); (3) if the update was for a product pinned by policy (bit 2); (4) if the deployment action for the update is uninstall (bit 3).
- **DownloadType**  Differentiates the download type of SIH downloads between Metadata and Payload downloads.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started downloading content, or whether it was cancelled, succeeded, or failed.
- **EventType**  Possible values are Child, Bundle, or Driver.
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode wasn't specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBranch**  The branch that a device is on if participating in flighting (pre-release builds).
- **FlightBuildNumber**  If this download was for a flight (pre-release build), this indicates the build number of that flight.
- **FlightId**  The specific ID of the flight (pre-release build) the device is getting.
- **FlightRing**  The ring (speed of getting builds) that a device is on if participating in flighting (pre-release builds).
- **HandlerType**  Indicates what kind of content is being downloaded (app, driver, windows patch, etc.).
- **HardwareId**  If this download was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **HomeMobileOperator**  The mobile operator that the device was originally intended to work with.
- **HostName**  The hostname URL the content is downloading from.
- **IPVersion**  Indicates whether the download took place over IPv4 or IPv6.
- **IsDependentSet**  Indicates whether a driver is a part of a larger System Hardware/Firmware Update
- **IsWUfBDualScanEnabled**  Indicates if Windows Update for Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Indicates if Windows Update for Business is enabled on the device.
- **NetworkCost**  A flag indicating the cost of the network used for downloading the update content. The values can be: 0x0 (Unkown); 0x1 (Network cost is unrestricted); 0x2 (Network cost is fixed); 0x4 (Network cost is variable); 0x10000 (Network cost over data limit); 0x20000 (Network cost congested); 0x40000 (Network cost roaming); 0x80000 (Network cost approaching data limit).
- **NetworkCostBitMask**  Indicates what kind of network the device is connected to (roaming, metered, over data cap, etc.)
- **NetworkRestrictionStatus**  More general version of NetworkCostBitMask, specifying whether Windows considered the current network to be "metered."
- **PackageFullName**  The package name of the content.
- **PhonePreviewEnabled**  Indicates whether a phone was opted-in to getting preview builds, prior to flighting (pre-release builds) being introduced.
- **PostDnldTime**  Time taken (in seconds) to signal download completion after the last job has completed downloading payload.
- **ProcessName**  The process name of the caller who initiated API calls, in the event where CallerApplicationName was not provided.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **Reason**  A 32-bit integer representing the reason the update is blocked from being downloaded in the background.
- **RegulationReason**  The reason that the update is regulated
- **RegulationResult**  The result code (HResult) of the last attempt to contact the regulation web service for download regulation of update content.
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one.
- **RepeatFailCount**  Indicates whether this specific piece of content has previously failed.
- **RepeatFailFlag**  Indicates whether this specific piece of content had previously failed to download.
- **RevisionNumber**  Identifies the revision number of this specific piece of content.
- **ServiceGuid**  An ID that represents which service the software distribution client is installing content for (Windows Update, Windows Store, etc.).
- **Setup360Phase**  If the download is for an operating system upgrade, this datapoint indicates which phase of the upgrade is underway.
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **SizeCalcTime**  Time taken (in seconds) to calculate the total download size of the payload.
- **StatusCode**  Indicates the result of a Download event (success, cancellation, failure code HResult).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **TargetMetadataVersion**  For self-initiated healing, this is the target version of the SIH engine to download (if needed). If not, the value is null.
- **ThrottlingServiceHResult**  Result code (success/failure) while contacting a web service to determine whether this device should download content yet.
- **TimeToEstablishConnection**  Time (in ms) it took to establish the connection prior to beginning downloaded.
- **TotalExpectedBytes**  The total count of bytes that the download is expected to be.
- **UpdateId**  An identifier associated with the specific piece of content.
- **UpdateID**  An identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates whether a piece of content was marked as Important, Recommended, or Optional.
- **UsedDO**  Whether the download used the delivery optimization service.
- **UsedSystemVolume**  Indicates whether the content was downloaded to the device's main system storage drive, or an alternate storage drive.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.


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
- **BundleRepeatFailCount**  Indicates whether this particular update bundle has previously failed.
- **BundleRepeatFailFlag**  Indicates whether this particular update bundle previously failed to install.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **ClientVersion**  The version number of the software distribution client.
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior. No value is currently reported in this field. Expected value for this field is 0.
- **CSIErrorType**  The stage of CBS installation where it failed.
- **CurrentMobileOperator**  The mobile operator to which the device is currently connected.
- **DeviceModel**  The device model.
- **DriverPingBack**  Contains information about the previous driver and system state.
- **DriverRecoveryIds**  The list of identifiers that could be used for uninstalling the drivers if a recovery is required.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started installing content, or whether it was cancelled, succeeded, or failed.
- **EventType**  Possible values are Child, Bundle, or Driver.
- **ExtendedErrorCode**  The extended error code.
- **ExtendedStatusCode**  Secondary error code for certain scenarios where StatusCode is not specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBranch**  The branch that a device is on if participating in the Windows Insider Program.
- **FlightBuildNumber**  If this installation was for a Windows Insider build, this is the build number of that build.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **FlightRing**  The ring that a device is on if participating in the Windows Insider Program.
- **HandlerType**  Indicates what kind of content is being installed (for example, app, driver, Windows update).
- **HardwareId**  If this install was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **HomeMobileOperator**  The mobile operator that the device was originally intended to work with.
- **InstallProps**  A bitmask for future flags associated with the install operation. No value is currently reported in this field. Expected value for this field is 0.
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **IsDependentSet**  Indicates whether the driver is part of a larger System Hardware/Firmware update.
- **IsFinalOutcomeEvent**  Indicates whether this event signals the end of the update/upgrade process.
- **IsFirmware**  Indicates whether this update is a firmware update.
- **IsSuccessFailurePostReboot**  Indicates whether the update succeeded and then failed after a restart.
- **IsWUfBDualScanEnabled**  Indicates whether Windows Update for Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Indicates whether Windows Update for Business is enabled on the device.
- **MergedUpdate**  Indicates whether the OS update and a BSP update merged for installation.
- **MsiAction**  The stage of MSI installation where it failed.
- **MsiProductCode**  The unique identifier of the MSI installer.
- **PackageFullName**  The package name of the content being installed.
- **PhonePreviewEnabled**  Indicates whether a phone was getting preview build, prior to flighting being introduced.
- **ProcessName**  The process name of the caller who initiated API calls, in the event that CallerApplicationName was not provided.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one
- **RepeatFailCount**  Indicates whether this specific piece of content has previously failed.
- **RepeatFailFlag**  Indicates whether this specific piece of content previously failed to install.
- **RevisionNumber**  The revision number of this specific piece of content.
- **ServiceGuid**  An ID which represents which service the software distribution client is installing content for (Windows Update, Windows Store, etc.).
- **Setup360Phase**  If the install is for an operating system upgrade, indicates which phase of the upgrade is underway.
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **StatusCode**  Indicates the result of an installation event (success, cancellation, failure code HResult).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **TransactionCode**  The ID that represents a given MSI installation.
- **UpdateId**  Unique update ID.
- **UpdateImportance**  Indicates whether a piece of content was marked as Important, Recommended, or Optional.
- **UsedSystemVolume**  Indicates whether the content was downloaded and then installed from the device's main system storage drive, or an alternate storage drive.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.


### SoftwareUpdateClientTelemetry.Revert

Revert event for target update on Windows Update Client. See EventScenario field for specifics (for example, Started/Failed/Succeeded).

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle. Should not be all zeros if the BundleId was found.
- **BundleRepeatFailCount**  Indicates whether this particular update bundle has previously failed.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **CallerApplicationName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClientVersion**  Version number of the software distribution client.
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior. There is no value being reported in this field right now. Expected value for this field is 0.
- **CSIErrorType**  Stage of CBS installation that failed.
- **DriverPingBack**  Contains information about the previous driver and system state.
- **DriverRecoveryIds**  The list of identifiers that could be used for uninstalling the drivers if a recovery is required.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of the event (scan started, succeeded, failed, etc.).
- **EventType**  Event type (Child, Bundle, Release, or Driver).
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode is not specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBuildNumber**  Indicates the build number of the flight.
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **HardwareId**  If this download was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **IsFinalOutcomeEvent**  Indicates whether this event signals the end of the update/upgrade process.
- **IsFirmware**  Indicates whether an update was a firmware update.
- **IsSuccessFailurePostReboot**  Indicates whether an initial success was a failure after a reboot.
- **IsWUfBDualScanEnabled**  Flag indicating whether WU-for-Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Flag indicating whether WU-for-Business is enabled on the device.
- **MergedUpdate**  Indicates whether an OS update and a BSP update were merged for install.
- **ProcessName**  Process name of the caller who initiated API calls into the software distribution client.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RelatedCV**  The previous correlation vector that was used by the client before swapping with a new one.
- **RepeatFailCount**  Indicates whether this specific piece of content has previously failed.
- **RevisionNumber**  Identifies the revision number of this specific piece of content.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **UpdateId**  The identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates the importance of a driver, and why it received that importance level (0-Unknown, 1-Optional, 2-Important-DNF, 3-Important-Generic, 4-Important-Other, 5-Recommended).
- **UsedSystemVolume**  Indicates whether the device's main system storage drive or an alternate storage drive was used.
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.TaskRun

Start event for Server Initiated Healing client. See EventScenario field for specifics (for example, started/completed).

The following fields are available:

- **CallerApplicationName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClientVersion**  Version number of the software distribution client.
- **CmdLineArgs**  Command line arguments passed in by the caller.
- **EventInstanceID**  A globally unique identifier for the event instance.
- **EventScenario**  Indicates the purpose of the event (scan started, succeeded, failed, etc.).
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.Uninstall

Uninstall event for target update on Windows Update Client. See EventScenario field for specifics (for example, Started/Failed/Succeeded).

The following fields are available:

- **BundleId**  The identifier associated with the specific content bundle. This should not be all zeros if the bundleID was found.
- **BundleRepeatFailCount**  Indicates whether this particular update bundle previously failed.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **CallerApplicationName**  Name of the application making the Windows Update request. Used to identify context of request.
- **ClientVersion**  Version number of the software distribution client.
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior. There is no value being reported in this field right now. Expected value for this field is 0.
- **DriverPingBack**  Contains information about the previous driver and system state.
- **DriverRecoveryIds**  The list of identifiers that could be used for uninstalling the drivers when a recovery is required.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose of the event (a scan started, succeded, failed, etc.).
- **EventType**  Indicates the event type. Possible values are &quot;Child&quot;, &quot;Bundle&quot;, &quot;Release&quot; or &quot;Driver&quot;.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode is not specific enough.
- **FeatureUpdatePause**  Indicates whether feature OS updates are paused on the device.
- **FlightBuildNumber**  Indicates the build number of the flight.
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **HardwareId**  If the download was for a driver targeted to a particular device model, this ID indicates the model of the device.
- **IsFinalOutcomeEvent**  Indicates whether this event signals the end of the update/upgrade process.
- **IsFirmware**  Indicates whether an update was a firmware update.
- **IsSuccessFailurePostReboot**  Indicates whether an initial success was then a failure after a reboot.
- **IsWUfBDualScanEnabled**  Flag indicating whether WU-for-Business dual scan is enabled on the device.
- **IsWUfBEnabled**  Flag indicating whether WU-for-Business is enabled on the device.
- **MergedUpdate**  Indicates whether an OS update and a BSP update were merged for install.
- **ProcessName**  Process name of the caller who initiated API calls into the software distribution client.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RelatedCV**  The previous correlation vector that was used by the client before swapping with a new one.
- **RepeatFailCount**  Indicates whether this specific piece of content previously failed.
- **RevisionNumber**  Identifies the revision number of this specific piece of content.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates the importance of a driver and why it received that importance level (0-Unknown, 1-Optional, 2-Important-DNF, 3-Important-Generic, 4-Important-Other, 5-Recommended).
- **UsedSystemVolume**  Indicates whether the device’s main system storage drive or an alternate storage drive was used.
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.UpdateDetected

This event sends data about an AppX app that has been updated from the Microsoft Store, including what app needs an update and what version/architecture is required, in order to understand and address problems with apps getting required updates.

The following fields are available:

- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **NumberOfApplicableUpdates**  The number of updates ultimately deemed applicable to the system after the detection process is complete.
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one.
- **ServiceGuid**  An ID that represents which service the software distribution client is connecting to (Windows Update, Windows Store, etc.).
- **WUDeviceID**  The unique device ID controlled by the software distribution client.


## System Resource Usage Monitor events

### Microsoft.Windows.Srum.Sdp.CpuUsage

This event provides information on CPU usage.

The following fields are available:

- **UsageMax**  The maximum of hourly average CPU usage.
- **UsageMean**  The mean of hourly average CPU usage.
- **UsageMedian**  The median of hourly average CPU usage.
- **UsageTwoHourMaxMean**  The mean of the maximum of every two hour of hourly average CPU usage.
- **UsageTwoHourMedianMean**  The mean of the median of every two hour of hourly average CPU usage.


### Microsoft.Windows.Srum.Sdp.NetworkUsage

This event provides information on network usage.

The following fields are available:

- **AdapterGuid**  The unique ID of the adapter.
- **BytesTotalMax**  The maximum of the hourly average bytes total.
- **BytesTotalMean**  The mean of the hourly average bytes total.
- **BytesTotalMedian**  The median of the hourly average bytes total.
- **BytesTotalTwoHourMaxMean**  The mean of the maximum of every two hours of hourly average bytes total.
- **BytesTotalTwoHourMedianMean**  The mean of the median of every two hour of hourly average bytes total.
- **LinkSpeed**  The adapter link speed.


## Update events

### Update360Telemetry.Revert

This event sends data relating to the Revert phase of updating Windows.

The following fields are available:

- **ErrorCode**  The error code returned for the Revert phase.
- **FlightId**  Unique ID for the flight (test instance version).
- **ObjectId**  The unique value for each Update Agent mode.
- **RebootRequired**  Indicates reboot is required.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **Result**  The HResult of the event.
- **RevertResult**  The result code returned for the Revert operation.
- **ScenarioId**  The ID of the update scenario.
- **SessionId**  The ID of the update attempt.
- **UpdateId**  The ID of the update.


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
- **PackageCategoriesSkipped**  Indicates package categories that were skipped, if applicable.
- **PackageCountOptional**  Number of optional packages requested.
- **PackageCountRequired**  Number of required packages requested.
- **PackageCountTotal**  Total number of packages needed.
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
- **UpdateId**  Unique ID for each update.


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


### Update360Telemetry.UpdateAgentFellBackToCanonical

This event collects information when express could not be used and we fall back to canonical during the new Unified Update Platform (UUP) update scenario, which is leveraged by both Mobile and Desktop.

The following fields are available:

- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique value for each Update Agent mode.
- **PackageCount**  Number of packages that feel back to canonical.
- **PackageList**  PackageIds which fell back to canonical.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each update attempt.
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
- **ExtensionName**  Indicates whether the payload is related to Operating System content or a plugin.
- **FlightId**  Unique value for each Update Agent mode (same concept as InstanceId for Setup360).
- **InternalFailureResult**  Indicates a non-fatal error from a plugin.
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
- **MergeId**  The unique ID to join two update sessions being merged.
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  Related correlation vector value.
- **Result**  Outcome of the merge phase of the update.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each attempt.
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

The following fields are available:

- **Count**  The count of applicable OneSettings for the device.
- **FlightId**  Unique ID for the flight (test instance version).
- **ObjectId**  The unique value for each Update Agent mode.
- **Parameters**  The set of name value pair parameters sent to OneSettings to determine if there are any applicable OneSettings.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **Result**  The HResult of the event.
- **ScenarioId**  The ID of the update scenario.
- **SessionId**  The ID of the update attempt.
- **UpdateId**  The ID of the update.
- **Values**  The values sent back to the device, if applicable.


### Update360Telemetry.UpdateAgentPostRebootResult

This event collects information for both Mobile and Desktop regarding the post reboot phase of the new Unified Update Platform (UUP) update scenario.

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

This event sends information indicating that a request has been sent to suspend an update.

The following fields are available:

- **ErrorCode**  The error code returned for the current reboot.
- **FlightId**  Unique ID for the flight (test instance version).
- **ObjectId**  The unique value for each Update Agent mode.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **Result**  The HResult of the event.
- **ScenarioId**  The ID of the update scenario.
- **SessionId**  The ID of the update attempt.
- **UpdateId**  The ID of the update.


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

The following fields are available:

- **DownloadSize**  Download size of payload.
- **ElapsedTime**  Time taken to download payload.
- **MediaFallbackUsed**  Used to determine if we used Media CompDBs to figure out package requirements for the upgrade.
- **ResultCode**  Result returned by the Facilitator DCAT call.
- **Scenario**  Dynamic update scenario (Image DU, or Setup DU).
- **Type**  Type of package that was downloaded.


### FacilitatorTelemetry.InitializeDU

This event determines whether devices received additional or critical supplemental content during an OS upgrade.

The following fields are available:

- **DCATUrl**  The Delivery Catalog (DCAT) URL we send the request to.
- **DownloadRequestAttributes**  The attributes we send to DCAT.
- **ResultCode**  The result returned from the initiation of Facilitator with the URL/attributes.
- **Scenario**  Dynamic Update scenario (Image DU, or Setup DU).
- **Url**  The Delivery Catalog (DCAT) URL we send the request to.
- **Version**  Version of Facilitator.


### Setup360Telemetry.Downlevel

This event sends data indicating that the device has started the downlevel phase of the upgrade, to help keep Windows up-to-date and secure.

The following fields are available:

- **ClientId**  If using Windows Update, this will be the Windows Update client ID that is passed to Setup. In Media setup, the default value is Media360, but it can be overwritten by the caller to a unique value.
- **FlightData**  Unique value that identifies the flight.
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
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


### Setup360Telemetry.OsUninstall

This event sends data regarding OS updates and upgrades from Windows 7, Windows 8, and Windows 10. Specifically, it indicates the outcome of an OS uninstall.

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
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  Exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled
- **TestId**  ID that uniquely identifies a group of events.
- **WuId**  Windows Update client ID.


### Setup360Telemetry.PostRebootInstall

This event sends data indicating that the device has invoked the post reboot install phase of the upgrade, to help keep Windows up-to-date.

The following fields are available:

- **ClientId**  With Windows Update, this is the Windows Update client ID that is passed to Setup. In Media setup, the default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightData**  Unique value that identifies the flight.
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
- **FlightData**  Unique value that identifies the flight.
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
- **FlightData**  In the WU scenario, this will be the WU client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
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
- **FlightData**  Unique value that identifies the flight.
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

The following fields are available:

- **FlightData**  Specifies a unique identifier for each group of Windows Insider builds.
- **InstanceId**  Retrieves a unique identifier for each instance of a setup session.
- **Operation**  Facilitator's last known operation (scan, download, etc.).
- **ReportId**  ID for tying together events stream side.
- **ResultCode**  Result returned by Setup for the entire operation.
- **Scenario**  Dynamic Update scenario (Image DU, or Setup DU).
- **ScenarioId**  Identifies the update scenario.
- **TargetBranch**  Branch of the target OS.
- **TargetBuild**  Build of the target OS.


### Setup360Telemetry.Setup360MitigationResult

This event sends data indicating the result of each setup mitigation.

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

This event sends a summary of all the setup mitigations available for this update.

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

This event collects information regarding the post reboot phase of the new UUP (Unified Update Platform) update scenario; which is leveraged by both Mobile and Desktop.

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
- **FlightData**  Unique value that identifies the flight.
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


## Windows as a Service diagnostic events

### Microsoft.Windows.WaaSMedic.SummaryEvent

Result of the WaaSMedic operation.

The following fields are available:

- **callerApplication**  The name of the calling application.
- **detectionSummary**  Result of each applicable detection that was run.
- **featureAssessmentImpact**  WaaS Assessment impact for feature updates.
- **hrEngineResult**  Error code from the engine operation.
- **isInteractiveMode**  The user started a run of WaaSMedic.
- **isManaged**  Device is managed for updates.
- **isWUConnected**  Device is connected to Windows Update.
- **noMoreActions**  No more applicable diagnostics.
- **qualityAssessmentImpact**  WaaS Assessment impact for quality updates.
- **remediationSummary**  Result of each operation performed on a device to fix an invalid state or configuration that's preventing the device from getting updates. For example, if Windows Update service is turned off, the fix is to turn the it back on.
- **usingBackupFeatureAssessment**  Relying on backup feature assessment.
- **usingBackupQualityAssessment**  Relying on backup quality assessment.
- **usingCachedFeatureAssessment**  WaaS Medic run did not get OS build age from the network on the previous run.
- **usingCachedQualityAssessment**  WaaS Medic run did not get OS revision age from the network on the previous run.
- **versionString**  Version of the WaaSMedic engine.
- **waasMedicRunMode**  Indicates whether this was a background regular run of the medic or whether it was triggered by a user launching Windows Update Troubleshooter.


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


## Windows Update Delivery Optimization events

### Microsoft.OSG.DU.DeliveryOptClient.FailureCdnCommunication

This event represents a failure to download from a CDN with Delivery Optimization. It's used to understand and address problems regarding downloads.

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

This event collects information regarding the final commit phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages.

The following fields are available:

- **errorCode**  The error code returned for the current session initialization.
- **flightId**  The unique identifier for each flight.
- **objectId**  The unique GUID for each diagnostics session.
- **relatedCV**  A correlation vector value generated from the latest USO scan.
- **result**  Outcome of the initialization of the session.
- **scenarioId**  Identifies the Update scenario.
- **sessionId**  The unique value for each update session.
- **updateId**  The unique identifier for each Update.


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentDownloadRequest

This event collects information regarding the download request phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages.

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

This event sends data for initializing a new update session for the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages.

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

This event collects information regarding the install phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages.

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

This event sends data for the start of each mode during the process of updating device manifest assets via the UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages.

The following fields are available:

- **flightId**  The unique identifier for each flight.
- **mode**  The mode that is starting.
- **objectId**  The unique value for each diagnostics session.
- **relatedCV**  Correlation vector value generated from the latest USO scan.
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate.
- **sessionId**  Unique value for each Update Agent mode attempt.
- **updateId**  Unique identifier for each update.


### Microsoft.Windows.Update.NotificationUx.DialogNotificationToBeDisplayed

This event indicates that a notification dialog box is about to be displayed to user.

The following fields are available:

- **AcceptAutoModeLimit**  The maximum number of days for a device to automatically enter Auto Reboot mode.
- **AutoToAutoFailedLimit**  The maximum number of days for Auto Reboot mode to fail before the RebootFailed dialog box is shown.
- **DaysSinceRebootRequired**  Number of days since restart was required.
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
- **UtcTime**  The time the dialog box notification will be displayed, in Coordinated Universal Time.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootFirstReminderDialog

This event indicates that the Enhanced Engaged restart "first reminder" dialog box was displayed..

The following fields are available:

- **DeviceLocalTime**  The local time on the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that user chose in this dialog box.
- **UtcTime**  The time that the dialog box was displayed, in Coordinated Universal Time.


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
- **UtcTime**  The time that the dialog box was displayed, in Coordinated Universal Time.


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
- **UtcTime**  The time that dialog box was displayed, in Coordinated Universal Time.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootReminderDialog

This event returns information relating to the Enhanced Engaged reboot reminder dialog that was displayed.

The following fields are available:

- **DeviceLocalTime**  The time at which the reboot reminder dialog was shown (based on the local device time settings).
- **ETag**  The OneSettings versioning value.
- **ExitCode**  Indicates how users exited the reboot reminder dialog box.
- **RebootVersion**  The version of the DTE (Direct-to-Engaged).
- **UpdateId**  The ID of the update that is waiting for reboot to finish installation.
- **UpdateRevision**  The revision of the update that is waiting for reboot to finish installation.
- **UserResponseString**  The option chosen by the user on the reboot dialog box.
- **UtcTime**  The time at which the reboot reminder dialog was shown (in UTC).


### Microsoft.Windows.Update.Orchestrator.ActivityRestrictedByActiveHoursPolicy

This event indicates a policy is present that may restrict update activity to outside of active hours.

The following fields are available:

- **activeHoursEnd**  The end of the active hours window.
- **activeHoursStart**  The start of the active hours window.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.BlockedByBatteryLevel

This event indicates that Windows Update activity was blocked due to low battery level.

The following fields are available:

- **batteryLevel**  The current battery charge capacity.
- **batteryLevelThreshold**  The battery capacity threshold to stop update activity.
- **updatePhase**  The current state of the update process.
- **wuDeviceid**  Device ID.


### Microsoft.Windows.Update.Orchestrator.DisplayNeeded

This event indicates the reboot was postponed due to needing a display.

The following fields are available:

- **displayNeededReason**  Reason the display is needed.
- **eventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **rebootOutsideOfActiveHours**  Indicates whether the reboot was to occur outside of active hours.
- **revisionNumber**  Revision number of the update.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated.
- **wuDeviceid**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue


### Microsoft.Windows.Update.Orchestrator.DTUCompletedWhenWuFlightPendingCommit

This event indicates that DTU completed installation of the electronic software delivery (ESD), when Windows Update was already in Pending Commit phase of the feature update.

The following fields are available:

- **wuDeviceid**  Device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.DTUEnabled

This event indicates that Inbox DTU functionality was enabled.

The following fields are available:

- **wuDeviceid**  Device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.DTUInitiated

This event indicates that Inbox DTU functionality was intiated.

The following fields are available:

- **dtuErrorCode**  Return code from creating the DTU Com Server.
- **isDtuApplicable**  Determination of whether DTU is applicable to the machine it is running on.
- **wuDeviceid**  Device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.FailedToAddTimeTriggerToScanTask

This event indicated that USO failed to add a trigger time to a task.

The following fields are available:

- **errorCode**  The Windows Update error code.
- **wuDeviceid**  The Windows Update device ID.


### Microsoft.Windows.Update.Orchestrator.FlightInapplicable

This event indicates that the update is no longer applicable to this device.

The following fields are available:

- **EventPublishedTime**  Time when this event was generated.
- **flightID**  The specific ID of the Windows Insider build.
- **revisionNumber**  Update revision number.
- **updateId**  Unique Windows Update ID.
- **updateScenarioType**  Update session type.
- **UpdateStatus**  Last status of update.
- **UUPFallBackConfigured**  Indicates whether UUP fallback is configured.
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
- **flightID**  Unique update ID
- **flightUpdate**  Indicates whether the update is a Windows Insider build.
- **ForcedRebootReminderSet**  A boolean value that indicates if a forced reboot will happen for updates.
- **IgnoreReasonsForRestart**  The reason(s) a Postpone Restart command was ignored.
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

- **availableHistoryMinutes**  The number of minutes available from the local machine activity history.
- **isLowUptimeMachine**  Is the machine considered low uptime or not.
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

- **RebootTaskMissedTimeUTC**  The time when the reboot task was scheduled to run, but did not.
- **RebootTaskNextTimeUTC**  The time when the reboot task was rescheduled for.
- **RebootTaskRestoredTime**  Time at which this reboot task was restored.
- **wuDeviceid**  Device ID for the device on which the reboot is restored.


### Microsoft.Windows.Update.Orchestrator.ScanTriggered

This event indicates that Update Orchestrator has started a scan operation.

The following fields are available:

- **errorCode**  The error code returned for the current scan operation.
- **eventScenario**  Indicates the purpose of sending this event.
- **interactive**  Indicates whether the scan is interactive.
- **isDTUEnabled**  Indicates whether DTU (internal abbreviation for Direct Feature Update) channel is enabled on the client system.
- **isScanPastSla**  Indicates whether the SLA has elapsed for scanning.
- **isScanPastTriggerSla**  Indicates whether the SLA has elapsed for triggering a scan.
- **minutesOverScanSla**  Indicates how many minutes the scan exceeded the scan SLA.
- **minutesOverScanTriggerSla**  Indicates how many minutes the scan exceeded the scan trigger SLA.
- **scanTriggerSource**  Indicates what caused the scan.
- **updateScenarioType**  The update session type.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.StickUpdate

This event is sent when the update service orchestrator (USO) indicates the update cannot be superseded by a newer update.

The following fields are available:

- **updateId**  Identifier associated with the specific piece of content.
- **wuDeviceid**  Unique device ID controlled by the software distribution client.


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


### Microsoft.Windows.Update.Orchestrator.TerminatedByActiveHours

This event indicates that update activity was stopped due to active hours starting.

The following fields are available:

- **activeHoursEnd**  The end of the active hours window.
- **activeHoursStart**  The start of the active hours window.
- **updatePhase**  The current state of the update process.
- **wuDeviceid**  The device identifier.


### Microsoft.Windows.Update.Orchestrator.TerminatedByBatteryLevel

This event is sent when update activity was stopped due to a low battery level.

The following fields are available:

- **batteryLevel**  The current battery charge capacity.
- **batteryLevelThreshold**  The battery capacity threshold to stop update activity.
- **updatePhase**  The current state of the update process.
- **wuDeviceid**  The device identifier.


### Microsoft.Windows.Update.Orchestrator.UnstickUpdate

This event is sent when the update service orchestrator (USO) indicates that the update can be superseded by a newer update.

The following fields are available:

- **updateId**  Identifier associated with the specific piece of content.
- **wuDeviceid**  Unique device ID controlled by the software distribution client.


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

This event sends basic information about scheduling an update-related reboot, to get security updates and to help keep Windows up-to-date.

The following fields are available:

- **activeHoursApplicable**  Indicates whether Active Hours applies on this device.
- **IsEnhancedEngagedReboot**  Indicates whether Enhanced reboot was enabled.
- **rebootArgument**  Argument for the reboot task. It also represents specific reboot related action.
- **rebootOutsideOfActiveHours**  True, if a reboot is scheduled outside of active hours. False, otherwise.
- **rebootScheduledByUser**  True, if a reboot is scheduled by user. False, if a reboot is scheduled automatically.
- **rebootState**  Current state of the reboot.
- **rebootUsingSmartScheduler**  Indicates that the reboot is scheduled by SmartScheduler.
- **revisionNumber**  Revision number of the OS.
- **scheduledRebootTime**  Time scheduled for the reboot.
- **scheduledRebootTimeInUTC**  Time scheduled for the reboot, in UTC.
- **updateId**  Identifies which update is being scheduled.
- **wuDeviceid**  Unique DeviceID


### Microsoft.Windows.Update.Ux.MusNotification.UxBrokerScheduledTask

This event is sent when MUSE broker schedules a task.

The following fields are available:

- **TaskArgument**  The arguments with which the task is scheduled.
- **TaskName**  Name of the task.


### Microsoft.Windows.Update.Ux.MusUpdateSettings.RebootScheduled

This event sends basic information for scheduling a device restart to install security updates. It's used to help keep Windows up to date.

The following fields are available:

- **activeHoursApplicable**  Is the restart respecting Active Hours?
- **IsEnhancedEngagedReboot**  TRUE if the reboot path is Enhanced Engaged. Otherwise, FALSE.
- **rebootArgument**  The arguments that are passed to the OS for the restarted.
- **rebootOutsideOfActiveHours**  Was the restart scheduled outside of Active Hours?
- **rebootScheduledByUser**  Was the restart scheduled by the user? If the value is false, the restart was scheduled by the device.
- **rebootState**  The state of the restart.
- **rebootUsingSmartScheduler**  TRUE if the reboot should be performed by the Smart Scheduler. Otherwise, FALSE.
- **revisionNumber**  The revision number of the OS being updated.
- **scheduledRebootTime**  Time of the scheduled reboot
- **scheduledRebootTimeInUTC**  Time of the scheduled restart, in Coordinated Universal Time.
- **updateId**  The Windows Update device GUID.
- **wuDeviceid**  The Windows Update device GUID.


## Windows Update mitigation events

### Mitigation360Telemetry.MitigationCustom.CleanupSafeOsImages

This event sends data specific to the CleanupSafeOsImages mitigation used for OS Updates.

The following fields are available:

- **ClientId**  Unique identifier for each flight.
- **FlightId**  Unique GUID that identifies each instances of setuphost.exe.
- **InstanceId**  The update scenario in which the mitigation was executed.
- **MitigationScenario**  Number of mounted images.
- **MountedImageCount**  Number of mounted images that were under %systemdrive%\$Windows.~BT.
- **MountedImageMatches**  Number of mounted images under %systemdrive%\$Windows.~BT that could not be removed.
- **MountedImagesFailed**  Number of mounted images under %systemdrive%\$Windows.~BT that were successfully removed.
- **MountedImagesRemoved**  Number of mounted images that were not under %systemdrive%\$Windows.~BT.
- **MountedImagesSkipped**  Correlation vector value generated from the latest USO scan.
- **RelatedCV**  HResult of this operation.
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
- **InstanceId**  Unique GUID that identifies each instances of setuphost.exe.
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



