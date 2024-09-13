---
description: Learn more about the diagnostic data gathered for Windows 11, version 24H2.
title: Required diagnostic events and fields for Windows 11, version 24H2
keywords: privacy, telemetry
ms.service: windows-client
ms.subservice: itpro-privacy
ms.localizationpriority: high
author: DHB-MSFT
ms.author: danbrown
manager: laurawi
ms.date: 10/01/2024
ms.topic: reference
ms.collection: privacy-windows
---

# Required diagnostic events and fields for Windows 11, version 24H2

**Applies to**

- Windows 11, version 24H2

Required diagnostic data gathers a limited set of information that is critical for understanding the device and its configuration including: basic device information, quality-related information, app compatibility, and Microsoft Store.

Required diagnostic data helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. This helps Microsoft fix operating system or app problems.

Use this article to learn about diagnostic events, grouped by event area, and the fields within each event. A brief description is provided for each field. Every event generated includes common data, which collects device data.

You can learn more about Windows functional and diagnostic data through these articles:

- [Required diagnostic events and fields for Windows 11, versions 23H2 and 22H2](required-diagnostic-events-fields-windows-11-22H2.md)
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
- **DatasourceApplicationFile_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_NI22H2**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_NI22H2Setup**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS1**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_ZN23H2**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFileBackup**  The count of the number of this particular object type present on this device.
- **DatasourceBackupApplicationRestore**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_20H1Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_CO21H2Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_NI22H2**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_NI22H2Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS1**  The total DataSourceDevicePnp objects targeting Windows 10 version 1607 on this device.
- **DatasourceDevicePnp_ZN23H2**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_20H1Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_CO21H2Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_NI22H2**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_NI22H2Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS1**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_ZN23H2**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_CO21H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_NI22H2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_NI22H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_ZN23H2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_CO21H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_NI22H2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_NI22H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_ZN23H2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_CO21H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_NI22H2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_NI22H2Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_ZN23H2**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_20H1Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_CO21H2Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_NI22H2**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_NI22H2Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS1**  The total DatasourceSystemBios objects targeting Windows 10 version 1607 present on this device.
- **DatasourceSystemBios_ZN23H2**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS1**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS1**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS1**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS1**  The total DecisionMatchingInfoPassive objects targeting Windows 10 version 1607 on this device.
- **DecisionMatchingInfoPassive_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS1**  The total DecisionMatchingInfoPostUpgrade objects targeting Windows 10 version 1607 on this device.
- **DecisionMatchingInfoPostUpgrade_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS1**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSModeState_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSModeState_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSModeState_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionSModeState_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionSModeState_RS1**  The total number of objects of this type present on this device.
- **DecisionSModeState_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionSModeState_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionSModeState_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS1**  The total number of objects of this type present on this device.
- **DecisionSystemBios_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemDiskSize_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemDiskSize_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemDiskSize_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemDiskSize_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemDiskSize_RS1**  The total number of objects of this type present on this device.
- **DecisionSystemDiskSize_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemDiskSize_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionSystemDiskSize_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemMemory_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemMemory_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemMemory_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemMemory_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemMemory_RS1**  The total number of objects of this type present on this device.
- **DecisionSystemMemory_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemMemory_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionSystemMemory_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuCores_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuCores_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuCores_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuCores_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuCores_RS1**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuCores_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuCores_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuCores_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuModel_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuModel_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuModel_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuModel_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuModel_RS1**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorCpuModel_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuModel_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuModel_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemProcessorCpuSpeed_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionSystemProcessorPopCnt**  The count of the number of this particular object type present on this device.
- **DecisionTest_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionTest_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionTest_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionTest_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionTest_RS1**  The total number of objects of this type present on this device.
- **DecisionTest_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionTest_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionTest_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionTpmVersion_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionTpmVersion_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionTpmVersion_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionTpmVersion_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionTpmVersion_RS1**  The total number of objects of this type present on this device.
- **DecisionTpmVersion_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionTpmVersion_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionTpmVersion_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionUefiSecureBoot_CO21H2Setup**  The total number of objects of this type present on this device.
- **DecisionUefiSecureBoot_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **DecisionUefiSecureBoot_NI22H2**  The count of the number of this particular object type present on this device.
- **DecisionUefiSecureBoot_NI22H2Setup**  The total number of objects of this type present on this device.
- **DecisionUefiSecureBoot_RS1**  The total number of objects of this type present on this device.
- **DecisionUefiSecureBoot_ZN23H2**  The count of the number of this particular object type present on this device.
- **DecisionUefiSecureBoot_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **DecisionUefiSecureBoot_ZN23H2Setup**  The count of the number of this particular object type present on this device.
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
- **SystemProcessorPopCnt**  The count of the number of this particular object type present on this device.
- **SystemProcessorPopCnt_NI22H2**  The count of the number of this particular object type present on this device.
- **SystemProcessorPopCnt_RS1**  The count of the number of this particular object type present on this device.
- **SystemProcessorPopCnt_ZN23H2**  The count of the number of this particular object type present on this device.
- **SystemProcessorPopCnt_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **SystemProcessorPopCnt_ZN23H2Setup**  The count of the number of this particular object type present on this device.
- **SystemProcessorPrefetchW**  The total number of objects of this type present on this device.
- **SystemProcessorSse2**  The total number of objects of this type present on this device.
- **SystemTouch**  The count of the number of this particular object type present on this device.
- **SystemWim**  The total number of objects of this type present on this device.
- **SystemWindowsActivationStatus**  The count of the number of this particular object type present on this device.
- **SystemWlan**  The total number of objects of this type present on this device.
- **Wmdrm_CO21H2Setup**  The total number of objects of this type present on this device.
- **Wmdrm_CU23H2Setup**  The count of the number of this particular object type present on this device.
- **Wmdrm_NI22H2**  The count of the number of this particular object type present on this device.
- **Wmdrm_NI22H2Setup**  The total number of objects of this type present on this device.
- **Wmdrm_RS1**  The total number of objects of this type present on this device.
- **Wmdrm_ZN23H2**  The count of the number of this particular object type present on this device.
- **Wmdrm_ZN23H2Exp**  The count of the number of this particular object type present on this device.
- **Wmdrm_ZN23H2Setup**  The count of the number of this particular object type present on this device.


### Microsoft.Windows.Appraiser.General.DatasourceApplicationFileRemove

This event indicates that the DatasourceApplicationFile object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceBackupApplicationRestoreAdd

Represents the basic metadata about the interesting backed up applications to be restored on the system. This event describes whether the backed up applications are incompatible with upcoming Windows Feature updates. Microsoft uses this information to understand and address problems with computers receiving updates.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file that is generating the events.
- **BackupLabel**  Indicates compatibility information about the application found on the backup device.
- **CatalogSource**  The type of application.
- **CreatePlaceholder**  Represents the decision regarding if the application should be restored.
- **Name**  Name of the application.
- **ProgramId**  A hash of the Name, Version, Publisher, and Language of an application used to identify it.
- **SdbEntryGuid**  Indicates the SDB entry that applies to this file.
- **SdbRestoreAction**  Indicates compatibility information about the application found on the backup device.

### Microsoft.Windows.Appraiser.General.DatasourceBackupApplicationRestoreStartSync

This event indicates that a new set of DatasourceBackupApplicationRestoreAdd events will be sent.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser binary generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveRemove

This event indicates that the DataSourceMatchingInfoPassive object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveStartSync

This event indicates that a new set of DataSourceMatchingInfoPassiveAdd events will be sent. This event is used to make compatibility decisions about files to help keep Windows up to date.

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


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPassiveStartSync

This event indicates that a new set of DecisionMatchingInfoPassiveAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.RestoreContext

This event indicates the result of the restore appraisal.

The following fields are available:

- **AppraiserBranch**  The source branch in which the currently-running version of appraiser was built.
- **AppraiserVersion**  The version of the appraiser binary generating the events.
- **Context**  Indicates what mode appraiser is running in, this should be Restore.
- **PCFP**  An ID for the system, calculated by hashing hardware identifiers.
- **Result**  HRESULT indicating the result of the restore appraisal.
- **Time**  The client time of the event.


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


## Census events

### Census.Xbox

This event sends data about the Xbox Console, such as Serial Number and DeviceId, to help keep Windows up to date.

The following fields are available:

- **XboxConsolePreferredLanguage**  Retrieves the preferred language selected by the user on Xbox console.
- **XboxConsoleSerialNumber**  Retrieves the serial number of the Xbox console.
- **XboxLiveDeviceId**  Retrieves the unique device ID of the console.
- **XboxLiveSandboxId**  Retrieves the developer sandbox ID if the device is internal to Microsoft.

## Code Integrity events

### Microsoft.Windows.Security.CodeIntegrity.Driver.AggregatedBlock

AggregatedBlock is an event with non-PII details on drivers blocked by code integrity. Fires no more than once per 25 days per driver.

The following fields are available:

- **CertificateInfo**  Non-PII details about the digital signature(s) and digital countersignatures on driver binary files which was blocked from loading.
- **DriverInfo**  Non-PII details about the driver binary file and its digital signature(s) and digital countersignature.
- **EventVersion**  The version of the schema used in the DriverInfo field.


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.AutoEnablementIsBlocked

Indicates if OEM attempted to block autoenablement via regkey.

The following fields are available:

- **BlockHvciAutoenablement**  True if auto-enablement was successfully blocked, false otherwise.
- **BlockRequested**  Whether an autoenablement block was requested.
- **Scenario**  Used to differentiate VBS and HVCI paths.


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.Compatibility

Fires when the compatibility check completes. Gives the results from the check.

The following fields are available:

- **IsRecommended**  Denotes whether all compatibility checks have passed and, if so, returns true. Otherwise returns false.
- **Issues**  If compatibility checks failed, provides bit indexed indicators of issues detected. Table located here: [Check results of HVCI default enablement](/windows-hardware/design/device-experiences/oem-hvci-enablement#check-results-of-memory-integrity-default-enablement)
- **Scenario**  Denotes whether SysPrep is attempting to enable HVCI (0) or VBS (1).


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.Enabled

Fires when auto-enablement is successful and HVCI is being enabled on the device.

The following fields are available:

- **Error**  Error code if there was an issue during enablement
- **Scenario**  Indicates whether enablement was for VBS vs HVCI
- **SuccessfullyEnabled**  Indicates whether enablement was successful
- **Upgrade**  Indicates whether the event was fired during upgrade (rather than clean install)


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.HVCIActivity

Fires at the beginning and end of the HVCI auto-enablement process in sysprep.

The following fields are available:

- **wilActivity**  Contains the thread ID used to match the begin and end events, and for the end event also a HResult indicating success or failure.


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.HvciAlreadyEnabled

Fires when HVCI is already enabled so no need to continue auto-enablement.



### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.HvciScanGetResultFailed

Fires when driver scanning fails to get results.



### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.HvciScanningDriverInSdbError

Fires when there's an error checking the SDB for a particular driver.

The following fields are available:

- **DriverPath**  Path to the driver that was being checked in the SDB when checking encountered an error.
- **Error**  Error encountered during checking the SDB.


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.HvciScanningDriverNonCompliantError

Fires when a driver is discovered that is non-compliant with HVCI.

The following fields are available:

- **DriverPath**  Path to driver.
- **NonComplianceMask**  Error code indicating driver violation.


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.IsRegionDisabledLanguage

Fires when an incompatible language pack is detected.

The following fields are available:

- **Language**  String containing the incompatible language pack detected.


### Microsoft.Windows.Security.CodeIntegrity.HVCISysprep.KcetHvciDisabled

This event indicates that kernel-mode Control-flow Enforcement Technology (CET), which is a CPU-based security feature that protects against return address hijacking attacks from malicious software, was unable to be enabled because HVCI (a dependent security feature) wasn't also enabled.


### Microsoft.Windows.Security.CodeIntegrity.State.DefenderSwitchedNWOff

This event tracks when Defender turns off Smart App Control via the Cloud.


### Microsoft.Windows.Security.CodeIntegrity.State.DefenderSwitchedNWOffIgnored

This event indicates that a request to switch Smart App Control off by Defender from the cloud was ignored as the device was still within the grace period after OOBE.

The following fields are available:

- **Count**  Count of events in the aggregation window.
- **CurrentTimeMax**  Time of latest event.
- **CurrentTimeMin**  Time of first event.
- **NightsWatchDesktopIgnoreAutoOptOut**  Value of NightsWatchDesktopIgnoreAutoOptOut in registry.
- **OOBECompleteTime**  Value of OOBECompleteTime in registry.
- **OOBESafetyTime**  Start of timer set by Smart App Control if OOBECompleteTime wasn't set.


### Microsoft.Windows.Security.CodeIntegrity.State.SwitchedNWOff

This event tracks when Smart App Control is turned off.


### Microsoft.Windows.Security.CodeIntegrity.State.SwitchedNWToEnforcementMode

This event tracks when Smart App Control is changed from evaluation to enforcement mode.



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
- 

## Component-based servicing events

### CbsServicingProvider.CbsCapabilityEnumeration

This event reports on the results of scanning for optional Windows content on Windows Update to keep Windows up to date.

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


### CbsServicingProvider.CbsCapabilitySessionPended

This event provides information about the results of installing optional Windows content that requires a reboot to keep Windows up to date.

The following fields are available:

- **clientId**  The name of the application requesting the optional content.
- **pendingDecision**  Indicates the cause of reboot, if applicable.


### CbsServicingProvider.CbsFodInventory

This event reports on the state of the current optional Windows content obtained from Windows Update.

The following fields are available:

- **capabilities**  A bitmask with each position indicating if each type of optional Windows content is currently enabled.
- **initiatedOffline**  A true or false value indicating if the inventory describes an offline WIM file.
- **stackBuild**  The build number of the servicing stack.
- **stackMajorVersion**  The major version number of the servicing stack.
- **stackMinorVersion**  The minor version number of the servicing stack.
- **stackRevision**  The revision number of the servicing stack.

### CbsServicingProvider.CbsLateAcquisition

This event sends data to indicate if some Operating System packages couldn't be updated as part of an upgrade, to help keep Windows up to date.

The following fields are available:

- **Features**  The list of feature packages that couldn't be updated.
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
- **transactionCanceled**  Indicates whether the uninstall was canceled.


### CbsServicingProvider.CbsPostponedReserveInstallDecision

This event reports on the scheduling of installs for Windows cumulative security updates.

The following fields are available:

- **hardReserveSize**  The size of the disk space reserve used to update Windows OS content.
- **hardReserveUsedSpace**  The disk space currently in use in the reserve used to update Windows OS content.
- **postponed**  A boolean indicating if updating processing has been delayed to shutdown due to low disk space.
- **userFreeSpace**  The amount of free disk space available on the OS volume.
- **usingReserves**  A boolean indicating whether disk space reserves are being used to install the update.


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


### CbsServicingProvider.CbsUpdateDeferred

This event reports the results of deferring Windows Content to keep Windows up to date.



## Deployment events

### Microsoft.Windows.Deployment.Imaging.AppExit

This event is sent on imaging application exit. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **hr**  HResult returned from app exit.
- **totalTimeInMs**  Total time taken in Ms.


### Microsoft.Windows.Deployment.Imaging.AppInvoked

This event is sent when the app for image creation is invoked. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **branch**  Corresponding branch for the image.
- **isInDbg**  Whether the app is in debug mode or not.
- **isWSK**  Whether the app is building images using WSK or not.


## DISM events

### Microsoft.Windows.StartRepairCore.DISMPendingInstall

The DISM Pending Install event sends information to report pending package installation found. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **dismPendingInstallPackageName**  The name of the pending package.


### Microsoft.Windows.StartRepairCore.DISMRevertPendingActions

The DISM Pending Install event sends information to report pending package installation found. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **errorCode**  The result code returned by the event.


### Microsoft.Windows.StartRepairCore.SRTRepairActionEnd

The SRT Repair Action End event sends information to report repair operation ended for given plug-in. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **errorCode**  The result code returned by the event.
- **failedUninstallCount**  The number of driver updates that failed to uninstall.
- **failedUninstallFlightIds**  The Flight IDs (identifiers of beta releases) of driver updates that failed to uninstall.
- **foundDriverUpdateCount**  The number of found driver updates.
- **srtRepairAction**  The scenario name for a repair.
- **successfulUninstallCount**  The number of successfully uninstalled driver updates.
- **successfulUninstallFlightIds**  The Flight IDs (identifiers of beta releases) of successfully uninstalled driver updates.


### Microsoft.Windows.StartRepairCore.SRTRepairActionStart

The SRT Repair Action Start event sends information to report repair operation started for given plug-in. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **srtRepairAction**  The scenario name for a repair.


### Microsoft.Windows.StartRepairCore.SRTRootCauseDiagEnd

The SRT Root Cause Diagnosis End event sends information to report diagnosis operation completed for given plug-in. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **errorCode**  The result code returned by the event.
- **flightIds**  The Flight IDs (identifier of the beta release) of found driver updates.
- **foundDriverUpdateCount**  The number of found driver updates.
- **srtRootCauseDiag**  The scenario name for a diagnosis event.


### Microsoft.Windows.StartRepairCore.SRTRootCauseDiagStart

The SRT Root Cause Diagnosis Start event sends information to report diagnosis operation started for given plug-in. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **srtRootCauseDiag**  The scenario name for a diagnosis event.


## DxgKernelTelemetry events

### DxgKrnlTelemetry.GPUAdapterInventoryV2

This event sends basic GPU and display driver information to keep Windows and display drivers up-to-date.

The following fields are available:

- **AdapterTypeValue**  The numeric value indicating the type of Graphics adapter.
- **aiSeqId**  The event sequence ID.
- **bootId**  The system boot ID.
- **BrightnessVersionViaDDI**  The version of the Display Brightness Interface.
- **ComputePreemptionLevel**  The maximum preemption level supported by GPU for compute payload.
- **DDIInterfaceVersion**  The device driver interface version.
- **DedicatedSystemMemoryB**  The amount of system memory dedicated for GPU use (in bytes).
- **DedicatedVideoMemoryB**  The amount of dedicated VRAM of the GPU (in bytes).
- **Display1UMDFilePath**  The file path to the location of the Display User Mode Driver in the Driver Store.
- **DisplayAdapterLuid**  The display adapter LUID.
- **DriverDate**  The date of the display driver.
- **DriverRank**  The rank of the display driver.
- **DriverVersion**  The display driver version.
- **DriverWorkarounds**  Numeric value indicating the driver workarounds that are enabled for this device.
- **DX10UMDFilePath**  The file path to the location of the DirectX 10 Display User Mode Driver in the Driver Store.
- **DX11UMDFilePath**  The file path to the location of the DirectX 11 Display User Mode Driver in the Driver Store.
- **DX12UMDFilePath**  The file path to the location of the DirectX 12 Display User Mode Driver in the Driver Store.
- **DX9UMDFilePath**  The file path to the location of the DirectX 9 Display User Mode Driver in the Driver Store.
- **DxDbCurrentVersion**  Version of the DirectX Database on the device.
- **DxDbVersionCheckStatus**  Numeric value indicating the result of the last check on the DirectX Database version for the device.
- **GPUDeviceID**  The GPU device ID.
- **GPUPreemptionLevel**  The maximum preemption level supported by GPU for graphics payload.
- **GPURevisionID**  The GPU revision ID.
- **GPUVendorID**  The GPU vendor ID.
- **HwFlipQueueSupportState**  Numeric value indicating the adapter's support for hardware flip queues.
- **HwSchSupportState**  Numeric value indicating the adapter's support for hardware scheduling.
- **IddPairedRenderAdapterLuid**  Identifier for the render adapter paired with this display adapter.
- **InterfaceFuncPointersProvided1**  Number of device driver interface function pointers provided.
- **InterfaceFuncPointersProvided2**  Number of device driver interface function pointers provided.
- **InterfaceFuncPointersProvided3**  Number of device driver interface function pointers provided.
- **InterfaceId**  The GPU interface ID.
- **IsCrossAdapterScanOutSupported**  Boolean value indicating whether the adapter supports cross-adapter scanout optimization.
- **IsDisplayDevice**  Does the GPU have displaying capabilities?
- **IsHwFlipQueueEnabled**  Boolean value indicating whether hardware flip queues are enabled.
- **IsHwSchEnabled**  Boolean value indicating whether hardware scheduling is enabled.
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
- **IsVirtualRefreshRateSupported**  Boolean value indicating whether the adapter supports virtual refresh rates.
- **KMDFilePath**  The file path to the location of the Display Kernel Mode Driver in the Driver Store.
- **MdmSupportStatus**  Numeric value indicating support for Microsoft Display Mux.
- **MeasureEnabled**  Is the device listening to MICROSOFT_KEYWORD_MEASURES?
- **NodeTypes** Types of execution nodes comprising the graphics adapter.
- **NumExecutionNodes**  Number of execution nodes comprising the graphics adapter.
- **NumNonVidPnTargets**  Number of display targets.
- **NumPhysicalAdapters** Number of physical graphics adapters.
- **NumVidPnSources**  The number of supported display output sources.
- **NumVidPnTargets**  The number of supported display output targets.
- **SharedSystemMemoryB**  The amount of system memory shared by GPU and CPU (in bytes).
- **SubSystemID**  The subsystem ID.
- **SubVendorID**  The GPU sub vendor ID.
- **TelemetryEnabled**  Is the device listening to MICROSOFT_KEYWORD_TELEMETRY?
- **TelInvEvntTrigger**  What triggered this event to be logged?  Example: 0 (GPU enumeration) or 1 (DxgKrnlTelemetry provider toggling)
- **version**  The event version.
- **WDDMVersion**  The Windows Display Driver Model version.


### DxgKrnlTelemetry.GPUStartAdapter

This event records information about an attempt to start a graphics adapter.

The following fields are available:

- **DDIInterfaceVersion**  Version of the display driver interface (DDI).
- **DriverDate**  Date of the display driver.
- **DriverRank**  Rank for the display driver.
- **DriverVersion**  Version of the display driver.
- **FailureReason**  Numeric value indicating the stage in which the startup attempt failed.
- **GPUDeviceID**  Device identifier for the graphics adapter.
- **GPURevisionID**  Revision identifier for the graphics adapter.
- **GPUVendorID**  Vendor identifier for the graphics adapter.
- **IsSoftwareDevice**  Boolean value indicating whether the graphics adapter is implemented in software only.
- **StartAdapterFailedSequenceId**  Numeric value indicating the graphics adapter startup attempt count.
- **Status**  Numeric value indicating the status of the graphics adapter startup attempt.
- **SubSystemID**  Subsystem identifier for the graphics adapter.
- **SubVendorID**  Subsystem vendor identifier for the graphics identifier.
- **version**  Version of the schema for the event.


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
- **drainOnShutdown**  Specifies whether a node should be drained when it's shut down.
- **dynamicQuorumEnabled**  Specifies whether dynamic Quorum has been enabled.
- **enforcedAntiAffinity**  The cluster parameter: enforced anti affinity.
- **genAppNames**  The Win32 service name of a clustered service.
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
- **rdmaConnectionsForStorage**  This specifies the rdma connections for storage.
- **resiliencyLevel**  Specifies the level of resiliency.
- **resourceCounts**  Specifies the number of resources.
- **resourceTypeCounts**  Specifies the number of resource types in the cluster.
- **resourceTypes**  Data representative of each resource type.
- **resourceTypesPath**  Data representative of the DLL path for each resource type.
- **sameSubnetDelay**  The cluster parameter: same subnet delay.
- **sameSubnetThreshold**  The cluster parameter: same subnet threshold.
- **secondsInMixedMode**  The amount of time (in seconds) that the cluster has been in mixed mode (nodes with different operating system versions in the same cluster).
- **securityLevel**  The cluster parameter: security level.
- **securityLevelForStorage**  The cluster parameter: security level for storage.
- **sharedVolumeBlockCacheSize**  Specifies the block cache size for shared for shared volumes.
- **shutdownTimeoutMinutes**  Specifies the amount of time it takes to time out when shutting down.
- **upNodeCount**  Specifies the number of nodes that are up (online).
- **useClientAccessNetworksForCsv**  The cluster parameter: use client access networks for CSV.
- **useRdmaForStorage**  The cluster parameter to use rdma for storage.
- **vmIsolationTime**  The cluster parameter: VM isolation time.
- **witnessDatabaseWriteTimeout**  Specifies the timeout period for writing to the quorum witness database.


## Fault Reporting events

### Microsoft.Windows.FaultReporting.AppCrashEvent

This event sends data about crashes for both native and managed applications, to help keep Windows up to date. The data includes information about the crashing process and a summary of its exception record. It doesn't contain any Watson bucketing information. The bucketing information is recorded in a Windows Error Reporting (WER) event that is generated when the WER client reports the crash to the Watson service, and the WER event will contain the same ReportID (see field 14 of crash event, field 19 of WER event) as the crash event for the crash being reported. AppCrash is emitted once for each crash handled by WER (for example, from an unhandled exception or FailFast or ReportException). Note that Generic Watson event types (for example, from PLM) that may be considered crashes\" by a user DO NOT emit this event.

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
- **ModName**  Exception module name (for example, bar.dll).
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

- **flightId**  Flight ID.
- **state**  New state.


### Microsoft.Windows.FeatureQuality.Status

This event indicates the feature status. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **featureId**  Feature ID.
- **flightId**  Flight ID.
- **time**  Time of status change.
- **variantId**  Variant ID.


## Feature update events

### Microsoft.Windows.Upgrade.Uninstall.UninstallFailed

This event sends diagnostic data about failures when uninstalling a feature update, to help resolve any issues preventing customers from reverting to a known state. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **failureReason**  Provides data about the uninstall initialization operation failure.
- **hr**  Provides the Win32 error code for the operation failure.


### Microsoft.Windows.Upgrade.Uninstall.UninstallFinalizedAndRebootTriggered

This event indicates that the uninstall was properly configured and that a system reboot was initiated. The data collected with this event is used to help keep Windows up to date and performing properly.



## Hang Reporting events

### Microsoft.Windows.HangReporting.AppHangEvent

This event sends data about hangs for both native and managed applications, to help keep Windows up to date. It doesn't contain any Watson bucketing information. The bucketing information is recorded in a Windows Error Reporting (WER) event that is generated when the WER client reports the hang to the Watson service, and the WER event will contain the same ReportID (see field 13 of hang event, field 19 of WER event) as the hang event for the hang being reported. AppHang is reported only on PC devices. It handles classic Win32 hangs and is emitted only once per report. Some behaviors that may be perceived by a user as a hang are reported by app managers (for example, PLM/RM/EM) as Watson Generics and won't produce AppHang events.

The following fields are available:

- **AppName**  The name of the app that has hung.
- **AppSessionGuid**  GUID made up of process ID used as a correlation vector for process instances in the telemetry backend.
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
- **WaitingOnPackageRelativeAppId**  If this is a cross process hang waiting for a package, this has the relative application ID of the package.


## Holographic events

### Microsoft.Windows.Analog.Spectrum.TelemetryHolographicDeviceAdded

This event indicates Windows Mixed Reality device state. This event is also used to count WMR device. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **ClassGuid**  Windows Mixed Reality device class GUID.
- **DeviceInterfaceId**  Windows Mixed Reality device interface ID.
- **DriverVersion**  Windows Mixed Reality device driver version.
- **FirmwareVersion**  Windows Mixed Reality firmware version.
- **Manufacturer**  Windows Mixed Reality device manufacturer.
- **ModelName**  Windows Mixed Reality device model name.
- **SerialNumber**  Windows Mixed Reality device serial number.


### Microsoft.Windows.Analog.Spectrum.TelemetryHolographicDeviceRemoved

This event indicates Windows Mixed Reality device state. The data collected with this event is used to keep Windows and Windows Mixed Reality performing properly.

The following fields are available:

- **DeviceInterfaceId**  Device Interface ID.


### Microsoft.Windows.Analog.Spectrum.TelemetryHolographicSpaceCreated

This event indicates the state of Windows holographic scene. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **AppSessionGuid**  GUID made up of process ID and is used as a correlation vector for process instances in the telemetry backend.
- **IsForCompositor**  True/False to indicate whether the holographic space is for compositor process.
- **Source**  An enumeration indicating the source of the log.
- **WindowInstanceId**  Unique value for each window instance.


### Microsoft.Windows.Holographic.Coordinator.HoloShellStateUpdated

This event indicates Windows Mixed Reality HoloShell State. This event is also used to count WMR device. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **HmdState**  Windows Mixed Reality Headset HMD state.
- **NewHoloShellState**  Windows Mixed Reality HoloShell state.
- **PriorHoloShellState**  Windows Mixed Reality state prior to entering to HoloShell.
- **SimulationEnabled**  Windows Mixed Reality Simulation state.


### Microsoft.Windows.Shell.HolographicFirstRun.AppActivated

This event indicates Windows Mixed Reality Portal app activation state. This event also used to count WMR device. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **IsDemoMode**  Windows Mixed Reality Portal app state of demo mode.
- **IsDeviceSetupComplete**  Windows Mixed Reality Portal app state of device setup completion.
- **PackageVersion**  Windows Mixed Reality Portal app package version.
- **PreviousExecutionState**  Windows Mixed Reality Portal app prior execution state.
- **wilActivity**  Windows Mixed Reality Portal app wilActivity ID.


### Microsoft.Windows.Shell.HolographicFirstRun.SomethingWentWrong

This event is emitted when something went wrong error occurs. The data collected with this event is used to keep Windows and Windows Mixed Reality performing properly.

The following fields are available:

- **ErrorSource**  Source of error, obsoleted always 0.
- **StartupContext**  Start up state.
- **StatusCode**  Error status code.
- **SubstatusCode**  Error sub status code.


### TraceLoggingHoloLensSensorsProvider.OnDeviceAdd

This event provides Windows Mixed Reality device state with new process that hosts the driver. The data collected with this event is used to keep Windows and Windows Mixed Reality performing properly.

The following fields are available:

- **Process**  Process ID.
- **Thread**  Thread ID.


### TraceLoggingOasisUsbHostApiProvider.DeviceInformation

This event provides Windows Mixed Reality device information. This event is also used to count WMR device and device type. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **BootloaderMajorVer**  Windows Mixed Reality device boot loader major version.
- **BootloaderMinorVer**  Windows Mixed Reality device boot loader minor version.
- **BootloaderRevisionNumber**  Windows Mixed Reality device boot loader revision number.
- **BTHFWMajorVer**  Windows Mixed Reality device BTHFW major version. This event also used to count WMR device.
- **BTHFWMinorVer**  Windows Mixed Reality device BTHFW minor version. This event also used to count WMR device.
- **BTHFWRevisionNumber**  Windows Mixed Reality device BTHFW revision number.
- **CalibrationBlobSize**  Windows Mixed Reality device calibration blob size.
- **CalibrationFwMajorVer**  Windows Mixed Reality device calibration firmware major version.
- **CalibrationFwMinorVer**  Windows Mixed Reality device calibration firmware minor version.
- **CalibrationFwRevNum**  Windows Mixed Reality device calibration firmware revision number.
- **DeviceInfoFlags**  Windows Mixed Reality device info flags.
- **DeviceReleaseNumber**  Windows Mixed Reality device release number.
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

### Microsoft.Windows.Inventory.Core.InventoryApplicationAdd

This event sends basic metadata about an application on the system. The data collected with this event is used to keep Windows performing properly and up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AndroidPackageId**  A unique identifier for an Android app.
- **HiddenArp**  Indicates whether a program hides itself from showing up in ARP.
- **InstallDate**  The date the application was installed (a best guess based on folder creation date heuristics).
- **InstallDateArpLastModified**  The date of the registry ARP key for a given application. Hints at install date but not always accurate. Passed as an array. Example: 4/11/2015  00:00:00
- **InstallDateFromLinkFile**  The estimated date of install based on the links to the files.  Passed as an array.
- **InstallDateMsi**  The install date if the application was installed via Microsoft Installer (MSI). Passed as an array.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Language**  The language code of the program.
- **MsiInstallDate**  The install date recorded in the program's MSI package.
- **MsiPackageCode**  A GUID that describes the MSI Package. Multiple 'Products' (apps) can make up an MsiPackage.
- **MsiProductCode**  A GUID that describe the MSI Product.
- **Name**  The name of the application.
- **OSVersionAtInstallTime**  The four octets from the OS version at the time of the application's install.
- **PackageFullName**  The package full name for a Store application.
- **ProgramInstanceId**  A hash of the file IDs in an app.
- **Publisher**  The Publisher of the application. Location pulled from depends on the 'Source' field.
- **RootDirPath**  The path to the root directory where the program was installed.
- **Source**  How the program was installed (for example, ARP, MSI, Appx).
- **SparkId**  Unique ID that represents a Win32 app installed from the Microsoft Store.
- **StoreAppType**  A sub-classification for the type of Microsoft Store app, such as UWP or Win8StoreApp.
- **Type**  One of ("Application", "Hotfix", "BOE", "Service", "Unknown"). Application indicates Win32 or Appx app, Hotfix indicates app updates (KBs), BOE indicates it's an app with no ARP or MSI entry, Service indicates that it's a service. Application and BOE are the ones most likely seen.
- **Version**  The version number of the program.


### Microsoft.Windows.Inventory.Core.InventoryApplicationKbStartSync

This event represents the basic metadata about an application updates (KBs) installed on the system. This event is used to understand the applications on a machine to determine if there will be compatibility issues when upgrading Windows.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory components.


### Microsoft.Windows.Inventory.Core.InventoryApplicationRemove

This event indicates that a new set of InventoryDevicePnpAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


## Kernel events

### Microsoft.Windows.Kernel.PnP.AggregateSetDevNodeProblem

This event is sent when a new problem code is assigned to a device. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **Count**  The total number of events.
- **DeviceInstanceId**  The unique identifier of the device in the system.
- **LastProblem**  The previous problem code that was set on the device.
- **LastProblemStatus**  The previous NTSTATUS value that was set on the device.
- **Problem**  The new problem code that was set on the device.
- **ProblemStatus**  The new NTSTATUS value that was set on the device.
- **ServiceName**  The driver or service name that is attached to the device.


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
- **WheaBootErrorCount**  Whea boot error information.


### Microsoft.Windows.Kernel.Power.PreviousShutdownWasThermalShutdown

This event sends Product and Service Performance data on which area of the device exceeded safe temperature limits and caused the device to shutdown. This information is used to ensure devices are behaving as they're expected to. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **temperature**  Contains the actual temperature measurement, in tenths of degrees Kelvin, for the area that exceeded the limit.
- **thermalZone**  Contains an identifier that specifies which area it was that exceeded temperature limits.
- **TotalUpTimeMs** Contains the total system up time in milliseconds.


## Microsoft Edge events

### Aria.160f0649efde47b7832f05ed000fc453.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **account_type**  A number representing the type of the signed in user account, where 0 indicates None, 1 indicates Microsoft Account, 2 indicates Azure Active Directory, 3 indicates On-Prem Active Directory and 4 indicates Azure Active Directory (Degraded). This field is currently only supported on mobile platforms and so the value is set to -1 on non-mobile platforms.
- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Microsoft Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state wasn't retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **AppSessionGuid**  An identifier of a particular application session starting at process creation time and persisting until process end.
- **brandCode**  Contains the 4 character brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (for example, Canary/Dev/Beta/Stable). client_id isn't durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **device_sample_rate**  A number representing how often the device sends telemetry, expressed as a percentage. Low values indicate that device sends more events and high values indicate that device sends fewer events. The value is rounded to five significant figures for privacy reasons and if an error is hit in getting the device sample number value from the registry then this will be -1; and if client isn't on a UTC-enabled platform, then this value won't be set.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event, where 1 is basic, 2 is enhanced, and 3 is full.
- **experimentation_mode**  A number representing the value set for the ExperimentationAndConfigurationServiceControl group policy. See [Microsoft Edge - Policies](/DeployEdge/microsoft-edge-policies#experimentationandconfigurationservicecontrol) for more details on this policy.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSourceName**  A string representation of the installation source.
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reactivationBrandCode**  Contains the 4 character reactivation brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.29e24d069f27450385c7acaa2f07e277.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **account_type**  A number representing the type of the signed in user account, where 0 indicates None, 1 indicates Microsoft Account, 2 indicates Azure Active Directory, 3 indicates On-Prem Active Directory and 4 indicates Azure Active Directory (Degraded). This field is currently only supported on mobile platforms and so the value is set to -1 on non-mobile platforms.
- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Microsoft Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state wasn't retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **AppSessionGuid**  An identifier of a particular application session starting at process creation time and persisting until process end.
- **brandCode**  Contains the 4 character brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (for example, Canary/Dev/Beta/Stable). client_id isn't durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **device_sample_rate**  A number representing how often the device sends telemetry, expressed as a percentage. Low values indicate that device sends more events and high values indicate that device sends fewer events. The value is rounded to five significant figures for privacy reasons and if an error is hit in getting the device sample number value from the registry then this will be -1; and if client isn't on a UTC-enabled platform, then this value won't be set.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **experimentation_mode**  A number representing the value set for the ExperimentationAndConfigurationServiceControl group policy. See [Microsoft Edge - Policies](/DeployEdge/microsoft-edge-policies#experimentationandconfigurationservicecontrol) for more details on this policy.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSourceName**  A string representation of the installation source.
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reactivationBrandCode**  Contains the 4 character reactivation brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.7005b72804a64fa4b2138faab88f877b.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **account_type**  Aria.7005b72804a64fa4b2138faab88f877b.Microsoft.WebBrowser.SystemInfo.Config
- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Microsoft Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state wasn't retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **AppSessionGuid**  An identifier of a particular application session starting at process creation time and persisting until process end.
- **brandCode**  Contains the 4 character brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (for example, Canary/Dev/Beta/Stable). client_id isn't durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **device_sample_rate**  A number representing how often the device sends telemetry, expressed as a percentage. Low values indicate that device sends more events and high values indicate that device sends fewer events. The value is rounded to five significant figures for privacy reasons and if an error is hit in getting the device sample number value from the registry then this will be -1; and if client isn't on a UTC-enabled platform, then this value won't be set.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **experimentation_mode**  A number representing the value set for the ExperimentationAndConfigurationServiceControl group policy. See [Microsoft Edge - Policies](/DeployEdge/microsoft-edge-policies#experimentationandconfigurationservicecontrol) for more details on this policy.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSourceName**  A string representation of the installation source.
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reactivationBrandCode**  Contains the 4 character reactivation brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.754de735ccd546b28d0bfca8ac52c3de.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **account_type**  A number representing the type of the signed in user account, where 0 indicates None, 1 indicates Microsoft Account, 2 indicates Azure Active Directory, 3 indicates On-Prem Active Directory and 4 indicates Azure Active Directory (Degraded). This field is currently only supported on mobile platforms and so the value is set to -1 on non-mobile platforms.
- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Microsoft Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state wasn't retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **AppSessionGuid**  An identifier of a particular application session starting at process creation time and persisting until process end.
- **brandCode**  Contains the 4 character brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (for example, Canary/Dev/Beta/Stable). client_id isn't durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **device_sample_rate**  A number representing how often the device sends telemetry, expressed as a percentage. Low values indicate that device sends more events and high values indicate that device sends fewer events. The value is rounded to five significant figures for privacy reasons and if an error is hit in getting the device sample number value from the registry then this will be -1; and if client isn't on a UTC-enabled platform, then this value won't be set.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **experimentation_mode**  A number representing the value set for the ExperimentationAndConfigurationServiceControl group policy. See [Microsoft Edge - Policies](/DeployEdge/microsoft-edge-policies#experimentationandconfigurationservicecontrol) for more details on this policy.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSourceName**  A string representation of the installation source.
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reactivationBrandCode**  Contains the 4 character reactivation brand code or distribution tag that has been assigned to a partner. Not every Windows install will have a brand code.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.af397ef28e484961ba48646a5d38cf54.Microsoft.WebBrowser.Installer.EdgeUpdate.Ping

This Ping event sends a detailed inventory of software and hardware information about the EdgeUpdate service, Microsoft Edge applications, and the current system environment including app configuration, update configuration, and hardware capabilities. This event contains Device Connectivity and Configuration, Product and Service Performance, and Software Setup and Inventory data. One or more events is sent each time any installation, update, or uninstallation occurs with the EdgeUpdate service or with Microsoft Edge applications. This event is used to measure the reliability and performance of the EdgeUpdate service and if Microsoft Edge applications are up to date. This is an indication that the event is designed to keep Windows secure and up to date.

The following fields are available:

- **appAp**  Any additional parameters for the specified application. Default: ''.
- **appAppId**  The GUID that identifies the product. Compatible clients must transmit this attribute. Default: undefined.
- **appBrandCode**  The brand code under which the product was installed, if any. A brand code is a short (4-character) string used to identify installations that took place as a result of partner deals or website promotions. Default: ''.
- **appChannel**  An integer indicating the channel of the installation (that is, Canary or Dev).
- **appClientId**  A generalized form of the brand code that can accept a wider range of values and is used for similar purposes. Default: ''.
- **appCohort**  A machine-readable string identifying the release cohort (channel) that the app belongs to. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortHint**  A machine-readable enum indicating that the client has a desire to switch to a different release cohort. The exact legal values are app-specific and should be shared between the server and app implementations. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortName**  A stable non-localized human-readable enum indicating which (if any) set of messages the app should display to the user. For example, an app with a cohort Name of 'beta' might display beta-specific branding to the user. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appConsentState**  Bit flags describing the diagnostic data disclosure and response flow where 1 indicates the affirmative and 0 indicates the negative or unspecified data. Bit 1 indicates consent was given, bit 2 indicates data originated from the download page, bit 18 indicates choice for sending data about how the browser is used, and bit 19 indicates choice for sending data about websites visited.
- **appDayOfInstall**  The date-based counting equivalent of appInstallTimeDiffSec (the numeric calendar day that the app was installed on). This value is provided by the server in the response to the first request in the installation flow. The client MAY fuzz this value to the week granularity (for example, send '0' for 0 through 6, '7' for 7 through 13, etc.). The first communication to the server should use a special value of '-1'. A value of '-2' indicates that this value isn't known. Default: '-2'.
- **appEdgePreviewDisenrollReason**  Reason why Preview was unenrolled.
- **appEdgePreviewPreviousValuesV2**  Previous values of the Microsoft Edge Preview.
- **appEdgePreviewState**  Specifies if Microsoft Edge is in the preview state.
- **appExperiments**  A key/value list of experiment identifiers. Experiment labels are used to track membership in different experimental groups, and may be set at install or update time. The experiments string is formatted as a semicolon-delimited concatenation of experiment label strings. An experiment label string is an experiment Name, followed by the '=' character, followed by an experimental label value. For example: 'crdiff=got_bsdiff;optimized=O3'. The client shouldn't transmit the expiration date of any experiments it has, even if the server previously specified a specific expiration date. Default: ''.
- **appFirstFRESeenTime**  The earliest time the Microsoft Edge First Run Experience was seen by any user on the device in Windows FILETIME units / 10. Default: undefined.
- **appFirstFRESeenVersion**  The earliest Microsoft Edge First Run Experience version that was seen by any user on the device (for example '1.2.3.4'). Default: undefined.
- **appInactivityBadgeApplied**  Specifies that the inactivity badge has been applied.
- **appInactivityBadgeCleared**  Specifies that the inactivity badge has been cleared.
- **appInactivityBadgeDuration**  The duration of the inactivity badge.
- **appInstallTime**  The product install time in seconds. '0' if unknown. Default: '-1'.
- **appInstallTimeDiffSec**  The difference between the current time and the install date in seconds. '0' if unknown. Default: '-1'.
- **appIsPinnedSystem**  Specifies is the app is pinned.
- **appLang**  The language of the product install, in IETF BCP 47 representation. Default: ''.
- **appLastLaunchCount**  Number of times the app launched last.
- **appLastLaunchTime**  The time when browser was last launched.
- **appNextVersion**  The version of the app that the update flow to which this event belongs attempted to reach, regardless of the success or failure of the update operation. Default: '0.0.0.0'.
- **appOOBEInstallTime**  The time of first recorded successful OOBE Microsoft Edge install in Windows FILETIME units / 10 (that is, the install time of any fully completed OOBE install achieved before OOBE finishes), as recorded by setup.exe. Default: undefined.
- **appPingEventAppSize**  The total number of bytes of all downloaded packages. Default: '0'.
- **appPingEventDoneBeforeOOBEComplete**  Indicates whether the install or update was completed before Windows Out of the Box Experience ends. 1 means event completed before OOBE finishes; 0 means event wasn't completed before OOBE finishes; -1 means the field doesn't apply.
- **appPingEventDownloadMetricsCdnAzureRefOriginShield**  Provides a unique reference string that identifies a request served by Azure Front Door. It's used to search access logs and is critical for troubleshooting. For example, Ref A: E172B39D19774147B0EFCC8E3E823D9D Ref B: BL2EDGE0215 Ref C: 2021-05-11T22:25:48Z.
- **appPingEventDownloadMetricsCdnCache**  Corresponds to the result, whether the proxy has served the result from cache (HIT for yes, and MISS for no) For example, HIT from proxy.domain.tld, MISS from proxy.local.
- **appPingEventDownloadMetricsCdnCCC**  ISO 2 character country code that matches to the country updated binaries are delivered from. for example: US.
- **appPingEventDownloadMetricsCdnCID**  Numeric value used to internally track the origins of the updated binaries. For example, 2.
- **appPingEventDownloadMetricsCdnMSEdgeRef**  Used to help correlate client-to-AFD (Azure Front Door) conversations. For example, Ref A: E2476A9592DF426A934098C0C2EAD3AB Ref B: DM2EDGE0307 Ref C: 2022-01-13T22:08:31Z.
- **appPingEventDownloadMetricsCdnP3P**  Electronic privacy statement: CAO = collects contact-and-other, PSA = for pseudo-analysis, OUR = data received by us only. Helps identify the existence of transparent intermediaries (proxies) that can create noise in legitimate error detection. For example, CP=\"CAO PSA OUR\".
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
- **appPingEventSequenceId**  An ID that uniquely identifies particular events within one requestId. Since a request can contain multiple ping events, this field is necessary to uniquely identify each possible event.
- **appPingEventSourceUrlIndex**  For events representing a download, the position of the download URL in the list of URLs supplied by the server in a "urls" tag.
- **appPingEventSystemUptimeTicks**  Number of ticks that the system has been up.
- **appPingEventUpdateCheckTimeMs**  For events representing an entire update flow, the time elapsed between the start of the update check and the end of the update check, in milliseconds. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appReferralHash**  The hash of the referral code used to install the product. '0' if unknown. Default: '0'.
- **appUpdateCheckIsRollbackAllowed**  Check for status showing whether or not rollback is allowed.
- **appUpdateCheckIsUpdateDisabled**  The state of whether app updates are restricted by group policy. True if updates have been restricted by group policy or false if they haven't.
- **appUpdateCheckTargetChannel**  Check for status showing the target release channel.
- **appUpdateCheckTargetVersionPrefix**  A component-wise prefix of a version number, or a complete version number suffixed with the $ character. The server shouldn't return an update instruction to a version number that doesn't match the prefix or complete version number. The prefix is interpreted a dotted-tuple that specifies the exactly-matching elements; it's not a lexical prefix (for example, '1.2.3' must match '1.2.3.4' but must not match '1.2.34'). Default: ''.
- **appUpdateCheckTtToken**  An opaque access token that can be used to identify the requesting client as a member of a trusted-tester group. If non-empty, the request should be sent over SSL or another secure protocol. Default: ''.
- **appUpdateCount** A running total of successful updates recorded by setup.exe. This is used for continuity checking of the Ping data spanning consecutive updates.
- **appUpdatesAllowedForMeteredNetworks**  Specifies if the device can receive updates with on a metered network.
- **appVersion**  The version of the product install. shouldn't Default: '0.0.0.0'.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **eventType**  A string indicating the type of the event. shouldn't
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
- **isCTADevice**  Specifies if the device is CTA.
- **isMsftDomainJoined**  '1' if the client is a member of a Microsoft domain. '0' otherwise. Default: '0'.
- **oemProductManufacturer**  The device manufacturer name.
- **oemProductName**  The product name of the device defined by device manufacturer.
- **osArch**  The architecture of the operating system (for example, 'x86', 'x64', 'arm'). '' if unknown. Default: ''.
- **osIsDefaultNetworkConnectionMetered**  States if the default network connection is metered.
- **osIsInLockdownMode**  Is the OS in lockdown mode.
- **osIsWIP**  Whether the OS is in preview.
- **osPlatform**  The operating system family that the within which the Omaha client is running (for example 'win', 'mac', 'linux', 'ios', 'android'). '' if unknown. The operating system Name should be transmitted in lowercase with minimal formatting. Default: ''.
- **osProductType**  Type associated with the operating system.
- **osServicePack**  The secondary version of the operating system. '' if unknown. Default: ''.
- **osVersion**  The primary version of the operating system. '' if unknown. Default: ''.
- **osWIPBranch**  WIP branch of the operating system.
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
- **requestSessionId**  A randomly-generated (uniformly distributed) GUID. Each single update flow (for example, update check, update application, event ping sequence) should have (with high probability) a single unique session ID. Default: ''.
- **requestTestSource**  Either '', 'dev', 'qa', 'prober', 'auto', or 'ossdev'. Any value except '' indicates that the request is a test and shouldn't be counted toward normal metrics. Default: ''.
- **requestUid**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha user. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.


### Aria.af397ef28e484961ba48646a5d38cf54.Microsoft.WebBrowser.Installer.EdgeUpdate.PingXml

The PingXml event sends detailed information pertaining to a specific instance of an update process in MicrosoftEdgeUpdate. This event contains Device Connectivity and Configuration, Product and Service Performance, and Software Setup and Inventory data. Each PingXml event can contain update logs from multiple different applications, and each application node in the XML payload can contain multiple different ping events. This event is sent whenever an update process occurs in the MicrosoftEdgeUpdate, regardless of the exit status. This event is used to track the reliability and performance of the MicrosoftEdgeUpdate process. The payload of this event is defined in the protocol definition header file.

The following fields are available:

- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **Xml**  XML-encoded string representing the request payload of the ping event. The request payload includes data and metadata for four nodes: the request itself, the hardware of the device, the OS of the device, and each updated application. Each application node includes additional nodes for individual ping events.


## Migration events

### Microsoft.Windows.MigrationCore.MigObjectCountDLSys

This event is used to indicate object count for system paths during different phases of Windows feature update.

The following fields are available:

- **migDiagSession->CString**  Indicates the phase of the update.
- **objectCount**  Number of files being tracked for the corresponding phase of the update.
- **sfInfo.Name**  This indicates well know folder location path (Ex: PUBLIC_downloads etc.)


### Microsoft.Windows.MigrationCore.MigObjectCountDLUsr

This event returns data to track the count of the migration objects across various phases during feature update. The data collected with this event is used to help keep Windows secure and to track data loss scenarios.

The following fields are available:

- **currentSid**  Indicates the user SID for which the migration is being performed.
- **migDiagSession->CString**  The phase of the upgrade where migration occurs. (for example: Validate tracked content)
- **objectCount**  The count for the number of objects that are being transferred.
- **sfInfo.Name**  This event identifies the phase of the upgrade where migration happens.


### Microsoft.Windows.MigrationCore.MigObjectCountKFSys

This event returns data about the count of the migration objects across various phases during feature update. The data collected with this event is used to help keep Windows secure and to track data loss scenarios.

The following fields are available:

- **migDiagSession->CString**  Identifies the phase of the upgrade where migration happens.
- **objectCount**  The count of the number of objects that are being transferred.
- **sfInfo.Name**  The predefined folder path locations. For example, FOLDERID_PublicDownloads


### Microsoft.Windows.MigrationCore.MigObjectCountKFUsr

This event returns data to track the count of the migration objects across various phases during feature update. The data collected with this event is used to help keep Windows secure and to track data loss scenarios.

The following fields are available:

- **currentSid**  Indicates the user SID for which the migration is being performed.
- **migDiagSession->CString**  The phase of the upgrade where the migration occurs. (For example, Validate tracked content.)
- **objectCount**  The number of objects that are being transferred.
- **sfInfo.Name**  The predefined folder path locations. For example, FOLDERID_PublicDownloads.


## OneSettings events

### Microsoft.Windows.OneSettingsClient.Heartbeat

This event indicates the config state heartbeat. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **Configs**  Array of configs.


### Microsoft.Windows.OneSettingsClient.StateChange

This event indicates the change in config state. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **flightId**  Flight id.
- **state**  New state.


### Microsoft.Windows.OneSettingsClient.Status

This event indicates the config usage of status update. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **flightId**  Flight id.
- **time**  Time.


## OOBE events

### Microsoft.Windows.Shell.Oobe.ExpeditedUpdate.ExpeditedUpdateNthLogonDisplayStatus

NthLogon NDUP evaluated whether it should launch or not.

The following fields are available:

- **nthSkippedReasonFlag**  Flag indicating skip reason.
- **reason**  Skip reason string.


### Microsoft.Windows.Shell.Oobe.ExpeditedUpdate.ExpeditedUpdatePageSkipped

This event provides information about skipping expedited update page. The data collected with this event is used to help keep Windows secure, up to date, and performing properly.

The following fields are available:

- **reason**  Reason for skip.
- **skippedReasonFlag**  Flag representing reason for skip.


### Microsoft.Windows.Shell.Oobe.ExpeditedUpdate.ExpeditedUpdateStatusResult

This event provides status of expedited update. The data collected with this event is used to help keep Windows secure, up to date, and performing properly.

The following fields are available:

- **oobeExpeditedUpdateStatus**  Expedited update status.
- **reason**  Reason for the status.
- **resultCode**  HR result of operation.


## Other events

### Microsoft.Windows.Analog.HolographicDriverClient.TelemetryUserPresenceChanged

This event sends data indicating the state detected by user presence sensor. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **correlationGuid**  Unique correlation Guid Id.
- **isPresent**  State detected by user presence sensor.


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


### Microsoft.Windows.Security.NGC.KspSvc.NgcUserIdKeyFinalize

This event traces Windows Hello key creation finalize.


The following fields are available:

- **accountType**  The account type of the user.
- **cacheType**  The cache type of the key.
- **finalizeStatus**  Returned status code after the finalize operation.
- **gestureRequired**  The operation requires a gesture.
- **isIsoContainer**  Indicates if it's using IsoContainer.
- **isVsm**  Indicates if Container is in Vsm.
- **keyAccountId**  Key account ID.
- **keyAlgId**  Key Algorithm ID.
- **keyDomain**  Key domain name.
- **keyImplType**  Key implementation type.
- **keyTenant**  Key tenant name.
- **keyType**  Key type.
- **signStatus**  Returned status code after the finalize operation.
- **silentByCaller**  Indicates whether the caller wanted to finalize silently.
- **silentByProperty**  Indicates whether the key property specified to finalize silently.


### Microsoft.Windows.Security.NGC.KspSvc.NgcUserIdKeySignHash

This event traces Windows Hello key signing details.

The following fields are available:

- **accountType**  The account type of the user.
- **cacheType**  The cache type of the key.
- **callerCmdLine**  Caller process command line string.
- **didPrompt**  Whether a UI prompt was triggered.
- **gestureRequired**  The operation requires a gesture.
- **isCacheWithTimedCounterEnabled**  New caching mechanism is enabled.
- **isCallerProcessQueryLimited**  Indicates if caller process failed to be opened with PROCESS_VM_READ privilege.
- **isUnlockTimeSet**  We have a valid unlock time to use.
- **keyAccountId**  Hashed key account ID.
- **keyDomain**  Hashed key domain name.
- **keyImplType**  The implementation type of the key.
- **keyTenant**  Hashed key tenant name.
- **keyType**  Key type.
- **numSignatures**  Number of signatures made since logon or unlock.
- **persistedInPinCache**  The PIN was persisted in the cache.
- **protectionLevel**  Specifies whether the caller process is a PPL and at what level.
- **sessionGuid**  Unique identifier for the current user session.
- **signStatus**  Returned status code after the sign operation.
- **silentByCaller**  Indicates whether the caller wanted to sign silently.
- **silentByProperty**  Indicates whether the key property specified to sign silently.
- **timeSinceUnlockMs**  Time since logon or unlock in milliseconds.
- **usedPinCache**  The PIN cache was used to attempt to sign.
- **validTicket**  The provided ticket doesn't match the default or invalid auth ticket.

### Microsoft.Windows.Security.SBServicing.ApplySecureBootUpdateFailed

Event that indicates that an attempt to apply secure boot updates failed

The following fields are available:

- **Action**  Action string when error occurred
- **hr**  Error code in HRESULT
- **IsRejectedByFirmware**  Bool value to indicate if firmware has rejected the update.
- **IsResealNeeded**  BOOL value to indicate if TPM Reseal was needed
- **RevokedBootmanager**  BOOL value to indicate if current bootmgr is revoked.
- **SecureBootUpdateCaller**  Scenario in which function was called. Could be Update or Upgrade
- **UpdateType**  Indicates if it's DB or DBX update
- **WillResealSucceed**  Indicates if TPM reseal operation is expected to succeed


### Microsoft.Windows.Security.SBServicing.ApplySecureBootUpdateStarted

Event that indicates secure boot update has started.

The following fields are available:

- **AvailableUpdates**  Number of available secure boot updates.
- **SecureBootUpdateCaller**  Enum value indicating if this is a servicing or an upgrade.


### Microsoft.Windows.Security.SBServicing.ApplySecureBootUpdateSucceeded

This event indicates if the Secure Boot Update succeded.

The following fields are available:

- **Action**  Indicates the stage for success.
- **IsRebootRequiredBeforeUpdate**  Indicates if reboot is required for before re-attempting the update.
- **IsResealNeeded**  Indicates if BitLocker reseal is needed.
- **RevokedBootmanager**  Indicates if there's a revoked bootmgr on the machine.
- **SecureBootUpdateCaller**  Info about the caller of the update.
- **UpdateType**  VariableMask like DB, DBX.
- **WillResealSucceed**  Inform if reseal will succeed.


### Microsoft.Windows.Security.SBServicingCore.ApplySecureBootUpdateCompleted

This event logs when the installer completes Secureboot update.

The following fields are available:

- **Action**  String that tells us the failure stage if any.
- **hr**  error code.
- **IsResealNeeded**  Is BitLocker reseal was needed on this machine.
- **sbServicingFailureReason**  Enum containing failure details.
- **SecureBootUpdateCaller**  Caller of the update like Secureboot AI, tpmtask or dbupdater.
- **UpdateType**  Update type DB or DBX.
- **WillResealSucceed**  If BitLocker reseal will succeed on this machine.


### Microsoft.Windows.Security.SBServicingCore.ApplySecureBootUpdateStarted

This event logs when Secureboot updating containing DB/DBX payload starts.

The following fields are available:

- **SecureBootUpdateCaller**  Caller of the update like Secureboot AI, TPMTask or DBUpdater.
- **UpdateType**  Update type like DB or DBX.


### Microsoft.Windows.Security.SBServicingCore.SBServicingCoreFunctionFailed

This event logs when some core function of Secureboot AI fails.

The following fields are available:

- **Action**  stage at which the failure occurred.
- **Function**  name of the function where the failure occurred.
- **hr**  error code.


### Microsoft.Windows.Shell.CortanaSearch.WebView2ProcessFailed

This event tracks if the WebView2 process failed.

The following fields are available:

- **ExitCode**  WebView2 exit code.
- **ProcessFailedKind**  WebView2 process failure kind.
- **Reason**  WebView2 process failure reason.
- **SessionId**  WebView2 sessionId.


### Microsoft.Windows.Shell.SystemSettings.SettingsAppActivity.GetUserAccountState

This event keeps track of if the user's account is in a good state upon loading the Settings Accounts L1 page.

The following fields are available:

- **CassService**  Version of the Cass service.
- **componentName**  Name of the Settings component.
- **correlationVector**  Identifier for correlating events.
- **currentPageGroupId**  Identifier for the current page group.
- **currentPageId**  Identifier for the current page.
- **experienceId**  Identifier for the Settings experience.
- **experienceVersion**  Version of the experience.
- **isExperienceInbox**  Is the experience present by default (Comes with the system).
- **pageId**  Identifier for the Setting page.
- **pageSessionId**  Identifier for the page session.
- **processSessionId**  Identifier for the process.
- **state**  State that determines if the account has required backup proofs (eg. email and phone)


### Microsoft.Windows.WinRE.Agent.CreateWinRePartitionFailed

This event emits failure of the Creation of the WinRE partition operation.

The following fields are available:

- **ErrorCode**  Error code.


### Microsoft.Windows.WinRE.Agent.ExtendOsPartitionSucceed

This event emits success for the extending OS Partition operation.


### Microsoft.Windows.WinRE.Agent.ShrinkOsPartitionFailed

This event captures OS partition shrink operation failures during the WinRE servicing.

The following fields are available:

- **HRESULT**  Error code.


### Microsoft.Windows.WinRE.Agent.WinreFormatPartition

This event fires when WinRE partition is formatted.



### Microsoft.Windows.WinRE.Agent.WinreFormatPartitionSucceed

This vvent fires when WinRE partition attempts to format and succeeds.


## Privacy consent logging events

### Microsoft.Windows.Shell.PrivacyConsentLogging.PrivacyConsentCompleted

This event is used to determine whether the user successfully completed the privacy consent experience. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **presentationVersion**  Which display version of the privacy consent experience the user completed
- **privacyConsentState**  The current state of the privacy consent experience
- **settingsVersion**  Which setting version of the privacy consent experience the user completed
- **userOobeExitReason**  The exit reason of the privacy consent experience


### Microsoft.Windows.Shell.PrivacyConsentLogging.PrivacyConsentStatus

This event provides the effectiveness of new privacy experience. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **isAdmin**  whether the person who is logging in is an admin
- **isExistingUser**  whether the account existed in a downlevel OS
- **isLaunching**  Whether or not the privacy consent experience will be launched
- **isSilentElevation**  whether the user has most restrictive UAC controls
- **privacyConsentState**  whether the user has completed privacy experience
- **userRegionCode**  The current user's region setting


## Setup events

### Microsoft.Windows.Setup.WinSetupMon.ProtectionViolation

This event provides information about move or deletion of a file or a directory which is being monitored for data safety during feature updates. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **Mode**  The kind of monitoring mode enforced for the given path (this is one of a fixed set of strings).
- **Path**  Path to the file or the directory which is being moved or deleted.
- **Process**  Path to the process which is requesting the move or the deletion.
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


## Surface events

### Microsoft.Surface.Battery.Prod.BatteryInfoEvent

This event includes the hardware level data about battery performance. The data collected with this event is used to help keep Windows products and services performing properly.

The following fields are available:

- **batteryData**  Battery Performance data.
- **batteryData.data()**  Battery performance data.
- **BatteryDataSize:**  Size of the battery performance data.
- **batteryInfo.data()**  Battery performance data.
- **BatteryInfoSize:**  Size of the battery performance data.


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
- **BPMv4CurrentlyEngaged**  Instantaneous snapshot if BPM is engaged on device.
- **BPMv4ExitCriteria**  What is the BPM exit criteria - 20%SOC or 50%SOC?.
- **BPMv4HvtCountA**  Current HVT count for BPM counter A.
- **BPMv4HvtCountB**  Current HVT count for BPM counter B.
- **BPMv4RsocBucketsHighTemp_Values**  Time in temperature range 46°C -60°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMv4RsocBucketsLowTemp_Values**  Time in temperature range 0°C -20°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMv4RsocBucketsMediumHighTemp_Values**  Time in temperature range 36°C -45°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMv4RsocBucketsMediumLowTemp_Values**  Time in temperature range 21°C-35°C and in the following true RSOC ranges: 0%-49%; 50%-79%; 80%-89%; 90%-94%; 95%-100%.
- **BPMv4TotalEngagedMinutes**  Total time that BPM was engaged.
- **BPMv4TotalEntryEvents**  Total number of times entering BPM.
- **ComponentId**  Component ID.
- **FwVersion**  FW version that created this log.
- **LogClass**  Log Class.
- **LogInstance**  Log instance within class (1..n).
- **LogVersion**  Log MGR version.
- **MCUInstance**  Instance ID used to identify multiple MCUs in a product.
- **ProductId**  Product ID.
- **SeqNum**  Sequence Number.
- **TimeStamp**  UTC seconds when log was created.
- **Ver**  Schema version.


### Microsoft.Surface.Battery.Prod.BatteryInfoEventV2_CTT

This event includes the hardware level data about battery performance. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **batteryPresent**  Battery present on device.
- **BPMKioskModeStartDateInSeconds**  First time Battery Limit was turned on.
- **BPMKioskModeTotalEngagedMinutes**  Total time Battery Limit was on (SOC value at 50%).
- **ComponentId**  Component ID.
- **CTTEqvTimeat35C**  Poll time every minute. Add to lifetime counter based on temperature. Only count time above 80% SOC.
- **CTTEqvTimeat35CinBPM**  Poll time every minute. Add to lifetime counter based on temperature. Only count time above 55% SOC and when device is in BPM. Round up.
- **CTTMinSOC1day**  Rolling 1 day minimum SOC. Value set to 0 initially.
- **CTTMinSOC28day**  Rolling 28 day minimum SOC. Value set to 0 initially.
- **CTTMinSOC3day**  Rolling 3 day minimum SOC. Value set to 0 initially.
- **CTTMinSOC7day**  Rolling 7 day minimum SOC. Value set to 0 initially.
- **CTTReduction**  Current CTT reduction in mV	
- **CTTStartDateInSeconds**  Start date from when device was starting to be used.
- **currentAuthenticationState**  Current Authentication State.
- **FwVersion**  FW version that created this log.
- **LogClass**  LOG CLASS.
- **LogInstance**  Log instance within class (1..n).
- **LogVersion**  LOG MGR VERSION.
- **MCUInstance**  Instance ID used to identify multiple MCUs in a product.
- **newSnFruUpdateCount**  New Sn FRU Update Count.
- **newSnUpdateCount**  New Sn Update Count.
- **ProductId**  Product ID.
- **ProtectionPolicy**  Battery limit engaged. True (0 False).
- **SeqNum**  Sequence Number.
- **TimeStamp**  UTC seconds when log was created.
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
- **MCUInstance**  Instance ID used to identify multiple MCUs in a product.
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


### Microsoft.Surface.Battery.Prod.BatteryInfoEventV2_GGExt

This event includes the hardware level data about battery performance. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **avgCurrLastRun**  Average current last run.
- **avgPowLastRun**  Average power last run.
- **batteryMSPN**  BatteryMSPN
- **batteryMSSN**  BatteryMSSN.
- **cell0Ra3**  Cell0Ra3.
- **cell1Ra3**  Cell1Ra3.
- **cell2Ra3**  Cell2Ra3.
- **cell3Ra3**  Cell3Ra3.
- **ComponentId**  Component ID.
- **currentAtEoc**  Current at Eoc.
- **firstPFstatusA**  First PF status-A.
- **firstPFstatusB**  First PF status-B.
- **firstPFstatusC**  First PF status-C.
- **firstPFstatusD**  First PF status-D.
- **FwVersion**  FW version that created this log.
- **lastQmaxUpdate**  Last Qmax update.
- **lastRaDisable**  Last Ra disable.
- **lastRaUpdate**  Last Ra update.
- **lastValidChargeTerm**  Last valid charge term.
- **LogClass**  LOG CLASS.
- **LogInstance**  Log instance within class (1..n).
- **LogVersion**  LOG MGR VERSION.
- **maxAvgCurrLastRun**  Max average current last run.
- **maxAvgPowLastRun**  Max average power last run.
- **MCUInstance**  Instance ID used to identify multiple MCUs in a product.
- **mfgInfoBlockB01**  MFG info Block B01.
- **mfgInfoBlockB02**  MFG info Block B02.
- **mfgInfoBlockB03**  MFG info Block B03.
- **mfgInfoBlockB04**  MFG info Block B04.
- **numOfRaDisable**  Number of Ra disable.
- **numOfValidChargeTerm**  Number of valid charge term.
- **ProductId**  Product ID.
- **qmaxCycleCount**  Qmax cycle count.
- **SeqNum**  Sequence Number.
- **stateOfHealthEnergy**  State of health energy.
- **stateOfHealthFcc**  State of health Fcc.
- **stateOfHealthPercent**  State of health percent.
- **TimeStamp**  UTC seconds when log was created.
- **totalFwRuntime**  Total FW runtime.
- **updateStatus**  Update status.
- **Ver**  Schema version.


### Microsoft.Surface.Battery.Prod.BatteryInfoEventV3

Hardware level data about battery performance.

The following fields are available:

- **BatteryTelemetry**  Hardware Level Data about battery performance.
- **ComponentId**  Component ID.
- **FwVersion**  FW version that created this log.
- **LogClass**  LOG CLASS.
- **LogInstance**  Log instance within class (1..n).
- **LogVersion**  LOG MGR VERSION.
- **MCUInstance**  Instance ID used to identify multiple MCUs in a product.
- **ProductId**  ProductId ID.
- **SeqNum**  Sequence Number.
- **TimeStamp**  UTC seconds when log was created.
- **Ver**  Schema version.


## Update Assistant events

### Microsoft.Windows.RecommendedTroubleshootingService.MitigationFailed

This event is raised after an executable delivered by Mitigation Service has run and failed. Data from this event is used to measure the health of mitigations used by engineers to solve in-market problems on internal, insider, and retail devices. Failure data will also be used for root-cause investigation by feature teams, as signal to halt mitigation rollout and, possible follow-up action on specific devices still impacted by the problem because the mitigation failed (that is, reoffer it to impacted devices). The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **activeProcesses**  Number of active processes.
- **atleastOneMitigationSucceeded**  Bool flag indicating if at least one mitigation succeeded.
- **callerId**  Identifier (GUID) of the caller requesting a system initiated troubleshooter.
- **contactTSServiceAttempts**  Number of attempts made by TroubleshootingSvc in a single Scanner session to get Troubleshooter metadata from the Troubleshooting cloud service.
- **countDownloadedPayload**  Count instances of payload downloaded.
- **description**  Description of failure.
- **devicePreference**  Recommended Troubleshooting Setting on the device.
- **downloadBinaryAttempts**  Number of attempts made by TroubleshootingSvc in a single Scanner session to download Troubleshooter Exe.
- **downloadCabAttempts**  Number of attempts made by TroubleshootingSvc in a single Scanner session to download PrivilegedActions Cab.
- **executionHR**  HR code of the execution of the mitigation.
- **executionPreference**  Current Execution level Preference. This may not be same as devicePreference, for example, when executing Critical troubleshooters, the executionPreference is set to the Silent option.
- **exitCode**  Exit code of the execution of the mitigation.
- **experimentFeatureId**  Experiment feature ID.
- **experimentFeatureState**  Config state of the experiment.
- **hr**  HRESULT for error code.
- **isActiveSessionPresent**  If an active user session is present on the device.
- **isCriticalMitigationAvailable**  If a critical mitigation is available to this device.
- **isFilteringSuccessful**  If the filtering operation was successful.
- **isReApply**  reApply status for the mitigation.
- **mitigationId**  ID value of the mitigation.
- **mitigationProcessCycleTime**  Process cycle time used by the mitigation.
- **mitigationRequestWithCompressionFailed**  Boolean flag indicating if HTTP request with compression failed for this device.
- **mitigationServiceResultFetched**  Boolean flag indicating if mitigation details were fetched from the admin service.
- **mitigationVersion**  String indicating version of the mitigation.
- **oneSettingsMetadataParsed**  If OneSettings metadata was parsed successfully.
- **oneSettingsSchemaVersion**  Schema version used by the OneSettings parser.
- **onlyNoOptMitigationsPresent**  Checks if all mitigations were no opt.
- **parsedOneSettingsFile**  Indicates if OneSettings parsing was successful.
- **sessionAttempts**  Number of Scanner sessions attempted so far by TroubleshootingSvc for this troubleshooter.
- **SessionId**  Random GUID used for grouping events in a session.
- **subType**  Error type.
- **totalKernelTime**  Total kernel time used by the mitigation.
- **totalNumberOfApplicableMitigations**  Total number of applicable mitigations.
- **totalProcesses**  Total number of processes assigned to the job object.
- **totalTerminatedProcesses**  Total number of processes in terminated state assigned to the job object.
- **totalUserTime**  Total user mode time used by the job object.


### Microsoft.Windows.RecommendedTroubleshootingService.MitigationSucceeded

This event is raised after an executable delivered by Mitigation Service has successfully run. Data from this event is used to measure the health of mitigations used by engineers to solve in-market problems on internal, insider, and retail devices. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **activeProcesses**  Number of active processes.
- **callerId**  Identifier (GUID) of the caller requesting a system initiated troubleshooter.
- **contactTSServiceAttempts**  Number of attempts made by TroubleshootingSvc in a single Scanner session to get Troubleshooter metadata from the Troubleshooting cloud service.
- **devicePreference**  Recommended troubleshooting setting on the device.
- **downloadBinaryAttempts**  Number of attempts made by TroubleshootingSvc in a single Scanner session to download Troubleshooter Exe.
- **downloadCabAttempts**  Number of attempts made by TroubleshootingSvc in a single Scanner session to download PrivilegedActions Cab.
- **executionPreference**  Current Execution level Preference. This may not be same as devicePreference, for example, when executing Critical troubleshooters, the executionPreference is set to the Silent option.
- **exitCode**  Exit code of the execution of the mitigation.
- **exitCodeDefinition**  String describing the meaning of the exit code returned by the mitigation (that is, ProblemNotFound).
- **experimentFeatureId**  Experiment feature ID.
- **experimentFeatureState**  Feature state for the experiment.
- **mitigationId**  ID value of the mitigation.
- **mitigationProcessCycleTime**  Process cycle time used by the mitigation.
- **mitigationVersion**  String indicating version of the mitigation.
- **sessionAttempts**  Number of Scanner sessions attempted so far by TroubleshootingSvc for this troubleshooter.
- **SessionId**  Random GUID used for grouping events in a session.
- **totalKernelTime**  Total kernel time used by the mitigation.
- **totalProcesses**  Total number of processes assigned to the job object.
- **totalTerminatedProcesses**  Total number of processes in terminated state assigned to the job object.
- **totalUserTime**  Total user mode time used by the job object.


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


### Update360Telemetry.UpdateAgentCommit

This event collects information regarding the commit phase of the new Unified Update Platform (UUP) update scenario, which is leveraged by both Mobile and Desktop. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CancelRequested**  Boolean that indicates whether cancel was requested.
- **ErrorCode**  The error code returned for the current install phase.
- **FlightId**  Unique ID for each flight.
- **ObjectId**  Unique value for each Update Agent mode.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **Result**  Outcome of the install phase of the update.
- **ScenarioId**  Indicates the update scenario.
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update.


### Update360Telemetry.UpdateAgentPostRebootResult

This event collects information for both Mobile and Desktop regarding the post reboot phase of the new Unified Update Platform (UUP) update scenario. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ErrorCode**  The error code returned for the current post reboot phase.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **ObjectId**  Unique value for each Update Agent mode.
- **PostRebootResult**  Indicates the Hresult.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **RollbackFailureReason**  Indicates the cause of the rollback.
- **ScenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate.
- **SessionId**  Unique value for each update attempt.
- **UpdateId**  Unique ID for each update.
- **UpdateOutputState**  A numeric value indicating the state of the update at the time of reboot.


## Windows Error Reporting events

### Microsoft.Windows.WERVertical.OSCrash

This event sends binary data from the collected dump file whenever a bug check occurs, to help keep Windows up to date. This is the OneCore version of this event.

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


## Windows Hardware Error Architecture events

### WheaProvider.WheaDriverErrorExternal

This event is sent when a common platform hardware error is recorded by an external WHEA error source driver. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **creatorId**  A GUID that identifies the entity that created the error record.
- **errorFlags**  Flags set on the error record.
- **notifyType**  A GUID that identifies the notification mechanism by which an error condition is reported to the operating system.
- **partitionId**  A GUID that identifies the partition on which the hardware error occurred.
- **platformId**  A GUID that identifies the platform on which the hardware error occurred.
- **record**  A binary blob containing the full error record. Due to the nature of common platform error records we have no way of fully parsing this blob for any given record.
- **recordId**  The identifier of the error record. This identifier is unique only on the system that created the error record.
- **sectionFlags**  The flags for each section recorded in the error record.
- **sectionTypes**  A GUID that represents the type of sections contained in the error record.
- **severityCount**  The severity of each individual section.
- **timeStamp**  Error time stamp as recorded in the error record.


### WheaProvider.WheaDriverExternalLogginLimitReached

This event indicates that WHEA has reached the logging limit for critical events from external drivers. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **timeStamp**  Time at which the logging limit was reached.


## Windows Store events

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


### Microsoft.Windows.StoreAgent.Telemetry.BeginAcquireLicense

During App Installs and updates, a license is acquired to ensure the app/machine has an entitlement to the app.

The following fields are available:

- **AggregatedPackageFullNames**  The name(s) of all packages to be downloaded and installed.
- **AttemptNumber**  Total number of install attempts before this operation.
- **BundleId**  The identity of the flight associated with this product.
- **CategoryId**  The identity of the package(s) being installed.
- **ClientAppId**  Client App Id (different in case of auto updates or interactive updates from the app).
- **IsBundle**  The identity of the app that initiated this operation.
- **IsInteractive**  True if this operation was requested by a user.
- **IsMandatory**  True if this is a mandatory update.
- **IsRemediation**  True if this install is repairing a previous install.
- **IsRestore**  True when automatically restoring a previously acquired product.
- **IsUpdate**  True if this is a product update.
- **ParentBundleId**  The Product ID of the parent if this product is part of a bundle.
- **PFN**  Product Family Name of this product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  Total number of automatic attempts to install before cancellation.
- **UserAttemptNumber**  Total number of user attempts to install before cancellation.
- **WUContentId**  Licensing identity of this package.


### Microsoft.Windows.StoreAgent.Telemetry.BeginDownload

This event is fired during the app update or install process when actual bits are being downloaded, this particular event is fired at the beginning of the process to indicate a state change to "Downloading". StoreAgent events are needed to help keep Windows pre-installed 1st party apps up to date and secure such as the mail and calendar apps. App update failure can be unique across devices and without this data from every device we won't be able to track the success/failure and fix any future vulnerabilities related to these built-in Windows Apps.

The following fields are available:

- **AggregatedPackageFullNames**  The name(s) of all packages to be downloaded and installed.
- **AttemptNumber**  Total number of install attempts before this operation.
- **BundleId**  The identity of the flight associated with this product.
- **CategoryId**  The identity of the package(s) being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **IsBundle**  True if this is a bundle.
- **IsInteractive**  True if this operation was requested by a user.
- **IsMandatory**  True if this is a mandatory update.
- **IsRemediation**  True if this install is repairing a previous install.
- **IsRestore**  True when automatically restoring a previously acquired product.
- **IsUpdate**  True if this is a product update.
- **ParentBundleId**  The product ID of the parent if this product is part of a bundle.
- **PFN**  Product Family Name of app being downloaded.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  Total number of automatic attempts to install before cancellation.
- **UserAttemptNumber**  Total number of user attempts to install before cancellation.
- **WUContentId**  NLicensing identity of this package.


### Microsoft.Windows.StoreAgent.Telemetry.BeginGetFreeEntitlement

Tracks the beginning of the call to get a free app entitlement.

The following fields are available:

- **CampaignId**  Marketing Campaign Identifier.
- **StoreId**  App Store Catalog Id.
- **UseDeviceId**  Boolean value to select whether the entitlement should be a device versus a user entitlement.


### Microsoft.Windows.StoreAgent.Telemetry.BeginInstall

This event is fired near the end stage of a new app install or update after the bits have been downloaded. StoreAgent events are needed to help keep Windows pre-installed 1st party apps up to date and secure such as the mail and calendar apps. App update failure can be unique across devices and without this data from every device we won't be able to track the success/failure and fix any future vulnerabilities related to these built-in Windows Apps.

The following fields are available:

- **AggregatedPackageFullNames**  The name(s) of all packages to be downloaded and installed.
- **AttemptNumber** Total number of install attempts before this operation.
- **BundleId**  The identity of the flight associated with this product.
- **CategoryId**  The identity of the package(s) being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **IsBundle**  True if this is a bundle.
- **IsInteractive**  True if this operation was requested by a user.
- **IsMandatory**  True if this is a mandatory update.
- **IsRemediation**  True if this install is repairing a previous install.
- **IsRestore**  True when automatically restoring a previously acquired product.
- **IsUpdate**  True if this is a product update.
- **ParentBundleId**  The product ID of the parent if this product is part of a bundle.
- **PFN**  The name(s) of the package(s) requested for install.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  Total number of automatic attempts to install.
- **UserAttemptNumber**  Total number of user attempts to install.
- **WUContentId**  Licensing identity of this package.

### Microsoft.Windows.StoreAgent.Telemetry.BeginSearchUpdatePackages

This event is fired when looking for app updates.

The following fields are available:

- **AttemptNumber**  Total number of install attempts before this operation.
- **BundleId**  The identity of the flight associated with this product.
- **CategoryId**  The identity of the package(s) being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **IsBundle**  True if this is a bundle.
- **IsInteractive**  True if this operation was requested by a user.
- **IsMandatory**  True if this is a mandatory update.
- **IsRemediation**  True if this install is repairing a previous install.
- **IsRestore**  True when automatically restoring a previously acquired product.
- **IsUpdate**  True if this is a product update.
- **ParentBundleId**  The product ID of the parent if this product is part of a bundle.
- **PFN**  The name(s) of the package(s) requested for install.
- **ProductId**  The Store Product ID for the product being installed.
- **SystemAttemptNumber**  Total number of automatic attempts to install.
- **UserAttemptNumber**  Total number of user attempts to install.
- **WUContentId**  Licensing identity of this package.


### Microsoft.Windows.StoreAgent.Telemetry.BlockLowPriorityWorkItems

This event is fired when the BlockLowPriorityWorkItems method is called, stopping the queue from installing LowPriority work items.

The following fields are available:

- **ClientId**  Client ID of the caller.


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


### Microsoft.Windows.StoreAgent.Telemetry.EndFrameworkUpdate

This event is sent when an app update requires an updated Framework package and the process starts to download it. It's used to help keep Windows up-to-date and secure.

The following fields are available:

- **HResult**  The result code of the last action performed before this operation.


### Microsoft.Windows.StoreAgent.Telemetry.EndGetFreeEntitlement

Telemetry is fired at the end of the call to request a free app entitlement, which will make a server call to get the entitlement.

The following fields are available:

- **CampaignId**  Campaign marketing Id.
- **HResult**  Error result.
- **StoreId**  Store Catalog Id of item requesting ownership.
- **UseDeviceId**  Boolean value to select whether the entitlement should be a device versus a user entitlement.


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


### Microsoft.Windows.StoreAgent.Telemetry.EndStageUserData

This event is sent after restoring user data (if any) that needs to be restored following a product install. It's used to keep Windows up-to-date and secure.

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
- **ClientAppId**  The identity of the app that initiated this operation.
- **FulfillmentPluginId**  The ID of the plugin needed to install the package type of the product.
- **InstalledPFuN**  Package Full Name of the app that is installed and will be updated.
- **PFN**  The Package Family Name of the app that is being installed or updated.
- **PluginTelemetryData**  Diagnostic information specific to the package-type plug-in.
- **PluginWorkCreationHr**  Resulting HResult error/success code from plugin work creation.	
- **ProductId**  The product ID of the app that is being updated or installed.


### Microsoft.Windows.StoreAgent.Telemetry.InstallOperationRequest

This event is sent when a product install or update is initiated, to help keep Windows up-to-date and secure.

The following fields are available:

- **BundleId**  The identity of the build associated with this product.
- **CatalogId**  If this product is from a private catalog, the Store Product ID for the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SkuId**  Specific edition ID being installed.
- **VolumePath**  The disk path of the installation.


### Microsoft.Windows.StoreAgent.Telemetry.InstallRequestReceived

This event is sent when a product install request is received by AppInstallManager.

The following fields are available:

- **ClientId**  Client ID of the caller.
- **StoreId**  The Store ID for the product being installed.


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


### Microsoft.Windows.StoreAgent.Telemetry.QueueStuckError

This event indicates that the Install Queue is in a stuck state.

The following fields are available:

- **ItemLifetimeInSeconds**  The amount of time elapsed since the item had been created in seconds at the time of the error.
- **OpenSlots**  The number of open slots in the queue at the time of the error.
- **PendingItems**  The number of pending items in the queue at the time of the error.
- **QueueItems**  The number of items in the queue at the time of the error.


### Microsoft.Windows.StoreAgent.Telemetry.RestoreDeviceMetrics

This event provides an informational summary of the apps returned from the restorable apps data store.

The following fields are available:

- **DeferredAppIds**  The number of backed-up apps that will be auto-installed at an optimal time for the machine, determined by the policies of a Windows component called the Universal Orchestrator.
- **DelayedAppIds**  The number of backed-up apps that will be auto-installed one hour after device setup.
- **NumBackupApps**  The number of apps returned from the restorable apps data store.
- **NumCompatibleApps**  The number of backed-up apps reported by compatibility service to be compatible.
- **NumIncompatibleApps**  The number of backed-up apps reported by compatibility service to be incompatible.
- **NumProcessedBackupApps**  The number of backed-up apps for which we have instructed AppRestore Service to create a placeholder.


### Microsoft.Windows.StoreAgent.Telemetry.RestoreError

This event indicates a blocking error occurred during the restore compatibility check.

The following fields are available:

- **ErrorCode**  The error code associated with the error.
- **ErrorLocation**  The location of the error.
- **ErrorMessage**  The message associated with the error.
- **ErrorMethod**  The method the error occurred in.
- **ErrorName**  The name of the error.
- **ErrorType**  The type of the error.
- **LineNumber**  The line number the error occurred on.
- **Severity**  The severity level of the error.


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


### Microsoft.Windows.StoreAgent.Telemetry.ResumeOperationRequest

This event is sent when a product install or update is resumed by a user or on installation retries, to help keep Windows up-to-date and secure.

The following fields are available:

- **ProductId**  The Store Product ID for the product being installed.


### Microsoft.Windows.StoreAgent.Telemetry.ScheduleWorkWithUO

This event is fired when we schedule installs and/or updates with UO.

The following fields are available:

- **ClientId**  Client ID of the caller.


### Microsoft.Windows.StoreAgent.Telemetry.SearchForUpdateOperationRequest

This event is sent when searching for update packages to install, to help keep Windows up-to-date and secure.

The following fields are available:

- **CatalogId**  The Store Catalog ID for the product being installed.
- **ProductId**  The Store Product ID for the product being installed.
- **SkuId**  Specific edition of the app being updated.


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


### Microsoft.Windows.StoreAgent.Telemetry.UnblockLowPriorityWorkItems

This event is fired when the UnblockLowPriorityWorkItems method is called, changing the state of all LowPriority work items to working if AutoUpdateState is enabled.

The following fields are available:

- **ClientId**  Client ID of the caller.


### Microsoft.Windows.StoreAgent.Telemetry.UpdateAppOperationRequest

This event occurs when an update is requested for an app, to help keep Windows up-to-date and secure.

The following fields are available:

- **PFamN**  The name of the app that is requested for update.


## Windows Update Delivery Optimization events

### Microsoft.OSG.DU.DeliveryOptClient.DownloadCanceled

This event describes when a download was canceled with Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **background**  Is the download being done in the background?
- **bytesFromCacheServer**  Bytes received from a cache host.
- **bytesFromCDN**  The number of bytes received from a CDN source.
- **bytesFromGroupPeers**  The number of bytes received from a peer in the same group.
- **bytesFromIntPeers**  The number of bytes received from peers not in the same LAN or in the same group.
- **bytesFromLedbat**  The number of bytes received from a source using an Ledbat enabled connection.
- **bytesFromLinkLocalPeers**  The number of bytes received from local peers.
- **bytesFromLocalCache**  Bytes copied over from local (on disk) cache.
- **bytesFromPeers**  The number of bytes received from a peer in the same LAN.
- **cdnErrorCodes**  A list of CDN connection errors since the last FailureCDNCommunication event.
- **cdnErrorCounts**  The number of times each error in cdnErrorCodes was encountered.
- **cdnIp**  The IP Address of the source CDN (Content Delivery Network).
- **cdnUrl**  The URL of the source CDN (Content Delivery Network).
- **dataSourcesTotal**  Bytes received per source type, accumulated for the whole session.
- **errorCode**  The error code that was returned.
- **experimentId**  When running a test, this is used to correlate events that are part of the same test.
- **fileID**  The ID of the file being downloaded.
- **isVpn**  Is the device connected to a Virtual Private Network?
- **jobID**  Identifier for the Windows Update job.
- **predefinedCallerName**  The name of the API Caller.
- **reasonCode**  Reason the action or event occurred.
- **routeToCacheServer**  The cache server setting, source, and value.
- **sessionID**  The ID of the file download session.
- **sessionTimeMs**  The duration of the download session, spanning multiple jobs, in milliseconds.
- **totalTimeMs**  The duration of the download, in milliseconds.
- **updateID**  The ID of the update being downloaded.


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


### Microsoft.OSG.DU.DeliveryOptClient.DownloadPaused

This event represents a temporary suspension of a download with Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **background**  Is the download a background download?
- **cdnUrl**  The URL of the source CDN (Content Delivery Network).
- **errorCode**  The error code that was returned.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **fileID**  The ID of the file being paused.
- **isVpn**  Is the device connected to a Virtual Private Network?
- **jobID**  Identifier for the Windows Update job.
- **predefinedCallerName**  The name of the API Caller object.
- **reasonCode**  The reason for pausing the download.
- **routeToCacheServer**  The cache server setting, source, and value.
- **sessionID**  The ID of the download session.
- **sessionTimeMs**  The duration of the download session, spanning multiple jobs, in milliseconds.
- **totalTimeMs**  The duration of the download, in milliseconds.
- **updateID**  The ID of the update being paused.


### Microsoft.OSG.DU.DeliveryOptClient.DownloadStarted

This event sends data describing the start of a new download to enable Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **background**  Indicates whether the download is happening in the background.
- **bytesRequested**  Number of bytes requested for the download.
- **callerAppPackageName**  The caller app package name.
- **cdnUrl**  The URL of the source Content Distribution Network (CDN).
- **costFlags**  A set of flags representing network cost.
- **deviceProfile**  Identifies the usage or form factor (such as Desktop, Xbox, or VM).
- **diceRoll**  Random number used for determining if a client will use peering.
- **doClientVersion**  The version of the Delivery Optimization client.
- **downloadMode**  The download mode used for this file download session (CdnOnly = 0, Lan = 1, Group = 2, Internet = 3, Simple = 99, Bypass = 100).
- **downloadModeReason**  Reason for the download.
- **downloadModeSrc**  Source of the DownloadMode setting (KvsProvider = 0, GeoProvider = 1, GeoVerProvider = 2, CpProvider = 3, DiscoveryProvider = 4, RegistryProvider = 5, GroupPolicyProvider = 6, MdmProvider = 7, SettingsProvider = 8, InvalidProviderType = 9).
- **errorCode**  The error code that was returned.
- **experimentId**  ID used to correlate client/services calls that are part of the same test during A/B testing.
- **fileID**  The ID of the file being downloaded.
- **filePath**  The path to where the downloaded file will be written.
- **fileSize**  Total file size of the file that was downloaded.
- **fileSizeCaller**  Value for total file size provided by our caller.
- **groupID**  ID for the group.
- **isEncrypted**  Indicates whether the download is encrypted.
- **isThrottled**  Indicates the Event Rate was throttled (event represent aggregated data).
- **isVpn**  Indicates whether the device is connected to a Virtual Private Network.
- **jobID**  The ID of the Windows Update job.
- **peerID**  The ID for this delivery optimization client.
- **predefinedCallerName**  Name of the API caller.
- **routeToCacheServer**  Cache server setting, source, and value.
- **sessionID**  The ID for the file download session.
- **setConfigs**  A JSON representation of the configurations that have been set, and their sources.
- **updateID**  The ID of the update being downloaded.
- **UusVersion**  The version of the undocked update stack.


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

### Microsoft.Windows.Update.Aggregator.UusCoreHealth.HealthAggregatorSummary

This event is a summary of UUS health indicators.

The following fields are available:

- **Fallback**  Failover information.
- **FlightId**  Payload that is being sent.
- **IsStable**  Boolean if the payload is in image.
- **Lock**  Lock identifier.
- **UpdateId**  Update identifier.
- **UusVersion**  Version of the undocked payload.
- **VersionActivationsSinceLastBoot**  Number of activations since last reboot.


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


### Microsoft.Windows.Update.Orchestrator.Client.AppUpdateInstallResult

This event reports installation result details of expedited apps.

The following fields are available:

- **Completed**  Whether the installation completed.
- **DeploymentAttempted**  Whether the deployment was attempted.
- **DeploymentErrorCode**  The error code resulting from the deployment attempt.
- **DeploymentExtendedErrorCode**  The extended error code resulting from the deployment attempt.
- **InstallFailureReason**  On failure, the InstallFailureReason reported.
- **OperationStatus**  OperationStatus result reported by the installation attempt.
- **Succeeded**  Whether the installation succeeded.
- **updaterId**  The UpdaterId associated with this expedited app.
- **UusVersion**  The version of the UUS stack currently active.
- **VelocityEnabled**  Whether the velocity tag for the expedited app is enabled.


### Microsoft.Windows.Update.Orchestrator.Client.BizCriticalStoreAppInstallAlreadyRunning

This event indicates that another instance is currently attempting to install business critical store updates.

The following fields are available:

- **UusVersion**  The version of the UUS Stack currently active.


### Microsoft.Windows.Update.Orchestrator.Client.BizCriticalStoreAppInstallResult

This event returns the result after installing a business critical store application. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **AppInstallState**  The application installation state.
- **HRESULT**  The result code (HResult) of the install.
- **PFN**  The package family name of the package being installed.
- **updaterId**  The Id of the updater.
- **UusVersion**  The version of the UUS stack currently active.


### Microsoft.Windows.Update.Orchestrator.Client.EdgeUpdateResult

This event sends data indicating the result of invoking the edge updater. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ExitCode**  The exit code that was returned.
- **HRESULT**  The result code (HResult) of the operation.
- **UusVersion**  The version of the UUS stack currently active.
- **VelocityEnabled**  A flag that indicates if velocity is enabled.
- **WorkCompleted**  A flag that indicates if work is completed.


### Microsoft.Windows.Update.Orchestrator.Client.MACUpdateInstallResult

This event reports the installation result details of the MACUpdate expedited application.

The following fields are available:

- **Completed**  Indicates whether the installation is complete.
- **DeploymentAttempted**  Whether the deployment was attempted.
- **DeploymentErrorCode**  The error code resulting from the deployment attempt.
- **DeploymentExtendedErrorCode**  The extended error code resulting from the deployment attempt.
- **InstallFailureReason**  Indicates the reason an install failed.
- **IsRetriableError**  Indications whether the error is retriable.
- **OperationStatus**  Returns the operation status result reported by the installation attempt.
- **Succeeded**  Indicates whether the installation succeeded.
- **UusVersion**  The version of the UUS stack currently active.
- **VelocityEnabled**  Indicates whether the velocity tag for MACUpdate is enabled.


### Microsoft.Windows.Update.Orchestrator.UpdatePolicyCacheRefresh

This event sends data on whether Update Management Policies were enabled on a device, to help keep Windows secure and up to date.

The following fields are available:

- **configuredPoliciescount**  Number of policies on the device.
- **policiesNamevaluesource**  Policy name and source of policy (group policy, MDM, or flight).
- **updateInstalluxsetting**  Indicates whether a user has set policies via a user experience option.
- **UusVersion**  Active version of UUS.


### Microsoft.Windows.Update.Orchestrator.Worker.EulaAccepted

Indicates that EULA for an update has been accepted.

The following fields are available:

- **HRESULT**  Was the EULA acceptance successful.
- **publisherIntent**  Publisher Intent ID associated with the update.
- **reason**  Reason for EULA acceptance.
- **update**  Update for which EULA has been accepted.
- **UusVersion**  The version of the UUS stack currently active.


### Microsoft.Windows.Update.Orchestrator.Worker.OobeUpdateApproved

This event signifies an update being approved around the OOBE time period. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **approved**  Flag to determine if it's approved or not.
- **provider**  The provider related to which the update is approved.
- **publisherIntent**  The publisher intent of the Update.
- **update**  Additional information about the Update.
- **UusVersion**  The version of the UUS Stack currently active.


### Microsoft.Windows.Update.Orchestrator.Worker.SetIpuMode

This event indicates that a provider is setting the inplace upgrade mode.

The following fields are available:

- **flightId**  Flight Identifier.
- **mode**  The value being set.
- **provider**  The provider that is getting the value.
- **reason**  The reason the value is being set.
- **uniqueId**  Update Identifier.
- **UusVersion**  The version of the UUS Stack currently active.


### Microsoft.Windows.Update.Orchestrator.Worker.UpdateActionCritical

This event informs the update related action being performed around the OOBE timeframe. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **action**  The type of action being performed (Install or download etc.).
- **connectivity**  Informs if the device is connected to network while this action is performed.
- **freeDiskSpaceInMB**  Amount of free disk space.
- **freeDiskSpaceInMBDelta**  Amount of free disk space.
- **interactive**  Informs if this action is caused due to user interaction.
- **nextAction**  Next action to be performed.
- **priority**  The CPU and IO priority this action is being performed on.
- **provider**  The provider that is being invoked to perform this action (WU, Legacy UO Provider etc.).
- **publisherIntent**  ID for the metadata associated with the update.
- **scenario**  The result of the action being performed.
- **update**  Update related metadata including UpdateId.
- **uptimeMinutes**  Duration USO for up for in the current boot session.
- **uptimeMinutesDelta**  The change in device uptime while this action was performed.
- **UusVersion**  The version of the UUS stack currently active.
- **wilActivity**  Wil Activity related information.

### Microsoft.Windows.Update.SIHClient.CheckForUpdatesStarted

Scan event for Server Initiated Healing client.

The following fields are available:

- **CallerApplicationName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EventInstanceID**  A globally unique identifier for event instance.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **TargetMetadataVersion**  The detected version of the self healing engine that is currently downloading or downloaded.
- **UusVersion**  UUS version.
- **WUDeviceID**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).


### Microsoft.Windows.Update.SIHClient.CheckForUpdatesSucceeded

Scan event for Server Initiated Healing client

The following fields are available:

- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable.
- **CachedEngineVersion**  The engine DLL version that is being used.
- **CallerApplicationName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EventInstanceID**  A globally unique identifier for event instance.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Launch event for Server Initiated Healing client.
- **TargetMetadataVersion**  The detected version of the self healing engine that is currently downloading or downloaded.
- **UusVersion**  Active UUS Version.
- **WUDeviceID**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).


### Microsoft.Windows.Update.SIHClient.DownloadSucceeded

Download process event for target update on SIH Client.

The following fields are available:

- **CachedEngineVersion**  Version of the Cache Engine.
- **CallerApplicationName**  Name of application making the Windows Update request. Used to identify context of request.
- **DownloadType**  Type of Download.
- **EventInstanceID**  ID of the Event Instance being fired.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **TargetMetadataVersion**  Version of the Metadata which is being targeted for an update.
- **UpdateID**  Identifier associated with the specific piece of content.
- **UusVersion**  The version of the Update Undocked Stack.
- **WUDeviceID**  Global Device ID utilized to identify Device.


### Microsoft.Windows.Update.SIHClient.TaskRunCompleted

This event is a launch event for Server Initiated Healing client.

The following fields are available:

- **CallerApplicationName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **CmdLineArgs**  Command line arguments passed in by the caller.
- **EventInstanceID**  A globally unique identifier for event instance.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UusVersion**  The version of the Update Undocked Stack.
- **WUDeviceID**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).


### Microsoft.Windows.Update.SIHClient.TaskRunStarted

This event is a launch event for Server Initiated Healing client.

The following fields are available:

- **CallerApplicationName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **CmdLineArgs**  Command line arguments passed in by the caller.
- **EventInstanceID**  A globally unique identifier for event instance.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UusVersion**  The version of the Update Undocked Stack.
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


### Microsoft.Windows.Update.Undocked.Brain.ActiveVersionUpdated

This event gets fired when the active version of the Undocked Update Stack is being updated/

The following fields are available:

- **Fallback**  Initiated Process.
- **FlightID**  FlightID associated.
- **Lock**  Lock Group Name.
- **MinutesSinceInstall**  Time to complete process.
- **Stable**  Is VersionActive from stable.
- **UpdateID**  Update identifier.
- **VersionActive**  The now active version of the UUS stack.
- **VersionPrevious**  The previous active version of the UUS stack.


### Microsoft.Windows.Update.Undocked.Brain.FailoverVersionExcluded

This event indicates Failover tried to exclude an UUS Version.

The following fields are available:

- **AlreadyExcluded**  Boolean.
- **Exception**  The exception encountered during exclusion.
- **ExclusionReason**  Reason for the exclusion.
- **Success**  Success or failure indicator.
- **VerFailover**  The actual UUS Version that failover was running for.


### Microsoft.Windows.Update.Undocked.UpdateAgent.DownloadRequest

Download request for undocked update agent

The following fields are available:

- **errorCode**  Error code.
- **flightId**  FlightID of the package.
- **rangeRequestState**  State of request for download range.
- **relatedCV**  CV for telemetry mapping.
- **result**  Result code.
- **sessionId**  Logging identification.
- **updateId**  Identifier for payload.
- **uusVersion**  Version of the UUS stack being installed.


### Microsoft.Windows.Update.Undocked.UpdateAgent.Initialize

Initialization event of undocked update agent.

The following fields are available:

- **errorCode**  Error code.
- **flightId**  FlightID of the package.
- **flightMetadata**  Metadata.
- **relatedCV**  CV for telemetry mapping.
- **result**  Result code.
- **sessionData**  Additional logging.
- **sessionId**  Logging identification.
- **updateId**  Identifier for payload.
- **uusVersion**  Version of the UUS stack being installed.


### Microsoft.Windows.Update.Undocked.UpdateAgent.Install

Install event of undocked update agent.

The following fields are available:

- **errorCode**  Error code.
- **flightId**  FlightID of the package.
- **folderExists**  Boolean.
- **packageNewer**  version of newer package.
- **relatedCV**  CV for telemetry mapping.
- **result**  Result code.
- **retryCount**  result count.
- **sessionId**  Logging identification.
- **updateId**  Identifier for payload.
- **uusVersion**  Version of the UUS stack being installed.


### Microsoft.Windows.Update.Undocked.UpdateAgent.ModeStart

Undocked update agent mode start event.

The following fields are available:

- **flightId**  FlightID of the package.
- **mode**  Install or Download mode.
- **relatedCV**  CV for telemetry mapping.
- **sessionId**  Logging identification.
- **updateId**  Identifier for payload.
- **uusVersion**  Version of the UUS stack being installed.


### Microsoft.Windows.Update.Undocked.UpdateAgent.Payload

Payload event of undocked update agent.

The following fields are available:

- **errorCode**  Error code.
- **fileCount**  Number of files to download.
- **flightId**  FlightID of the package.
- **mode**  Install or Download mode.
- **relatedCV**  CV for telemetry mapping.
- **result**  Result code.
- **sessionId**  Logging identification.
- **updateId**  Identifier for payload.
- **uusVersion**  Version of the UUS stack being installed.


### Microsoft.Windows.Update.WUClient.CheckForUpdatesCanceled

This event checks for updates canceled on the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **AADDeviceTicketResult**  Identifies result of AAD Device Token Acquisition.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce.
- **NumFailedAudienceMetadataSignatures**  Number of audience Publisher Intent metadata signatures checks which failed for new metadata synced.
- **NumFailedMetadataSignatures**  Number of metadata signatures checks which failed for new metadata synced download.
- **Props**  Commit Props (MergedUpdate).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **ServiceUrl**  Environment URL for which a device is configured to scan.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **SyncType**  Describes the type of scan for this event (1-Full Sync, 2-Delta Sync, 3-Full CatScan Sync, 4-Delta CatScan Sync).
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.CheckForUpdatesFailed

This event checks for failed updates on the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **AADDeviceTicketResult**  Identifies result of AAD Device Token Acquisition.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **FailedUpdateInfo**  Information about the update failure.
- **HandlerInfo**  Blob of Handler related information.
- **HandlerType**  Name of Handler.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce.
- **NumFailedAudienceMetadataSignatures**  Number of audience PublisherIntent metadata signatures checks which failed for new metadata synced.
- **NumFailedMetadataSignatures**  Number of metadata signatures checks which failed for new metadata synced download.
- **Props**  A bitmask for additional flags associated with the Windows Update request (IsInteractive, IsSeeker, AllowCachedResults, DriverSyncPassPerformed, IPv4, IPv6, Online, ExtendedMetadataIncl, WUfb).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **ServiceUrl**  Environment URL for which a device is configured to scan.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult.).
- **SyncType**  Describes the type of scan for this event (1-Full Sync, 2-Delta Sync, 3-Full CatScan Sync, 4-Delta CatScan Sync).
- **UndockedComponents**  Information consisting of Id, HR, ModuleVer, LoadProps, Path relating to the Undocked component.
- **UusVersion**  Active UUSVersion.


### Microsoft.Windows.Update.WUClient.CheckForUpdatesRetry

This event checks for update retries on the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **Props**  Commit Props (MergedUpdate).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **ServiceUrl**  Environment URL for which a device is configured to scan.
- **SyncType**  Describes the type of scan for this event (1-Full Sync, 2-Delta Sync, 3-Full CatScan Sync, 4-Delta CatScan Sync).
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClient.CheckForUpdatesScanInitFailed

This event checks for failed update initializations on the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **AADDeviceTicketResult**  Identifies result of AAD Device Token Acquisition.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce.
- **NumFailedAudienceMetadataSignatures**  Number of audience PublisherIntent metadata signatures checks which failed for new metadata synced.
- **NumFailedMetadataSignatures**  Number of metadata signatures checks which failed for new metadata synced download.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **ServiceUrl**  Environment URL for which a device is configured to scan.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **SyncType**  Describes the type of scan the event was.
- **UndockedComponents**  Information consisting of Id, HR, ModuleVer, LoadProps, Path relating to the Undocked component.
- **UusVersion**  Active UUS version.

### Microsoft.Windows.Update.WUClient.CheckForUpdatesServiceRegistrationFailed

This event checks for updates for failed service registrations the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **AADDeviceTicketResult**  Identifies result of AAD Device Token Acquisition.
- **CallerName**  For drivers targeted to a specific device model, this is the version release of the drivers being distributed to the device.
- **Context**  Context of failure.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce.
- **NumFailedAudienceMetadataSignatures**  Number of audience Publisher Intent metadata signatures checks which failed for new metadata synced.
- **NumFailedMetadataSignatures**  Number of audience Publisher Intent metadata signatures checks which failed for new metadata synced download.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **ServiceUrl**  Environment URL for which a device is configured to scan.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **SyncType**  Describes the type of scan the event was.
- **UndockedComponents**  Information consisting of Id, HR, ModuleVer, LoadProps, Path relating to the Undocked component.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.CheckForUpdatesSucceeded

This event checks for successful updates on the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **AADDeviceTicketInfo**  Identifies result of AAD Device Token Acquisition.
- **AADDeviceTicketResult**  Identifies result of AAD Device Token Acquisition.
- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **HandlerInfo**  HandlerInfo Blob.
- **HandlerType**  HandlerType blob.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce.
- **NumberOfApplicableUpdates**  Number of updates which were ultimately deemed applicable to the system after detection process is complete.
- **NumFailedAudienceMetadataSignatures**  Number of audience PublisherIntent metadata signatures checks which failed for new metadata synced.
- **NumFailedMetadataSignatures**  Number of metadata signatures checks which failed for new metadata synced download.
- **Props**  Commit Props (MergedUpdate).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **ServiceUrl**  Environment URL for which a device is configured to scan.
- **SyncType**  Describes the type of scan for this event (1-Full Sync, 2-Delta Sync, 3-Full CatScan Sync, 4-Delta CatScan Sync).
- **UusVersion**  Active UUS version.
- **WUFBInfo**  WufBinfoBlob.


### Microsoft.Windows.Update.WUClient.CommitFailed

This event checks for failed commits on the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Indicates the purpose of the event - whether because scan started, succeeded, failed, etc.
- **ExtendedStatusCode**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Commit Props (MergedUpdate).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UndockedComponents**  Information consisting of Id, HR, ModuleVer, LoadProps, Path relating to the Undocked component.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.CommitStarted

This event tracks the commit started event on the Windows Update client. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Commit Props (MergedUpdate).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Current active UUS version.


### Microsoft.Windows.Update.WUClient.CommitSucceeded

This event is used to track the commit succeeded process, after the update installation, when the software update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Indicates the purpose of the event - whether scan started, succeeded, failed, etc.
- **FlightId**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **HandlerType**  The specific ID of the flight the device is getting.
- **Props**  Commit Props (MergedUpdate).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UndockedComponents**  Information consisting of Id, HR, ModuleVer, LoadProps, Path relating to the Undocked component.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.DownloadCanceled

This event tracks the download canceled event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Name of application making the Windows Update request. Used to identify context of request.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **DownloadPriority**  Indicates the priority of the download activity.
- **DownloadStartTimeUTC**  Download start time to measure the length of the session.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerInfo**  HandlerInfo Blob.
- **HandlerType**  HandlerType Blob.
- **HostName**  Identifies the hostname.
- **NetworkCost**  Identifies the network cost.
- **NetworkRestrictionStatus**  When download is done, identifies whether network switch happened to restricted.
- **Props**  A bitmask for additional flags associated with the download request.
- **Reason** Cancel reason information.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.DownloadFailed

This event tracks the download failed event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Name of application making the Windows Update request. Used to identify context of request.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Provides context about distribution stack for reporting.
- **DownloadPriority**  Indicates the priority of the download activity.
- **DownloadStartTimeUTC**  Start time to measure length of session.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerInfo**  HandlerInfo Blob.
- **HandlerType**  HandlerType Blob.
- **HostName**  Identifies the hostname.
- **NetworkCost**  Identifies the network cost.
- **NetworkRestrictionStatus**  When download is done, identifies whether network switch happened to restricted.
- **Props**  Commit Props (MergedUpdate).
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


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
- **Props**  Commit Props (MergedUpdate)
- **RegulationResult**  The result code (HResult) of the last attempt to contact the regulation web service for download regulation of update content.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClient.DownloadQueued

This event tracks the download queued event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **DownloadPriority**  Indicates the priority of the download activity.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerInfo**  Blob of Handler related information.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Commit Props (MergedUpdate)
- **QueuedReason**  The reason in which a download has been queued.
- **RegulationResult**  The result code (HResult) of the last attempt to contact the regulation web service for download regulation of update content.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClient.DownloadResumed

This event is fired when the Download of content is continued from a pause state.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **DownloadPriority**  Indicates the priority of the download activity.
- **EventType**  Indicates the purpose of the event - whether because scan started, succeeded, failed, etc.
- **FlightId**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **HandlerInfo**  Blob of Handler related information.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Commit Props (MergedUpdate)
- **RegulationResult**  The result code (HResult) of the last attempt to contact the regulation web service for download regulation of update content.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClient.InstallCanceled

This event tracks the install canceled event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Install props (UsedSystemVolume, MergedUpdate, IsSuccessFailurePostReboot, isInteractive)
- **Reason**  Install canceled reason.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.InstallFailed

This event tracks the install failed event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerInfo**  Handler specific information.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Install props (UsedSystemVolume, MergedUpdate, IsSuccessFailurePostReboot, isInteractive)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UndockedComponents**  Information about the undocked components.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  UUS version.


### Microsoft.Windows.Update.WUClient.InstallRebootPending

This event tracks the install reboot pending event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props** Install props (UsedSystemVolume, MergedUpdate, IsSuccessFailurePostReboot, isInteractive)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.

### Microsoft.Windows.Update.WUClient.InstallStarted

The event tracks the install started event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props** Install props (UsedSystemVolume, MergedUpdate, IsSuccessFailurePostReboot, isInteractive)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.InstallSucceeded

The event tracks the successful install event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerInfo**  Handler specific datapoints.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props** Install props (UsedSystemVolume, MergedUpdate, IsSuccessFailurePostReboot, isInteractive)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UndockedComponents**  Information about the undocked components.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.RevertFailed

This event tracks the revert failed event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Commit Props (MergedUpdate)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UndockedComponents**  Information consisting of Id, HR, ModuleVer, LoadProps, Path relating to the Undocked component.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClient.RevertStarted

This event tracks the revert started event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Revert props (MergedUpdate)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClient.RevertSucceeded

The event tracks the successful revert event when the update client is trying to update the device. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BundleId**  Identifier associated with the specific content bundle; shouldn't be all zeros if the bundleID was found.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ClassificationId**  Classification identifier of the update content.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.).
- **Props**  Revert props (MergedUpdate)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **UndockedComponents**  Information consisting of Id, HR, ModuleVer, LoadProps, Path relating to the Undocked component.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClientExt.DownloadCheckpoint

This is a checkpoint event between the Windows Update download phases for UUP content. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **FileId**  Unique identifier for the downloaded file.
- **FileName**  Name of the downloaded file.
- **FlightId**  The specific ID of the flight the device is getting.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClientExt.DownloadHeartbeat

This event allows tracking of ongoing downloads and contains data to explain the current state of the download. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **BytesTotal**  Total bytes to transfer for this content.
- **BytesTransferred**  Total bytes transferred for this content at the time of heartbeat.
- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **ConnectionStatus**  Indicates the connectivity state of the device at the time of heartbeat.
- **CurrentError**  Last (transient) error encountered by the active download.
- **DownloadHBFlags**  Flags indicating if power state is ignored.
- **DownloadState**  Current state of the active download for this content (queued, suspended, progressing).
- **EventType**  Possible values are "Child", "Bundle", "Release" or "Driver".
- **FlightId**  The specific ID of the flight the device is getting.
- **MOAppDownloadLimit**  Mobile operator cap on size of application downloads, if any.
- **MOUpdateDownloadLimit**  Mobile operator cap on size of OS update downloads, if any.
- **PowerState**  Indicates the power state of the device at the time of heartbeart (DC, AC, Battery Saver, Connected Standby).
- **Props**  Commit Props (MergedUpdate)
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **ResumeCount**  Number of times this active download has resumed from a suspended state.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **SuspendCount**  Number of times this active download has entered a suspended state.
- **SuspendReason**  Last reason for which this active download has entered suspended state.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClientExt.UpdateMetadataIntegrityFragmentSigning

This event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EndpointUrl**  URL of the endpoint where client obtains update metadata. Used to identify test vs staging vs production environments.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **LeafCertId**  IntegralIDfrom the FragmentSigning data for certificate which failed.
- **ListOfSHA256OfIntermediateCerData**  List of Base64 string of hash of intermediate cert data.
- **MetadataIntegrityMode**  Base64 string of the signature associated with the update metadata (specified by revision id).
- **RawMode**  Raw unparsed mode string from the SLS response. Null if not applicable.
- **RawValidityWindowInDays**  Raw unparsed string of validity window in effect when verifying the timestamp.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **SHA256OfLeafCerData**  Base64 string of hash of the leaf cert data.
- **SLSPrograms**  A test program a machine may be opted in. Examples include "Canary" and "Insider Fast".
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UusVersion**  Active UUS version.


### Microsoft.Windows.Update.WUClientExt.UpdateMetadataIntegrityGeneral

Ensures Windows Updates are secure and complete. Event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack.

The following fields are available:

- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EndpointUrl**  Ensures Windows Updates are secure and complete. Event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce
- **RawMode**  Raw unparsed mode string from the SLS response. May be null if not applicable.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.)
- **SLSPrograms**  A test program a machine may be opted in. Examples include "Canary" and "Insider Fast".
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult)
- **UusVersion**  The version of the Update Undocked Stack


### Microsoft.Windows.Update.WUClientExt.UpdateMetadataIntegritySignature

This event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EndpointUrl**  URL of the endpoint where client obtains update metadata. Used to identify test vs staging vs production environments.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **LeafCertId**  IntegralIDfrom the FragmentSigning data for certificate which failed.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce.
- **MetadataSignature**  Base64 string of the signature associated with the update metadata (specified by revision id).
- **RawMode**  Raw unparsed mode string from the SLS response. Null if not applicable.
- **RevisionId**  Identifies the revision of this specific piece of content.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **SHA256OfLeafCertPublicKey**  Base64 string of hash of the leaf cert public key.
- **SHA256OfTimestampToken**  Base64 string of hash of the timestamp token blob.
- **SignatureAlgorithm**  Hash algorithm for the metadata signature.
- **SLSPrograms**  A test program a machine may be opted in. Examples include "Canary" and "Insider Fast".
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TimestampTokenId**  Created time encoded in the timestamp blob. This will be zeroed if the token is malformed and decoding failed.
- **UpdateID**  String of update ID and version number.
- **UusVersion**  The version of the Update Undocked Stack.


### Microsoft.Windows.Update.WUClientExt.UpdateMetadataIntegrityTimestamp

This event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CallerName**  Name of the application making the Windows Update Request. Used to identify context of the request.
- **EndpointUrl**  URL of the endpoint where client obtains update metadata. Used to identify test vs staging vs production environments.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode wasn't specific enough.
- **MetadataIntegrityMode**  Mode of update transport metadata integrity check. 0-Unknown, 1-Ignoe, 2-Audit, 3-Enforce
- **RawMode**  Raw unparsed mode string from the SLS response. Null if not applicable.
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Windows Store, etc.).
- **SHA256OfTimestampToken**  Base64 string of hash of the timestamp token blob.
- **SLSPrograms**  A test program a machine may be opted in. Examples include "Canary" and "Insider Fast".
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TimestampTokenId**  Created time encoded in the timestamp blob. This will be zeroed if the token is itself malformed and decoding failed.
- **UusVersion**  Active UUS Version.
- **ValidityWindowInDays**  Validity window in effect when verifying the timestamp.


### Microsoft.Windows.Update.WUClientExt.UUSLoadModuleFailed

This is the UUSLoadModule failed event and is used to track the failure of loading an undocked component.  The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **ModulePath**  Path of the undocked module.
- **ModuleVersion**  Version of the undocked module.
- **Props**  A bitmask for flags associated with loading the undocked module.
- **RelatedCV**  The previous correlation vector that was used by the client, before swapping with a new one.
- **StatusCode**  Result of the undocked module loading operation.
- **UusSessionID**  Unique ID used to create the UUS session.
- **UusVersion**  Active UUS version.


## Winlogon events

### Microsoft.Windows.Security.Winlogon.SetupCompleteLogon

This event signals the completion of the setup process. It happens only once during the first logon.