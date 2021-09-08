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
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
audience: ITPro
ms.date: 09/08/2021
ms.reviewer:
---


# Windows 10, version 1809 basic level Windows diagnostic events and fields

 **Applies to**

- Windows 10, version 1809


The Basic level gathers a limited set of information that is critical for understanding the device and its configuration including: basic device information, quality-related information, app compatibility, and Microsoft Store. When the level is set to Basic, it also includes the Security level information.

The Basic level helps to identify problems that can occur on a particular device hardware or software configuration. For example, it can help determine if crashes are more frequent on devices with a specific amount of memory or that are running a particular driver version. This helps Microsoft fix operating system or app problems.

Use this article to learn about diagnostic events, grouped by event area, and the fields within each event. A brief description is provided for each field. Every event generated includes common data, which collects device data.

You can learn more about Windows functional and diagnostic data through these articles:

- [Windows 10, version 20H2 and Windows 10, version 2004 basic diagnostic events and fields](required-windows-diagnostic-data-events-and-fields-2004.md)
- [Windows 10, version 1903 and Windows 10, version 1909 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1903.md)
- [Windows 10, version 1803 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1803.md)
- [Windows 10, version 1709 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1709.md)
- [Windows 10, version 1703 basic diagnostic events and fields](basic-level-windows-diagnostic-events-and-fields-1703.md)
- [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
- [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md)




## Account trace logging provider events

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
- **Result**  The HResult error.


## AppLocker events

### Microsoft.Windows.Security.AppLockerCSP.ActivityStoppedAutomatically

Automatically closed activity for start/stop operations that aren't explicitly closed.



### Microsoft.Windows.Security.AppLockerCSP.AddParams

This event indicates the parameters passed to the Add function of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **child**  The child URI of the node to add.
- **uri**  URI of the node relative to %SYSTEM32%/AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.AddStart

This event indicates the start of an Add operation for the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.



### Microsoft.Windows.Security.AppLockerCSP.AddStop

This event indicates the end of an Add operation for the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **hr**  The HRESULT returned by Add function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.CAppLockerCSP::Rollback

This event provides the result of the Rollback operation in the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **oldId**  Previous id for the CSP transaction.
- **txId**  Current id for the CSP transaction.


### Microsoft.Windows.Security.AppLockerCSP.ClearParams

This event provides the parameters passed to the Clear operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **uri**  The URI relative to the %SYSTEM32%\AppLocker folder.


### Microsoft.Windows.Security.AppLockerCSP.ClearStart

This event indicates the start of the Clear operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.



### Microsoft.Windows.Security.AppLockerCSP.ClearStop

This event indicates the end of the Clear operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **hr**  HRESULT reported at the end of the 'Clear' function.


### Microsoft.Windows.Security.AppLockerCSP.ConfigManagerNotificationStart

This event indicates the start of the Configuration Manager Notification operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **NotifyState**  State sent by ConfigManager to AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.ConfigManagerNotificationStop

This event indicates the end of the Configuration Manager Notification operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **hr**  HRESULT returned by the ConfigManagerNotification function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.CreateNodeInstanceParams

This event provides the parameters that were passed to the Create Node Instance operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **NodeId**  NodeId passed to CreateNodeInstance.
- **nodeOps**  NodeOperations parameter passed to CreateNodeInstance.
- **uri**  URI passed to CreateNodeInstance, relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.CreateNodeInstanceStart

This event indicates the start of the Create Node Instance operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.



### Microsoft.Windows.Security.AppLockerCSP.CreateNodeInstanceStop

This event indicates the end of the Create Node Instance operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **hr**  HRESULT returned by the CreateNodeInstance function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.DeleteChildParams

This event provides the parameters passed to the Delete Child operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **child**  The child URI of the node to delete.
- **uri**  URI relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.DeleteChildStart

This event indicates the start of the Delete Child operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.



### Microsoft.Windows.Security.AppLockerCSP.DeleteChildStop

This event indicates the end of the Delete Child operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **hr**  HRESULT returned by the DeleteChild function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.EnumPolicies

This event provides the logged Uniform Resource Identifier (URI) relative to %SYSTEM32%\AppLocker if the plug-in GUID is null or the Configuration Service Provider (CSP) doesn't believe the old policy is present.

The following fields are available:

- **uri**  URI relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.GetChildNodeNamesParams

This event provides the parameters passed to the Get Child Node Names operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **uri**  URI relative to %SYSTEM32%/AppLocker for MDM node.


### Microsoft.Windows.Security.AppLockerCSP.GetChildNodeNamesStart

This event indicates the start of the Get Child Node Names operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.



### Microsoft.Windows.Security.AppLockerCSP.GetChildNodeNamesStop

This event indicates the end of the Get Child Node Names operation of the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **child[0]**  If function succeeded, the first child's name, else "NA".
- **count**  If function succeeded, the number of child node names returned by the function, else 0.
- **hr**  HRESULT returned by the GetChildNodeNames function of AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.GetLatestId

This event provides the latest time-stamped unique identifier in the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **dirId**  The latest directory identifier found by GetLatestId.
- **id**  The id returned by GetLatestId if id > 0 - otherwise the dirId parameter.


### Microsoft.Windows.Security.AppLockerCSP.HResultException

This event provides the result code (HRESULT) generated by any arbitrary function in the AppLocker Configuration Service Provider (CSP).

The following fields are available:

- **file**  File in the OS code base in which the exception occurs.
- **function**  Function in the OS code base in which the exception occurs.
- **hr**  HRESULT that is reported.
- **line**  Line in the file in the OS code base in which the exception occurs.


### Microsoft.Windows.Security.AppLockerCSP.SetValueParams

This event provides the parameters that were passed to the SetValue operation in the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.

The following fields are available:

- **dataLength**  Length of the value to set.
- **uri**  The node URI to that should contain the value, relative to %SYSTEM32%\AppLocker.


### Microsoft.Windows.Security.AppLockerCSP.SetValueStart

This event indicates the start of the SetValue operation in the AppLocker Configuration Service Provider (CSP) to help keep Windows secure.



### Microsoft.Windows.Security.AppLockerCSP.SetValueStop

End of the "SetValue" operation for the AppLockerCSP node.

The following fields are available:

- **hr**  HRESULT returned by the SetValue function in AppLockerCSP.


### Microsoft.Windows.Security.AppLockerCSP.TryRemediateMissingPolicies

This event provides information for fixing a policy in the AppLocker Configuration Service Provider (CSP) to help keep Windows secure. It includes Uniform Resource Identifier (URI) relative to %SYSTEM32%\AppLocker that needs to be fixed.

The following fields are available:

- **uri**  URI for node relative to %SYSTEM32%/AppLocker.


## Appraiser events

### Microsoft.Windows.Appraiser.General.ChecksumTotalPictureCount

This event lists the types of objects and how many of each exist on the client device. This allows for a quick way to ensure that the records present on the server match what is present on the client. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **DatasourceApplicationFile_19ASetup**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_19H1**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_19H1Setup**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_20H1**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_20H1Setup**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_21H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceApplicationFile_RS1**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS2**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS3**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS3Setup**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS4**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS4Setup**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS5**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_RS5Setup**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_TH1**  The total number of objects of this type present on this device.
- **DatasourceApplicationFile_TH2**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_19ASetup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_19H1**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_19H1Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_20H1**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_20H1Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_21H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDevicePnp_RS1**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS2**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS3**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS3Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS4**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS4Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS5**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_RS5Setup**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_TH1**  The total number of objects of this type present on this device.
- **DatasourceDevicePnp_TH2**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_19ASetup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_19H1**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_19H1Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_20H1**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_20H1Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_21H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceDriverPackage_RS1**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS2**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS3**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS3Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS4**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS4Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS5**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_RS5Setup**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_TH1**  The total number of objects of this type present on this device.
- **DatasourceDriverPackage_TH2**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_19ASetup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_19H1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_19H1Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_20H1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_20H1Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_21H1Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoBlock_RS1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS2**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS3**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS3Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS4**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS4Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS5**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_RS5Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_TH1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoBlock_TH2**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_19ASetup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_19H1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_19H1Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_20H1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_20H1Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_21H1Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPassive_RS1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS2**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS3**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS3Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS4**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS4Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS5**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_RS5Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_TH1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPassive_TH2**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_19ASetup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_19H1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_19H1Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_20H1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_20H1Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_21H1Setup**  The count of the number of this particular object type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS2**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS3**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS3Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS4**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS4Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS5**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_RS5Setup**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_TH1**  The total number of objects of this type present on this device.
- **DataSourceMatchingInfoPostUpgrade_TH2**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_19ASetup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_19H1**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_19H1Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_20H1**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_20H1Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_21H1Setup**  The count of the number of this particular object type present on this device.
- **DatasourceSystemBios_RS1**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS2**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS3**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS3Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS4**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS4Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS5**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_RS5Setup**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_TH1**  The total number of objects of this type present on this device.
- **DatasourceSystemBios_TH2**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_19ASetup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_19H1**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_20H1**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionApplicationFile_RS1**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS2**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS3**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS4**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS5**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_TH1**  The total number of objects of this type present on this device.
- **DecisionApplicationFile_TH2**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_19ASetup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_19H1**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_20H1**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionDevicePnp_RS1**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS2**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS3**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS4**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS5**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_TH1**  The total number of objects of this type present on this device.
- **DecisionDevicePnp_TH2**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_19ASetup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_19H1**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_20H1**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionDriverPackage_RS1**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS2**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS3**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS4**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS5**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_TH1**  The total number of objects of this type present on this device.
- **DecisionDriverPackage_TH2**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_19ASetup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_19H1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_20H1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoBlock_RS1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS2**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS3**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS4**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS5**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_TH1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoBlock_TH2**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_19ASetup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_19H1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_20H1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPassive_RS1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS2**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS3**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS4**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS5**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_TH1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPassive_TH2**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_19ASetup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_19H1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_20H1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS2**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS3**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS4**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS5**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_TH1**  The total number of objects of this type present on this device.
- **DecisionMatchingInfoPostUpgrade_TH2**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_19ASetup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_19H1**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_20H1**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionMediaCenter_RS1**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS2**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS3**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS4**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS5**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_TH1**  The total number of objects of this type present on this device.
- **DecisionMediaCenter_TH2**  The total number of objects of this type present on this device.
- **DecisionSystemBios_19ASetup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_19H1**  The total number of objects of this type present on this device.
- **DecisionSystemBios_19H1Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_20H1**  The total number of objects of this type present on this device.
- **DecisionSystemBios_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_21H1Setup**  The count of the number of this particular object type present on this device.
- **DecisionSystemBios_RS1**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS2**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS3**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS3Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS4**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS4Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS5**  The total number of objects of this type present on this device.
- **DecisionSystemBios_RS5Setup**  The total number of objects of this type present on this device.
- **DecisionSystemBios_TH1**  The total number of objects of this type present on this device.
- **DecisionSystemBios_TH2**  The total number of objects of this type present on this device.
- **DecisionSystemProcessor_RS2**  The total number of objects of this type present on this device.
- **DecisionTest_20H1Setup**  The total number of objects of this type present on this device.
- **DecisionTest_21H1Setup**  The total number of objects of this type present on this device.
- **DecisionTest_RS1**  The total number of objects of this type present on this device.
- **InventoryApplicationFile**  The total number of objects of this type present on this device.
- **InventoryDeviceContainer**  The total number of objects of this type present on this device.
- **InventoryDevicePnp**  The total number of objects of this type present on this device.
- **InventoryDriverBinary**  The total number of objects of this type present on this device.
- **InventoryDriverPackage**  The total number of objects of this type present on this device.
- **InventoryLanguagePack**  The total number of objects of this type present on this device.
- **InventoryMediaCenter**  The total number of objects of this type present on this device.
- **InventorySystemBios**  The total number of objects of this type present on this device.
- **InventorySystemMachine**  The total number of objects of this type present on this device.
- **InventorySystemProcessor**  The total number of objects of this type present on this device.
- **InventoryTest**  The total number of objects of this type present on this device.
- **InventoryUplevelDriverPackage**  The total number of objects of this type present on this device.
- **PCFP**  The total number of objects of this type present on this device.
- **SystemMemory**  The total number of objects of this type present on this device.
- **SystemProcessorCompareExchange**  The total number of objects of this type present on this device.
- **SystemProcessorLahfSahf**  The total number of objects of this type present on this device.
- **SystemProcessorNx**  The total number of objects of this type present on this device.
- **SystemProcessorPrefetchW**  The total number of objects of this type present on this device.
- **SystemProcessorSse2**  The total number of objects of this type present on this device.
- **SystemTouch**  The total number of objects of this type present on this device.
- **SystemWim**  The total number of objects of this type present on this device.
- **SystemWindowsActivationStatus**  The total number of objects of this type present on this device.
- **SystemWlan**  The total number of objects of this type present on this device.
- **Wmdrm_19ASetup**  The total number of objects of this type present on this device.
- **Wmdrm_19H1**  The total number of objects of this type present on this device.
- **Wmdrm_19H1Setup**  The total number of objects of this type present on this device.
- **Wmdrm_20H1**  The total number of objects of this type present on this device.
- **Wmdrm_20H1Setup**  The total number of objects of this type present on this device.
- **Wmdrm_21H1Setup**  The count of the number of this particular object type present on this device.
- **Wmdrm_RS1**  The total number of objects of this type present on this device.
- **Wmdrm_RS2**  The total number of objects of this type present on this device.
- **Wmdrm_RS3**  The total number of objects of this type present on this device.
- **Wmdrm_RS3Setup**  The total number of objects of this type present on this device.
- **Wmdrm_RS4**  The total number of objects of this type present on this device.
- **Wmdrm_RS4Setup**  The total number of objects of this type present on this device.
- **Wmdrm_RS5**  The total number of objects of this type present on this device.
- **Wmdrm_RS5Setup**  The total number of objects of this type present on this device.
- **Wmdrm_TH1**  The total number of objects of this type present on this device.
- **Wmdrm_TH2**  The total number of objects of this type present on this device.


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


### Microsoft.Windows.Appraiser.General.DatasourceDevicePnpAdd

This event sends compatibility data for a Plug and Play device, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **ActiveNetworkConnection**  Indicates whether the device is an active network device.
- **AppraiserVersion**  The version of the appraiser file generating the events.
- **CosDeviceRating**  An enumeration that indicates if there is a driver on the target operating system.
- **CosDeviceSolution**  An enumeration that indicates how a driver on the target operating system is available.
- **CosDeviceSolutionUrl**  Microsoft.Windows.Appraiser.General.DatasourceDevicePnpAdd . Empty string
- **CosPopulatedFromId**  The expected uplevel driver matching ID based on driver coverage data.
- **IsBootCritical**  Indicates whether the device boot is critical.
- **UplevelInboxDriver**  Indicates whether there is a driver uplevel for this device.
- **WuDriverCoverage**  Indicates whether there is a driver uplevel for this device, according to Windows Update.
- **WuDriverUpdateId**  The Windows Update ID of the applicable uplevel driver.
- **WuPopulatedFromId**  The expected uplevel driver matching ID based on driver coverage from Windows Update.


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


### Microsoft.Windows.Appraiser.General.DatasourceDriverPackageAdd

This event sends compatibility database data about driver packages to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


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

This event sends blocking data about any compatibility blocking entries on the system that are not directly related to specific applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **ResolveAttempted**  This will always be an empty string when sending diagnostic data.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockRemove

This event indicates that the DataSourceMatchingInfoBlock object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoBlockStartSync

This event indicates that a full set of DataSourceMatchingInfoBlockStAdd events has completed being sent. This event is used to make compatibility decisions about files to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPassiveAdd

This event sends compatibility database information about non-blocking compatibility entries on the system that are not keyed by either applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


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


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeAdd

This event sends compatibility database information about entries requiring reinstallation after an upgrade on the system that are not keyed by either applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeRemove

This event indicates that the DataSourceMatchingInfoPostUpgrade object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DataSourceMatchingInfoPostUpgradeStartSync

This event indicates that a new set of DataSourceMatchingInfoPostUpgradeAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosAdd

This event sends compatibility database information about the BIOS to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosRemove

This event indicates that the DatasourceSystemBios object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DatasourceSystemBiosStartSync

This event indicates that a new set of DatasourceSystemBiosAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionApplicationFileAdd

This event sends compatibility decision data about a file to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file that is generating the events.
- **BlockAlreadyInbox**  The uplevel runtime block on the file already existed on the current OS.
- **BlockingApplication**  Indicates whether there are any application issues that interfere with the upgrade due to the file in question.
- **DisplayGenericMessage**  Will be a generic message be shown for this file?
- **DisplayGenericMessageGated**  Indicates whether a generic message be shown for this file.
- **HardBlock**  This file is blocked in the SDB.
- **HasUxBlockOverride**  Does the file have a block that is overridden by a tag in the SDB?
- **MigApplication**  Does the file have a MigXML from the SDB associated with it that applies to the current upgrade mode?
- **MigRemoval**  Does the file have a MigXML from the SDB that will cause the app to be removed on upgrade?
- **NeedsDismissAction**  Will the file cause an action that can be dismissed?
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

This event indicates that the DecisionApplicationFile object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionApplicationFileStartSync

This event indicates that a new set of DecisionApplicationFileAdd events will be sent. This event is used to make compatibility decisions about a file to help keep Windows up to date.

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
- **BlockUpgradeIfDriverBlocked**  Is the PNP device both boot critical and does not have a driver included with the OS?
- **BlockUpgradeIfDriverBlockedAndOnlyActiveNetwork**  Is this PNP device the only active network device?
- **DisplayGenericMessage**  Will a generic message be shown during Setup for this PNP device?
- **DisplayGenericMessageGated**  Indicates whether a generic message will be shown during Setup for this PNP device.
- **DriverAvailableInbox**  Is a driver included with the operating system for this PNP device?
- **DriverAvailableOnline**  Is there a driver for this PNP device on Windows Update?
- **DriverAvailableUplevel**  Is there a driver on Windows Update or included with the operating system for this PNP device?
- **DriverBlockOverridden**  Is there is a driver block on the device that has been overridden?
- **NeedsDismissAction**  Will the user would need to dismiss a warning during Setup for this device?
- **NotRegressed**  Does the device have a problem code on the source OS that is no better than the one it would have on the target OS?
- **SdbDeviceBlockUpgrade**  Is there an SDB block on the PNP device that blocks upgrade?
- **SdbDriverBlockOverridden**  Is there an SDB block on the PNP device that blocks upgrade, but that block was overridden?


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpRemove

This event Indicates that the DecisionDevicePnp object represented by the objectInstanceId is no longer present. This event is used to make compatibility decisions about PNP devices to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDevicePnpStartSync

This event indicates that a new set of DecisionDevicePnpAdd events will be sent. This event is used to make compatibility decisions about PNP devices to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionDriverPackageAdd

This event sends decision data about driver package compatibility to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **DisplayGenericMessageGated**  Indicates whether a generic offer block message will be shown for this driver package.
- **DriverBlockOverridden**  Does the driver package have an SDB block that blocks it from migrating, but that block has been overridden?
- **DriverIsDeviceBlocked**  Was the driver package was blocked because of a device block?
- **DriverIsDriverBlocked**  Is the driver package blocked because of a driver block?
- **DriverIsTroubleshooterBlocked**  Indicates whether the driver package is blocked because of a troubleshooter block.
- **DriverShouldNotMigrate**  Should the driver package be migrated during upgrade?
- **SdbDriverBlockOverridden**  Does the driver package have an SDB block that blocks it from migrating, but that block has been overridden?


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

This event sends compatibility decision data about blocking entries on the system that are not keyed by either applications or devices, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **BlockingApplication**  Are there are any application issues that interfere with upgrade due to matching info blocks?
- **DisplayGenericMessage**  Will a generic message be shown for this block?
- **NeedsDismissAction**  Will the file cause an action that can be dismissed?
- **NeedsUninstallAction**  Does the user need to take an action in setup due to a matching info block?
- **SdbBlockUpgrade**  Is a matching info block blocking upgrade?
- **SdbBlockUpgradeCanReinstall**  Is a matching info block blocking upgrade, but has the can reinstall tag?
- **SdbBlockUpgradeUntilUpdate**  Is a matching info block blocking upgrade but has the until update tag?
- **SdbReinstallUpgradeWarn**  The file is tagged as needing to be reinstalled after upgrade with a warning in the SDB. It does not block upgrade.


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

This event sends compatibility decision data about non-blocking entries on the system that are not keyed by either applications or devices, to help keep Windows up to date.

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
- **SdbReinstallUpgrade**  The file is tagged as needing to be reinstalled after upgrade in the compatibility database (but is not blocking upgrade).


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeRemove

This event indicates that the DecisionMatchingInfoPostUpgrade object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMatchingInfoPostUpgradeStartSync

This event indicates that a new set of DecisionMatchingInfoPostUpgradeAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

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

This event indicates that the DecisionMediaCenter object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionMediaCenterStartSync

This event indicates that a new set of DecisionMediaCenterAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosAdd

This event sends compatibility decision data about the BIOS to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file generating the events.
- **Blocking**  Is the device blocked from upgrade due to a BIOS block?
- **DisplayGenericMessageGated**  Indicates whether a generic offer block message will be shown for the bios.
- **HasBiosBlock**  Does the device have a BIOS block?


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosRemove

This event indicates that the DecisionSystemBios object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemBiosStartSync

This event indicates that a new set of DecisionSystemBiosAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemDiskSizeAdd

This event indicates that this object type was added. This data refers to the Disk size in the device. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **Blocking**  Appraiser decision during evaluation of hardware requirements during OS upgrade.
- **TotalSize**  Total disk size in Mb.


### Microsoft.Windows.Appraiser.General.DecisionSystemDiskSizeStartSync

Start sync event for physical disk size data. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemMemoryAdd

This event sends compatibility decision data about the system memory to help keep Windows up to date. Microsoft uses this information to understand and address problems regarding system memory for computers receiving updates.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Blocking**  Blocking information.
- **BlockingSystemGeneralScenario**  Decision about upgrade eligibility based on RAM.
- **MemoryRequirementViolated**  Memory information.
- **SystemRequirementViolatedGeneral**  System requirement information.


### Microsoft.Windows.Appraiser.General.DecisionSystemMemoryStartSync

The DecisionSystemMemoryStartSync event indicates that a new set of DecisionSystemMemoryAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Appraiser.General.DecisionSystemProcessorCpuCoresAdd

This data attribute refers to the number of Cores a CPU supports. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **Blocking**  The Appraisal decision about eligibility to upgrade.
- **CpuCores**  Number of CPU Cores.


### Microsoft.Windows.Appraiser.General.DecisionSystemProcessorCpuCoresStartSync

This event signals the start of telemetry collection for CPU cores in Appraiser. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemProcessorCpuModelAdd

This event sends true/false compatibility decision data about the CPU. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **Armv81Support**  Arm v8.1 Atomics support.
- **Blocking**  Appraiser decision about eligibility to upgrade.
- **CpuFamily**  Cpu family.
- **CpuModel**  Cpu model.
- **CpuStepping**  Cpu stepping.
- **CpuVendor**  Cpu vendor.


### Microsoft.Windows.Appraiser.General.DecisionSystemProcessorCpuModelStartSync

The DecisionSystemProcessorCpuModelStartSync event indicates that a new set of DecisionSystemProcessorCpuModelAdd events will be sent. This event is used to make compatibility decisions about the CPU. Microsoft uses this information to understand and address problems regarding the CPU for computers receiving updates. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DecisionSystemProcessorCpuSpeedAdd

This event sends compatibility decision data about the CPU, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **Blocking**  Appraiser OS eligibility decision.
- **Mhz**  CPU speed in MHz.


### Microsoft.Windows.Appraiser.General.DecisionSystemProcessorCpuSpeedStartSync

This event collects data for CPU speed in MHz. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


### Microsoft.Windows.Appraiser.General.DecisionTpmVersionAdd

This event collects data about the Trusted Platform Module (TPM) in the device. TPM technology is designed to provide hardware-based, security-related functions. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.
- **Blocking**  Appraiser upgradeability decision based on the device's TPM support.
- **TpmVersionInfo**  The version of Trusted Platform Module (TPM) technology in the device.


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


### Microsoft.Windows.Appraiser.General.DecisionUefiSecureBootStartSync

Start sync event data for UEFI Secure boot. UEFI is a verification mechanism for ensuring that code launched by firmware is trusted. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the appraiser file generating the events.


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


### Microsoft.Windows.Appraiser.General.InventoryLanguagePackRemove

This event indicates that the InventoryLanguagePack object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.InventoryMediaCenterRemove

This event indicates that the InventoryMediaCenter object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.InventorySystemBiosRemove

This event indicates that the InventorySystemBios object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.InventorySystemBiosStartSync

This event indicates that a new set of InventorySystemBiosAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser binary (executable) generating the events.


### Microsoft.Windows.Appraiser.General.InventoryUplevelDriverPackageAdd

This event runs only during setup. It provides a listing of the uplevel driver packages that were downloaded before the upgrade. It is critical in understanding if failures in setup can be traced to not having sufficient uplevel drivers before the upgrade. The data collected with this event is used to help keep Windows up to date.

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
- **CensusId**  A unique hardware identifier.
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


### Microsoft.Windows.Appraiser.General.SystemMemoryRemove

This event that the SystemMemory object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.SystemProcessorCompareExchangeRemove

This event indicates that the SystemProcessorCompareExchange object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.SystemProcessorLahfSahfRemove

This event indicates that the SystemProcessorLahfSahf object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.SystemProcessorNxRemove

This event indicates that the SystemProcessorNx object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorNxStartSync

This event  indicates that a new set of SystemProcessorNxAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

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

This event indicates that the SystemProcessorPrefetchW object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.SystemProcessorPrefetchWStartSync

This event indicates that a new set of SystemProcessorPrefetchWAdd events will be sent. The data collected with this event is used to help keep Windows up to date.

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

This event indicates that the SystemProcessorSse2 object is no longer present. The data collected with this event is used to help keep Windows up to date.

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


### Microsoft.Windows.Appraiser.General.SystemTouchRemove

This event indicates that the SystemTouch object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.SystemWimRemove

This event indicates that the SystemWim object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.SystemWindowsActivationStatusRemove

This event indicates that the SystemWindowsActivationStatus object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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


### Microsoft.Windows.Appraiser.General.SystemWlanRemove

This event indicates that the SystemWlan object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


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
- **DeadlineDate**  A timestamp representing the deadline date, which is the time until which appraiser will wait to do a full scan.
- **EnterpriseRun**  Indicates whether the diagnostic data run is an enterprise run, which means appraiser was run from the command line with an extra enterprise parameter.
- **FullSync**  Indicates if Appraiser is performing a full sync, which means that full set of events representing the state of the machine are sent. Otherwise, only the changes from the previous run are sent.
- **InboxDataVersion**  The original version of the data files before retrieving any newer version.
- **IndicatorsWritten**  Indicates if all relevant UEX indicators were successfully written or updated.
- **InventoryFullSync**  Indicates if inventory is performing a full sync, which means that the full set of events representing the inventory of machine are sent.
- **PCFP**  An ID for the system calculated by hashing hardware identifiers.
- **PerfBackoff**  Indicates if the run was invoked with logic to stop running when a user is present. Helps to understand why a run may have a longer elapsed time than normal.
- **PerfBackoffInsurance**  Indicates if appraiser is running without performance backoff because it has run with perf backoff and failed to complete several times in a row.
- **RunAppraiser**  Indicates if Appraiser was set to run at all. If this if false, it is understood that data events will not be received from this device.
- **RunDate**  The date that the diagnostic data run was stated, expressed as a filetime.
- **RunGeneralTel**  Indicates if the generaltel.dll component was run. Generaltel collects additional diagnostic data on an infrequent schedule and only from machines at diagnostic data levels higher than Basic.
- **RunOnline**  Indicates if appraiser was able to connect to Windows Update and theefore is making decisions using up-to-date driver coverage information.
- **RunResult**  The hresult of the Appraiser diagnostic data run.
- **ScheduledUploadDay**  The day scheduled for the upload.
- **SendingUtc**  Indicates whether the Appraiser client is sending events during the current diagnostic data run.
- **StoreHandleIsNotNull**  Obsolete, always set to false
- **TelementrySent**  Indicates whether diagnostic data was successfully sent.
- **ThrottlingUtc**  Indicates whether the Appraiser client is throttling its output of CUET events to avoid being disabled. This increases runtime but also diagnostic data reliability.
- **Time**  The client time of the event.
- **VerboseMode**  Indicates if appraiser ran in Verbose mode, which is a test-only mode with extra logging.
- **WhyFullSyncWithoutTablePrefix**  Indicates the reason or reasons that a full sync was generated.
- **WhyRunSkipped**  Indicates the reason or reasons that an appraiser run was skipped.


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

This event indicates that the Wmdrm object is no longer present. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


### Microsoft.Windows.Appraiser.General.WmdrmStartSync

The WmdrmStartSync event indicates that a new set of WmdrmAdd events will be sent. This event is used to understand the usage of older digital rights management on the system, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AppraiserVersion**  The version of the Appraiser file that is generating the events.


## Audio endpoint events

### MicArrayGeometry

This event provides information about the layout of the individual microphone elements in the microphone array. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **MicCoords**  The location and orientation of the microphone element. See [MicCoords](#miccoords).
- **usFrequencyBandHi**  The high end of the frequency range for the microphone.
- **usFrequencyBandLo**  The low end of the frequency range for the microphone.
- **usMicArrayType**  The type of the microphone array.
- **usNumberOfMicrophones**  The number of microphones in the array.
- **usVersion**  The version of the microphone array specification.
- **wHorizontalAngleBegin**  The horizontal angle of the start of the working volume (reported as radians times 10,000).
- **wHorizontalAngleEnd**  The horizontal angle of the end of the working volume (reported as radians times 10,000).
- **wVerticalAngleBegin**  The vertical angle of the start of the working volume (reported as radians times 10,000).
- **wVerticalAngleEnd**  The vertical angle of the end of the working volume (reported as radians times 10,000).


### MicCoords

This event provides information about the location and orientation of the microphone element. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **usType**  The type of microphone.
- **wHorizontalAngle**  The horizontal angle of the microphone (reported as radians times 10,000).
- **wVerticalAngle**  The vertical angle of the microphone (reported as radians times 10,000).
- **wXCoord**  The x-coordinate of the microphone.
- **wYCoord**  The y-coordinate of the microphone.
- **wZCoord**  The z-coordinate of the microphone.


### Microsoft.Windows.Audio.EndpointBuilder.DeviceInfo

This event logs the successful enumeration of an audio endpoint (such as a microphone or speaker) and provides information about the audio endpoint. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **BusEnumeratorName**  The name of the bus enumerator (for example, HDAUDIO or USB).
- **ContainerId**  An identifier that uniquely groups the functional devices associated with a single-function or multifunction device.
- **DeviceInstanceId**  The unique identifier for this instance of the device.
- **EndpointDevnodeId**  The IMMDevice identifier of the associated devnode.
- **EndpointFormFactor**  The enumeration value for the form factor of the endpoint device (for example speaker, microphone, remote  network device).
- **endpointID**  The unique identifier for the audio endpoint.
- **endpointInstanceId**  The unique identifier for the software audio endpoint. Used for joining to other audio event.
- **Flow**  Indicates whether the endpoint is capture (1) or render (0).
- **HWID**  The hardware identifier for the endpoint.
- **IsBluetooth**  Indicates whether the device is a Bluetooth device.
- **IsSideband**  Indicates whether the device is a sideband device.
- **IsUSB**  Indicates whether the device is a USB device.
- **JackSubType**  A unique ID representing the KS node type of the endpoint.
- **MicArrayGeometry**  Describes the microphone array, including the microphone position, coordinates, type, and frequency range. See [MicArrayGeometry](#micarraygeometry).
- **persistentId**  A unique ID for this endpoint which is retained across migrations.


## Census events

### Census.App

This event sends version data about the Apps running on this device. The data collected with this event is used to help keep Windows secure and up to date.

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
- **IEVersion**  The version of Internet Explorer that is running on the device.


### Census.Azure

This event returns data from Microsoft-internal Azure server machines (only from Microsoft-internal machines with Server SKUs). All other machines (those outside Microsoft and/or machines that are not part of the “Azure fleet”) return empty data sets. The data collected with this event is used to help keep Windows secure.

The following fields are available:

- **CloudCoreBuildEx**  The Azure CloudCore build number.
- **CloudCoreSupportBuildEx**  The Azure CloudCore support build number.
- **NodeID**  The node identifier on the device that indicates whether the device is part of the Azure fleet.


### Census.Battery

This event sends type and capacity data about the battery on the device, as well as the number of connected standby devices in use. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **InternalBatteryCapablities**  Represents information about what the battery is capable of doing.
- **InternalBatteryCapacityCurrent**  Represents the battery's current fully charged capacity in mWh (or relative). Compare this value to DesignedCapacity  to estimate the battery's wear.
- **InternalBatteryCapacityDesign**  Represents the theoretical capacity of the battery when new, in mWh.
- **InternalBatteryNumberOfCharges**  Provides the number of battery charges. This is used when creating new products and validating that existing products meets targeted functionality performance.
- **IsAlwaysOnAlwaysConnectedCapable**  Represents whether the battery enables the device to be AlwaysOnAlwaysConnected . Boolean value.


### Census.Enterprise

This event sends data about Azure presence, type, and cloud domain use in order to provide an understanding of the use and integration of devices in an enterprise, cloud, and server environment. The data collected with this event is used to help keep Windows secure.

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

This event sends data about the BIOS and startup embedded in the device. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **FirmwareManufacturer**  Represents the manufacturer of the device's firmware (BIOS).
- **FirmwareReleaseDate**  Represents the date the current firmware was released.
- **FirmwareType**  Represents the firmware type. The various types can be unknown, BIOS, UEFI.
- **FirmwareVersion**  Represents the version of the current firmware.


### Census.Flighting

This event sends Windows Insider data from customers participating in improvement testing and feedback programs. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **DeviceSampleRate**  The telemetry sample rate assigned to the device.
- **EnablePreviewBuilds**  Used to enable Windows Insider builds on a device.
- **FlightIds**  A list of the different Windows Insider builds on this device.
- **FlightingBranchName**  The name of the Windows Insider branch currently used by the device.
- **IsFlightsDisabled**  Represents if the device is participating in the Windows Insider program.
- **MSA_Accounts**  Represents a list of hashed IDs of the Microsoft Accounts that are flighting (pre-release builds) on this device.
- **SSRK**  Retrieves the mobile targeting settings.


### Census.Hardware

This event sends data about the device, including hardware type, OEM brand, model line, model, telemetry level setting, and TPM support. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ActiveMicCount**  The number of active microphones attached to the device.
- **ChassisType**  Represents the type of device chassis, such as desktop or low profile desktop. The possible values can range between 1 - 36.
- **ComputerHardwareID**  Identifies a device class that is represented by a hash of different SMBIOS fields.
- **D3DMaxFeatureLevel**  Supported Direct3D version.
- **DeviceColor**  Indicates a color of the device.
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

This event sends data about the memory on the device, including ROM and RAM. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **TotalPhysicalRAM**  Represents the physical memory (in MB).
- **TotalVisibleMemory**  Represents the memory that is not reserved by the system.


### Census.Network

This event sends data about the mobile and cellular network used by the device (mobile service provider, network, device ID, and service cost factors). The data collected with this event is used to help keep Windows secure and up to date.

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

This event sends data about the operating system such as the version, locale, update service configuration, when and how it was originally installed, and whether it is a virtual device. The data collected with this event is used to help keep Windows secure and up to date.

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


### Census.PrivacySettings

This event provides information about the device level privacy settings and whether device-level access was granted to these capabilities. Not all settings are applicable to all devices. Each field records the consent state for the corresponding privacy setting. The consent state is encoded as a 16-bit signed integer, where the first 8 bits represents the effective consent value, and the last 8 bits represent the authority that set the value. The effective consent (first 8 bits) is one of the following values:  -3 = unexpected consent value, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = undefined, 1 = allow, 2 = deny, 3 = prompt. The consent authority (last 8 bits) is one of the following values: -3 = unexpected authority, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = system, 1 = a higher authority (a gating setting, the system-wide setting, or a group policy), 2 = advertising ID group policy, 3 = advertising ID policy for child account, 4 = privacy setting provider doesn't know the actual consent authority, 5 = consent was not configured and a default set in code was used, 6 = system default, 7 = organization policy, 8 = OneSettings. The data collected with this event is used to help keep Windows secure.

The following fields are available:

- **Activity**  Current state of the activity history setting.
- **ActivityHistoryCloudSync**  Current state of the activity history cloud sync setting.
- **ActivityHistoryCollection**  Current state of the activity history collection setting.
- **AdvertisingId**  Current state of the advertising ID setting.
- **AppDiagnostics**  Current state of the app diagnostics setting.
- **Appointments**  Current state of the calendar setting.
- **Bluetooth**  Current state of the Bluetooth capability setting.
- **BluetoothSync**  Current state of the Bluetooth sync capability setting.
- **BroadFileSystemAccess**  Current state of the broad file system access setting.
- **CellularData**  Current state of the cellular data capability setting.
- **Chat**  Current state of the chat setting.
- **Contacts**  Current state of the contacts setting.
- **DocumentsLibrary**  Current state of the documents library setting.
- **Email**  Current state of the email setting.
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
- **PicturesLibrary**  Current state of the pictures library setting.
- **Radios**  Current state of the radios setting.
- **SensorsCustom**  Current state of the custom sensor setting.
- **SerialCommunication**  Current state of the serial communication setting.
- **Sms**  Current state of the text messaging setting.
- **SpeechPersonalization**  Current state of the speech services setting.
- **USB**  Current state of the USB setting.
- **UserAccountInformation**  Current state of the account information setting.
- **UserDataTasks**  Current state of the tasks setting.
- **UserNotificationListener**  Current state of the notifications setting.
- **VideosLibrary**  Current state of the videos library setting.
- **Webcam**  Current state of the camera setting.
- **WiFiDirect**  Current state of the Wi-Fi direct setting.


### Census.Processor

This event sends data about the processor. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **KvaShadow**  This is the micro code information of the processor.
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
- **ProcessorUpdateRevision**  The microcode revision.
- **ProcessorUpdateStatus**  Enum value that represents the processor microcode load status
- **SocketCount**  Count of CPU sockets.
- **SpeculationControl**  Indicates whether the system has enabled protections needed to validate the speculation control vulnerability.


### Census.Security

This event provides information about security settings. The data collected with this event is used to help keep Windows secure and up to date.

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


### Census.Storage

This event sends data about the total capacity of the system volume and primary disk. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **PrimaryDiskTotalCapacity**  Retrieves the amount of disk space on the primary disk of the device in MB.
- **PrimaryDiskType**  Retrieves an enumerator value of type STORAGE_BUS_TYPE that indicates the type of bus to which the device is connected. This should be used to interpret the raw device properties at the end of this structure (if any).
- **StorageReservePassedPolicy**  Indicates whether the Storage Reserve policy, which ensures that updates have enough disk space and customers are on the latest OS, is enabled on this device.
- **SystemVolumeTotalCapacity**  Retrieves the size of the partition that the System volume is installed on in MB.


### Census.Userdefault

This event sends data about the current user's default preferences for browser and several of the most popular extensions and protocols. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CalendarType**  The calendar identifiers that are used to specify different calendars.
- **DefaultApp**  The current user's default program selected for the following extension or protocol: .html, .htm, .jpg, .jpeg, .png, .mp3, .mp4, .mov, .pdf.
- **DefaultBrowserProgId**  The ProgramId of the current user's default browser.
- **LongDateFormat**  The long date format the user has selected.
- **ShortDateFormat**  The short date format the user has selected.


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


### Census.UserNLS

This event sends data about the default app language, input, and display language preferences set by the user. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **DefaultAppLanguage**  The current user Default App Language.
- **DisplayLanguage**  The current user preferred Windows Display Language.
- **HomeLocation**  The current user location, which is populated using GetUserGeoId() function.
- **KeyboardInputLanguages**  The Keyboard input languages installed on the device.
- **SpeechInputLanguages**  The Speech Input languages installed on the device.


### Census.UserPrivacySettings

This event provides information about the current users privacy settings and whether device-level access was granted to these capabilities. Not all settings are applicable to all devices. Each field records the consent state for the corresponding privacy setting. The consent state is encoded as a 16-bit signed integer, where the first 8 bits represents the effective consent value, and the last 8 bits represents the authority that set the value. The effective consent is one of the following values: -3 = unexpected consent value, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = undefined, 1 = allow, 2 = deny, 3 = prompt. The consent authority is one of the following values: -3 = unexpected authority, -2 = value was not requested, -1 = an error occurred while attempting to retrieve the value, 0 = user, 1 = a higher authority (a gating setting, the system-wide setting, or a group policy), 2 = advertising ID group policy, 3 = advertising ID policy for child account, 4 = privacy setting provider doesn't know the actual consent authority, 5 = consent was not configured and a default set in code was used, 6 = system default, 7 = organization policy, 8 = OneSettings. The data collected with this event is used to help keep Windows secure.

The following fields are available:

- **Activity**  Current state of the activity history setting.
- **ActivityHistoryCloudSync**  Current state of the activity history cloud sync setting.
- **ActivityHistoryCollection**  Current state of the activity history collection setting.
- **AdvertisingId**  Current state of the advertising ID setting.
- **AppDiagnostics**  Current state of the app diagnostics setting.
- **Appointments**  Current state of the calendar setting.
- **Bluetooth**  Current state of the Bluetooth capability setting.
- **BluetoothSync**  Current state of the Bluetooth sync capability setting.
- **BroadFileSystemAccess**  Current state of the broad file system access setting.
- **CellularData**  Current state of the cellular data capability setting.
- **Chat**  Current state of the chat setting.
- **Contacts**  Current state of the contacts setting.
- **DocumentsLibrary**  Current state of the documents library setting.
- **Email**  Current state of the email setting.
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
- **PicturesLibrary**  Current state of the pictures library setting.
- **Radios**  Current state of the radios setting.
- **SensorsCustom**  Current state of the custom sensor setting.
- **SerialCommunication**  Current state of the serial communication setting.
- **Sms**  Current state of the text messaging setting.
- **SpeechPersonalization**  Current state of the speech services setting.
- **USB**  Current state of the USB setting.
- **UserAccountInformation**  Current state of the account information setting.
- **UserDataTasks**  Current state of the tasks setting.
- **UserNotificationListener**  Current state of the notifications setting.
- **VideosLibrary**  Current state of the videos library setting.
- **Webcam**  Current state of the camera setting.
- **WiFiDirect**  Current state of the Wi-Fi direct setting.


### Census.VM

This event sends data indicating whether virtualization is enabled on the device, and its various characteristics. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CloudService**  Indicates which cloud service, if any, that this virtual machine is running within.
- **HyperVisor**  Retrieves whether the current OS is running on top of a Hypervisor.
- **IOMMUPresent**  Represents if an input/output memory management unit (IOMMU) is present.
- **IsVDI**  Is the device using Virtual Desktop Infrastructure?
- **IsVirtualDevice**  Retrieves that when the Hypervisor is Microsoft's Hyper-V Hypervisor or other Hv#1 Hypervisor, this field will be set to FALSE for the Hyper-V host OS and TRUE for any guest OS's. This field should not be relied upon for non-Hv#1 Hypervisors.
- **SLATSupported**  Represents whether Second Level Address Translation (SLAT) is supported by the hardware.
- **VirtualizationFirmwareEnabled**  Represents whether virtualization is enabled in the firmware.
- **VMId**  A string that identifies a virtual machine.


### Census.WU

This event sends data about the Windows update server and other App store policies. The data collected with this event is used to help keep Windows secure and up to date.

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


## Compatibility events

### Microsoft.Windows.Compatibility.Apphelp.SdbFix

Product instrumentation for helping debug/troubleshoot issues with inbox compatibility components. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **AppName**  Name of the application impacted by SDB.
- **FixID**  SDB GUID.
- **Flags**  List of flags applied.
- **ImageName**  Name of file.


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
- **downloadtimeInSeconds**  The number of seconds required to complete the optional content download.
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


## Deployment events

### Microsoft.Windows.Deployment.Imaging.AppExit

This event is sent on imaging application exit. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **hr**  HResult returned from app exit.
- **sId**  Session Id of the application.
- **totalTimeInMs**  Total time taken in Ms.


### Microsoft.Windows.Deployment.Imaging.AppInvoked

This event is sent when the app for image creation is invoked. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **branch**  Corresponding branch for the image.
- **isInDbg**  Whether the app is in debug mode or not.
- **isWSK**  Whether the app is building images using WSK or not.
- **sId**  Id of the session.


### Microsoft.Windows.Deployment.Imaging.Failed

This failure event is sent when imaging fails. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **cs**  Line that failed.
- **ec**  Execution status.
- **hr**  HResult returned.
- **msg**  Message returned.
- **stack**  Stack information.


### Microsoft.Windows.Deployment.Imaging.ImagingCompleted

This event is sent when imaging is done. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **appExecTimeInMs**  Execution time in milliseconds.
- **buildInfo**  Information of the build.
- **compDbPrepTimeInMs**  Preparation time in milliseconds for the CompDBs.
- **executeUpdateTimeInMs**  Update execution time in milliseconds.
- **fileStageTimeInMs**  File staging time in milliseconds.
- **hr**  HResult returned from imaging.
- **imgSizeInMB**  Image size in MB.
- **mutexWaitTimeInMs**  Mutex wait time in milliseconds.
- **prepareUpdateTimeInMs**  Update preparation time in milliseconds.
- **sId**  Session id for the application.
- **totalRunTimeInMs**  Total running time in milliseconds.
- **updateOsTimeInMs**  Time in milliseconds spent in update OS.


### Microsoft.Windows.Deployment.Imaging.ImagingStarted

This event is sent when an imaging session starts. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **arch**  Architecture of the image.
- **device**  Device type for which the image is built.
- **imgFormat**  Format of the image.
- **imgSkip**  Parameter for skipping certain image types when building.
- **imgType**  The type of image being built.
- **lang**  Language of the image being built.
- **prod**  Image product type.
- **sId**  Session id for the app.


## Deployment extensions

### DeploymentTelemetry.Deployment_End

This event indicates that a Deployment 360 API has completed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  Client ID of the user utilizing the D360 API.
- **ErrorCode**  Error code of action.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Mode**  Phase in upgrade.
- **RelatedCV**  The correction vector (CV) of any other related events
- **Result**  End result of the action.


### DeploymentTelemetry.Deployment_SetupBoxLaunch

This event indicates that the Deployment 360 APIs have launched Setup Box. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  The client ID of the user utilizing the D360 API.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Quiet**  Whether Setup will run in quiet mode or full mode.
- **RelatedCV**  The correlation vector (CV) of any other related events.
- **SetupMode**  The current setup phase.


### DeploymentTelemetry.Deployment_SetupBoxResult

This event indicates that the Deployment 360 APIs have received a return from Setup Box. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  Client ID of the user utilizing the D360 API.
- **ErrorCode**  Error code of the action.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Quiet**  Indicates whether Setup will run in quiet mode or full mode.
- **RelatedCV**  The correlation vector (CV) of any other related events.
- **SetupMode**  The current Setup phase.


### DeploymentTelemetry.Deployment_Start

This event indicates that a Deployment 360 API has been called. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  Client ID of the user utilizing the D360 API.
- **FlightId**  The specific ID of the Windows Insider build the device is getting.
- **Mode**  The current phase of the upgrade.
- **RelatedCV**  The correlation vector (CV) of any other related events.


## Diagnostic data events

### Microsoft.Windows.Test.WindowsCoreTelemetryTestProvider.WindowsCoreTelemetryTestEvent

This is an internal-only test event used to validate the utc.app and telemetry.asm-windowsdefault settings and namespaces before publishing. The provider of this event is assigned to the Windows Core Telemetry group provider in order to test. The data collected with this event is used to keep Windows performing properly.



### TelClientSynthetic.AbnormalShutdown_0

This event sends data about boot IDs for which a normal clean shutdown was not observed. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **AbnormalShutdownBootId**  BootId of the abnormal shutdown being reported by this event.
- **AcDcStateAtLastShutdown**  Identifies if the device was on battery or plugged in.
- **BatteryLevelAtLastShutdown**  The last recorded battery level.
- **BatteryPercentageAtLastShutdown**  The battery percentage at the last shutdown.
- **CrashDumpEnabled**  Indicates whether crash dumps are enabled.
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
- **OOBEInProgress**  Identifies if the Out-Of-Box-Experience is running.
- **OSSetupInProgress**  Identifies if the operating system setup is running.
- **PowerButtonCumulativePressCount**  Indicates the number of times the power button has been pressed ("pressed" not to be confused with "released").
- **PowerButtonCumulativeReleaseCount**  Indicates the number of times the power button has been released ("released" not to be confused with "pressed").
- **PowerButtonErrorCount**  Indicates the number of times there was an error attempting to record Power Button metrics (e.g.: due to a failure to lock/update the bootstat file).
- **PowerButtonLastPressBootId**  BootId of the last time the Power Button was detected to have been pressed ("pressed" not to be confused with "released").
- **PowerButtonLastPressTime**  Date/time of the last time the Power Button was pressed ("pressed" not to be confused with "released").
- **PowerButtonLastReleaseBootId**  The Boot ID of the last time the Power Button was released ("released" not to be confused with "pressed").
- **PowerButtonLastReleaseTime**  The date and time the Power Button was most recently released ("released" not to be confused with "pressed").
- **PowerButtonPressCurrentCsPhase**  Represents the phase of Connected Standby exit when the power button was pressed.
- **PowerButtonPressIsShutdownInProgress**  Indicates whether a system shutdown was in progress at the last time the power button was pressed.
- **PowerButtonPressLastPowerWatchdogStage**  The last stage completed when the Power Button was most recently pressed.
- **PowerButtonPressPowerWatchdogArmed**  Indicates whether or not the watchdog for the monitor was active at the time of the last power button press.
- **ShutdownDeviceType**  Identifies who triggered a shutdown. Is it because of battery, thermal zones, or through a Kernel API.
- **SleepCheckpoint**  Provides the last checkpoint when there is a failure during a sleep transition.
- **SleepCheckpointSource**  Indicates whether the source is the EFI variable or bootstat file.
- **SleepCheckpointStatus**  Indicates whether the checkpoint information is valid.
- **StaleBootStatData**  Identifies if the data from bootstat is stale.
- **TransitionInfoBootId**  The Boot ID of the captured transition information.
- **TransitionInfoCSCount**  The total number of times the system transitioned from "Connected Standby" mode to "On" when the last marker was saved.
- **TransitionInfoCSEntryReason**  Indicates the reason the device last entered "Connected Standby" mode ("entered" not to be confused with "exited").
- **TransitionInfoCSExitReason**  Indicates the reason the device last exited "Connected Standby" mode ("exited" not to be confused with "entered").
- **TransitionInfoCSInProgress**  Indicates whether the system was in or entering Connected Standby mode when the last marker was saved.
- **TransitionInfoLastReferenceTimeChecksum**  The checksum of TransitionInfoLastReferenceTimestamp.
- **TransitionInfoLastReferenceTimestamp**  The date and time that the marker was last saved.
- **TransitionInfoLidState**  Describes the state of the laptop lid.
- **TransitionInfoPowerButtonTimestamp**  The most recent date and time when the Power Button was pressed (collected via a different mechanism than PowerButtonLastPressTime).
- **TransitionInfoSleepInProgress**  Indicates whether the system was in or entering Sleep mode when the last marker was saved.
- **TransitionInfoSleepTranstionsToOn**  The total number of times the system transitioned from Sleep mode to on, when the last marker was saved.
- **TransitionInfoSystemRunning**  Indicates whether the system was running when the last marker was saved.
- **TransitionInfoSystemShutdownInProgress**  Indicates whether a device shutdown was in progress when the power button was pressed.
- **TransitionInfoUserShutdownInProgress**  Indicates whether a user shutdown was in progress when the power button was pressed.
- **TransitionLatestCheckpointId**  Represents a unique identifier for a checkpoint during the device state transition.
- **TransitionLatestCheckpointSeqNumber**  Represents the chronological sequence number of the checkpoint.
- **TransitionLatestCheckpointType**  Represents the type of the checkpoint, which can be the start of a phase, end of a phase, or just informational.
- **VirtualMachineId**  If the operating system is on a virtual Machine, it gives the virtual Machine ID (GUID) that can be used to correlate events on the host.


### TelClientSynthetic.AuthorizationInfo_RuntimeTransition

This event is fired by UTC at state transitions to signal what data we are allowed to collect. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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

This event is fired by UTC at startup to signal what data we are allowed to collect. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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


### TelClientSynthetic.ConnectivityHeartBeat_0

This event sends data about the connectivity status of the Connected User Experience and Telemetry component that uploads telemetry events. If an unrestricted free network (such as Wi-Fi) is available, this event updates the last successful upload time. Otherwise, it checks whether a Connectivity Heartbeat event was fired in the past 24 hours, and if not, it sends an event. A Connectivity Heartbeat event is also sent when a device recovers from costed network to free network. This event is fired by UTC during periods of no network as a heartbeat signal, to keep Windows secure and up to date.

The following fields are available:

- **CensusExitCode**  Returns last execution codes from census client run.
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
- **PrivacyBlockedCount**  The number of events blocked due to privacy settings or tags.
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

### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCheckApplicability

This event indicates that the Coordinator CheckApplicability call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ApplicabilityResult**  Result of CheckApplicability function.
- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **IsDeviceAADDomainJoined**  Indicates whether the device is logged in to the AAD (Azure Active Directory) domain.
- **IsDeviceADDomainJoined**  Indicates whether the device is logged in to the AD (Active Directory) domain.
- **IsDeviceCloverTrail**  Indicates whether the device has a Clover Trail system installed.
- **IsDeviceFeatureUpdatingPaused**  Indicates whether Feature Update is paused on the device.
- **IsDeviceNetworkMetered**  Indicates whether the device is connected to a metered network.
- **IsDeviceOobeBlocked**  Indicates whether user approval is required to install updates on the device.
- **IsDeviceRequireUpdateApproval**  Indicates whether user approval is required to install updates on the device.
- **IsDeviceSccmManaged**  Indicates whether the device is running the Microsoft SCCM (System Center Configuration Manager) to keep the operating system and applications up to date.
- **IsDeviceUninstallActive**  Indicates whether the OS (operating system) on the device was recently updated.
- **IsDeviceUpdateNotificationLevel**  Indicates whether the device has a set policy to control update notifications.
- **IsDeviceUpdateServiceManaged**  Indicates whether the device uses WSUS (Windows Server Update Services).
- **IsDeviceZeroExhaust**  Indicates whether the device subscribes to the Zero Exhaust policy to minimize connections from Windows to Microsoft.
- **IsGreaterThanMaxRetry**  Indicates whether the DTU (Direct to Update) service has exceeded its maximum retry count.
- **IsVolumeLicensed**  Indicates whether a volume license was used to authenticate the operating system or applications on the device.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCheckApplicabilityGenericFailure

This event indicatse that we have received an unexpected error in the Direct to Update (DTU) Coordinators CheckApplicability call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCleanupGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Cleanup call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCleanupSuccess

This event indicates that the Coordinator Cleanup call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCommitGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Commit call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorCommitSuccess

This event indicates that the Coordinator Commit call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Download call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadIgnoredFailure

This event indicates that we have received an error in the Direct to Update (DTU) Coordinator Download call that will be ignored. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorDownloadSuccess

This event indicates that the Coordinator Download call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorHandleShutdownGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator HandleShutdown call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinate version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorHandleShutdownSuccess

This event indicates that the Coordinator HandleShutdown call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInitializeGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Initialize call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInitializeSuccess

This event indicates that the Coordinator Initialize call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator Install call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallIgnoredFailure

This event indicates that we have received an error in the Direct to Update (DTU) Coordinator Install call that will be ignored. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorInstallSuccess

This event indicates that the Coordinator Install call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorProgressCallBack

This event indicates that the Coordinator's progress callback has been called. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **DeployPhase**  Current Deploy Phase.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorSetCommitReadySuccess

This event indicates that the Coordinator SetCommitReady call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Coordinator WaitForRebootUi call.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  Client ID being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiNotShown

This event indicates that the Coordinator WaitForRebootUi call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiSelection

This event indicates that the user selected an option on the Reboot UI. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **rebootUiSelection**  Selection on the Reboot UI.


### Microsoft.Windows.DirectToUpdate.DTUCoordinatorWaitForRebootUiSuccess

This event indicates that the Coordinator WaitForRebootUi call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler CheckApplicability call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  Campaign ID being run
- **ClientID**  Client ID being run
- **CoordinatorVersion**  Coordinator version of DTU
- **CV**  Correlation vector
- **CV_new**  New correlation vector
- **hResult**  HRESULT of the failure


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityInternalGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler CheckApplicabilityInternal call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilityInternalSuccess

This event indicates that the Handler CheckApplicabilityInternal call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ApplicabilityResult**  The result of the applicability check.
- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckApplicabilitySuccess

This event indicates that the Handler CheckApplicability call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ApplicabilityResult**  The result code indicating whether the update is applicable.
- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **CV_new**  New correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCheckIfCoordinatorMinApplicableVersionSuccess

This event indicates that the Handler CheckIfCoordinatorMinApplicableVersion call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **CheckIfCoordinatorMinApplicableVersionResult**  Result of CheckIfCoordinatorMinApplicableVersion function.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCommitGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Commit call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **CV_new**  New correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerCommitSuccess

This event indicates that the Handler Commit call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.run
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **CV_new**  New correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadAndExtractCabFailure

This event indicates that the Handler Download and Extract cab call failed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **DownloadAndExtractCabFunction_failureReason**  Reason why the update download and extract process failed.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadAndExtractCabSuccess

This event indicates that the Handler Download and Extract cab call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Download call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerDownloadSuccess

This event indicates that the Handler Download call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInitializeGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Initialize call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **DownloadAndExtractCabFunction_hResult**  HRESULT of the download and extract.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInitializeSuccess

This event indicates that the Handler Initialize call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **DownloadAndExtractCabFunction_hResult**  HRESULT of the download and extraction.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInstallGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler Install call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerInstallSuccess

This event indicates that the Coordinator Install call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the update campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerSetCommitReadySuccess

This event indicates that the Handler SetCommitReady call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUHandlerWaitForRebootUiGenericFailure

This event indicates that we have received an unexpected error in the Direct to Update (DTU) Handler WaitForRebootUi call. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  The ID of the campaigning being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.
- **hResult**  The HRESULT of the failure.


### Microsoft.Windows.DirectToUpdate.DTUHandlerWaitForRebootUiSuccess

This event indicates that the Handler WaitForRebootUi call succeeded. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignID**  ID of the campaign being run.
- **ClientID**  ID of the client receiving the update.
- **CoordinatorVersion**  Coordinator version of Direct to Update.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXEnteringState

This event indicates that DTUNotificationUX has started processing a workflow state.  The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  The coordinator version of Direct To Update.
- **CV**  Correlation vector.
- **State**  State of the workflow.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXEvaluation

This event indicates that Applicability DLL ran a set of applicability tests. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **Action**  The enumeration code of action that was handled.
- **ActiveTestResults**  The bitmask results of applicability tests.
- **ActiveTestsRun**  The bitmask of applicability tests that were run.
- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  The coordinator version of Direct To Update.
- **CV**  Correlation vector.
- **FullTestResults**  The bitmask of results of applicability tests.
- **FullTestsRun**  The bitmask of applicability tests that were run.
- **SuppressedTests**  The bitmask of applicability tests that were unable to run due to suppression caused by the configuration settings.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXEvaluationError

This event indicates that Applicability DLL failed on a test. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **FailedTest**  The enumeration code of the test that failed.
- **HRESULT**  An error (if any) that occurred.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXExit

This event indicates that DTUNotificationUX has finished execution. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **HRESULTCausingExit**  HRESULT Causing an abnormal exit, or S_OK for normal exits.
- **ProcessExitCode**  The exit code that DTUNotificationUX returns to DTUCoordinator.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXExitingState

This event indicates that DTUNotificationUX has stopped processing a workflow state. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **HRESULT**  Error (if any) that occurred.
- **NextState**  Next workflow state we will enter.
- **State**  The state of the workflow.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXFinalAcceptDialogDisplayed

This event indicates that the Final Accept dialog has been shown. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **EnterpriseAttribution**  If true, the user is told that the enterprise managed the reboot.
- **HRESULT**  Error (if any) that occurred.
- **UserResponse**  The enumeration code indicating the user response to a dialog.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXFirstAcceptDialogDisplayed

This event indicates that the First Accept dialog has been shown. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.
- **EnterpriseAttribution**  If true, the user is told that the enterprise managed the reboot.
- **HRESULT**  Error (if any) that occurred.
- **UserResponse**  Enumeration code indicating the user response to a dialog.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXLaunch

This event indicates that DTUNotificationUX has launched. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CommandLine**  Command line passed to DTUNotificationUX.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXUserCannotReboot

This event indicates that the user has no restart privilege. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


### Microsoft.Windows.DirectToUpdate.DTUNotificationUXUserInitatedRestartFailed

This event indicates that the system failed to restart. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CampaignID**  The ID of the campaign being run.
- **ClientID**  The ID of the client being run.
- **CoordinatorVersion**  Coordinator version of DTU.
- **CV**  Correlation vector.


## DISM events

### Microsoft.Windows.StartRep.DISMLatesInstalledLCU

This event indicates that LCU is being uninstalled by DISM. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **DISMInstalledLCUPackageName**  Package name of LCU that's uninstalled by using DISM


### Microsoft.Windows.StartRep.DISMPendingInstall

This event indicates that installation for the package is pending during recovery session. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **DISMPendingInstallPackageName**  The name of the pending package.


### Microsoft.Windows.StartRep.DISMRevertPendingActions

This event indicates that the revert pending packages operation has been completed. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **ErrorCode**  The result from the operation to revert pending packages.


### Microsoft.Windows.StartRep.DISMUninstallLCU

This event indicates the uninstall operation. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **ErrorCode**  The error code that is being reported by DISM.


### Microsoft.Windows.StartRep.SRTRepairActionEnd

This event indicates that the SRT Repair has been completed. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **ErrorCode**  The error code that is reported.
- **SRTRepairAction**  The action that was taken by SRT.


### Microsoft.Windows.StartRep.SRTRepairActionStart

This event sends data when SRT repair has started. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **SRTRepairAction**  The action that is being taken by SRT.


### Microsoft.Windows.StartRep.SRTRootCauseDiagEnd

This event sends data when the root cause operation has completed. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **ErrorCode**  The final result code for the root cause operation.
- **SRTRootCauseDiag**  The name of the root cause operation that ran.


### Microsoft.Windows.StartRep.SRTRootCauseDiagStart

This event indicates that a diagnostic in the recovery environment has been initiated. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **SRTRootCauseDiag**  The name of a specific diagnostic.


### Microsoft.Windows.StartRepairCore.DISMLatestInstalledLCU

The DISM Latest Installed LCU sends information to report result of search for latest installed LCU after last successful boot. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **dismInstalledLCUPackageName**  The name of the latest installed package.


### Microsoft.Windows.StartRepairCore.DISMPendingInstall

The DISM Pending Install event sends information to report pending package installation found. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **dismPendingInstallPackageName**  The name of the pending package.


### Microsoft.Windows.StartRepairCore.DISMRevertPendingActions

The DISM Pending Install event sends information to report pending package installation found. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **errorCode**  The result code returned by the event.


### Microsoft.Windows.StartRepairCore.DISMUninstallLCU

The DISM Uninstall LCU sends information to report result of uninstall attempt for found LCU. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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


## Driver installation events

### Microsoft.Windows.DriverInstall.DeviceInstall

This critical event sends information about the driver installation that took place. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **ClassGuid**  The unique ID for the device class.
- **ClassLowerFilters**  The list of lower filter class drivers.
- **ClassUpperFilters**  The list of upper filter class drivers.
- **CoInstallers**  The list of coinstallers.
- **ConfigFlags**  The device configuration flags.
- **DeviceConfigured**  Indicates whether this device was configured through the kernel configuration.
- **DeviceInstanceId**  The unique identifier of the device in the system.
- **DeviceStack**  The device stack of the driver being installed.
- **DriverDate**  The date of the driver.
- **DriverDescription**  A description of the driver function.
- **DriverInfName**  Name of the INF file (the setup information file) for the driver.
- **DriverInfSectionName**  Name of the DDInstall section within the driver INF file.
- **DriverPackageId**  The ID of the driver package that is staged to the driver store.
- **DriverProvider**  The driver manufacturer or provider.
- **DriverUpdated**  Indicates whether the driver is replacing an old driver.
- **DriverVersion**  The version of the driver file.
- **EndTime**  The time the installation completed.
- **Error**  Provides the WIN32 error code for the installation.
- **ExtensionDrivers**  List of extension drivers that complement this installation.
- **FinishInstallAction**  Indicates whether the co-installer invoked the finish-install action.
- **FinishInstallUI**  Indicates whether the installation process shows the user interface.
- **FirmwareDate**  The firmware date that will be stored in the EFI System Resource Table (ESRT).
- **FirmwareRevision**  The firmware revision that will be stored in the EFI System Resource Table (ESRT).
- **FirmwareVersion**  The firmware version that will be stored in the EFI System Resource Table (ESRT).
- **FirstHardwareId**  The ID in the hardware ID list that provides the most specific device description.
- **FlightIds**  A list of the different Windows Insider builds on the device.
- **GenericDriver**  Indicates whether the driver is a generic driver.
- **Inbox**  Indicates whether the driver package is included with Windows.
- **InstallDate**  The date the driver was installed.
- **LastCompatibleId**  The ID in the hardware ID list that provides the least specific device description.
- **LegacyInstallReasonError**  The error code for the legacy installation.
- **LowerFilters**  The list of lower filter drivers.
- **MatchingDeviceId**  The hardware ID or compatible ID that Windows used to install the device instance.
- **NeedReboot**  Indicates whether the driver requires a reboot.
- **OriginalDriverInfName**  The original name of the INF file before it was renamed.
- **ParentDeviceInstanceId**  The device instance ID of the parent of the device.
- **PendedUntilReboot**  Indicates whether the installation is pending until the device is rebooted.
- **Problem**  Error code returned by the device after installation.
- **ProblemStatus**  The status of the device after the driver installation.
- **RebootRequiredReason**  DWORD (Double Word—32-bit unsigned integer) containing the reason why the device required a reboot during install.
- **SecondaryDevice**  Indicates whether the device is a secondary device.
- **ServiceName**  The service name of the driver.
- **SetupMode**  Indicates whether the driver installation took place before the Out Of Box Experience (OOBE) was completed.
- **StartTime**  The time when the installation started.
- **SubmissionId**  The driver submission identifier assigned by the Windows Hardware Development Center.
- **UpperFilters**  The list of upper filter drivers.


### Microsoft.Windows.DriverInstall.NewDevInstallDeviceEnd

This event sends data about the driver installation once it is completed. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **DeviceInstanceId**  The unique identifier of the device in the system.
- **DriverUpdated**  Indicates whether the driver was updated.
- **Error**  The Win32 error code of the installation.
- **FlightId**  The ID of the Windows Insider build the device received.
- **InstallDate**  The date the driver was installed.
- **InstallFlags**  The driver installation flags.
- **OptionalData**  Metadata specific to WU (Windows Update) associated with the driver (flight IDs, recovery IDs, etc.)
- **RebootRequired**  Indicates whether a reboot is required after the installation.
- **RollbackPossible**  Indicates whether this driver can be rolled back.
- **WuTargetedHardwareId**  Indicates that the driver was installed because the device hardware ID was targeted by the Windows Update.
- **WuUntargetedHardwareId**  Indicates that the driver was installed because Windows Update performed a generic driver update for all devices of that hardware class.


### Microsoft.Windows.DriverInstall.NewDevInstallDeviceStart

This event sends data about the driver that the new driver installation is replacing. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **DeviceInstanceId**  The unique identifier of the device in the system.
- **FirstInstallDate**  The first time a driver was installed on this device.
- **LastDriverDate**  Date of the driver that is being replaced.
- **LastDriverInbox**  Indicates whether the previous driver was included with Windows.
- **LastDriverInfName**  Name of the INF file (the setup information file) of the driver being replaced.
- **LastDriverVersion**  The version of the driver that is being replaced.
- **LastFirmwareDate**  The date of the last firmware reported from the EFI System Resource Table (ESRT).
- **LastFirmwareRevision**  The last firmware revision number reported from EFI System Resource Table (ESRT).
- **LastFirmwareVersion**  The last firmware version reported from the EFI System Resource Table (ESRT).
- **LastInstallDate**  The date a driver was last installed on this device.
- **LastMatchingDeviceId**  The hardware ID or compatible ID that Windows last used to install the device instance.
- **LastProblem**  The previous problem code that was set on the device.
- **LastProblemStatus**  The previous problem code that was set on the device.
- **LastSubmissionId**  The driver submission identifier of the driver that is being replaced.


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
- **DedicatedVideoMemo**  Amount of dedicated video memory in bytes.
- **DedicatedVideoMemoryB**  The amount of dedicated VRAM of the GPU (in bytes).
- **DisplayAdapterLuid**  The display adapter LUID.
- **DriverDate**  The date of the display driver.
- **DriverRank**  The rank of the display driver.
- **DriverVersion**  The display driver version.
- **DriverWorkarounds**  Numeric value indicating the driver workarounds that are enabled for this device.
- **DX10UMDFilePath**  The file path to the location of the DirectX 10 Display User Mode Driver in the Driver Store.
- **DX11UMDFilePath**  The file path to the location of the DirectX 11 Display User Mode Driver in the Driver Store.
- **DX12U**  File path to the location of the DirectX 12 Display User Mode Driver in the Driver Store.
- **DX12UMDFilePath**  The file path to the location of the DirectX 12 Display User Mode Driver in the Driver Store.
- **DX9UMDFilePath**  The file path to the location of the DirectX 9 Display User Mode Driver in the Driver Store.
- **GPUDeviceID**  The GPU device ID.
- **GPUPreemptionLevel**  The maximum preemption level supported by GPU for graphics payload.
- **GPURevisionID**  The GPU revision ID.
- **GPUVendorID**  The GPU vendor ID.
- **InterfaceFuncPointersProvided1**  Number of device driver interface function pointers provided.
- **InterfaceFuncPointersProvided2**  Number of device driver interface function pointers provided.
- **InterfaceId**  The GPU interface ID.
- **IsDisplayDevice**  Does the GPU have displaying capabilities?
- **IsHwSchEnabled**  Boolean value indicating whether hardware scheduling is enabled.
- **IsHwSchSupported**  Indicates whether the adapter supports hardware scheduling.
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
- **MsHybridDiscrete**  Indicates whether the adapter is a discrete adapter in a hybrid configuration.
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
- **securityLevelForStorage**  The cluster parameter: security level for storage.
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


## Feature update events

### Microsoft.Windows.Upgrade.Uninstall.UninstallFinalizedAndRebootTriggered

This event indicates that the uninstall was properly configured and that a system reboot was initiated. The data collected with this event is used to help keep Windows up to date and performing properly.



### Microsoft.Windows.Upgrade.Uninstall.UninstallGoBackButtonClicked

This event sends basic metadata about the starting point of uninstalling a feature update, which helps ensure customers can safely revert to a well-known state if the update caused any problems.



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

This event captures basic checksum data about the device inventory items stored in the cache for use in validating data completeness for Microsoft.Windows.Inventory.Core events. The fields in this event may change over time, but they will always represent a count of a given object. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **Device**  A count of device objects in cache.
- **DeviceCensus**  A count of device census objects in cache.
- **DriverPackageExtended**  A count of driverpackageextended objects in cache.
- **File**  A count of file objects in cache.
- **FileSigningInfo**  A count of file signing objects in cache.
- **Generic**  A count of generic objects in cache.
- **HwItem**  A count of hwitem objects in cache.
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
- **Metadata**  A count of metadata objects in cache.
- **Orphan**  A count of orphan file objects in cache.
- **Programs**  A count of program objects in cache.


### Microsoft.Windows.Inventory.Core.AmiTelCacheFileInfo

Diagnostic data about the inventory cache.

The following fields are available:

- **CacheFileSize**  Size of the cache.
- **InventoryVersion**  Inventory version of the cache.
- **TempCacheCount**  Number of temp caches created.
- **TempCacheDeletedCount**  Number of temp caches deleted.


### Microsoft.Windows.Inventory.Core.AmiTelCacheVersions

This event sends inventory component versions for the Device Inventory data. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **aeinv**  The version of the App inventory component.
- **devinv**  The file version of the Device inventory component.


### Microsoft.Windows.Inventory.Core.FileSigningInfoAdd

This event enumerates the signatures of files, either driver packages or application executables. For driver packages, this data is collected on demand via Telecommand to limit it only to unrecognized driver packages, saving time for the client and space on the server. For applications, this data is collected for up to 10 random executables on a system. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **CatalogSigners**  Signers from catalog. Each signer starts with Chain.
- **DigestAlgorithm**  The pseudonymizing (hashing) algorithm used when the file or package was signed.
- **DriverPackageStrongName**  Optional. Available only if FileSigningInfo is collected on a driver package.
- **EmbeddedSigners**  Embedded signers. Each signer starts with Chain.
- **FileName**  The file name of the file whose signatures are listed.
- **FileType**  Either exe or sys, depending on if a driver package or application executable.
- **InventoryVersion**  The version of the inventory file generating the events.
- **Thumbprint**  Comma separated hash of the leaf node of each signer. Semicolon is used to separate CatalogSigners from EmbeddedSigners. There will always be a trailing comma.


### Microsoft.Windows.Inventory.Core.InventoryApplicationAdd

This event sends basic metadata about an application on the system. The data collected with this event is used to keep Windows performing properly and up to date.

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

This event represents what drivers an application installs. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory component.
- **ProgramIds**  The unique program identifier the driver is associated with.


### Microsoft.Windows.Inventory.Core.InventoryApplicationDriverStartSync

The InventoryApplicationDriverStartSync event indicates that a new set of InventoryApplicationDriverStartAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory component.


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


### Microsoft.Windows.Inventory.Core.InventoryApplicationStartSync

This event indicates that a new set of InventoryApplicationAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

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


### Microsoft.Windows.Inventory.Core.InventoryDeviceContainerRemove

This event indicates that the InventoryDeviceContainer object is no longer present. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


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


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassAdd

This event sends additional metadata about a Plug and Play device that is specific to a particular class of devices. The data collected with this event is used to help keep Windows up to date and performing properly while reducing overall size of data payload.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **audio.captureDriver**  Audio device capture driver.  Example: hdaudio.inf:db04a16ce4e8d6ee:HdAudModel:10.0.14887.1000:hdaudio\func_01
- **audio.renderDriver**  Audio device render driver.  Example: hdaudio.inf:db04a16ce4e8d6ee:HdAudModel:10.0.14889.1001:hdaudio\func_01
- **Audio_CaptureDriver**  The Audio device capture driver endpoint.
- **Audio_RenderDriver**  The Audio device render driver endpoint.
- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassRemove

This event indicates that the InventoryDeviceMediaClass object represented by the objectInstanceId is no longer present. This event is used to understand a PNP device that is specific to a particular class of devices. The data collected with this event is used to help keep Windows up to date and performing properly while reducing overall size of data payload.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceMediaClassStartSync

This event indicates that a new set of InventoryDeviceMediaClassSAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.De~iceInventoryChange](#msdevicede~iceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDevicePnpAdd

This event sends basic metadata about a PNP device and its associated driver to help keep Windows up to date. This information is used to assess if the PNP device and driver will remain compatible when upgrading Windows.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **BusReportedDescription**  The description of the device reported by the bux.
- **Class**  The device setup class of the driver loaded for the device.
- **ClassGuid**  The device class unique identifier of the driver package loaded on the device.
- **COMPID**  The list of “Compatible IDs” for this device.
- **ContainerId**  The system-supplied unique identifier that specifies which group(s) the device(s) installed on the parent (main) device belong to.
- **Description**  The description of the device.
- **DeviceDriverFlightId**  The test build (Flight) identifier of the device driver.
- **DeviceExtDriversFlightIds**  The test build (Flight) identifier for all extended device drivers.
- **DeviceInterfaceClasses**  The device interfaces that this device implements.
- **DeviceState**  Identifies the current state of the parent (main) device.
- **DriverId**  The unique identifier for the installed driver.
- **DriverName**  The name of the driver image file.
- **DriverPackageStrongName**  The immediate parent directory name in the Directory field of InventoryDriverPackage.
- **DriverVerDate**  The date associated with the driver installed on the device.
- **DriverVerVersion**  The version number of the driver installed on the device.
- **Enumerator**  Identifies the bus that enumerated the device.
- **ExtendedInfs**  The extended INF file names.
- **FirstInstallDate**  The first time this device was installed on the machine.
- **HWID**  A list of hardware IDs for the device.
- **Inf**  The name of the INF file (possibly renamed by the OS, such as oemXX.inf).
- **InstallDate**  The date of the most recent installation of the device on the machine.
- **InstallState**  The device installation state. For a list of values, see: [Device Install State](https://msdn.microsoft.com/library/windows/hardware/ff543130.aspx)
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
- **STACKID**  The list of hardware IDs for the stack.
- **UpperClassFilters**  The identifiers of the Upper Class filters installed for the device.
- **UpperFilters**  The identifiers of the Upper filters installed for the device.


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


### Microsoft.Windows.Inventory.Core.InventoryDeviceSensorStartSync

This event indicates that a new set of InventoryDeviceSensor events will be sent. The data collected with this event is used to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassAdd

This event sends basic metadata about the USB hubs on the device. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.
- **TotalUserConnectablePorts**  Total number of connectable USB ports.
- **TotalUserConnectableTypeCPorts**  Total number of connectable USB Type C ports.


### Microsoft.Windows.Inventory.Core.InventoryDeviceUsbHubClassStartSync

This event indicates that a new set of InventoryDeviceUsbHubClassAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.De~ice.DeviceInventoryChange](#msde~icedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverBinaryAdd

This event sends basic metadata about driver binaries running on the system. The data collected with this event is used to help keep Windows up to date and performing properly.

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

This event indicates that the InventoryDriverBinary object is no longer present. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


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


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageRemove

This event indicates that the InventoryDriverPackageRemove object is no longer present. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.InventoryDriverPackageStartSync

This event indicates that a new set of InventoryDriverPackageAdd events will be sent. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory file generating the events.


### Microsoft.Windows.Inventory.Core.StartUtcJsonTrace

This event collects traces of all other Core events, not used in typical customer scenarios. This event signals the beginning of the event download, and that tracing should begin.

The following fields are available:

- **key**  The globally unique identifier (GUID) used to identify the specific Json Trace logging session.


### Microsoft.Windows.Inventory.Core.StopUtcJsonTrace

This event collects traces of all other Core events, not used in typical customer scenarios. This event signals the end of the event download, and that tracing should end.

The following fields are available:

- **key**  The globally unique identifier (GUID) used to identify the specific Json Trace logging session.


### Microsoft.Windows.Inventory.General. InventoryMiscellaneousMemorySlotArrayInfoRemove

This event indicates that this particular data object represented by the ObjectInstanceId is no longer present, to help keep Windows up to date.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.General.AppHealthStaticAdd

This event sends details collected for a specific application on the source device. The data collected with this event is used to keep Windows performing properly.



### Microsoft.Windows.Inventory.General.AppHealthStaticStartSync

This event indicates the beginning of a series of AppHealthStaticAdd events. The data collected with this event is used to keep Windows performing properly.



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousMemorySlotArrayInfoAdd

This event provides basic information about active memory slots on the device.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Capacity**  Memory size in bytes
- **Manufacturer**  Name of the DRAM manufacturer
- **Model**  Model and sub-model of the memory
- **Slot**  Slot to which the DRAM is plugged into the motherboard.
- **Speed**  The configured memory slot speed in MHz.
- **Type**  Reports DDR as an enumeration value as per the DMTF SMBIOS standard version 3.3.0, section 7.18.2.
- **TypeDetails**  Reports Non-volatile as a bit flag enumeration as per the DMTF SMBIOS standard version 3.3.0, section 7.18.3.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousMemorySlotArrayInfoRemove

This event indicates that this particular data object represented by the objectInstanceId is no longer present.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousMemorySlotArrayInfoStartSync

This diagnostic event indicates a new sync is being generated for this object type.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInAdd

This event provides data on the installed Office add-ins. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **AddinCLSID**  The class identifier key for the Microsoft Office add-in.
- **AddInCLSID**  The class identifier key for the Microsoft Office add-in.
- **AddInId**  The identifier for the Microsoft Office add-in.
- **AddinType**  The type of the Microsoft Office add-in.
- **BinFileTimestamp**  The timestamp of the Office add-in.
- **BinFileVersion**  The version of the Microsoft Office add-in.
- **Description**  Description of the Microsoft Office add-in.
- **FileId**  The file identifier of the Microsoft Office add-in.
- **FileSize**  The file size of the Microsoft Office add-in.
- **FriendlyName**  The friendly name for the Microsoft Office add-in.
- **FullPath**  The full path to the Microsoft Office add-in.
- **InventoryVersion**  The version of the inventory binary generating the events.
- **LoadBehavior**  Integer that describes the load behavior.
- **LoadTime**  Load time for the Office add-in.
- **OfficeApplication**  The Microsoft Office application associated with the add-in.
- **OfficeArchitecture**  The architecture of the add-in.
- **OfficeVersion**  The Microsoft Office version for this add-in.
- **OutlookCrashingAddin**  Indicates whether crashes have been found for this add-in.
- **ProductCompany**  The name of the company associated with the Office add-in.
- **ProductName**  The product name associated with the Microsoft Office add-in.
- **ProductVersion**  The version associated with the Office add-in.
- **ProgramId**  The unique program identifier of the Microsoft Office add-in.
- **Provider**  Name of the provider for this add-in.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInRemove

This event indicates that the particular data object represented by the objectInstanceId is no longer present. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousOfficeAddInStartSync

This event indicates that a new sync is being generated for this object type. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **InventoryVersion**  The version of the inventory binary generating the events.


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoAdd

This event provides data on Unified Update Platform (UUP) products and what version they are at. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).

The following fields are available:

- **Identifier**  UUP identifier
- **LastActivatedVersion**  Last activated version
- **PreviousVersion**  Previous version
- **Source**  UUP source
- **Version**  UUP version


### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoRemove

This event indicates that this particular data object represented by the objectInstanceId is no longer present. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.General.InventoryMiscellaneousUUPInfoStartSync

This is a diagnostic event that indicates a new sync is being generated for this object type. The data collected with this event is used to keep Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.Indicators.Checksum

This event summarizes the counts for the InventoryMiscellaneousUexIndicatorAdd events. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **CensusId**  A unique hardware identifier.
- **ChecksumDictionary**  A count of each operating system indicator.
- **PCFP**  Equivalent to the InventoryId field that is found in other core events.


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorAdd

This event represents the basic metadata about the OS indicators installed on the system. The data collected with this event helps ensure the device is up to date and keeps Windows performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChangd](#msdevicedeviceinventorychangd).

The following fields are available:

- **IndicatorValue**  The indicator value.
- **Value**  Describes an operating system indicator that may be relevant for the device upgrade.


### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorRemove

This event indicates that this particular data object represented by the objectInstanceId is no longer present. This event is used to understand the OS indicators installed on the system. The data collected with this event helps ensure the device is current and Windows is up to date and performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



### Microsoft.Windows.Inventory.Indicators.InventoryMiscellaneousUexIndicatorStartSync

This event indicates that this particular data object represented by the objectInstanceId is no longer present. This event is used to understand the OS indicators installed on the system. The data collected with this event helps ensure the device is current and Windows is up to date and performing properly.

This event includes fields from [Ms.Device.DeviceInventoryChange](#msdevicedeviceinventorychange).



## Kernel events

### Microsoft.Windows.Kernel.BootEnvironment.OsLaunch

This event includes basic data about the Operating System, collected during Boot and used to evaluate the success of the upgrade process. The data collected with this event is used to keep Windows performing properly.

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


### Microsoft.Windows.Kernel.DeviceConfig.DeviceConfig

This critical device configuration event provides information about drivers for a driver installation that took place within the kernel. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **ClassGuid**  The unique ID for the device class.
- **DeviceInstanceId**  The unique ID for the device on the system.
- **DriverDate**  The date of the driver.
- **DriverFlightIds**  The IDs for the driver flights.
- **DriverInfName**  Driver INF file name.
- **DriverProvider**  The driver manufacturer or provider.
- **DriverSubmissionId**  The driver submission ID assigned by the hardware developer center.
- **DriverVersion**  The driver version number.
- **ExtensionDrivers**  The list of extension driver INF files, extension IDs, and associated flight IDs.
- **FirstHardwareId**  The ID in the hardware ID list that provides the most specific device description.
- **InboxDriver**  Indicates whether the driver package is included with Windows.
- **InstallDate**  Date the driver was installed.
- **LastCompatibleId**  The ID in the hardware ID list that provides the least specific device description.
- **Legacy**  Indicates whether the driver is a legacy driver.
- **NeedReboot**  Indicates whether the driver requires a reboot.
- **SetupMode**  Indicates whether the device configuration occurred during the Out Of Box Experience (OOBE).
- **StatusCode**  The NTSTATUS of device configuration operation.


### Microsoft.Windows.Kernel.PnP.AggregateClearDevNodeProblem

This event is sent when a problem code is cleared from a device. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **Count**  The total number of events.
- **DeviceInstanceId**  The unique identifier of the device on the system.
- **LastProblem**  The previous problem that was cleared.
- **LastProblemStatus**  The previous NTSTATUS value that was cleared.
- **Problem**  The new problem code set on the device node.
- **ProblemStatus**  The new NT_STATUS set on the device node.
- **ServiceName**  The name of the driver or service attached to the device.


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


## Microsoft Edge events

### Aria.160f0649efde47b7832f05ed000fc453.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event, where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reconsentConfigs**  A comma separated list of all reconsent configurations the current installation has received. Each configuration follows a well-defined format: 2DigitMonth-2DigitYear-3LetterKeyword.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.29e24d069f27450385c7acaa2f07e277.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.7005b72804a64fa4b2138faab88f877b.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.754de735ccd546b28d0bfca8ac52c3de.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **container_client_id**  The client ID of the container, if in WDAG mode. This will be different from the UMA log client ID, which is the client ID of the host in WDAG mode.
- **container_session_id**  The session ID of the container, if in WDAG mode. This will be different from the UMA log session ID, which is the session ID of the host in WDAG mode.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Aria.af397ef28e484961ba48646a5d38cf54.Microsoft.WebBrowser.Installer.EdgeUpdate.Ping

This Ping event sends a detailed inventory of software and hardware information about the EdgeUpdate service, Edge applications, and the current system environment including app configuration, update configuration, and hardware capabilities. This event contains Device Connectivity and Configuration, Product and Service Performance, and Software Setup and Inventory data. One or more events is sent each time any installation, update, or uninstallation occurs with the EdgeUpdate service or with Edge applications. This event is used to measure the reliability and performance of the EdgeUpdate service and if Edge applications are up to date. This is an indication that the event is designed to keep Windows secure and up to date.

The following fields are available:

- **appAp**  Any additional parameters for the specified application. Default: ''.
- **appAppId**  The GUID that identifies the product. Compatible clients must transmit this attribute. Please see the wiki for additional information. Default: undefined.
- **appBrandCode**  The brand code under which the product was installed, if any. A brand code is a short (4-character) string used to identify installations that took place as a result of partner deals or website promotions. Default: ''.
- **appChannel**  An integer indicating the channel of the installation (i.e. Canary or Dev).
- **appClientId**  A generalized form of the brand code that can accept a wider range of values and is used for similar purposes. Default: ''.
- **appCohort**  A machine-readable string identifying the release cohort (channel) that the app belongs to. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortHint**  A machine-readable enum indicating that the client has a desire to switch to a different release cohort. The exact legal values are app-specific and should be shared between the server and app implementations. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortName**  A stable non-localized human-readable enum indicating which (if any) set of messages the app should display to the user. For example, an app with a cohort Name of 'beta' might display beta-specific branding to the user. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appConsentState**  Bit flags describing the diagnostic data disclosure and response flow where 1 indicates the affirmative and 0 indicates the negative or unspecified data. Bit 1 indicates consent was given, bit 2 indicates data originated from the download page, bit 18 indicates choice for sending data about how the browser is used, and bit 19 indicates choice for sending data about websites visited.
- **appDayOfInstall**  The date-based counting equivalent of appInstallTimeDiffSec (the numeric calendar day that the app was installed on). This value is provided by the server in the response to the first request in the installation flow. The client MAY fuzz this value to the week granularity (e.g. send '0' for 0 through 6, '7' for 7 through 13, etc.). The first communication to the server should use a special value of '-1'. A value of '-2' indicates that this value is not known. Please see the wiki for additional information. Default: '-2'.
- **appExperiments**  A key/value list of experiment identifiers. Experiment labels are used to track membership in different experimental groups, and may be set at install or update time. The experiments string is formatted as a semicolon-delimited concatenation of experiment label strings. An experiment label string is an experiment Name, followed by the '=' character, followed by an experimental label value. For example: 'crdiff=got_bsdiff;optimized=O3'. The client should not transmit the expiration date of any experiments it has, even if the server previously specified a specific expiration date. Default: ''.
- **appInstallTimeDiffSec**  The difference between the current time and the install date in seconds. '0' if unknown. Default: '-1'.
- **appLang**  The language of the product install, in IETF BCP 47 representation. Default: ''.
- **appNextVersion**  The version of the app that the update flow to which this event belongs attempted to reach, regardless of the success or failure of the update operation. Please see the wiki for additional information. Default: '0.0.0.0'.
- **appPingEventAppSize**  The total number of bytes of all downloaded packages. Default: '0'.
- **appPingEventDownloadMetricsDownloadedBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsDownloader**  A string identifying the download algorithm and/or stack. Example values include: 'bits', 'direct', 'winhttp', 'p2p'. Sent in events that have an event type of '14' only. Default: ''.
- **appPingEventDownloadMetricsDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventDownloadMetricsError**  The error code (if any) of the operation, encoded as a signed base-10 integer. Default: '0'.
- **appPingEventDownloadMetricsServerIpHint**  For events representing a download, the CDN Host IP address that corresponds to the update file server. The CDN host is controlled by Microsoft servers and always maps to IP addresses hosting *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadMetricsTotalBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsUrl**  For events representing a download, the CDN URL provided by the update server for the client to download the update, the URL is controlled by Microsoft servers and always maps back to either *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventErrorCode**  The error code (if any) of the operation, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventEventResult**  An enum indicating the result of the event. Please see the wiki for additional information. Default: '0'.
- **appPingEventEventType**  An enum indicating the type of the event. Compatible clients MUST transmit this attribute. Please see the wiki for additional information.
- **appPingEventExtraCode1**  Additional numeric information about the operation's result, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventInstallTimeMs**  For events representing an install, the time elapsed between the start of the install and the end of the install, in milliseconds. For events representing an entire update flow, the sum of all such durations. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appPingEventNumBytesDownloaded**  The number of bytes downloaded for the specified application. Default: '0'.
- **appPingEventSequenceId**  An id that uniquely identifies particular events within one requestId. Since a request can contain multiple ping events, this field is necessary to uniquely identify each possible event.
- **appPingEventSourceUrlIndex**  For events representing a download, the position of the download URL in the list of URLs supplied by the server in a "urls" tag.
- **appPingEventUpdateCheckTimeMs**  For events representing an entire update flow, the time elapsed between the start of the update check and the end of the update check, in milliseconds. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appUpdateCheckIsUpdateDisabled**  The state of whether app updates are restricted by group policy. True if updates have been restricted by group policy or false if they have not.
- **appUpdateCheckTargetVersionPrefix**  A component-wise prefix of a version number, or a complete version number suffixed with the $ character. The server should not return an update instruction to a version number that does not match the prefix or complete version number. The prefix is interpreted a dotted-tuple that specifies the exactly-matching elements; it is not a lexical prefix (for example, '1.2.3' must match '1.2.3.4' but must not match '1.2.34'). Default: ''.
- **appUpdateCheckTtToken**  An opaque access token that can be used to identify the requesting client as a member of a trusted-tester group. If non-empty, the request should be sent over SSL or another secure protocol. Default: ''.
- **appVersion**  The version of the product install. Please see the wiki for additional information. Default: '0.0.0.0'.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **eventType**  A string indicating the type of the event. Please see the wiki for additional information.
- **hwHasAvx**  '1' if the client's hardware supports the AVX instruction set. '0' if the client's hardware does not support the AVX instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse**  '1' if the client's hardware supports the SSE instruction set. '0' if the client's hardware does not support the SSE instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse2**  '1' if the client's hardware supports the SSE2 instruction set. '0' if the client's hardware does not support the SSE2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse3**  '1' if the client's hardware supports the SSE3 instruction set. '0' if the client's hardware does not support the SSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse41**  '1' if the client's hardware supports the SSE4.1 instruction set. '0' if the client's hardware does not support the SSE4.1 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse42**  '1' if the client's hardware supports the SSE4.2 instruction set. '0' if the client's hardware does not support the SSE4.2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSsse3**  '1' if the client's hardware supports the SSSE3 instruction set. '0' if the client's hardware does not support the SSSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwPhysmemory**  The physical memory available to the client, truncated down to the nearest gibibyte. '-1' if unknown. This value is intended to reflect the maximum theoretical storage capacity of the client, not including any hard drive or paging to a hard drive or peripheral. Default: '-1'.
- **isMsftDomainJoined**  '1' if the client is a member of a Microsoft domain. '0' otherwise. Default: '0'.
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
- **requestTestSource**  Either '', 'dev', 'qa', 'prober', 'auto', or 'ossdev'. Any value except '' indicates that the request is a test and should not be counted toward normal metrics. Default: ''.
- **requestUid**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha user. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.


### Aria.f4a7d46e472049dfba756e11bdbbc08f.Microsoft.WebBrowser.SystemInfo.Config

This config event sends basic device connectivity and configuration information from Microsoft Edge about the current data collection consent, app version, and installation state to keep Microsoft Edge up to date and secure.

The following fields are available:

- **app_sample_rate**  A number representing how often the client sends telemetry, expressed as a percentage. Low values indicate that said client sends more events and high values indicate that said client sends fewer events.
- **app_version**  The internal Edge build version string, taken from the UMA metrics field system_profile.app_version.
- **appConsentState**  Bit flags describing consent for data collection on the machine or zero if the state was not retrieved. The following are true when the associated bit is set: consent was granted (0x1), consent was communicated at install (0x2), diagnostic data consent granted (0x20000), browsing data consent granted (0x40000).
- **Channel**  An integer indicating the channel of the installation (Canary or Dev).
- **client_id**  A unique identifier with which all other diagnostic client data is associated, taken from the UMA metrics provider. This ID is effectively unique per device, per OS user profile, per release channel (e.g. Canary/Dev/Beta/Stable). client_id is not durable, based on user preferences. client_id is initialized on the first application launch under each OS user profile. client_id is linkable, but not unique across devices or OS user profiles. client_id is reset whenever UMA data collection is disabled, or when the application is uninstalled.
- **ConnectionType**  The first reported type of network connection currently connected. This can be one of Unknown, Ethernet, WiFi, 2G, 3G, 4G, None, or Bluetooth.
- **Etag**  Etag is an identifier representing all service applied configurations and experiments for the current browser session. This field is left empty when Windows diagnostic level is set to Basic or lower or when consent for diagnostic data has been denied.
- **EventInfo.Level**  The minimum Windows diagnostic data level required for the event where 1 is basic, 2 is enhanced, and 3 is full.
- **install_date**  The date and time of the most recent installation in seconds since midnight on January 1, 1970 UTC, rounded down to the nearest hour.
- **installSource**  An enumeration representing the source of this installation: source was not retrieved (0), unspecified source (1), website installer (2), enterprise MSI (3), Windows update (4), Edge updater (5), scheduled or timed task (6, 7), uninstall (8), Edge about page (9), self-repair (10), other install command line (11), reserved (12), unknown source (13).
- **PayloadClass**  The base class used to serialize and deserialize the Protobuf binary payload.
- **PayloadGUID**  A random identifier generated for each original monolithic Protobuf payload, before the payload is potentially broken up into manageably-sized chunks for transmission.
- **PayloadLogType**  The log type for the event correlating with 0 for unknown, 1 for stability, 2 for on-going, 3 for independent, 4 for UKM, or 5 for instance level.
- **pop_sample**  A value indicating how the device's data is being sampled.
- **reconsentConfigs**  A comma separated list of all reconsent configurations the current installation has received. Each configuration follows a well-defined format: 2DigitMonth-2DigitYear-3LetterKeyword.
- **session_id**  An identifier that is incremented each time the user launches the application, irrespective of any client_id changes. session_id is seeded during the initial installation of the application. session_id is effectively unique per client_id value. Several other internal identifier values, such as window or tab IDs, are only meaningful within a particular session. The session_id value is forgotten when the application is uninstalled, but not during an upgrade.
- **utc_flags**  Event Tracing for Windows (ETW) flags required for the event as part of the data collection process.


### Microsoft.WebBrowser.Installer.EdgeUpdate.Ping

This event sends hardware and software inventory information about the Microsoft Edge Update service, Microsoft Edge applications, and the current system environment, including app configuration, update configuration, and hardware capabilities. It's used to measure the reliability and performance of the EdgeUpdate service and if Microsoft Edge applications are up to date. This is an indication that the event is designed to keep Windows secure and up to date.

The following fields are available:

- **appAp**  Microsoft Edge Update parameters, including channel, architecture, platform, and additional parameters identifying the release of Microsoft Edge to update and how to install it. Example: 'beta-arch_x64-full'. Default: ''."
- **appAppId**  The GUID that identifies the product channels such as Edge Canary, Dev, Beta, Stable, and Edge Update.
- **appBrandCode**  The 4-digit brand code under which the the product was installed, if any. Possible values: 'GGLS' (default), 'GCEU' (enterprise install), and '' (unknown).
- **appChannel**  An integer indicating the channel of the installation (e.g. Canary or Dev).
- **appClientId**  A generalized form of the brand code that can accept a wider range of values and is used for similar purposes. Default: ''.
- **appCohort**  A machine-readable string identifying the release channel that the app belongs to. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortHint**  A machine-readable enum indicating that the client has a desire to switch to a different release cohort. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appCohortName**  A stable non-localized human-readable enum indicating which (if any) set of messages the app should display to the user. For example, an app with a cohort name of 'beta' might display beta-specific branding to the user. Limited to ASCII characters 32 to 127 (inclusive) and a maximum length of 1024 characters. Default: ''.
- **appConsentState**  Bit flags describing the diagnostic data disclosure and response flow where 1 indicates the affirmative and 0 indicates the negative or unspecified data. Bit 1 indicates consent was given, bit 2 indicates data originated from the download page, bit 18 indicates choice for sending data about how the browser is used, and bit 19 indicates choice for sending data about websites visited.
- **appDayOfInstall**  The date-based counting equivalent of appInstallTimeDiffSec (the numeric calendar day that the app was installed on). This value is provided by the server in the response to the first request in the installation flow. Default: '-2' (Unknown).
- **appExperiments**  A semicolon-delimited key/value list of experiment identifiers and treatment groups. This field is unused and always empty in Edge Update. Default: ''.
- **appIid**  A GUID that identifies a particular installation flow. For example, each download of a product installer is tagged with a unique GUID. Attempts to install using that installer can then be grouped. A client SHOULD NOT persist the IID GUID after the installation flow of a product is complete.
- **appInstallTimeDiffSec**  The difference between the current time and the install date in seconds. '0' if unknown. Default: '-1'.
- **appLang**  The language of the product install, in IETF BCP 47 representation. Default: ''.
- **appNextVersion**  The version of the app that the update attempted to reach, regardless of the success or failure of the update operation. Default: '0.0.0.0'.
- **appPingEventAppSize**  The total number of bytes of all downloaded packages. Default: '0'.
- **appPingEventDownloadMetricsDownloadedBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsDownloader**  A string identifying the download algorithm and/or stack. Example values include: 'bits', 'direct', 'winhttp', 'p2p'. Sent in events that have an event type of '14' only. Default: ''.
- **appPingEventDownloadMetricsDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventDownloadMetricsError**  The error code (if any) of the operation, encoded as a signed base-10 integer. Default: '0'.
- **appPingEventDownloadMetricsServerIpHint**  For events representing a download, the CDN Host IP address that corresponds to the update file server. The CDN host is controlled by Microsoft servers and always maps to IP addresses hosting *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadMetricsTotalBytes**  For events representing a download, the number of bytes expected to be downloaded. For events representing an entire update flow, the sum of all such expected bytes over the course of the update flow. Default: '0'.
- **appPingEventDownloadMetricsUrl**  For events representing a download, the CDN URL provided by the update server for the client to download the update, the URL is controlled by Microsoft servers and always maps back to either *.delivery.mp.microsoft.com or msedgesetup.azureedge.net. Default: ''.
- **appPingEventDownloadTimeMs**  For events representing a download, the time elapsed between the start of the download and the end of the download, in milliseconds. For events representing an entire update flow, the sum of all such download times over the course of the update flow. Sent in events that have an event type of '1', '2', '3', and '14' only. Default: '0'.
- **appPingEventErrorCode**  The error code (if any) of the operation, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventEventResult**  An enumeration indicating the result of the event. Common values are '0' (Error) and '1' (Success). Default: '0' (Error).
- **appPingEventEventType**  An enumeration indicating the type of the event and the event stage. Default: '0' (Unknown).
- **appPingEventExtraCode1**  Additional numeric information about the operation's result, encoded as a signed, base-10 integer. Default: '0'.
- **appPingEventInstallTimeMs**  For events representing an install, the time elapsed between the start of the install and the end of the install, in milliseconds. For events representing an entire update flow, the sum of all such durations. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appPingEventNumBytesDownloaded**  The number of bytes downloaded for the specified application. Default: '0'.
- **appPingEventSequenceId**  An ID that uniquely identifies particular events within one requestId. Since a request can contain multiple ping events, this field is necessary to uniquely identify each possible event.
- **appPingEventSourceUrlIndex**  For events representing a download, the position of the download URL in the list of URLs supplied by the server in a tag.
- **appPingEventUpdateCheckTimeMs**  For events representing an entire update flow, the time elapsed between the start of the update check and the end of the update check, in milliseconds. Sent in events that have an event type of '2' and '3' only. Default: '0'.
- **appUpdateCheckIsUpdateDisabled**  The state of whether app updates are restricted by group policy. True if updates have been restricted by group policy or false if they have not.
- **appUpdateCheckTargetVersionPrefix**  A component-wise prefix of a version number, or a complete version number suffixed with the $ character. The prefix is interpreted a dotted-tuple that specifies the exactly-matching elements; it is not a lexical prefix (for example, '1.2.3' MUST match '1.2.3.4' but MUST NOT match '1.2.34'). Default: ''.
- **appUpdateCheckTtToken**  An opaque access token that can be used to identify the requesting client as a member of a trusted-tester group. If non-empty, the request is sent over SSL or another secure protocol. This field is unused by Edge Update and always empty. Default: ''.
- **appVersion**  The version of the product install. Default: '0.0.0.0'.
- **eventType**  A string representation of appPingEventEventType indicating the type of the event.
- **hwHasAvx**  '1' if the client's hardware supports the AVX instruction set. '0' if the client's hardware does not support the AVX instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse**  '1' if the client's hardware supports the SSE instruction set. '0' if the client's hardware does not support the SSE instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse2**  '1' if the client's hardware supports the SSE2 instruction set. '0' if the client's hardware does not support the SSE2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse3**  '1' if the client's hardware supports the SSE3 instruction set. '0' if the client's hardware does not support the SSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse41**  '1' if the client's hardware supports the SSE4.1 instruction set. '0' if the client's hardware does not support the SSE4.1 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSse42**  '1' if the client's hardware supports the SSE4.2 instruction set. '0' if the client's hardware does not support the SSE4.2 instruction set. '-1' if unknown. Default: '-1'.
- **hwHasSsse3**  '1' if the client's hardware supports the SSSE3 instruction set. '0' if the client's hardware does not support the SSSE3 instruction set. '-1' if unknown. Default: '-1'.
- **hwPhysmemory**  The physical memory available to the client, truncated down to the nearest gibibyte. '-1' if unknown. This value is intended to reflect the maximum theoretical storage capacity of the client, not including any hard drive or paging to a hard drive or peripheral. Default: '-1'.
- **isMsftDomainJoined**  '1' if the client is a member of a Microsoft domain. '0' otherwise. Default: '0'.
- **osArch**  The architecture of the operating system (e.g. 'x86', 'x64', 'arm'). '' if unknown. Default: ''.
- **osPlatform**  The operating system family that the within which the Omaha client is running (e.g. 'win', 'mac', 'linux', 'ios', 'android'). '' if unknown. The operating system name should be transmitted in lowercase with minimal formatting. Default: ''.
- **osServicePack**  The secondary version of the operating system. '' if unknown. Default: ''.
- **osVersion**  The primary version of the operating system. '' if unknown. Default: ''.
- **requestCheckPeriodSec**  The update interval in seconds. The value is read from the registry. Default: '-1'.
- **requestDlpref**  A comma-separated list of values specifying the preferred download URL behavior. The first value is the highest priority, further values reflect secondary, tertiary, et cetera priorities. Legal values are '' (in which case the entire list must be empty, indicating unknown or no-preference) or 'cacheable' (the server should prioritize sending URLs that are easily cacheable). Default: ''.
- **requestDomainJoined**  '1' if the device is part of a managed enterprise domain. Otherwise '0'.
- **requestInstallSource**  A string specifying the cause of the update flow. For example: 'ondemand', or 'scheduledtask'. Default: ''.
- **requestIsMachine**  '1' if the client is known to be installed with system-level or administrator privileges. '0' otherwise. Default: '0'.
- **requestOmahaShellVersion**  The version of the Omaha installation folder. Default: ''.
- **requestOmahaVersion**  The version of the Omaha updater itself (the entity sending this request). Default: '0.0.0.0'.
- **requestProtocolVersion**  The version of the Omaha protocol. Compatible clients MUST provide a value of '3.0'. Compatible clients MUST always transmit this attribute. Default: undefined.
- **requestRequestId**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha request. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.
- **requestSessionCorrelationVectorBase**  A client generated random MS Correlation Vector base code used to correlate the update session with update and CDN servers. Default: ''.
- **requestSessionId**  A randomly-generated (uniformly distributed) GUID. Each single update flow (e.g. update check, update application, event ping sequence) SHOULD have (with high probability) a single unique session ID. Default: ''.
- **requestTestSource**  Either '', 'dev', 'qa', 'prober', 'auto', or 'ossdev'. Any value except '' indicates that the request is a test and should not be counted toward normal metrics. Default: ''.
- **requestUid**  A randomly-generated (uniformly distributed) GUID, corresponding to the Omaha user. Each request attempt SHOULD have (with high probability) a unique request id. Default: ''.


## Migration events

### Microsoft.Windows.MigrationCore.MigObjectCountDLUsr

This event returns data to track the count of the migration objects across various phases during feature update. The data collected with this event is used to help keep Windows secure and to track data loss scenarios.

The following fields are available:

- **currentSid**  Indicates the user SID for which the migration is being performed.
- **knownFoldersUsr[i]**  Predefined folder path locations.
- **migDiagSession->CString**  The phase of the upgrade where migration occurs. (E.g.: Validate tracked content)
- **objectCount**  The count for the number of objects that are being transferred.


### Microsoft.Windows.MigrationCore.MigObjectCountKFSys

This event returns data about the count of the migration objects across various phases during feature update. The data collected with this event is used to help keep Windows secure and to track data loss scenarios.

The following fields are available:

- **knownFoldersSys[i]**  The predefined folder path locations.
- **migDiagSession->CString**  Identifies the phase of the upgrade where migration happens.
- **objectCount**  The count of the number of objects that are being transferred.


### Microsoft.Windows.MigrationCore.MigObjectCountKFUsr

This event returns data to track the count of the migration objects across various phases during feature update. The data collected with this event is used to help keep Windows secure and to track data loss scenarios.

The following fields are available:

- **currentSid**  Indicates the user SID for which the migration is being performed.
- **knownFoldersUsr[i]**  Predefined folder path locations.
- **migDiagSession->CString**  The phase of the upgrade where the migration occurs. (For example, Validate tracked content.)
- **objectCount**  The number of objects that are being transferred.


## Miracast events

### Microsoft.Windows.Cast.Miracast.MiracastSessionEnd

This event sends data at the end of a Miracast session that helps determine RTSP related Miracast failures along with some statistics about the session. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **AudioChannelCount**  The number of audio channels.
- **AudioSampleRate**  The sample rate of audio in terms of samples per second.
- **AudioSubtype**  The unique subtype identifier of the audio codec (encoding method) used for audio encoding.
- **AverageBitrate**  The average video bitrate used during the Miracast session, in bits per second.
- **AverageDataRate**  The average available bandwidth reported by the WiFi driver during the Miracast session, in bits per second.
- **AveragePacketSendTimeInMs**  The average time required for the network to send a sample, in milliseconds.
- **ConnectorType**  The type of connector used during the Miracast session.
- **EncodeAverageTimeMS**  The average time to encode a frame of video, in milliseconds.
- **EncodeCount**  The count of total frames encoded in the session.
- **EncodeMaxTimeMS**  The maximum time to encode a frame, in milliseconds.
- **EncodeMinTimeMS**  The minimum time to encode a frame, in milliseconds.
- **EncoderCreationTimeInMs**  The time required to create the video encoder, in milliseconds.
- **ErrorSource**  Identifies the component that encountered an error that caused a disconnect, if applicable.
- **FirstFrameTime**  The time (tick count) when the first frame is sent.
- **FirstLatencyMode**  The first latency mode.
- **FrameAverageTimeMS**  Average time to process an entire frame, in milliseconds.
- **FrameCount**  The total number of frames processed.
- **FrameMaxTimeMS**  The maximum time required to process an entire frame, in milliseconds.
- **FrameMinTimeMS**  The minimum time required to process an entire frame, in milliseconds.
- **Glitches**  The number of frames that failed to be delivered on time.
- **HardwareCursorEnabled**  Indicates if hardware cursor was enabled when the connection ended.
- **HDCPState**  The state of HDCP (High-bandwidth Digital Content Protection) when the connection ended.
- **HighestBitrate**  The highest video bitrate used during the Miracast session, in bits per second.
- **HighestDataRate**  The highest available bandwidth reported by the WiFi driver, in bits per second.
- **LastLatencyMode**  The last reported latency mode.
- **LogTimeReference**  The reference time, in tick counts.
- **LowestBitrate**  The lowest video bitrate used during the Miracast session, in bits per second.
- **LowestDataRate**  The lowest video bitrate used during the Miracast session, in bits per second.
- **MediaErrorCode**  The error code reported by the media session, if applicable.
- **MiracastEntry**  The time (tick count) when the Miracast driver was first loaded.
- **MiracastM1**  The time (tick count) when the M1 request was sent.
- **MiracastM2**  The time (tick count) when the M2 request was sent.
- **MiracastM3**  The time (tick count) when the M3 request was sent.
- **MiracastM4**  The time (tick count) when the M4 request was sent.
- **MiracastM5**  The time (tick count) when the M5 request was sent.
- **MiracastM6**  The time (tick count) when the M6 request was sent.
- **MiracastM7**  The time (tick count) when the M7 request was sent.
- **MiracastSessionState**  The state of the Miracast session when the connection ended.
- **MiracastStreaming**  The time (tick count) when the Miracast session first started processing frames.
- **ProfileCount**  The count of profiles generated from the receiver M4 response.
- **ProfileCountAfterFiltering**  The count of profiles after filtering based on available bandwidth and encoder capabilities.
- **RefreshRate**  The refresh rate set on the remote display.
- **RotationSupported**  Indicates if the Miracast receiver supports display rotation.
- **RTSPSessionId**  The unique identifier of the RTSP session. This matches the RTSP session ID for the receiver for the same session.
- **SessionGuid**  The unique identifier of to correlate various Miracast events from a session.
- **SinkHadEdid**  Indicates if the Miracast receiver reported an EDID.
- **SupportMicrosoftColorSpaceConversion**  Indicates whether the Microsoft color space conversion for extra color fidelity is supported by the receiver.
- **SupportsMicrosoftDiagnostics**  Indicates whether the Miracast receiver supports the Microsoft Diagnostics Miracast extension.
- **SupportsMicrosoftFormatChange**  Indicates whether the Miracast receiver supports the Microsoft Format Change Miracast extension.
- **SupportsMicrosoftLatencyManagement**  Indicates whether the Miracast receiver supports the Microsoft Latency Management Miracast extension.
- **SupportsMicrosoftRTCP**  Indicates whether the Miracast receiver supports the Microsoft RTCP Miracast extension.
- **SupportsMicrosoftVideoFormats**  Indicates whether the Miracast receiver supports Microsoft video format for 3:2 resolution.
- **SupportsWiDi**  Indicates whether Miracast receiver supports Intel WiDi extensions.
- **TeardownErrorCode**  The error code reason for teardown provided by the receiver, if applicable.
- **TeardownErrorReason**  The text string reason for teardown provided by the receiver, if applicable.
- **UIBCEndState**  Indicates whether UIBC was enabled when the connection ended.
- **UIBCEverEnabled**  Indicates whether UIBC was ever enabled.
- **UIBCStatus**  The result code reported by the UIBC setup process.
- **VideoBitrate**  The starting bitrate for the video encoder.
- **VideoCodecLevel**  The encoding level used for encoding, specific to the video subtype.
- **VideoHeight**  The height of encoded video frames.
- **VideoSubtype**  The unique subtype identifier of the video codec (encoding method) used for video encoding.
- **VideoWidth**  The width of encoded video frames.
- **WFD2Supported**  Indicates if the Miracast receiver supports WFD2 protocol.


## OneDrive events

### Microsoft.OneDrive.Sync.Setup.APIOperation

This event includes basic data about install and uninstall OneDrive API operations. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **APIName**  The name of the API.
- **Duration**  How long the operation took.
- **IsSuccess**  Was the operation successful?
- **ResultCode**  The result code.
- **ScenarioName**  The name of the scenario.


### Microsoft.OneDrive.Sync.Setup.EndExperience

This event includes a success or failure summary of the installation. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **APIName**  The name of the API.
- **HResult**  HResult of the operation
- **IsSuccess**  Whether the operation is successful or not
- **ScenarioName**  The name of the scenario.


### Microsoft.OneDrive.Sync.Setup.OSUpgradeInstallationOperation

This event is related to the OS version when the OS is upgraded with OneDrive installed. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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

This event is related to registering or unregistering the OneDrive update task. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **APIName**  The name of the API.
- **IsSuccess**  Was the operation successful?
- **RegisterNewTaskResult**  The HResult of the RegisterNewTask operation.
- **ScenarioName**  The name of the scenario.
- **UnregisterOldTaskResult**  The HResult of the UnregisterOldTask operation.


### Microsoft.OneDrive.Sync.Updater.ComponentInstallState

This event includes basic data about the installation state of dependent OneDrive components. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **ComponentName**  The name of the dependent component.
- **isInstalled**  Is the dependent component installed?


### Microsoft.OneDrive.Sync.Updater.OverlayIconStatus

This event indicates if the OneDrive overlay icon is working correctly. 0 = healthy; 1 = can be fixed; 2 = broken. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **32bit**  The status of the OneDrive overlay icon on a 32-bit operating system.
- **64bit**  The status of the OneDrive overlay icon on a 64-bit operating system.


### Microsoft.OneDrive.Sync.Updater.UpdateOverallResult

This event sends information describing the result of the update. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **hr**  The HResult of the operation.
- **IsLoggingEnabled**  Indicates whether logging is enabled for the updater.
- **UpdaterVersion**  The version of the updater.


### Microsoft.OneDrive.Sync.Updater.UpdateXmlDownloadHResult

This event determines the status when downloading the OneDrive update configuration file. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **hr**  The HResult of the operation.


### Microsoft.OneDrive.Sync.Updater.WebConnectionStatus

This event determines the error code that was returned when verifying Internet connectivity. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **failedCheck**  The error code returned by the operation.
- **winInetError**  The HResult of the operation.


## ONNX runtime events

### Microsoft.ML.ONNXRuntime.ProcessInfo

This event collects information when an application loads ONNXRuntime.dll. The data collected with this event is used to keep Windows product and service performing properly.

The following fields are available:

- **AppSessionGuid**  An identifier of a particular application session starting at process creation time and persisting until process end.
- **isRedist**  Indicates if the ONNXRuntime usage is from redistributable package or inbox.
- **runtimeVersion**  The version number of ONNXRuntime.
- **schemaVersion**  Blueprint version of how the database is constructed.


### Microsoft.ML.ONNXRuntime.RuntimePerf

This event collects information about ONNXRuntime performance. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **AppSessionGuid**  An identifier of a particular application session starting at process creation time and persisting until process end.
- **schemaVersion**  Blueprint version of how the database is constructed.
- **sessionId**  Identifier for each created session.
- **totalRunDuration**  Total running/evaluation time from last time.
- **totalRuns**  Total number of running/evaluation from last time.


## Other events

### Microsoft.ServerManagementExperience.Gateway.Service.ManagedNodeProperties

This is a periodic rundown event that contains more detailed information about the nodes added to this Windows Admin Center gateway for management.

The following fields are available:

- **nodeId**  The nodeTypeId concatenated with the hostname or IP address that gateway uses to connect to this node.
- **nodeOperatingSystem**  A user friendly description of the node's OS version.
- **nodeOSVersion**  A major or minor build version string for the node's OS.
- **nodeTypeId**  A string that distinguishes between a connection target, whether it is a client, server, cluster or a hyper-converged cluster.
- **otherProperties**  Contains a JSON object with variable content and may contain: "nodes": a list of host names or IP addresses of the servers belonging to a cluster, "aliases": the alias if it is set for this connection, "lastUpdatedTime": the number of milliseconds since Unix epoch when this connection was last updated, "ncUri", "caption", "version", "productType", "networkName", "operatingSystem", "computerManufacturer", "computerModel", "isS2dEnabled". This JSON object is formatted as an quotes-escaped string.


### Microsoft.Surface.Battery.Prod.BatteryInfoEvent

This event includes the hardware level data about battery performance. The data collected with this event is used to help keep Windows products and services performing properly.

The following fields are available:

- **batteryData.data()**  Battery performance data.
- **BatteryDataSize:**  Size of the battery performance data.
- **batteryInfo.data()**  Battery performance data.
- **BatteryInfoSize:**  Size of the battery performance data.
- **pszBatteryDataXml**  Battery performance data.
- **szBatteryInfo**  Battery performance data.


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


### wilActivity

This event provides a Windows Internal Library context used for Product and Service diagnostics. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **hresult**  The HResult of the overall activity.
- **threadId**  The ID of the thread on which the activity is executing.


## Privacy notifier events

### Microsoft.Windows.Shell.PrivacyNotifierLogging.PrivacyNotifierCompleted

This event returns data to report the efficacy of a single-use tool to inform users impacted by a known issue and to take corrective action to address the issue. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **cleanupTask**  Indicates whether the task that launched the dialog should be cleaned up.
- **cleanupTaskResult**  The return code of the attempt to clean up the task used to show the dialog.
- **deviceEvaluated**  Indicates whether the device was eligible for evaluation of a known issue.
- **deviceImpacted**  Indicates whether the device was impacted by a known issue.
- **modalAction**  The action the user took on the dialog that was presented to them.
- **modalResult**  The return code of the attempt to show a dialog to the user explaining the issue.
- **resetSettingsResult**  The return code of the action to correct the known issue.


## Quality Update Assistant events

### Microsoft.Windows.QualityUpdateAssistant.Applicability

This event sends basic info on whether the device should be updated to the latest cumulative update. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **CV**  Correlation vector.
- **dayspendingrebootafterfu**  Number of days that have elapsed since the device reached ready to reboot for a Feature Update that is still actively pending reboot.
- **ExecutionRequestId**  Identifier of the Execution Request that launched the QualityUpdateAssistant process.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this device.
- **IsApplicable**  Indicates whether the update is applicable to this device.
- **KBNumber**  KBNumber of the update being installed.
- **PackageVersion**  Current package version of quality update assistant.
- **Reason**  Provides information on reasons why the update is not applicable to the device.
- **Result**  Applicability check for quality update assistant.


### Microsoft.Windows.QualityUpdateAssistant.DeviceReadinessCheck

This event sends basic info on whether the device is ready to download the latest cumulative update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **ExecutionRequestId**  Identifier of the Execution Request that launched the QualityUpdateAssistant process.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this device.
- **KBNumber**  KBNumber of the update being installed.
- **PackageVersion**  Current package version of quality update assistant.
- **QualityUpdateReadinessProcessorMaxSpeed**  Processor max speed.
- **Reason**  Indicates why the device did not pass the readiness check.
- **Result**  Device readiness check for quality update assistant.
- **VirtualMemoryUsedByCurrentProcess**  Virtual memory in use by the Quality Update Assistant process.


### Microsoft.Windows.QualityUpdateAssistant.Download

This event sends basic info when download of the latest cumulative update begins. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **DODownloadHResult**  Result code from Delivery Optimization when used to download the quality update.
- **DownloadMode**  Indicates how the quality update was downloaded.
- **ExecutionRequestId**  Identifier of the Execution Request that launched the QualityUpdateAssistant process.
- **GlobalEventCounter**  Client side counter that indicates ordering of events sent by this device.
- **HttpsDownloadHResult**  Result code when HTTPS is used to download the quality update.
- **InstallMode**  Indicates which installation method was used to attempt the install of the quality update.
- **KBNumber**  KBNumber of the update being installed.
- **PackageVersion**  Current package version of quality update assistant.
- **QualityUpdateDeviceHasMinimumUptime**  Indicates whether the device has the minimum uptime required to install a quality update.
- **Result**  Download of latest cumulative update payload.
- **Scenario**  Indicates if the installation step succeeded or failed.


### Microsoft.Windows.QualityUpdateAssistant.Install

This event sends basic info on the result of the installation of the latest cumulative update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **DismInstallHResult**  Internal result code from DISM when used to install the quality update.
- **ExecutionRequestId**  Identifier of the Execution Request that launched the QualityUpdateAssistant process.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this device.
- **InstallMode**  Indicates which installation method was used to attempt the install of the quality update.
- **KBNumber**  KBNumber of the update being installed.
- **launchretrycounter**  Count of the number of times the install has been retried in the event of a non-successful installation attempt.
- **PackageVersion**  Current package version of quality update assistant.
- **QualityUpdateDismErrorCode**  Error code returned when DISM is used to install the quality update.
- **QualityUpdatePendingRebootAfterInstallStage**  Indicates if the device is pending reboot after install is complete.
- **QualityUpdateSecondsInstallStage**  Time spent installing the quality update.
- **QualityUpdateWusaErrorCode**  Error code returned when WUSA is used to install the quality update.
- **Result**  Install of latest cumulative update payload.
- **Scenario**  Indicates if the installation step succeeded or failed.
- **WusaInstallHResult**  Internal result code from WUSA when used to install the quality update.


## Remediation events

### Microsoft.Windows.Remediation.Applicable

This event indicates whether Windows Update sediment remediations need to be applied to the sediment device to keep Windows up to date. A sediment device is one that has been on a previous OS version for an extended period. The remediations address issues on the system that prevent the device from receiving OS updates.

The following fields are available:

- **AllowAutoUpdateExists**  Indicates whether the Automatic Update feature is turned on.
- **AllowAutoUpdateProviderSetExists**  Indicates whether the Allow Automatic Update provider exists.
- **AppraiserBinariesValidResult**  Indicates whether the plug-in was appraised as valid.
- **AppraiserRegistryValidResult**  Indicates whether the registry entry checks out as valid.
- **AppraiserTaskRepairDisabled**  Task repair performed by the Appraiser plug-in is disabled.
- **AppraiserTaskValid**  Indicates that the Appraiser task is valid.
- **AUOptionsExists**  Indicates whether the Automatic Update options exist.
- **CTACTargetingAttributesInvalid**  Indicates whether the Common Targeting Attribute Client (CTAC) attributes are valid. CTAC is a Windows Runtime client library.
- **CTACVersion**  The Common Targeting Attribute Client (CTAT) version on the device. CTAT is a Windows Runtime client library.
- **CV**  Correlation vector
- **DataStoreSizeInBytes**  Size of the data store, in bytes.
- **DateTimeDifference**  The difference between local and reference clock times.
- **DateTimeSyncEnabled**  Indicates whether the Datetime Sync plug-in is enabled.
- **daysSinceInstallThreshold**  The maximum number of days since the operating system was installed before the device is checked to see if remediation is needed.
- **daysSinceInstallValue**  Number of days since the operating system was installed.
- **DaysSinceLastSIH**  The number of days since the most recent SIH executed.
- **DaysToNextSIH**  The number of days until the next scheduled SIH execution.
- **DetectConditionEnabled**  Indicates whether a condition that the remediation tool can repair was detected.
- **DetectedCondition**  Indicates whether detected condition is true and the perform action will be run.
- **DetectionFailedReason**  Indicates why a given remediation failed to fix a problem that was detected.
- **DiskFreeSpaceBeforeSedimentPackInMB**  Number of megabytes of disk space available on the device before running the Sediment Pack.
- **DiskSpaceBefore**  The amount of free disk space available before a remediation was run.
- **EditionIdFixCorrupted**  Indicates whether the Edition ID is corrupted.
- **EscalationTimerResetFixResult**  The result of fixing the escalation timer.
- **EvalAndReportAppraiserRegEntries**  Indicates the EvalAndReportAppraiserRegEntriesFailed event failed.
- **FixedEditionId**  Indicates whether we fixed the edition ID.
- **FlightRebootTime**  The amount of time before the system is rebooted.
- **ForcedRebootToleranceDays**  The maximum number of days before a system reboot is forced on the devie.
- **FreeSpaceRequirement**  The amount of free space required.
- **GlobalEventCounter**  Client side counter that indicates ordering of events sent by the remediation system.
- **HResult**  The HRESULT for detection or perform action phases of the plugin.
- **installDateValue**  The date of the installation.
- **IsAppraiserLatestResult**  The HRESULT from the appraiser task.
- **IsConfigurationCorrected**  Indicates whether the configuration of SIH task was successfully corrected.
- **IsEscalationTimerResetFixNeeded**  Determines whether a fix is applicable.
- **IsForcedModeEnabled**  Indicates whether forced reboot mode is enabled.
- **IsHomeSku**  Indicates whether the device is running the Windows 10 Home edition.
- **IsRebootForcedMode**  Indicates whether the forced reboot mode is turned on.
- **IsServiceHardeningEnabled**  Indicates whether the Windows Service Hardening feature was turned on for the device.
- **IsServiceHardeningNeeded**  Indicates whether Windows Service Hardening was needed for the device (multiple instances of service tampering were detected.)
- **isThreshold**  Indicates whether the value meets our threshold.
- **IsUsoRebootPending**  Indicates whether a system reboot is pending.
- **IsUsoRebootPendingInUpdateStore**  Indicates whether a reboot is pending.
- **IsUsoRebootTaskEnabled**  Indicates whether the Update Service Orchestrator (USO) reboot task is enabled
- **IsUsoRebootTaskExists**  Indicates whether the Update Service Orchestrator (USO) reboot task exists.
- **IsUsoRebootTaskValid**  Indicates whether the Update Service Orchestrator (USO) reboot task is valid.
- **LastHresult**  The HRESULT for detection or perform action phases of the plugin.
- **LastRebootTaskRunResult**  Indicates the result of the last reboot task.
- **LastRebootTaskRunTime**  The length of time the last reboot task took to run.
- **LastRun**  The date of the most recent SIH run.
- **LPCountBefore**  The number of language packs on the device before remediation started.
- **NextCheck**  Indicates when remediation will next be attempted.
- **NextRebootTaskRunTime**  Indicates when the next system reboot task will run.
- **NextRun**  Date of the next scheduled SIH run.
- **NoAutoUpdateExists**  Indicates whether the Automatic Updates feature is turned off.
- **NumberOfDaysStuckInReboot**  The number of days tht the device has been unable to successfully reboot.
- **OriginalEditionId**  The Windows edition ID before remediation started.
- **PackageVersion**  The version of the current remediation package.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **ProductType**  The product type of Windows 10.
- **QualityUpdateSedimentFunnelState**  Provides information about whether Windows Quality Updates are missing on the device.
- **QualityUpdateSedimentJsonSchemaVersion**  The schema version of the Quality Update Sediment Remediation.
- **QualityUpdateSedimentLastRunSeconds**  The number of seconds since the Quality Updates were run.
- **QualityUpdateSedimentLocalStartTime**  Provides information about when Quality Updates were run.
- **QualityUpdateSedimentLocaltTime**  The local time of the device running the Quality Update Sediment Remediation.
- **QualityUpdateSedimentTargetedPlugins**  Provides the list of remediation plug-ins that are applicable to enable Quality Updates on the device.
- **QualityUpdateSedimentTargetedTriggers**  Provides information about remediations that are applicable to enable Quality Updates on the device.
- **RegkeysExist**  Indicates whether specified registry keys exist.
- **Reload**  True if SIH reload is required.
- **RemediationAutoUACleanupNeeded**  Automatic Update Assistant cleanup is required.
- **RemediationAutoUAIsInstalled**  Indicates whether the Automatic Update Assistant tool is installed.
- **RemediationAutoUATaskDisabled**  Indicates whether the Automatic Update Assistant tool task is disabled.
- **RemediationAutoUATaskNotExists**  Indicates whether an Automatic Update Assistant tool task does not exist.
- **RemediationAutoUATasksStalled**  Indicates whether an Automatic Update Assistant tool task is stalled.
- **RemediationCorruptionRepairBuildNumber**  The build number to use to repair corruption.
- **RemediationCorruptionRepairCorruptionsDetected**  Indicates whether corruption was detected.
- **RemediationCorruptionRepairDetected**  Indicates whether an attempt was made to repair the corruption.
- **RemediationDeliverToastBuildNumber**  Indicates a build number that should be applicable to this device.
- **RemediationDeliverToastDetected**  Indicates that a plug-in has been detected.
- **RemediationDeliverToastDeviceExcludedNation**  Indicates the geographic identity (GEO ID) that is not applicable for a given plug-in.
- **RemediationDeliverToastDeviceFreeSpaceInMB**  Indicates the amount of free space, in megabytes.
- **RemediationDeliverToastDeviceHomeSku**  Indicates whether the plug-in is applicable for the Windows 10 Home edition.
- **RemediationDeliverToastDeviceIncludedNation**  Indicates the geographic identifier (GEO ID) that is applicable for a given plug-in.
- **RemediationDeliverToastDeviceProSku**  Indicates whether the plug-in is applicable for the Windows 10 Professional edition.
- **RemediationDeliverToastDeviceSystemDiskSizeInMB**  Indicates the size of a system disk, in megabytes.
- **RemediationDeliverToastGeoId**  Indicates the geographic identifier (GEO ID) that is applicable for a given plug-in.
- **RemediationDeviceSkuId**  The Windows 10 edition ID that maps to the version of Windows 10 on the device.
- **RemediationGetCurrentFolderExist**  Indicates whether the GetCurrent folder exists.
- **RemediationNoisyHammerAcLineStatus**  Indicates the AC Line Status of the device.
- **RemediationNoisyHammerAutoStartCount**  The number of times Auto UA auto-started.
- **RemediationNoisyHammerCalendarTaskEnabled**  Event that indicates Update Assistant Calendar Task is enabled.
- **RemediationNoisyHammerCalendarTaskExists**  Event that indicates an Update Assistant Calendar Task exists.
- **RemediationNoisyHammerCalendarTaskTriggerEnabledCount**  Event that indicates calendar triggers are enabled in the task.
- **RemediationNoisyHammerDaysSinceLastTaskRunTime**  The number of days since the Auto UA ran.
- **RemediationNoisyHammerGetCurrentSize**  Size in MB of the $GetCurrent folder.
- **RemediationNoisyHammerIsInstalled**  TRUE if the Auto UA is installed.
- **RemediationNoisyHammerLastTaskRunResult**  The result from the last Auto UA task run.
- **RemediationNoisyHammerMeteredNetwork**  TRUE if the machine is on a metered network.
- **RemediationNoisyHammerTaskEnabled**  TRUE if the Auto UA task is enabled.
- **RemediationNoisyHammerTaskExists**  TRUE if the Auto UA task exists.
- **RemediationNoisyHammerTasksStalled**  TRUE if the Auto UA task is stalled.
- **RemediationNoisyHammerTaskTriggerEnabledCount**  Indicates whether the task has the count trigger enabled.
- **RemediationNoisyHammerUAExitCode**  The exit code of the Update Assistant.
- **RemediationNoisyHammerUAExitState**  The exit code of the Update Assistant.
- **RemediationNoisyHammerUserLoggedIn**  TRUE if there is a user logged in.
- **RemediationNoisyHammerUserLoggedInAdmin**  TRUE if there is the user currently logged in is an Admin.
- **RemediationNotifyUserFixIssuesBoxStatusKey**  Status of the remediation plug-in.
- **RemediationNotifyUserFixIssuesBuildNumber**  The build number of the remediation plug-in.
- **RemediationNotifyUserFixIssuesDetected**  Indicates whether the remediation is necessary.
- **RemediationNotifyUserFixIssuesDiskSpace**  Indicates whether the remediation is necessary due to low disk space.
- **RemediationNotifyUserFixIssuesFeatureUpdateBlocked**  Indicates whether the remediation is necessary due to Feature Updates being blocked.
- **RemediationNotifyUserFixIssuesFeatureUpdateInProgress**  Indicates whether the remediation is necessary due to Feature Updates in progress.
- **RemediationNotifyUserFixIssuesIsUserAdmin**  Indicates whether the remediation requires that an Administrator is logged in.
- **RemediationNotifyUserFixIssuesIsUserLoggedIn**  Indicates whether the remediation can take place when a non-Administrator is logged in.
- **RemediationProgramDataFolderSizeInMB**  The size (in megabytes) of the Program Data folder on the device.
- **RemediationProgramFilesFolderSizeInMB**  The size (in megabytes) of the Program Files folder on the device.
- **RemediationShellDeviceApplicabilityFailedReason**  The reason the Remediation is not applicable to the device (expressed as a bitmap).
- **RemediationShellDeviceEducationSku**  Indicates whether the Windows 10 Education edition is detected on the device.
- **RemediationShellDeviceEnterpriseSku**  Indicates whether the Windows 10 Enterprise edition is detected on the device.
- **RemediationShellDeviceFeatureUpdatesPaused**  Indicates whether Feature Updates are paused on the device.
- **RemediationShellDeviceHomeSku**  Indicates whether the Windows 10 Home edition is detected on the device.
- **RemediationShellDeviceIsAllowedSku**  Indicates whether the Windows 10 edition is applicable to the device.
- **RemediationShellDeviceManaged**  TRUE if the device is WSUS managed or Windows Updated disabled.
- **RemediationShellDeviceNewOS**  TRUE if the device has a recently installed OS.
- **RemediationShellDeviceProSku**  Indicates whether a Windows 10 Professional edition is detected.
- **RemediationShellDeviceQualityUpdatesPaused**  Indicates whether Quality Updates are paused on the device.
- **RemediationShellDeviceSccm**  TRUE if the device is managed by SCCM (Microsoft System Center Configuration Manager).
- **RemediationShellDeviceSedimentMutexInUse**  Indicates whether the Sediment Pack mutual exclusion object (mutex) is in use.
- **RemediationShellDeviceSetupMutexInUse**  Indicates whether device setup is in progress.
- **RemediationShellDeviceWuRegistryBlocked**  Indicates whether the Windows Update is blocked on the device via the registry.
- **RemediationShellDeviceZeroExhaust**  TRUE if the device has opted out of Windows Updates completely.
- **RemediationShellHasExpired**  Indicates whether the remediation iterations have ended.
- **RemediationShellHasUpgraded**  Indicates whether the device upgraded.
- **RemediationShellIsDeviceApplicable**  Indicates whether the remediation is applicable to the device.
- **RemediationTargetMachine**  Indicates whether the device is a target of the specified fix.
- **RemediationTaskHealthAutochkProxy**  True/False based on the health of the AutochkProxy task.
- **RemediationTaskHealthChkdskProactiveScan**  True/False based on the health of the Check Disk task.
- **RemediationTaskHealthDiskCleanup_SilentCleanup**  True/False based on the health of the Disk Cleanup task.
- **RemediationTaskHealthMaintenance_WinSAT**  True/False based on the health of the Health Maintenance task.
- **RemediationTaskHealthServicing_ComponentCleanupTask**  True/False based on the health of the Health Servicing Component task.
- **RemediationTaskHealthUSO_ScheduleScanTask**  True/False based on the health of the USO (Update Session Orchestrator) Schedule task.
- **RemediationTaskHealthWindowsUpdate_ScheduledStartTask**  True/False based on the health of the Windows Update Scheduled Start task.
- **RemediationTaskHealthWindowsUpdate_SihbootTask**  True/False based on the health of the Sihboot task.
- **RemediationUHServiceDisabledBitMap**  A bitmap indicating which services were disabled.
- **RemediationUHServiceNotExistBitMap**  A bitmap indicating which services were deleted.
- **RemediationUsersFolderSizeInMB**  The size (in megabytes) of the Users folder on the device.
- **RemediationWindows10UpgradeFolderExist**  Indicates whether the Windows 10 Upgrade folder exists.
- **RemediationWindows10UpgradeFolderSizeInMB**  The size (in megabytes) of the Windows 10 Upgrade folder on the device.
- **RemediationWindowsAppsFolderSizeInMB**  The size (in megabytes) of the Windows Applications folder on the device.
- **RemediationWindowsBtFolderSizeInMB**  The size (in megabytes) of the Windows BT folder on the device.
- **RemediationWindowsFolderSizeInMB**  The size (in megabytes) of the Windows folder on the device.
- **RemediationWindowsServiceProfilesFolderSizeInMB**  The size (in megabytes) of the Windows service profile on the device.
- **Result**  This is the HRESULT for Detection or Perform Action phases of the plugin.
- **RunTask**  TRUE if SIH task should be run by the plug-in.
- **StorageSenseDiskCompresserEstimateInMB**  The estimated amount of free space that can be cleaned up by running Storage Sense.
- **StorageSenseHelloFaceRecognitionFodCleanupEstimateInByte**  The estimated amount of space that can be cleaned up by running Storage Sense and removing Windows Hello facial recognition.
- **StorageSenseRestorePointCleanupEstimateInMB**  The estimated amount of free space (in megabytes) that can be cleaned up by running Storage Sense.
- **StorageSenseUserDownloadFolderCleanupEstimateInByte**  The estimated amount of space that can be cleaned up by running Storage Sense to clean up the User Download folder.
- **TimeServiceNTPServer**  The URL for the NTP time server used by device.
- **TimeServiceStartType**  The startup type for the NTP time service.
- **TimeServiceSyncDomainJoined**  True if device domain joined and hence uses DC for clock.
- **TimeServiceSyncType**  Type of sync behavior for Date & Time service on device.
- **uninstallActiveValue**  Indicates whether an uninstall is in progress.
- **UpdateApplicabilityFixerTriggerBitMap**  A bitmap containing the reason(s) why the Update Applicability Fixer Plugin was executed.
- **UpdateRebootTime**  The amount of time it took to reboot to install the updates.
- **usoScanHoursSinceLastScan**  The number of hours since the last scan by the Update Service Orchestrator (USO).
- **usoScanPastThreshold**  Indicates whether the Update Service Orchestrator (USO) scan is overdue.
- **WindowsHiberFilSysSizeInMegabytes**  The size of the Windows Hibernation file, in megabytes.
- **WindowsInstallerFolderSizeInMegabytes**  The size of the Windows Installer folder, in megabytes.
- **WindowsPageFileSysSizeInMegabytes**  The size of the Windows Page file, in megabytes.
- **WindowsSoftwareDistributionFolderSizeInMegabytes**  The size of the Software Distribution folder, in megabytes.
- **WindowsSwapFileSysSizeInMegabytes**  The size of the Windows Swap file, in megabytes.
- **WindowsSxsFolderSizeInMegabytes**  The size of the WinSxS (Windows Side-by-Side) folder, in megabytes.


### Microsoft.Windows.Remediation.Completed

This event is sent when Windows Update sediment remediations have completed on the sediment device to keep Windows up to date. A sediment device is one that has been on a previous OS version for an extended period. The remediations address issues on the system that prevent the device from receiving OS updates.

The following fields are available:

- **ActionName**  Name of the action to be completed by the plug-in.
- **AppraiserTaskMissing**  TRUE if the Appraiser task is missing.
- **branchReadinessLevel**  Branch readiness level policy.
- **cloudControlState**  Value indicating whether the shell is enabled on the cloud control settings.
- **CV**  The Correlation Vector.
- **DateTimeDifference**  The difference between the local and reference clocks.
- **DiskFreeSpaceAfterSedimentPackInMB**  The amount of free disk space (in megabytes) after executing the Sediment Pack.
- **DiskFreeSpaceBeforeSedimentPackInMB**  The amount of free disk space (in megabytes) before executing the Sediment Pack.
- **DiskMbFreeAfterCleanup**  The amount of free hard disk space after cleanup, measured in Megabytes.
- **DiskMbFreeBeforeCleanup**  The amount of free hard disk space before cleanup, measured in Megabytes.
- **DiskSpaceCleanedByComponentCleanup**  The amount of disk space (in megabytes) in the component store that was cleaned up by the plug-in.
- **DiskSpaceCleanedByNGenRemoval**  The amount of diskspace (megabytes) in the Native Image Generator (NGEN) cache that was cleaned up by the plug-in.
- **DiskSpaceCleanedByRestorePointRemoval**  The amount of disk space (megabytes) in restore points that was cleaned up by the plug-in.
- **ForcedAppraiserTaskTriggered**  TRUE if Appraiser task ran from the plug-in.
- **GlobalEventCounter**  Client-side counter that indicates ordering of events sent by the active user.
- **HandlerCleanupFreeDiskInMegabytes**  The amount of hard disk space cleaned by the storage sense handlers, measured in megabytes.
- **hasRolledBack**  Indicates whether the client machine has rolled back.
- **hasUninstalled**  Indicates whether the client machine has uninstalled a later version of the OS.
- **hResult**  The result of the event execution.
- **HResult**  The result of the event execution.
- **installDate**  The value of installDate registry key. Indicates the install date.
- **isNetworkMetered**  Indicates whether the client machine has uninstalled a later version of the OS.
- **LatestState**  The final state of the plug-in component.
- **MicrosoftCompatibilityAppraiser**  The name of the component targeted by the Appraiser plug-in.
- **PackageVersion**  The package version for the current Remediation.
- **PluginName**  The name of the plug-in specified for each generic plug-in event.
- **QualityUpdateSedimentExecutedPlugins**  The number of plug-ins executed by the Windows Quality Update remediation.
- **QualityUpdateSedimentFunnelState**  The state of the Windows Quality Update remediation funnel for the device.
- **QualityUpdateSedimentJsonSchemaVersion**  The schema version of the Quality Update Sediment Remediation.
- **QualityUpdateSedimentLocalEndTime**  The local time on the device when the Windows Quality Update remediation executed.
- **QualityUpdateSedimentLocaltTime**  The local time of the device running the Quality Update Sediment Remediation.
- **QualityUpdateSedimentMatchedTriggers**  The list of triggers that were matched by the Windows Quality Update remediation.
- **QualityUpdateSedimentModelExecutionSeconds**  The number of seconds needed to execute the Windows Quality Update remediation.
- **recoveredFromTargetOS**  Indicates whether the device recovered from the target operating system (OS).
- **RemediationAutoUASpaceSaved**  Amount of disk space saved in MB after cleaning up AutoUA folders.
- **RemediationBatteryPowerBatteryLevel**  Indicates the battery level at which it is acceptable to continue operation.
- **RemediationBatteryPowerExitDueToLowBattery**  True when we exit due to low battery power.
- **RemediationBatteryPowerOnBattery**  True if we allow execution on battery.
- **RemediationCbsTempDiskSpaceCleanedInMB**  The amount of space (in megabytes) that the plug-in cleaned up in the CbsTemp folder.
- **RemediationCbsTempEstimateInMB**  The amount of space (megabytes) in the CbsTemp folder that is available for cleanup by the plug-in.
- **RemediationComponentCleanupEstimateInMB**  The amount of space (megabytes) in the WinSxS (Windows Side-by-Side) folder that is available for cleanup by the plug-in.
- **RemediationConfigurationTroubleshooterIpconfigFix**  TRUE if IPConfig Fix completed successfully.
- **RemediationConfigurationTroubleshooterNetShFix**  TRUE if network card cache reset ran successfully.
- **RemediationCorruptionIsManifestFix**  Boolean indicating if the manifest was repaired.
- **RemediationCorruptionRepairCorruptionsDetected**  Number of corruptions detected on the device.
- **RemediationCorruptionRepairCorruptionsFixed**  Number of detected corruptions that were fixed on the device.
- **RemediationCorruptionRepairDownloadCompleted**  Boolean indicating if the download of manifest cab was completed.
- **RemediationCorruptionRepairDownloadRequired**  Boolean indicating if the download of manifest cab is required for repair.
- **RemediationCorruptionRepairMeteredNetwork**  Boolean indicating if the device is on a metered network.
- **RemediationCorruptionRepairPerformActionSuccessful**  Indicates whether corruption repair was successful on the device.
- **RemediationDiskCleanupSearchFileSizeInMB**  The size of the Cleanup Search index file, measured in megabytes.
- **RemediationDiskSpaceSavedByCompressionInMB**  The amount of disk space (megabytes) that was compressed by the plug-in.
- **RemediationDiskSpaceSavedByUserProfileCompressionInMB**  The amount of User disk space (in megabytes) that was compressed by the plug-in.
- **remediationExecution**  Remediation shell is in "applying remediation" state.
- **RemediationHandlerCleanupEstimateInMB**  The estimated amount of disk space (in megabytes) to be cleaned up by running Storage Sense.
- **RemediationHibernationMigrated**  TRUE if hibernation was migrated.
- **RemediationHibernationMigrationSucceeded**  TRUE if hibernation migration succeeded.
- **RemediationNGenDiskSpaceRestored**  The amount of disk space (in megabytes) that was restored after re-running the Native Image Generator (NGEN).
- **RemediationNGenEstimateInMB**  The amount of disk space (in megabytes) estimated to be in the Native Image Generator (NGEN) cache by the plug-in.
- **RemediationNGenMigrationSucceeded**  Indicates whether the Native Image Generator (NGEN) migration succeeded.
- **RemediationRestorePointEstimateInMB**  The amount of disk space (in megabytes) estimated to be used by storage points found by the plug-in.
- **RemediationSearchFileSizeEstimateInMB**  The amount of disk space (megabytes) estimated to be used by the Cleanup Search index file found by the plug-in.
- **RemediationShellHasUpgraded**  TRUE if the device upgraded.
- **RemediationShellMinimumTimeBetweenShellRuns**  Indicates the time between shell runs exceeded the minimum required to execute plugins.
- **RemediationShellRunFromService**  TRUE if the shell driver was run from the service.
- **RemediationShellSessionIdentifier**  Unique identifier tracking a shell session.
- **RemediationShellSessionTimeInSeconds**  Indicates the time the shell session took in seconds.
- **RemediationShellTaskDeleted**  Indicates that the shell task has been deleted so no additional sediment pack runs occur for this installation.
- **RemediationSoftwareDistributionCleanedInMB**  The amount of disk space (megabytes) in the Software Distribution folder that was cleaned up by the plug-in.
- **RemediationSoftwareDistributionEstimateInMB**  The amount of disk space (megabytes) in the Software Distribution folder that is available for clean up by the plug-in.
- **RemediationTotalDiskSpaceCleanedInMB**  The total disk space (in megabytes) that was cleaned up by the plug-in.
- **RemediationUpdateServiceHealthRemediationResult**  The result of the Update Service Health plug-in.
- **RemediationUpdateTaskHealthRemediationResult**  The result of the Update Task Health plug-in.
- **RemediationUpdateTaskHealthTaskList**  A list of tasks fixed by the Update Task Health plug-in.
- **RemediationUserFolderCompressionEstimateInMB**  The amount of disk space (in megabytes) estimated to be compressible in User folders by the plug-in.
- **RemediationUserProfileCompressionEstimateInMB**  The amount of disk space (megabytes) estimated to be compressible in User Profile folders by the plug-in.
- **RemediationUSORebootRequred**  Indicates whether a reboot is determined to be required by calling the Update Service Orchestrator (USO).
- **RemediationWindowsCompactedEstimateInMB**  The amount of disk space (megabytes) estimated to be available by compacting the operating system using the plug-in.
- **RemediationWindowsLogSpaceEstimateInMB**  The amount of disk space (in megabytes) available in Windows logs that can be cleaned by the plug-in.
- **RemediationWindowsLogSpaceFreed**  The amount of disk space freed by deleting the Windows log files, measured in Megabytes.
- **RemediationWindowsOldSpaceEstimateInMB**  The amount of disk space (megabytes) in the Windows.OLD folder that can be cleaned up by the plug-in.
- **RemediationWindowsSpaceCompactedInMB**  The amount of disk space (megabytes) that can be cleaned up by the plug-in.
- **RemediationWindowsStoreSpaceCleanedInMB**  The amount of disk space (megabytes) from the Windows Store cache that was cleaned up by the plug-in.
- **RemediationWindowsStoreSpaceEstimateInMB**  The amount of disk space (megabytes) in the Windows store cache that is estimated to be cleanable by the plug-in.
- **Result**  The HRESULT for Detection or Perform Action phases of the plug-in.
- **RunCount**  The number of times the plugin has executed.
- **RunResult**  The HRESULT for Detection or Perform Action phases of the plug-in.
- **ServiceHardeningExitCode**  The exit code returned by Windows Service Repair.
- **ServiceHealthEnabledBitMap**  List of services updated by the plugin.
- **ServiceHealthInstalledBitMap**  List of services installed by the plugin.
- **StorageSenseDiskCompresserTotalInMB**  The total number of megabytes that Storage Sense cleaned up in the User Download folder.
- **StorageSenseHelloFaceRecognitionFodCleanupTotalInByte**  The amount of space that Storage Sense was able to clean up in the User Download folder by removing Windows Hello facial recognition.
- **StorageSenseRestorePointCleanupTotalInMB**  The total number of megabytes that Storage Sense cleaned up in the User Download folder.
- **StorageSenseUserDownloadFolderCleanupTotalInByte**  The total number of bytes that Storage Sense cleaned up in the User Download folder.
- **systemDriveFreeDiskSpace**  Indicates the free disk space on system drive, in megabytes.
- **systemUptimeInHours**  Indicates the amount of time the system in hours has been on since the last boot.
- **uninstallActive**  TRUE if previous uninstall has occurred for current OS
- **UpdateApplicabilityFixedBitMap**  Bitmap indicating which fixes were applied by the plugin.
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
- **windows10UpgraderBlockWuUpdates**  Event to report the value of Windows 10 Upgrader BlockWuUpdates Key.
- **windowsEditionId**  Event to report the value of Windows Edition ID.
- **WindowsOldSpaceCleanedInMB**  The amount of disk space freed by removing the Windows.OLD folder, measured in Megabytes.
- **windowsUpgradeRecoveredFromRs4**  Event to report the value of the Windows Upgrade Recovered key.


### Microsoft.Windows.Remediation.Started

This event is sent when Windows Update sediment remediations have started on the sediment device to keep Windows up to date. A sediment device is one that has been on a previous OS version for an extended period. The remediations address issues on the system that prevent the device from receiving OS updates.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  The version of the current remediation package.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **QualityUpdateSedimentFunnelState**  Provides information about whether quality updates are missing on the device.
- **QualityUpdateSedimentFunnelType**  Indicates whether the Remediation is for Quality Updates or Feature Updates.
- **QualityUpdateSedimentJsonSchemaVersion**  The schema version of the Quality Update Sediment Remediation.
- **QualityUpdateSedimentLastRunSeconds**  The number of seconds since Quality Updates were run.
- **QualityUpdateSedimentLocaltTime**  The local time of the device running the Quality Update Sediment Remediation.
- **QualityUpdateSedimentMatchedTriggers**  The list of triggers that were matched by the Windows Quality Update Remediation.
- **QualityUpdateSedimentSelectedPlugins**  The number of plugins that were selected for execution in the Quality Update Sediment Remediation.
- **QualityUpdateSedimentTargetedPlugins**  The list of plug-ins targeted by the current Quality Update Sediment Remediation.
- **QualityUpdateSedimentTargetedTriggers**  The list of triggers targeted by the current Quality Update Sediment Remediation.
- **RemediationProgramDataFolderSizeInMB**  The size (in megabytes) of the Program Data folder on the device.
- **RemediationProgramFilesFolderSizeInMB**  The size (in megabytes) of the Program Files folder on the device.
- **RemediationUsersFolderSizeInMB**  The size (in megabytes) of the Users folder on the device.
- **RemediationWindowsAppsFolderSizeInMB**  The size (in megabytes) of the Windows Applications folder on the device.
- **RemediationWindowsBtFolderSizeInMB**  The size (in megabytes) of the Windows BT folder on the device.
- **RemediationWindowsFolderSizeInMB**  The size (in megabytes) of the Windows folder on the device.
- **RemediationWindowsServiceProfilesFolderSizeInMB**  The size (in megabytes) of the Windows Service Profiles folder on the device.
- **RemediationWindowsTotalSystemDiskSize**  The total storage capacity of the System disk drive, measured in megabytes.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.
- **RunCount**  The number of times the remediation event started (whether it completed successfully or not).
- **WindowsHiberFilSysSizeInMegabytes**  The size of the Windows Hibernation file, measured in megabytes.
- **WindowsInstallerFolderSizeInMegabytes**  The size of the Windows Installer folder, measured in megabytes.
- **WindowsOldFolderSizeInMegabytes**  The size of the Windows.OLD folder, measured in megabytes.
- **WindowsPageFileSysSizeInMegabytes**  The size of the Windows Page file, measured in megabytes.
- **WindowsSoftwareDistributionFolderSizeInMegabytes**  The size of the Software Distribution folder, measured in megabytes.
- **WindowsSwapFileSysSizeInMegabytes**  The size of the Windows Swap file, measured in megabytes.
- **WindowsSxsFolderSizeInMegabytes**  The size of the WinSxS (Windows Side-by-Side) folder, measured in megabytes.


## Sediment events

### Microsoft.Windows.Sediment.Info.DetailedState

This event is sent when detailed state information is needed from an update trial run. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **Data**  Data relevant to the state, such as what percent of disk space the directory takes up.
- **Id**  Identifies the trial being run, such as a disk related trial.
- **ReleaseVer**  The version of the component.
- **State**  The state of the reporting data from the trial, such as the top-level directory analysis.
- **Time**  The time the event was fired.


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


### Microsoft.Windows.SedimentLauncher.Applicable

This event is sent when the Windows Update sediment remediations launcher finds that an applicable plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CV**  Correlation vector.
- **DetectedCondition**  Boolean true if detect condition is true and perform action will be run.
- **FileVersion**  The version of the data-link library (DLL) that will be applied by the self-update process.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **IsHashMismatch**  Indicates whether the hash is a mismatch.
- **IsSelfUpdateEnabledInOneSettings**  True if self update enabled in Settings.
- **IsSelfUpdateNeeded**  True if self update needed by device.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.


### Microsoft.Windows.SedimentLauncher.Completed

This event is sent when the Windows Update sediment remediations launcher finishes running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CV**  Correlation vector.
- **FailedReasons**  Concatenated list of failure reasons.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.
- **SedLauncherExecutionResult**  HRESULT for one execution of the Sediment Launcher.


### Microsoft.Windows.SedimentLauncher.Started

This event is sent when the Windows Update sediment remediations launcher starts running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.


### Microsoft.Windows.SedimentService.Applicable

This event is sent when the Windows Update sediment remediations service finds that an applicable plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CV**  Correlation vector.
- **DetectedCondition**  Determine whether action needs to run based on device properties.
- **FileVersion**  The version of the dynamic-link library (DLL) that will be applied by the self-update process.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **IsHashMismatch**  Indicates whether the hash is a mismatch.
- **IsSelfUpdateEnabledInOneSettings**  Indicates if self update is enabled in One Settings.
- **IsSelfUpdateNeeded**  Indicates if self update is needed.
- **PackageVersion**  Current package version of Remediation.
- **PluginName**  Name of the plugin.
- **Result**  This is the HRESULT for detection or perform action phases of the plugin.


### Microsoft.Windows.SedimentService.Completed

This event is sent when the Windows Update sediment remediations service finishes running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period. The data collected with this event is used to help keep Windows up to date.

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
- **SedimentServiceRanShell**  Indicates whether the shell was run by the service.
- **SedimentServiceRetrievedKillService**  True/False if result of One Settings check for kill succeeded - we only send back one of these indicators (not for each call).
- **SedimentServiceShellRunHResult**  The HRESULT returned when the shell was run by the service.
- **SedimentServiceStopping**  True/False indicating whether the service is stopping.
- **SedimentServiceTaskFunctional**  True/False if scheduled task is functional. If task is not functional this indicates plugins will be run.
- **SedimentServiceTotalIterations**  Number of 5 second iterations service will wait before running again.


### Microsoft.Windows.SedimentService.Started

This event is sent when the Windows Update sediment remediations service starts running a plug-in to address issues that may be preventing the sediment device from receiving OS updates.  A sediment device is one that has been on a previous OS version for an extended period. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CV**  The Correlation Vector.
- **GlobalEventCounter**  The client-side counter that indicates ordering of events.
- **PackageVersion**  The version number of the current remediation package.
- **PluginName**  Name of the plugin specified for each generic plugin event.
- **Result**  This is the HRESULT for Detection or Perform Action phases of the plugin.


## Setup events

### SetupPlatformTel.SetupPlatformTelActivityEvent

This event sends basic metadata about the SetupPlatform update installation process, to help keep Windows up to date.

The following fields are available:

- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **InstanceID**  This is a unique GUID to track individual instances of SetupPlatform that will help us tie events from a single instance together.
- **Value**  Value associated with the corresponding event name. For example, time-related events will include the system time


### SetupPlatformTel.SetupPlatformTelActivityStarted

This event sends basic metadata about the update installation process generated by SetupPlatform to help keep Windows up to date.

The following fields are available:

- **Name**  The name of the dynamic update type. Example: GDR driver


### SetupPlatformTel.SetupPlatformTelActivityStopped

This event sends basic metadata about the update installation process generated by SetupPlatform to help keep Windows up to date.



### SetupPlatformTel.SetupPlatformTelEvent

This service retrieves events generated by SetupPlatform, the engine that drives the various deployment scenarios, to help keep Windows up to date.

The following fields are available:

- **FieldName**  Retrieves the event name/data point. Examples: InstallStartTime, InstallEndtime, OverallResult etc.
- **GroupName**  Retrieves the groupname the event belongs to. Example: Install Information, DU Information, Disk Space Information etc.
- **Value**  Retrieves the value associated with the corresponding event name (Field Name). For example: For time related events this will include the system time.


## SIH events

### SIHEngineTelemetry.EvalApplicability

This event is sent when targeting logic is evaluated to determine if a device is eligible for a given action. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **ActionReasons**  If an action has been assessed as inapplicable, the additional logic prevented it.
- **AdditionalReasons**  If an action has been assessed as inapplicable, the additional logic prevented it.
- **CachedEngineVersion**  The engine DLL version that is being used.
- **EventInstanceID**  A unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event – whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **HandlerReasons**  If an action has been assessed as inapplicable, the installer technology-specific logic prevented it.
- **IsExecutingAction**  If the action is presently being executed.
- **ServiceGuid**  A unique identifier that represents which service the software distribution client is connecting to (SIH, Windows Update, Microsoft Store, etc.)
- **SihclientVersion**  The client version that is being used.
- **StandardReasons**  If an action has been assessed as inapplicable, the standard logic the prevented it.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UpdateID**  A unique identifier for the action being acted upon.
- **WuapiVersion**  The Windows Update API version that is currently installed.
- **WuaucltVersion**  The Windows Update client version that is currently installed.
- **WuauengVersion**  The Windows Update engine version that is currently installed.
- **WUDeviceID**  The unique identifier controlled by the software distribution client.


### SIHEngineTelemetry.ExecuteAction

This event is triggered with SIH attempts to execute (e.g. install) the update or action in question. Includes important information like if the update required a reboot. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CachedEngineVersion**  The engine DLL version that is being used.
- **EventInstanceID**  A unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event, whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **RebootRequired**  Indicates if a reboot was required to complete the action.
- **ServiceGuid**  A unique identifier that represents which service the software distribution client is connecting to (SIH, Windows Update, Microsoft Store, etc.).
- **SihclientVersion**  The SIH version.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UpdateID**  A unique identifier for the action being acted upon.
- **WuapiVersion**  The Windows Update API version.
- **WuaucltVersion**  The Windows Update version identifier for SIH.
- **WuauengVersion**  The Windows Update engine version identifier.
- **WUDeviceID**  The unique identifier controlled by the software distribution client.


### SIHEngineTelemetry.PostRebootReport

This event reports the status of an action following a reboot, should one have been required. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **CachedEngineVersion**  The engine DLL version that is being used.
- **EventInstanceID**  A unique identifier for event instance.
- **EventScenario**  Indicates the purpose of sending this event, whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **ServiceGuid**  A unique identifier that represents which service the software distribution client is connecting to (SIH, Windows Update, Microsoft Store, etc.).
- **SihclientVersion**  Version of SIH Client on the device.
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **UpdateID**  A unique identifier for the action being acted upon.
- **WuapiVersion**  Version of Windows Update DLL on the device.
- **WuaucltVersion**  Version of WUAUCLT (Windows Update Auto-Update Client) on the device.
- **WuauengVersion**  Version of Windows Update (Auto-Update) engine on the device.
- **WUDeviceID**  The unique identifier controlled by the software distribution client.


## Software update events

### SoftwareUpdateClientTelemetry.CheckForUpdates

This event sends tracking data about the software distribution client check for content that is applicable to a device, to help keep Windows up to date.

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
- **DeviceModel**  The device model.
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
- **DeploymentProviderMode**  The mode of operation of the update deployment provider.
- **DeviceModel**  Device model as defined in the system bios
- **EventInstanceID**  A globally unique identifier for event instance
- **EventScenario**  Indicates the purpose of the event - whether because scan started, succeded, failed, etc.
- **EventType**  Possible values are &quot;Child&quot;, &quot;Bundle&quot;, &quot;Relase&quot; or &quot;Driver&quot;.
- **FlightId**  The specific id of the flight the device is getting
- **HandlerType**  Indicates the kind of content (app, driver, windows patch, etc.)
- **RevisionNumber**  Identifies the revision number of this specific piece of content
- **ServiceGuid**  A unique identifier for the service that the software distribution client is installing content for (Windows Update, Microsoft Store, etc).
- **SystemBIOSMajorRelease**  Major release version of the system bios
- **SystemBIOSMinorRelease**  Minor release version of the system bios
- **UpdateId**  Identifier associated with the specific piece of content
- **WUDeviceID**  Unique device id controlled by the software distribution client


### SoftwareUpdateClientTelemetry.Download

This event sends tracking data about the software distribution client download of the content for that update, to help keep Windows up to date.

The following fields are available:

- **ActiveDownloadTime**  How long the download took, in seconds, excluding time where the update wasn't actively being downloaded.
- **AppXBlockHashFailures**  Indicates the number of blocks that failed hash validation during download of the app payload.
- **AppXBlockHashValidationFailureCount**  A count of the number of blocks that have failed validation after being downloaded.
- **AppXDownloadScope**  Indicates the scope of the download for application content.
- **AppXScope**  Indicates the scope of the app download.
- **BiosFamily**  The family of the BIOS (Basic Input Output System).
- **BiosName**  The name of the device BIOS.
- **BiosReleaseDate**  The release date of the device BIOS.
- **BiosSKUNumber**  The sku number of the device BIOS.
- **BIOSVendor**  The vendor of the BIOS.
- **BiosVersion**  The version of the BIOS.
- **BundleBytesDownloaded**  Number of bytes downloaded for the specific content bundle.
- **BundleId**  Identifier associated with the specific content bundle.
- **BundleRepeatFailCount**  Indicates whether this particular update bundle has previously failed.
- **BundleRepeatFailFlag**  Indicates whether this particular update bundle previously failed to download.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **BytesDownloaded**  Number of bytes that were downloaded for an individual piece of content (not the entire bundle).
- **CachedEngineVersion**  The version of the “Self-Initiated Healing” (SIH) engine that is cached on the device, if applicable.
- **CallerApplicationName**  The name provided by the application that initiated API calls into the software distribution client.
- **CbsDownloadMethod**  Indicates whether the download was a full- or a partial-file download.
- **CbsMethod**  The method used for downloading the update content related to the Component Based Servicing (CBS) technology.
- **CDNCountryCode**  Two letter country abbreviation for the Content Distribution Network (CDN) location.
- **CDNId**  ID which defines which CDN the software distribution client downloaded the content from.
- **ClientVersion**  The version number of the software distribution client.
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior.
- **ConnectTime**  Indicates the cumulative amount of time (in seconds) it took to establish the connection for all updates in an update bundle.
- **CurrentMobileOperator**  The mobile operator the device is currently connected to.
- **DeviceModel**  The model of the device.
- **DownloadPriority**  Indicates whether a download happened at background, normal, or foreground priority.
- **DownloadProps**  Information about the download operation properties in the form of a bitmask.
- **DownloadScenarioId**  A unique ID for a given download, used to tie together Windows Update and Delivery Optimizer events.
- **DownloadType**  Differentiates the download type of “Self-Initiated Healing” (SIH) downloads between Metadata and Payload downloads.
- **EventInstanceID**  A globally unique identifier for event instance.
- **EventScenario**  Indicates the purpose for sending this event: whether because the software distribution just started downloading content; or whether it was cancelled, succeeded, or failed.
- **EventType**  Identifies the type of the event (Child, Bundle, or Driver).
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
- **NetworkCost**  A flag indicating the cost of the network (congested, fixed, variable, over data limit, roaming, etc.) used for downloading the update content.
- **NetworkCostBitMask**  Indicates what kind of network the device is connected to (roaming, metered, over data cap, etc.)
- **NetworkRestrictionStatus**  More general version of NetworkCostBitMask, specifying whether Windows considered the current network to be "metered."
- **PackageFullName**  The package name of the content.
- **PhonePreviewEnabled**  Indicates whether a phone was opted-in to getting preview builds, prior to flighting (pre-release builds) being introduced.
- **PostDnldTime**  Time (in seconds) taken to signal download completion after the last job completed downloading the payload.
- **ProcessName**  The process name of the application that initiated API calls, in the event where CallerApplicationName was not provided.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **Reason**  A 32-bit integer representing the reason the update is blocked from being downloaded in the background.
- **RegulationReason**  The reason that the update is regulated
- **RegulationResult**  The result code (HResult) of the last attempt to contact the regulation web service for download regulation of update content.
- **RelatedCV**  The Correlation Vector that was used before the most recent change to a new Correlation Vector.
- **RepeatFailCount**  Indicates whether this specific content has previously failed.
- **RepeatFailFlag**  Indicates whether this specific content previously failed to download.
- **RevisionNumber**  The revision number of the specified piece of content.
- **ServiceGuid**  A unique identifier for the service that the software distribution client is installing content for (Windows Update, Microsoft Store, etc).
- **Setup360Phase**  Identifies the active phase of the upgrade download if the current download is for an Operating System upgrade.
- **ShippingMobileOperator**  The mobile operator linked to the device when the device shipped.
- **SizeCalcTime**  Time (in seconds) taken to calculate the total download size of the payload.
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


### SoftwareUpdateClientTelemetry.DownloadCheckpoint

This event provides a checkpoint between each of the Windows Update download phases for UUP content. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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

This event allows tracking of ongoing downloads and contains data to explain the current state of the download. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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
- **BundleRepeatFailCount**  Indicates whether this particular update bundle has previously failed.
- **BundleRepeatFailFlag**  Indicates whether this particular update bundle previously failed to install.
- **BundleRevisionNumber**  Identifies the revision number of the content bundle.
- **CachedEngineVersion**  For self-initiated healing, the version of the SIH engine that is cached on the device. If the SIH engine does not exist, the value is null.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **ClientVersion**  The version number of the software distribution client.
- **CommonProps**  A bitmask for future flags associated with the Windows Update client behavior. No value is currently reported in this field. Expected value for this field is 0.
- **CSIErrorType**  The stage of CBS installation where it failed.
- **CurrentMobileOperator**  The mobile operator to which the device is currently connected.
- **DeploymentProviderMode**  The mode of operation of the update deployment provider.
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
- **IsWUfBTargetVersionEnabled**  Flag that indicates if the WU-for-Business target version policy is enabled on the device.
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
- **ServiceGuid**  An ID which represents which service the software distribution client is installing content for (Windows Update, Microsoft Store, etc.).
- **Setup360Phase**  If the install is for an operating system upgrade, indicates which phase of the upgrade is underway.
- **ShippingMobileOperator**  The mobile operator that a device shipped on.
- **StatusCode**  Indicates the result of an installation event (success, cancellation, failure code HResult).
- **SystemBIOSMajorRelease**  Major version of the BIOS.
- **SystemBIOSMinorRelease**  Minor version of the BIOS.
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **TransactionCode**  The ID that represents a given MSI installation.
- **UpdateId**  Unique update ID.
- **UpdateID**  An identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates whether a piece of content was marked as Important, Recommended, or Optional.
- **UsedSystemVolume**  Indicates whether the content was downloaded and then installed from the device's main system storage drive, or an alternate storage drive.
- **WUDeviceID**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.


### SoftwareUpdateClientTelemetry.Revert

This is a revert event for target update on Windows Update Client. See EventScenario field for specifics (for example, Started/Failed/Succeeded). The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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
- **IsWUfBTargetVersionEnabled**  Flag that indicates if the WU-for-Business target version policy is enabled on the device.
- **MergedUpdate**  Indicates whether an OS update and a BSP update were merged for install.
- **ProcessName**  Process name of the caller who initiated API calls into the software distribution client.
- **QualityUpdatePause**  Indicates whether quality OS updates are paused on the device.
- **RelatedCV**  The previous correlation vector that was used by the client before swapping with a new one.
- **RepeatFailCount**  Indicates whether this specific piece of content has previously failed.
- **RevisionNumber**  Identifies the revision number of this specific piece of content.
- **ServiceGuid**  A unique identifier for the service that the software distribution client is installing content for (Windows Update, Microsoft Store, etc).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **UpdateId**  The identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates the importance of a driver, and why it received that importance level (0-Unknown, 1-Optional, 2-Important-DNF, 3-Important-Generic, 4-Important-Other, 5-Recommended).
- **UsedSystemVolume**  Indicates whether the device's main system storage drive or an alternate storage drive was used.
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.TaskRun

This is a start event for Server Initiated Healing client. See EventScenario field for specifics (for example, started/completed). The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **CallerApplicationName**  Name of application making the Windows Update request. Used to identify context of request.
- **ClientVersion**  Version number of the software distribution client.
- **CmdLineArgs**  Command line arguments passed in by the caller.
- **EventInstanceID**  A globally unique identifier for the event instance.
- **EventScenario**  Indicates the purpose of the event (scan started, succeeded, failed, etc.).
- **ServiceGuid**  Identifier for the service to which the software distribution client is connecting (Windows Update, Microsoft Store, etc.).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.Uninstall

This is an uninstall event for target update on Windows Update Client. See EventScenario field for specifics (for example, Started/Failed/Succeeded). The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

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
- **ServiceGuid**  A unique identifier for the service that the software distribution client is installing content for (Windows Update, Microsoft Store, etc).
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TargetGroupId**  For drivers targeted to a specific device model, this ID indicates the distribution group of devices receiving that driver.
- **TargetingVersion**  For drivers targeted to a specific device model, this is the version number of the drivers being distributed to the device.
- **UpdateId**  Identifier associated with the specific piece of content.
- **UpdateImportance**  Indicates the importance of a driver and why it received that importance level (0-Unknown, 1-Optional, 2-Important-DNF, 3-Important-Generic, 4-Important-Other, 5-Recommended).
- **UsedSystemVolume**  Indicates whether the device’s main system storage drive or an alternate storage drive was used.
- **WUDeviceID**  Unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.UpdateDetected

This event sends data about an AppX app that has been updated from the Microsoft Store, including what app needs an update and what version/architecture is required, in order to understand and address problems with apps getting required updates. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **ApplicableUpdateInfo**  Metadata for the updates which were detected as applicable.
- **CallerApplicationName**  The name provided by the caller who initiated API calls into the software distribution client.
- **IntentPFNs**  Intended application-set metadata for atomic update scenarios.
- **NumberOfApplicableUpdates**  The number of updates ultimately deemed applicable to the system after the detection process is complete.
- **RelatedCV**  The previous Correlation Vector that was used before swapping with a new one.
- **ServiceGuid**  An ID that represents which service the software distribution client is connecting to (Windows Update, Microsoft Store, etc.).
- **WUDeviceID**  The unique device ID controlled by the software distribution client.


### SoftwareUpdateClientTelemetry.UpdateMetadataIntegrity

This event helps to identify whether update content has been tampered with and protects against man-in-the-middle attack. The data collected with this event is used to help keep Windows up to date, secure, and performing properly.

The following fields are available:

- **CallerApplicationName**  Name of application making the Windows Update request. Used to identify context of request.
- **EndpointUrl**  The endpoint URL where the device obtains update metadata. This is used to distinguish between test, staging, and production environments.
- **EventScenario**  Indicates the purpose of the event - whether because scan started, succeded, failed, etc.
- **ExtendedStatusCode**  Secondary status code for certain scenarios where StatusCode was not specific enough.
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
- **StatusCode**  Result code of the event (success, cancellation, failure code HResult).
- **TimestampTokenCertThumbprint**  The thumbprint of the encoded timestamp token.
- **TimestampTokenId**  The time this was created. It is encoded in a timestamp blob and will be zero if the token is malformed.
- **UpdateId**  The update ID for a specific piece of content.
- **ValidityWindowInDays**  The validity window that's in effect when verifying the timestamp.


## System Resource Usage Monitor events

### Microsoft.Windows.Srum.Sdp.CpuUsage

This event provides information on CPU usage.

The following fields are available:

- **UsageMax**  The maximum of hourly average CPU usage.
- **UsageMean**  The mean of hourly average CPU usage.
- **UsageMedian**  The median of hourly average CPU usage.
- **UsageTwoHourMaxMean**  The mean of the maximum of every two hour of hourly average CPU usage.


### Microsoft.Windows.Srum.Sdp.NetworkUsage

This event provides information on network usage.

The following fields are available:

- **AdapterGuid**  The unique ID of the adapter.
- **BytesTotalMax**  The maximum of the hourly average bytes total.
- **BytesTotalMean**  The mean of the hourly average bytes total.
- **BytesTotalMedian**  The median of the hourly average bytes total.
- **BytesTotalTwoHourMaxMean**  The mean of the maximum of every two hours of hourly average bytes total.
- **LinkSpeed**  The adapter link speed.


## Update events

### Update360Telemetry.Revert

This event sends data relating to the Revert phase of updating Windows. The data collected with this event is used to help keep Windows secure and up to date.

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

This event collects information regarding the commit phase of the new Unified Update Platform (UUP) update scenario, which is leveraged by both Mobile and Desktop. The data collected with this event is used to help keep Windows secure and up to date.

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

This event sends data for the download request phase of updating Windows via the new Unified Update Platform (UUP) scenario. Applicable to PC and Mobile. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ContainsSafeOSDUPackage**  Boolean indicating whether Safe DU packages are part of the payload.
- **DeletedCorruptFiles**  Boolean indicating whether corrupt payload was deleted.
- **DownloadComplete**  Indicates if the download is complete.
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

This event collects information when express could not be used and we fall back to canonical during the new Unified Update Platform (UUP) update scenario, which is leveraged by both Mobile and Desktop. The data collected with this event is used to help keep Windows secure and up to date.

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

The UpdateAgentMerge event sends data on the merge phase when updating Windows. The data collected with this event is used to help keep Windows secure and up to date.

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

This event sends a summary of all the update agent mitigations available for an this update. The data collected with this event is used to help keep Windows secure and up to date.

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


### Update360Telemetry.UpdateAgentOneSettings

This event collects information regarding the post reboot phase of the new UUP (Unified Update Platform) update scenario; which is leveraged by both Mobile and Desktop. The data collected with this event is used to help keep Windows secure and up to date.

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


### Update360Telemetry.UpdateAgentReboot

This event sends information indicating that a request has been sent to suspend an update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ErrorCode**  The error code returned for the current reboot.
- **FlightId**  Unique ID for the flight (test instance version).
- **IsSuspendable**  Indicates whether the update has the ability to be suspended and resumed at the time of reboot. When the machine is rebooted and the update is in middle of Predownload or Install and Setup.exe is running, this field is TRUE, if not its FALSE.
- **ObjectId**  The unique value for each Update Agent mode.
- **Reason**  Indicates the HResult why the machine could not be suspended. If it is successfully suspended, the result is 0.
- **RelatedCV**  The correlation vector value generated from the latest USO (Update Service Orchestrator) scan.
- **Result**  The HResult of the event.
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


## Update notification events

### Microsoft.Windows.UpdateNotificationPipeline.UNPCampaignHeartbeat

This event is sent at the start of each campaign, to be used as a heartbeat. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign.
- **CampaignID**  Current campaign that is running on Update Notification Pipeline.
- **ConfigCatalogVersion**  Current catalog version of Update Notification Pipeline.
- **ContentVersion**  Content version for the current campaign on Update Notification Pipeline.
- **CV**  Correlation vector.
- **DetectorVersion**  Most recently run detector version for the current campaign on Update Notification Pipeline.
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user.
- **PackageVersion**  Current package version for Update Notification Pipeline.


### Microsoft.Windows.UpdateNotificationPipeline.UNPCampaignManagerHeartbeat

This event is sent at the start of the CampaignManager event and is intended to be used as a heartbeat. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign.
- **CampaignID**  Currently campaign that is running on Update Notification Pipeline (UNP).
- **ConfigCatalogVersion**  Current catalog version of UNP.
- **ContentVersion**  Content version for the current campaign on UNP.
- **CV**  Correlation vector.
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP.
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user.
- **PackageVersion**  Current UNP package version.


### Microsoft.Windows.UpdateNotificationPipeline.UnpCampaignManagerRunCampaignFailed

This event is sent when the Campaign Manager encounters an unexpected error while running the campaign. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CampaignConfigVersion**  Configuration version for the current campaign.
- **CampaignID**  Currently campaign that's running on Update Notification Pipeline (UNP).
- **ConfigCatalogVersion**  Current catalog version of UNP.
- **ContentVersion**  Content version for the current campaign on UNP.
- **CV**  Correlation vector.
- **DetectorVersion**  Most recently run detector version for the current campaign on UNP.
- **GlobalEventCounter**  Client-side counter that indicates the event ordering sent by the user.
- **hresult**  HRESULT of the failure.
- **PackageVersion**  Current UNP package version.


## Upgrade events

### FacilitatorTelemetry.DCATDownload

This event indicates whether devices received additional or critical supplemental content during an OS Upgrade, to help keep Windows up to date and secure.

The following fields are available:

- **DownloadSize**  Download size of payload.
- **ElapsedTime**  Time taken to download payload.
- **MediaFallbackUsed**  Used to determine if we used Media CompDBs to figure out package requirements for the upgrade.
- **ResultCode**  Result returned by the Facilitator DCAT call.
- **Scenario**  Dynamic update scenario (Image DU, or Setup DU).
- **Type**  Type of package that was downloaded.
- **UpdateId**  The ID of the update that was downloaded.


### FacilitatorTelemetry.DUDownload

This event returns data about the download of supplemental packages critical to upgrading a device to the next version of Windows. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **PackageCategoriesFailed**  Lists the categories of packages that failed to download.
- **PackageCategoriesSkipped**  Lists the categories of package downloads that were skipped.


### FacilitatorTelemetry.InitializeDU

This event determines whether devices received additional or critical supplemental content during an OS upgrade. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **DCATUrl**  The Delivery Catalog (DCAT) URL we send the request to.
- **DownloadRequestAttributes**  The attributes we send to DCAT.
- **ResultCode**  The result returned from the initiation of Facilitator with the URL/attributes.
- **Scenario**  Dynamic Update scenario (Image DU, or Setup DU).
- **Url**  The Delivery Catalog (DCAT) URL we send the request to.
- **Version**  Version of Facilitator.


### Setup360Telemetry.Downlevel

This event sends data indicating that the device has started the downlevel phase of the upgrade, to help keep Windows up to date and secure.

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
- **State**  Exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
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
- **Operation**  Facilitator’s last known operation (scan, download, etc.).
- **ReportId**  ID for tying together events stream side.
- **ResultCode**  Result returned for the entire setup operation.
- **Scenario**  Dynamic Update scenario (Image DU, or Setup DU).
- **ScenarioId**  Identifies the update scenario.
- **TargetBranch**  Branch of the target OS.
- **TargetBuild**  Build of the target OS.


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
- **FlightData**  Unique value that identifies the flight.
- **HostOSBuildNumber**  The build number of the previous OS.
- **HostOsSkuName**  The OS edition which is running Setup360 instance (previous OS).
- **InstanceId**  A unique GUID that identifies each instance of setuphost.exe
- **ReportId**  With Windows Update, this is the updateID that is passed to Setup. In media setup, this is the GUID for the install.wim.
- **Setup360Extended**  Detailed information about the phase/action when the potential failure occurred.
- **Setup360Mode**  The phase of Setup360. Example: Predownload, Install, Finalize, Rollback.
- **Setup360Result**  The result of Setup360. This is an HRESULT error code that can be used used to diagnose errors.
- **Setup360Scenario**  The Setup360 flow type. Example: Boot, Media, Update, MCT.
- **SetupVersionBuildNumber**  The build number of Setup360 (build number of target OS).
- **State**  The exit state of a Setup360 run. Example: succeeded, failed, blocked, cancelled.
- **TestId**  A string to uniquely identify a group of events.
- **WuId**  This is the Windows Update Client ID. With Windows Update, this is the same as the clientId.


## Windows as a Service diagnostic events

### Microsoft.Windows.WaaSMedic.DetectionFailed

This event is sent when WaaSMedic fails to apply the named diagnostic. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **diagnostic**  Parameter where the diagnostic failed.
- **hResult**  Error code from attempting the diagnostic.
- **isDetected**  Flag indicating whether the condition was detected.
- **pluginName**  Name of the attempted diagnostic.
- **versionString**  The version number of the remediation engine.


### Microsoft.Windows.WaaSMedic.DetectionsOnlyFailed

Failed to apply the named diagnostic.

The following fields are available:

- **hResult**  The error code from attempting the diagnostic.
- **versionString**  The version number of the remediation engine.


### Microsoft.Windows.WaaSMedic.EngineFailed

This event indicates failure during medic engine execution. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **hResult**  Error code from the execution.
- **versionString**  Version of Medic engine.


### Microsoft.Windows.WaaSMedic.RemediationFailed

This event is sent when the WaaS Medic update stack remediation tool fails to apply a described resolution to a problem that is blocking Windows Update from operating correctly on a target device. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **diagnostic**  Parameter where the resolution failed.
- **hResult**  Error code that resulted from attempting the resolution.
- **isRemediated**  Indicates whether the condition was remediated.
- **pluginName**  Name of the attempted resolution.
- **versionString**  Version of the engine.


### Microsoft.Windows.WaaSMedic.RemediationsOnlyFailed

This event indicates that some plugins failed to complete remediation. This data collected with this event is used to help keep Windows secure.

The following fields are available:

- **hResult**  A resulting error code.
- **versionString**  The string for which plugins failed.


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
- **insufficientSessions**  Device not eligible for diagnostics.
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


## Windows Error Reporting MTT events

### Microsoft.Windows.WER.MTT.Denominator

This event provides a denominator to calculate MTTF (mean-time-to-failure) for crashes and other errors, to help keep Windows up to date.

The following fields are available:

- **DPRange**  Maximum mean value range.
- **DPValue**  Randomized bit value (0 or 1) that can be reconstituted over a large population to estimate the mean.
- **Value**  Standard UTC emitted DP value structure See [Value](#value).


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
- **BundleId**  The identity of the test build (flight) associated with this product.
- **CategoryId**  The identity of the package or packages being installed.
- **ClientAppId**  The identity of the app that initiated this operation.
- **HResult**  HResult code to show the result of the operation (success/failure).
- **IsBundle**  Is this a bundle?
- **IsInteractive**  Did the user initiate the installation?
- **IsMandatory**  Is this a mandatory update?
- **IsRemediation**  Is this repairing a previous installation?
- **IsRestore**  Is this happening after a device restore?
- **IsUpdate**  Is this an update?
- **ParentBundleId**  The product identifier of the parent if this product is part of a bundle.
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
- **ResumeClientId**  The ID of the app that initiated the resume operation.
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


## Windows System Kit events

### Microsoft.Windows.Kits.WSK.WskImageCreate

This event sends simple Product and Service usage data when a user is using the Windows System Kit to create new OS “images”. The data includes the version of the Windows System Kit and the state of the event and is used to help investigate “image” creation failures. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **Phase**  The image creation phase. Values are “Start” or “End”.
- **Result**  Result of the image creation phase. Indicates if the image was created successfully. Value is integer.
- **WorkspaceArchitecture**  Architecture of image created.
- **WorkspaceOsEdition**  OSEdition of the image created.
- **WskImageEnvironment**  Type of environment image was created for "Lab" or "Non-Lab".
- **WskSessionId**  A string identifier (GUID) for the workspace.
- **WskVersion**  The version of the Windows System Kit being used.


### Microsoft.Windows.Kits.WSK.WskImageCustomization

This event sends simple Product and Service usage data when a user is using the Windows System Kit to create/modify configuration files allowing the customization of a new OS image with Apps or Drivers. The data includes the version of the Windows System Kit, the state of the event, the customization type (drivers or apps) and the mode (new or updating) and is used to help investigate configuration file creation failures. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **CustomizationMode**  Indicates the mode of the customization (new or updating).
- **CustomizationType**  Indicates the type of customization (drivers or apps).
- **Mode**  The mode of update to image configuration files. Values are “New” or “Update”.
- **Phase**  The image creation phase. Values are “Start” or “End”.
- **Result**  Result of the image creation phase.
- **Type**  The type of update to image configuration files. Values are “Apps” or “Drivers”.
- **WskSessionId**  A string identifier (GUID) for the workspace.
- **WskVersion**  The version of the Windows System Kit being used.


### Microsoft.Windows.Kits.WSK.WskWorkspaceCreate

This event sends simple Product and Service usage data when a user is using the Windows System Kit to create new workspace for generating OS “images”. The data includes the version of the Windows System Kit and the state of the event and is used to help investigate workspace creation failures. The data collected with this event is used to keep Windows performing properly.

The following fields are available:

- **Architecture**  The OS architecture that the workspace will target. Values are one of: “AMD64”, “ARM64”, “x86”, or “ARM”.
- **OsEdition**  The Operating System Edition that the workspace will target.
- **Phase**  The image creation phase. Values are “Start” or “End”.
- **Result**  Stage result. Values are integers.
- **WorkspaceArchitecture**  The operating system architecture that the workspace will target.
- **WorkspaceOsEdition**  The operating system edition that the workspace will target.
- **WskSessionId**  A string identifier (GUID) for the workspace.
- **WskVersion**  The version of the Windows System Kit being used.


## Windows Update CSP events

### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureFailed

This event sends basic telemetry on the failure of the Feature Rollback. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **current**  Result of currency check.
- **dismOperationSucceeded**  Dism uninstall operation status.
- **hResult**  Failure error code.
- **oSVersion**  Build number of the device.
- **paused**  Indicates whether the device is paused.
- **rebootRequestSucceeded**  Reboot Configuration Service Provider (CSP) call success status.
- **wUfBConnected**  Result of WUfB connection check.


### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureNotApplicable

This event sends basic telemetry on whether Feature Rollback (rolling back features updates) is applicable to a device. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **current**  Result of currency check.
- **dismOperationSucceeded**  Dism uninstall operation status.
- **oSVersion**  Build number of the device.
- **paused**  Indicates whether the device is paused.
- **rebootRequestSucceeded**  Reboot Configuration Service Provider (CSP) call success status.
- **wUfBConnected**  Result of WUfB connection check.


### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureStarted

This event sends basic information indicating that Feature Rollback has started. The data collected with this event is used to help keep Windows secure and up to date.



### Microsoft.Windows.UpdateCsp.ExecuteRollBackFeatureSucceeded

This event sends basic telemetry on the success of the rollback of feature updates. The data collected with this event is used to help keep Windows secure and up to date.



### Microsoft.Windows.UpdateCsp.ExecuteRollBackQualityFailed

This event sends basic telemetry on the failure of the rollback of the Quality/LCU builds. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **current**  Result of currency check.
- **dismOperationSucceeded**  Dism uninstall operation status.
- **hResult**  Failure Error code.
- **oSVersion**  Build number of the device.
- **paused**  Indicates whether the device is paused.
- **rebootRequestSucceeded**  Reboot Configuration Service Provider (CSP) call success status.
- **wUfBConnected**  Result of Windows Update for Business connection check.


### Microsoft.Windows.UpdateCsp.ExecuteRollBackQualityNotApplicable

This event informs you whether a rollback of Quality updates is applicable to the devices that you are attempting to rollback. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **current**  Result of currency check.
- **dismOperationSucceeded**  Dism uninstall operation status.
- **oSVersion**  Build number of the device.
- **paused**  Indicates whether the device is paused.
- **rebootRequestSucceeded**  Reboot Configuration Service Provider (CSP) call success status.
- **wUfBConnected**  Result of WUfB connection check.


### Microsoft.Windows.UpdateCsp.ExecuteRollBackQualitySucceeded

This event sends basic telemetry on the success of the rollback of the Quality/LCU builds. The data collected with this event is used to help keep Windows secure and up to date.



## Windows Update Delivery Optimization events

### Microsoft.OSG.DU.DeliveryOptClient.DownloadCanceled

This event describes when a download was canceled with Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **background**  Is the download being done in the background?
- **bytesFromCacheServer**  Bytes received from a cache host.
- **bytesFromCDN**  The number of bytes received from a CDN source.
- **bytesFromGroupPeers**  The number of bytes received from a peer in the same group.
- **bytesFromIntPeers**  The number of bytes received from peers not in the same LAN or in the same group.
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
- **gCurMemoryStreamBytes**  Current usage for memory streaming.
- **gMaxMemoryStreamBytes**  Maximum usage for memory streaming.
- **isVpn**  Indicates whether the device is connected to a VPN (Virtual Private Network).
- **jobID**  Identifier for the Windows Update job.
- **predefinedCallerName**  The name of the API Caller.
- **reasonCode**  Reason the action or event occurred.
- **routeToCacheServer**  The cache server setting, source, and value.
- **sessionID**  The ID of the file download session.
- **updateID**  The ID of the update being downloaded.
- **usedMemoryStream**  TRUE if the download is using memory streaming for App downloads.


### Microsoft.OSG.DU.DeliveryOptClient.DownloadCompleted

This event describes when a download has completed with Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **background**  Is the download a background download?
- **bytesFromCacheServer**  Bytes received from a cache host.
- **bytesFromCDN**  The number of bytes received from a CDN source.
- **bytesFromGroupPeers**  The number of bytes received from a peer in the same domain group.
- **bytesFromIntPeers**  The number of bytes received from peers not in the same LAN or in the same domain group.
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
- **dataSourcesTotal**  Bytes received per source type, accumulated for the whole session.
- **doErrorCode**  The Delivery Optimization error code that was returned.
- **downlinkBps**  The maximum measured available download bandwidth (in bytes per second).
- **downlinkUsageBps**  The download speed (in bytes per second).
- **downloadMode**  The download mode used for this file download session.
- **downloadModeReason**  Reason for the download.
- **downloadModeSrc**  Source of the DownloadMode setting (KvsProvider = 0, GeoProvider = 1, GeoVerProvider = 2, CpProvider = 3, DiscoveryProvider = 4, RegistryProvider = 5, GroupPolicyProvider = 6, MdmProvider = 7, SettingsProvider = 8, InvalidProviderType = 9).
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **expiresAt**  The time when the content will expire from the Delivery Optimization Cache.
- **fileID**  The ID of the file being downloaded.
- **fileSize**  The size of the file being downloaded.
- **gCurMemoryStreamBytes**  Current usage for memory streaming.
- **gMaxMemoryStreamBytes**  Maximum usage for memory streaming.
- **groupConnectionCount**  The total number of connections made to peers in the same group.
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
- **sessionID**  The ID of the download session.
- **totalTimeMs**  Duration of the download (in seconds).
- **updateID**  The ID of the update being downloaded.
- **uplinkBps**  The maximum measured available upload bandwidth (in bytes per second).
- **uplinkUsageBps**  The upload speed (in bytes per second).
- **usedMemoryStream**  TRUE if the download is using memory streaming for App downloads.


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
- **updateID**  The ID of the update being paused.


### Microsoft.OSG.DU.DeliveryOptClient.DownloadStarted

This event sends data describing the start of a new download to enable Delivery Optimization. It's used to understand and address problems regarding downloads. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **background**  Indicates whether the download is happening in the background.
- **bytesRequested**  Number of bytes requested for the download.
- **cdnUrl**  The URL of the source Content Distribution Network (CDN).
- **costFlags**  A set of flags representing network cost.
- **deviceProfile**  Identifies the usage or form factor (such as Desktop, Xbox, or VM).
- **diceRoll**  Random number used for determining if a client will use peering.
- **doClientVersion**  The version of the Delivery Optimization client.
- **doErrorCode**  The Delivery Optimization error code that was returned.
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
- **isVpn**  Indicates whether the device is connected to a Virtual Private Network.
- **jobID**  The ID of the Windows Update job.
- **peerID**  The ID for this delivery optimization client.
- **predefinedCallerName**  Name of the API caller.
- **routeToCacheServer**  Cache server setting, source, and value.
- **sessionID**  The ID for the file download session.
- **setConfigs**  A JSON representation of the configurations that have been set, and their sources.
- **updateID**  The ID of the update being downloaded.
- **usedMemoryStream**  Indicates whether the download used memory streaming.


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


### Microsoft.OSG.DU.DeliveryOptClient.JobError

This event represents a Windows Update job error. It allows for investigation of top errors. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **cdnIp**  The IP Address of the source CDN (Content Delivery Network).
- **doErrorCode**  Error code returned for delivery optimization.
- **errorCode**  The error code returned.
- **experimentId**  When running a test, this is used to correlate with other events that are part of the same test.
- **fileID**  The ID of the file being downloaded.
- **jobID**  The Windows Update job ID.


## Windows Update events

### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentAnalysisSummary

This event collects information regarding the state of devices and drivers on the system following a reboot after the install phase of the new device manifest UUP (Unified Update Platform) update scenario which is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **activated**  Whether the entire device manifest update is considered activated and in use.
- **analysisErrorCount**  The number of driver packages that could not be analyzed because errors occurred during analysis.
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
- **truncatedDeviceCount**  The number of devices missing from the summary string because there is not enough room in the string.
- **truncatedDriverCount**  The number of driver packages missing from the summary string because there is not enough room in the string.
- **unpublishedCount**  How many drivers packages that were delivered by the device manifest that are still unpublished and unavailable to be used on devices.
- **updateId**  The unique ID for each update.


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentCommit

This event collects information regarding the final commit phase of the new device manifest UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

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
- **flightId**  The unique identifier for each flight (pre-release builds).
- **objectId**  The unique identifier for each diagnostics session.
- **relatedCV**  Correlation vector value generated from the latest scan.
- **result**  Outcome of the install phase of the update.
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate
- **sessionId**  The unique identifier for each update session.
- **updateId**  The unique identifier for each Update.


### Microsoft.Windows.Update.DeviceUpdateAgent.UpdateAgentModeStart

This event sends data for the start of each mode during the process of updating device manifest assets via the UUP (Unified Update Platform) update scenario, which is used to install a device manifest describing a set of driver packages. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **flightId**  The unique identifier for each flight (pre-release builds).
- **mode**  Indicates the active Update Agent mode.
- **objectId**  Unique value for each diagnostics session.
- **relatedCV**  Correlation vector value generated from the latest scan.
- **scenarioId**  The scenario ID. Example: MobileUpdate, DesktopLanguagePack, DesktopFeatureOnDemand, or DesktopDriverUpdate.
- **sessionId**  The unique identifier for each update session.
- **updateId**  The unique identifier for each Update.


### Microsoft.Windows.Update.NotificationUx.DialogNotificationToBeDisplayed

This event indicates that a notification dialog box is about to be displayed to user. The data collected with this event is used to help keep Windows secure and up to date.

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


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootAcceptAutoDialog

This event indicates that the Enhanced Engaged restart "accept automatically" dialog box was displayed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **DeviceLocalTime**  The local time on the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the dialog box.
- **RebootVersion**  Version of DTE.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that user chose on this dialog box.
- **UtcTime**  The time that the dialog box was displayed, in Coordinated Universal Time.


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootFirstReminderDialog

This event indicates that the Enhanced Engaged restart "first reminder" dialog box was displayed. The data collected with this event is used to help keep Windows secure and up to date.

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

This event indicates that the Enhanced Engaged restart "restart failed" dialog box was displayed. The data collected with this event is used to help keep Windows secure and up to date.

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

This event indicates that the Enhanced Engaged restart "restart imminent" dialog box was displayed. The data collected with this event is used to help keep Windows secure and up to date.

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

This event returns information relating to the Enhanced Engaged reboot reminder dialog that was displayed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **DeviceLocalTime**  The time at which the reboot reminder dialog was shown (based on the local device time settings).
- **ETag**  The OneSettings versioning value.
- **ExitCode**  Indicates how users exited the reboot reminder dialog box.
- **RebootVersion**  The version of the DTE (Direct-to-Engaged).
- **UpdateId**  The ID of the update that is waiting for reboot to finish installation.
- **UpdateRevision**  The revision of the update that is waiting for reboot to finish installation.
- **UserResponseString**  The option chosen by the user on the reboot dialog box.
- **UtcTime**  The time at which the reboot reminder dialog was shown (in UTC).


### Microsoft.Windows.Update.NotificationUx.EnhancedEngagedRebootReminderToast

This event indicates that the Enhanced Engaged restart reminder pop-up banner was displayed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **DeviceLocalTime**  The local time on the device sending the event.
- **ETag**  OneSettings versioning value.
- **ExitCode**  Indicates how users exited the pop-up banner.
- **RebootVersion**  The version of the reboot logic.
- **UpdateId**  The ID of the update that is pending restart to finish installation.
- **UpdateRevision**  The revision of the update that is pending restart to finish installation.
- **UserResponseString**  The option that the user chose in the pop-up banner.
- **UtcTime**  The time that the pop-up banner was displayed, in Coordinated Universal Time.


### Microsoft.Windows.Update.NotificationUx.RebootScheduled

This event sends basic information for scheduling a device restart to install security updates. It's used to help keep Windows secure and up-to-date by indicating when a reboot is scheduled by the system or a user for a security, quality, or feature update.

The following fields are available:

- **activeHoursApplicable**  Indicates whether an Active Hours policy is present on the device.
- **IsEnhancedEngagedReboot**  Indicates whether this is an Enhanced Engaged reboot.
- **rebootArgument**  Argument for the reboot task. It also represents specific reboot related action.
- **rebootOutsideOfActiveHours**  Indicates whether a restart is scheduled outside of active hours.
- **rebootScheduledByUser**  Indicates whether the restart was scheduled by user (if not, it was scheduled automatically).
- **rebootState**  The current state of the restart.
- **rebootUsingSmartScheduler**  Indicates whether the reboot is scheduled by smart scheduler.
- **revisionNumber**  Revision number of the update that is getting installed with this restart.
- **scheduledRebootTime**  Time of the scheduled restart.
- **scheduledRebootTimeInUTC**  Time of the scheduled restart in Coordinated Universal Time.
- **updateId**  ID of the update that is getting installed with this restart.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.ActivityError

This event measures overall health of UpdateOrchestrator. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **wilActivity**  This struct provides a Windows Internal Library context used for Product and Service diagnostics. See [wilActivity](#wilactivity).


### Microsoft.Windows.Update.Orchestrator.ActivityRestrictedByActiveHoursPolicy

This event indicates a policy is present that may restrict update activity to outside of active hours. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **activeHoursEnd**  The end of the active hours window.
- **activeHoursStart**  The start of the active hours window.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.AttemptImmediateReboot

This event sends data when the Windows Update Orchestrator is set to reboot immediately after installing the update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **isOnAC**  The power source for AC or battery power.
- **scanTriggerSource**  The source of a triggered scan.


### Microsoft.Windows.Update.Orchestrator.BlockedByActiveHours

This event indicates that update activity was blocked because it is within the active hours window. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **activeHoursEnd**  The end of the active hours window.
- **activeHoursStart**  The start of the active hours window.
- **updatePhase**  The current state of the update process.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.BlockedByBatteryLevel

This event indicates that Windows Update activity was blocked due to low battery level. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **batteryLevel**  The current battery charge capacity.
- **batteryLevelThreshold**  The battery capacity threshold to stop update activity.
- **updatePhase**  The current state of the update process.
- **wuDeviceid**  Device ID.


### Microsoft.Windows.Update.Orchestrator.CommitFailed

This event indicates that a device was unable to restart after an update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **errorCode**  The error code that was returned.
- **wuDeviceid**  The Windows Update device GUID.


### Microsoft.Windows.Update.Orchestrator.DeferRestart

This event indicates that a restart required for installing updates was postponed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **displayNeededReason**  List of reasons for needing display.
- **eventScenario**  Indicates the purpose of the event (scan started, succeeded, failed, etc.).
- **filteredDeferReason**  Applicable filtered reasons why reboot was postponed (such as user active, or low battery).
- **gameModeReason**  Name of the executable that caused the game mode state check to start.
- **ignoredReason**  List of reasons that were intentionally ignored.
- **IgnoreReasonsForRestart**  List of reasons why restart was deferred.
- **revisionNumber**  Update ID revision number.
- **systemNeededReason**  List of reasons why system is needed.
- **updateId**  Update ID.
- **updateScenarioType**  Update session type.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.Detection

This event sends launch data for a Windows Update scan to help keep Windows secure and up to date.

The following fields are available:

- **deferReason**  The reason why the device could not check for updates.
- **detectionBlockingPolicy**  The Policy that blocked detection.
- **detectionBlockreason**  The reason detection did not complete.
- **detectionRetryMode**  Indicates whether we will try to scan again.
- **errorCode**  The error code returned for the current process.
- **eventScenario**  End-to-end update session ID, or indicates the purpose of sending this event - whether because the software distribution just started installing content, or whether it was cancelled, succeeded, or failed.
- **flightID**  The unique identifier for the flight (Windows Insider pre-release build) should be delivered to the device, if applicable.
- **interactive**  Indicates whether the user initiated the session.
- **networkStatus**  Indicates if the device is connected to the internet.
- **revisionNumber**  The Update revision number.
- **scanTriggerSource**  The source of the triggered scan.
- **updateId**  The unique identifier of the Update.
- **updateScenarioType**  Identifies the type of update session being performed.
- **wuDeviceid**  The unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.DetectionActivity

This event returns data about detected updates, as well as the types of update (optional or recommended). This data helps keep Windows up to date.

The following fields are available:

- **applicableUpdateIdList**  The list of update identifiers.
- **applicableUpdateList**  The list of available updates.
- **durationInSeconds**  The amount of time (in seconds) it took for the event to run.
- **expeditedMode**  Indicates whether Expedited Mode is on.
- **networkCostPolicy**  The network cost.
- **scanTriggerSource**  Indicates whether the scan is Interactive or Background.
- **scenario**  The result code of the event.
- **scenarioReason**  The reason for the result code (scenario).
- **seekerUpdateIdList**  The list of “seeker” update identifiers.
- **seekerUpdateList**  The list of “seeker” updates.
- **services**  The list of services that were called during update.
- **wilActivity**  The activity results. See [wilActivity](#wilactivity).


### Microsoft.Windows.Update.Orchestrator.DetectionResult

This event runs when an update is detected. This helps ensure Windows is secure and kept up to date.

The following fields are available:

- **applicableUpdateIdList**  A list of applicable update IDs.
- **applicableUpdateList**  A list of applicable update names.
- **seekerUpdateIdList**  A list of optional update IDs.
- **seekerUpdateList**  A list of optional update names.
- **wuDeviceid**  The Windows Update device identifier.


### Microsoft.Windows.Update.Orchestrator.DisplayNeeded

This event indicates the reboot was postponed due to needing a display. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **displayNeededReason**  Reason the display is needed.
- **eventScenario**  Indicates the purpose of sending this event - whether because the software distribution just started checking for content, or whether it was cancelled, succeeded, or failed.
- **rebootOutsideOfActiveHours**  Indicates whether the reboot was to occur outside of active hours.
- **revisionNumber**  Revision number of the update.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated.
- **wuDeviceid**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue


### Microsoft.Windows.Update.Orchestrator.Download

This event sends launch data for a Windows Update download to help keep Windows secure and up to date.

The following fields are available:

- **deferReason**  Reason for download not completing.
- **errorCode**  An error code represented as a hexadecimal value.
- **eventScenario**  End-to-end update session ID.
- **flightID**  The specific ID of the Windows Insider build the device is getting.
- **interactive**  Indicates whether the session is user initiated.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.DTUCompletedWhenWuFlightPendingCommit

This event indicates that DTU completed installation of the electronic software delivery (ESD), when Windows Update was already in Pending Commit phase of the feature update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **wuDeviceid**  Device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.DTUEnabled

This event indicates that Inbox DTU functionality was enabled. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **wuDeviceid**  Device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.DTUInitiated

This event indicates that Inbox DTU functionality was initiated. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **dtuErrorCode**  Return code from creating the DTU Com Server.
- **isDtuApplicable**  Determination of whether DTU is applicable to the machine it is running on.
- **wuDeviceid**  Device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.EscalationRiskLevels

This event is sent during update scan, download, or install, and indicates that the device is at risk of being out-of-date. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **configVersion**  The escalation configuration version on the device.
- **downloadElapsedTime**  Indicates how long since the download is required on device.
- **downloadRiskLevel**  At-risk level of download phase.
- **installElapsedTime**  Indicates how long since the install is required on device.
- **installRiskLevel**  The at-risk level of install phase.
- **isSediment**  Assessment of whether is device is at risk.
- **scanElapsedTime**  Indicates how long since the scan is required on device.
- **scanRiskLevel**  At-risk level of the scan phase.
- **wuDeviceid**  Device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.FailedToAddTimeTriggerToScanTask

This event indicated that USO failed to add a trigger time to a task. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **errorCode**  The Windows Update error code.
- **wuDeviceid**  The Windows Update device ID.


### Microsoft.Windows.Update.Orchestrator.FlightInapplicable

This event sends data on whether the update was applicable to the device. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **EventPublishedTime**  Time when this event was generated.
- **flightID**  The specific ID of the Windows Insider build.
- **inapplicableReason**  The reason why the update is inapplicable.
- **revisionNumber**  Update revision number.
- **updateId**  Unique Windows Update ID.
- **updateScenarioType**  Update session type.
- **UpdateStatus**  Last status of update.
- **UUPFallBackConfigured**  Indicates whether UUP fallback is configured.
- **wuDeviceid**  Unique Device ID.


### Microsoft.Windows.Update.Orchestrator.InitiatingReboot

This event sends data about an Orchestrator requesting a reboot from power management to help keep Windows secure and up to date.

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

This event sends launch data for a Windows Update install to help keep Windows secure and up to date.

The following fields are available:

- **batteryLevel**  Current battery capacity in mWh or percentage left.
- **deferReason**  Reason for install not completing.
- **errorCode**  The error code reppresented by a hexadecimal value.
- **eventScenario**  End-to-end update session ID.
- **flightID**  The ID of the Windows Insider build the device is getting.
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

This event is sent if a device is identified as not having sufficient uptime to reliably process updates in order to keep secure. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **availableHistoryMinutes**  The number of minutes available from the local machine activity history.
- **isLowUptimeMachine**  Is the machine considered low uptime or not.
- **lowUptimeMinHours**  Current setting for the minimum number of hours needed to not be considered low uptime.
- **lowUptimeQueryDays**  Current setting for the number of recent days to check for uptime.
- **uptimeMinutes**  Number of minutes of uptime measured.
- **wuDeviceid**  Unique device ID for Windows Update.


### Microsoft.Windows.Update.Orchestrator.OneshotUpdateDetection

This event returns data about scans initiated through settings UI, or background scans that are urgent; to help keep Windows secure and up to date.

The following fields are available:

- **externalOneshotupdate**  The last time a task-triggered scan was completed.
- **interactiveOneshotupdate**  The last time an interactive scan was completed.
- **oldlastscanOneshotupdate**  The last time a scan completed successfully.
- **wuDeviceid**  The Windows Update Device GUID (Globally-Unique ID).


### Microsoft.Windows.Update.Orchestrator.OobeUpdate

This event sends data when Oobe Update download is in progress, to help keep Windows secure and up to date.

The following fields are available:

- **flightID**  A flight ID.
- **revisionNumber**  A revision number.
- **updateId**  An ID associated with an update.
- **updateScenarioType**  A type of USO session.
- **wuDeviceid**  A device Id associated with Windows Update.


### Microsoft.Windows.Update.Orchestrator.PostInstall

This event sends data about lite stack devices (mobile, IOT, anything non-PC) immediately before data migration is launched to help keep Windows secure and up to date.

The following fields are available:

- **batteryLevel**  Current battery capacity in megawatt-hours (mWh) or percentage left.
- **bundleId**  The unique identifier associated with the specific content bundle.
- **bundleRevisionnumber**  Identifies the revision number of the content bundle.
- **errorCode**  The error code returned for the current phase.
- **eventScenario**  State of update action.
- **flightID**  The unique identifier for the flight (Windows Insider pre-release build) should be delivered to the device, if applicable.
- **sessionType**  The Windows Update session type (Interactive or Background).
- **updateScenarioType**  Identifies the type of Update session being performed.
- **wuDeviceid**  The unique device identifier used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.PreShutdownStart

This event is generated before the shutdown and commit operations. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **wuDeviceid**  The unique identifier of a specific device, used to identify how many devices are encountering success or a particular issue.


### Microsoft.Windows.Update.Orchestrator.RebootFailed

This event sends information about whether an update required a reboot and reasons for failure, to help keep Windows secure and up to date.

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

This event sends basic data about the version of upgrade settings applied to the system to help keep Windows secure and up to date.

The following fields are available:

- **errorCode**  Hex code for the error message, to allow lookup of the specific error.
- **settingsDownloadTime**  Timestamp of the last attempt to acquire settings.
- **settingsETag**  Version identifier for the settings.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.RestoreRebootTask

This event sends data indicating that a reboot task is missing unexpectedly on a device and the task is restored because a reboot is still required, to help keep Windows secure and up to date.

The following fields are available:

- **RebootTaskMissedTimeUTC**  The time when the reboot task was scheduled to run, but did not.
- **RebootTaskNextTimeUTC**  The time when the reboot task was rescheduled for.
- **RebootTaskRestoredTime**  Time at which this reboot task was restored.
- **wuDeviceid**  Device ID for the device on which the reboot is restored.


### Microsoft.Windows.Update.Orchestrator.ScanTriggered

This event indicates that Update Orchestrator has started a scan operation. The data collected with this event is used to help keep Windows secure and up to date.

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


### Microsoft.Windows.Update.Orchestrator.SeekerUpdateAvailable

This event defines when an optional update is available for the device to help keep Windows secure and up to date.

The following fields are available:

- **flightID**  The unique identifier of the Windows Insider build on this device.
- **isFeatureUpdate**  Indicates whether the update is a Feature Update.
- **revisionNumber**  The revision number of the update.
- **updateId**  The GUID (Globally Unique Identifier) of the update.
- **wuDeviceid**  The Windows Update device identifier.


### Microsoft.Windows.Update.Orchestrator.SeekUpdate

This event occurs when user initiates "seeker" scan. This helps keep Windows secure and up to date.

The following fields are available:

- **flightID**  The ID of the Windows Insider builds on the device.
- **isFeatureUpdate**  Indicates that the target of the Seek is a feature update.
- **revisionNumber**  The revision number of the update.
- **updateId**  The identifier of the update.
- **wuDeviceid**  The Windows Update device identifier.


### Microsoft.Windows.Update.Orchestrator.StickUpdate

This event is sent when the update service orchestrator (USO) indicates the update cannot be superseded by a newer update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **updateId**  Identifier associated with the specific piece of content.
- **wuDeviceid**  Unique device ID controlled by the software distribution client.


### Microsoft.Windows.Update.Orchestrator.SystemNeeded

This event sends data about why a device is unable to reboot, to help keep Windows secure and up to date.

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

This event indicates that update activity was stopped due to active hours starting. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **activeHoursEnd**  The end of the active hours window.
- **activeHoursStart**  The start of the active hours window.
- **updatePhase**  The current state of the update process.
- **wuDeviceid**  The device identifier.


### Microsoft.Windows.Update.Orchestrator.TerminatedByBatteryLevel

This event is sent when update activity was stopped due to a low battery level. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **batteryLevel**  The current battery charge capacity.
- **batteryLevelThreshold**  The battery capacity threshold to stop update activity.
- **updatePhase**  The current state of the update process.
- **wuDeviceid**  The device identifier.


### Microsoft.Windows.Update.Orchestrator.UnstickUpdate

This event is sent when the update service orchestrator (USO) indicates that the update can be superseded by a newer update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **updateId**  Identifier associated with the specific piece of content.
- **wuDeviceid**  Unique device ID controlled by the software distribution client.


### Microsoft.Windows.Update.Orchestrator.UpdatePolicyCacheRefresh

This event sends data on whether Update Management Policies were enabled on a device, to help keep Windows secure and up to date.

The following fields are available:

- **configuredPoliciescount**  Number of policies on the device.
- **policiesNamevaluesource**  Policy name and source of policy (group policy, MDM or flight).
- **policyCacherefreshtime**  Time when policy cache was refreshed.
- **updateInstalluxsetting**  Indicates whether a user has set policies via a user experience option.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.UpdateRebootRequired

This event sends data about whether an update required a reboot to help keep Windows secure and up to date.

The following fields are available:

- **flightID**  The specific ID of the Windows Insider build the device is getting.
- **interactive**  Indicates whether the reboot initiation stage of the update process was entered as a result of user action.
- **revisionNumber**  Update revision number.
- **updateId**  Update ID.
- **updateScenarioType**  The update session type.
- **uxRebootstate**  Indicates the exact state of the user experience at the time the required reboot was initiated to ensure the correct update process and experience is provided to keep Windows up to date.
- **wuDeviceid**  Unique device ID used by Windows Update.


### Microsoft.Windows.Update.Orchestrator.updateSettingsFlushFailed

This event sends information about an update that encountered problems and was not able to complete. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **errorCode**  The error code encountered.
- **wuDeviceid**  The ID of the device in which the error occurred.


### Microsoft.Windows.Update.Orchestrator.UsoSession

This event represents the state of the USO service at start and completion. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **activeSessionid**  A unique session GUID.
- **eventScenario**  The state of the update action.
- **interactive**  Is the USO session interactive?
- **lastErrorcode**  The last error that was encountered.
- **lastErrorstate**  The state of the update when the last error was encountered.
- **sessionType**  A GUID that refers to the update session type.
- **updateScenarioType**  A descriptive update session type.
- **wuDeviceid**  The Windows Update device GUID.


### Microsoft.Windows.Update.Orchestrator.UUPFallBack

This event sends data when UUP needs to fall back, to help keep Windows secure and up to date.

The following fields are available:

- **EventPublishedTime**  The current event time.
- **UUPFallBackCause**  The reason for UUP fall back.
- **UUPFallBackConfigured**  The fall back error code.
- **UUPFallBackErrorReason**  The reason for fall back error.
- **wuDeviceid**  A Windows Update device ID.


### Microsoft.Windows.Update.Ux.MusNotification.EnhancedEngagedRebootUxState

This event sends information about the configuration of Enhanced Direct-to-Engaged (eDTE), which includes values for the timing of how eDTE will progress through each phase of the reboot. The data collected with this event is used to help keep Windows secure and up to date.

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

This event is sent when a security update has successfully completed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **UtcTime**  The Coordinated Universal Time that the restart was no longer needed.


### Microsoft.Windows.Update.Ux.MusNotification.RebootScheduled

This event sends basic information about scheduling an update-related reboot, to get security updates and to help keep Windows secure and up to date.

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
- **wuDeviceid**  The unique device ID used by Windows Update.


### Microsoft.Windows.Update.Ux.MusNotification.UxBrokerScheduledTask

This event is sent when MUSE broker schedules a task. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **TaskArgument**  The arguments with which the task is scheduled.
- **TaskName**  Name of the task.


### Microsoft.Windows.Update.Ux.MusUpdateSettings.RebootScheduled

This event sends basic information for scheduling a device restart to install security updates. The data collected with this event is used to help keep Windows secure and up to date.

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


### Microsoft.Windows.UpdateHealthTools.ExpediteBlocked

This event indicates that updates have been blocked requiring intervention. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  A correlation vector.
- **ExpeditePolicyId**  The policy id of the expedite request.
- **ExpediteUpdatesInProgress**  A list of update IDs in progress.
- **GlobalEventCounter**  Counts the number of events for this provider.
- **PackageVersion**  The package version of the label.


### Microsoft.Windows.UpdateHealthTools.ExpediteCompleted

This event indicates that the update has been completed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  A correlation vector.
- **ExpeditePolicyId**  The policy Id of the expedite request.
- **ExpediteUpdatesInProgress**  The list of update IDs in progress.
- **GlobalEventCounter**  Counts the number of events for this provider.
- **PackageVersion**  The package version of the label.


### Microsoft.Windows.UpdateHealthTools.ExpediteUpdaterAlreadyExpectedUbr

This event indicates that the device is already on the required UBR. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **ExpediteErrorBitMap**  Bit map value for any error code.
- **ExpediteResult**  Boolean value for success or failure.
- **ExpediteUpdaterCurrentUbr**  The ubr of the device.
- **ExpediteUpdaterExpectedUbr**  The expected ubr of the device.
- **ExpediteUpdaterPolicyRestoreResult**  HRESULT of the policy restore.
- **GlobalEventCounter**  Counts the number of events for this provider.
- **PackageVersion**  The package version label.


### Microsoft.Windows.UpdateHealthTools.ExpediteUpdaterRebootComplete

This event indicates that the device has completed the reboot after installing expected update. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **ExpeditePolicyId**  The policy id of the expedite request.
- **ExpediteResult**  Boolean value for success or failure.
- **ExpediteUpdaterCurrentUbr**  The ubr of the device.
- **ExpediteUpdaterOfferedUpdateId**  Update Id of the LCU expected to be expedited.
- **ExpediteUpdaterPolicyRestoreResult**  HRESULT of the policy restore.
- **GlobalEventCounter**  Counts the number of events for this provider.
- **PackageVersion**  The package version label.


### Microsoft.Windows.UpdateHealthTools.ExpediteUpdaterScanCompleted

This event sends results of the expedite USO scan. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **ExpediteErrorBitMap**  Bit map value for any error code.
- **ExpediteResult**  Boolean value for success or failure.
- **ExpediteUpdaterCurrentUbr**  The UBR of the device.
- **ExpediteUpdaterExpectedUbr**  The expected UBR of the device.
- **ExpediteUpdaterMonitorResult**  HRESULT of the USO monitoring.
- **ExpediteUpdaterScanResult**  HRESULT of the expedite USO scan.
- **ExpediteUpdaterUsoResult**  HRESULT of the USO initialization and resume API calls.
- **GlobalEventCounter**  Counts the number of events for this provider.
- **PackageVersion**  The package version label.
- **UsoFrequencyKey**  Indicates whether the USO frequency key was found on the device (true/false).


### Microsoft.Windows.UpdateHealthTools.ExpediteUpdaterScanStarted

This event sends telemetry that USO scan has been started. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **ExpediteErrorBitMap**  Bit map value for any error code.
- **ExpediteResult**  Boolean value for success or failure.
- **ExpediteUpdaterCurrentUbr**  The UBR of the device.
- **ExpediteUpdaterExpectedUbr**  The expected UBR of the device.
- **GlobalEventCounter**  Counts the number of events for this provider.
- **PackageVersion**  The package version label.
- **UsoFrequencyKey**  Indicates whether the USO frequency key was found on the device (true/false).


### Microsoft.Windows.UpdateHealthTools.UnifiedInstallerEnd

This event indicates that the unified installer has completed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  The event counter for telemetry events on the device for currency tools.
- **PackageVersion**  The package version label for currency tools.
- **UnifiedInstallerInstallResult**  The final result code for the unified installer.
- **UnifiedInstallerPlatformResult**  The result code from determination of the platform type.
- **UnifiedInstallerPlatformType**  The enum indicating the platform type.


### Microsoft.Windows.UpdateHealthTools.UnifiedInstallerStart

This event indicates that the installation has started for the unified installer. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  The correlation vector.
- **GlobalEventCounter**  Counts the events at the global level for telemetry.
- **PackageVersion**  The package version for currency tools.
- **UnifiedInstallerDeviceAADJoinedHresult**  The result code after checking if device is AAD joined.
- **UnifiedInstallerDeviceInDssPolicy**  Boolean indicating whether the device is found to be in a DSS policy.
- **UnifiedInstallerDeviceInDssPolicyHresult**  The result code for checking whether the device is found to be in a DSS policy.
- **UnifiedInstallerDeviceIsAADJoined**  Boolean indicating whether a device is AADJ.
- **UnifiedInstallerDeviceIsAdJoined**  Boolean indicating whether a device is AD joined.
- **UnifiedInstallerDeviceIsAdJoinedHresult**  The result code for checking whether a device is AD joined.
- **UnifiedInstallerDeviceIsEducationSku**  Boolean indicating whether a device is Education SKU.
- **UnifiedInstallerDeviceIsEducationSkuHresult**  The result code from checking whether a device is Education SKU.
- **UnifiedInstallerDeviceIsEnterpriseSku**  Boolean indicating whether a device is Enterprise SKU.
- **UnifiedInstallerDeviceIsEnterpriseSkuHresult**  The result code from checking whether a device is Enterprise SKU.
- **UnifiedInstallerDeviceIsHomeSku**  Boolean indicating whether a device is Home SKU.
- **UnifiedInstallerDeviceIsMdmManaged**  Boolean indicating whether a device is MDM managed.
- **UnifiedInstallerDeviceIsMdmManagedHresult**  The result code from checking whether a device is MDM managed.
- **UnifiedInstallerDeviceIsProSku**  Boolean indicating whether a device is Pro SKU.
- **UnifiedInstallerDeviceIsProSkuHresult**  The result code from checking whether a device is Pro SKU.
- **UnifiedInstallerDeviceIsSccmManaged**  Boolean indicating whether a device is SCCM managed.
- **UnifiedInstallerDeviceIsSccmManagedHresult**  The result code from checking whether a device is SCCM managed.
- **UnifiedInstallerDeviceWufbManaged**  Boolean indicating whether a device is Wufb managed.
- **UnifiedInstallerDeviceWufbManagedHresult**  The result code from checking whether a device is Wufb managed.
- **UnifiedInstallerPlatformResult**  The result code from checking what platform type the device is.
- **UnifiedInstallerPlatformType**  The enum indicating the type of platform detected.
- **UnifiedInstUnifiedInstallerDeviceIsHomeSkuHresultllerDeviceIsHomeSku**  The result code from checking whether a device is Home SKU.


### Microsoft.Windows.UpdateHealthTools.UpdateHealthToolsDeviceInformationUploaded

This event is received when the UpdateHealthTools service uploads device information. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of remediation.
- **UpdateHealthToolsDeviceUbrChanged**  1 if the Ubr just changed, 0 otherwise.
- **UpdateHealthToolsDeviceUri**  The URI to be used for push notifications on this device.


### Microsoft.Windows.UpdateHealthTools.UpdateHealthToolsPushNotificationCompleted

This event is received when a push notification has been completed by the UpdateHealthTools service. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of UpdateHealthTools.
- **UpdateHealthToolsEnterpriseActionResult**  The HRESULT return by the enterprise action.
- **UpdateHealthToolsEnterpriseActionType**  Enum describing the type of action requested by the push.


### Microsoft.Windows.UpdateHealthTools.UpdateHealthToolsPushNotificationReceived

This event is received when the UpdateHealthTools service receives a push notification. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of UpdateHealthTools.
- **UpdateHealthToolsDeviceUri**  The URI to be used for push notifications on this device.
- **UpdateHealthToolsEnterpriseActionType**  Enum describing the type of action requested by the push.
- **UpdateHealthToolsPushCurrentChannel**  The channel used to receive notification.
- **UpdateHealthToolsPushCurrentRequestId**  The request ID for the push.
- **UpdateHealthToolsPushCurrentResults**  The results from the push request.
- **UpdateHealthToolsPushCurrentStep**  The current step for the push notification.


### Microsoft.Windows.UpdateHealthTools.UpdateHealthToolsPushNotificationStatus

This event is received when there is status on a push notification. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of UpdateHealthTools.
- **UpdateHealthToolsDeviceUri**  The URI to be used for push notifications on this device.
- **UpdateHealthToolsEnterpriseActionType**  Enum describing the type of action requested by the push.
- **UpdateHealthToolsPushCurrentRequestId**  The request ID for the push.
- **UpdateHealthToolsPushCurrentResults**  The results from the push request.
- **UpdateHealthToolsPushCurrentStep**  The current step for the push notification


### Microsoft.Windows.UpdateHealthTools.UpdateHealthToolsServiceBlockedByNoDSSJoin

This event is sent when the device is not joined to AAD. The data collected with this event is used to help keep Windows up to date and secure.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  The global event counter for counting total events for the provider.
- **PackageVersion**  The version for the current package.


### Microsoft.Windows.UpdateHealthTools.UpdateHealthToolsServiceStarted

This event is sent when the service first starts. It is a heartbeat indicating that the service is available on the device. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **CV**  Correlation vector.
- **GlobalEventCounter**  Client side counter which indicates ordering of events sent by this user.
- **PackageVersion**  Current package version of remediation.


### Microsoft.Windows.WindowsUpdate.RUXIM.ICSEvaluateInteractionCampaign

This event is generated when the RUXIM Interaction Campaign Scheduler (RUXIMICS.EXE) finishes processing an interaction campaign. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **ControlId**  String identifying the control (if any) that was selected by the user during presentation.
- **hrInteractionHandler**  The error (if any) reported by the RUXIM Interaction Handler while processing the interaction campaign.
- **hrScheduler**  The error (if any) encountered by RUXIM Interaction Campaign Scheduler itself while processing the interaction campaign.
- **InteractionCampaignID**  The ID of the interaction campaign that was processed.
- **ResultId**  The result of the evaluation/presentation.
- **WasCompleted**  True if the interaction campaign is complete.
- **WasPresented**  True if the Interaction Handler displayed the interaction campaign to the user.


### Microsoft.Windows.WindowsUpdate.RUXIM.ICSExit

This event is generated when the RUXIM Interaction Campaign Scheduler (RUXIMICS) exits. The data collected with this event is used to help keep Windows up to date and performing properly.



### Microsoft.Windows.WindowsUpdate.RUXIM.ICSLaunch

This event is generated when the RUXIM Interaction Campaign Scheduler (RUXIMICS.EXE) is launched. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CommandLine**  The command line used to launch RUXIMICS.


### Microsoft.Windows.WindowsUpdate.RUXIM.ICSOneSettingsSyncExit

This event is sent when RUXIM completes checking with OneSettings to retrieve any UX interaction campaigns that may need to be displayed. The data collected with this event is used to help keep Windows up to date.

The following fields are available:

- **hrInitialize**  Error, if any, that occurred while initializing OneSettings.
- **hrQuery**  Error, if any, that occurred while retrieving UX interaction campaign data from OneSettings.


### Microsoft.Windows.WindowsUpdate.RUXIM.ICSOneSettingsSyncLaunch

This event is sent when RUXIM begins checking with OneSettings to retrieve any UX interaction campaigns that may need to be displayed. The data collected with this event is used to help keep Windows up to date.



### Microsoft.Windows.WindowsUpdate.RUXIM.IHBeginPresentation

This event is generated when RUXIM is about to present an interaction campaign to the user. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **InteractionCampaignID**  GUID identifying interaction campaign being presented.


### Microsoft.Windows.WindowsUpdate.RUXIM.IHEndPresentation

This event is generated when Interaction Handler completes presenting an interaction campaign to the user. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **hrPresentation**  Error, if any, occurring during the presentation.
- **InteractionCampaignID**  GUID identifying the interaction campaign being presented.
- **ResultId**  Result generated by the presentation.
- **WasCompleted**  True if the interaction campaign is now considered complete.


### Microsoft.Windows.WindowsUpdate.RUXIM.IHEvaluateAndPresent

This event is generated when the RUXIM Interaction Handler finishes evaluating, and possibly presenting an interaction campaign. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **hrLocal**  The error (if any) encountered by RUXIM Interaction Handler during evaluation and presentation.
- **hrPresentation**  The error (if any) reported by RUXIM Presentation Handler during presentation.
- **InteractionCampaignID**  GUID; the user interaction campaign processed by RUXIM Interaction Handler.
- **ResultId**  The result generated by the evaluation and presentation.
- **WasCompleted**  True if the user interaction campaign is complete.
- **WasPresented**  True if the user interaction campaign is displayed to the user.


### Microsoft.Windows.WindowsUpdate.RUXIM.IHExit

This event is generated when the RUXIM Interaction Handler (RUXIMIH.EXE) exits. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **InteractionCampaignID**  GUID identifying the interaction campaign that RUXIMIH processed.


### Microsoft.Windows.WindowsUpdate.RUXIM.IHLaunch

This event is generated when the RUXIM Interaction Handler (RUXIMIH.EXE) is launched. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **CommandLine**  The command line used to launch RUXIMIH.
- **InteractionCampaignID**  GUID identifying the user interaction campaign that the Interaction Handler will process.


### Microsoft.Windows.WindowsUpdate.RUXIM.SystemEvaluator.Evaluation

This event is generated whenever the RUXIM Evaluator DLL performs an evaluation. The data collected with this event is used to help keep Windows up to date and performing properly.

The following fields are available:

- **HRESULT**  Error, if any, that occurred during evaluation. (Note that if errors encountered during individual checks do not affect the overall result of the evaluation, those errors will be reported in NodeEvaluationData, but this HRESULT will still be zero.)
- **Id**  GUID passed in by the caller to identify the evaluation.
- **NodeEvaluationData**  Structure showing the results of individual checks that occurred during the overall evaluation.
- **Result**  Overall result generated by the evaluation.


## Windows Update mitigation events

### Mitigation360Telemetry.MitigationCustom.CleanupSafeOsImages

This event sends data specific to the CleanupSafeOsImages mitigation used for OS Updates. The data collected with this event is used to help keep Windows secure and up to date.

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


### Mitigation360Telemetry.MitigationCustom.FixAppXReparsePoints

This event sends data specific to the FixAppXReparsePoints mitigation used for OS updates. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  In the WU scenario, this will be the WU client ID that is passed to Setup. In Media setup, default value is Media360, but can be overwritten by the caller to a unique value.
- **FlightId**  Unique GUID that identifies each instances of setuphost.exe.
- **InstanceId**  Unique GUID that identifies each instances of setuphost.exe.
- **MitigationScenario**  The update scenario in which the mitigation was executed.
- **RelatedCV**  Correlation vector value generated from the latest USO scan.
- **ReparsePointsFailed**  Number of reparse points that were corrupted but were not fixed by this mitigation.
- **ReparsePointsFixed**  Number of reparse points that were corrupted and were fixed by this mitigation.
- **ReparsePointsSkipped**  Number of reparse points that are not corrupted and no action is required.
- **Result**  HResult of this operation.
- **ScenarioId**  ID indicating the mitigation scenario.
- **ScenarioSupported**  Indicates whether the scenario was supported.
- **SessionId**  Unique ID for the update session.
- **UpdateId**  Unique ID for the Windows Update.
- **WuId**  Unique ID for the Windows Update client.


### Mitigation360Telemetry.MitigationCustom.FixupEditionId

This event sends data specific to the FixupEditionId mitigation used for OS updates. The data collected with this event is used to help keep Windows secure and up to date.

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


## Windows Update Reserve Manager events

### Microsoft.Windows.UpdateReserveManager.CommitPendingHardReserveAdjustment

This event is sent when the Update Reserve Manager commits a hard reserve adjustment that was pending. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **FinalAdjustment**  Final adjustment for the hard reserve following the addition or removal of optional content.
- **InitialAdjustment**  Initial intended adjustment for the hard reserve following the addition/removal of optional content.


### Microsoft.Windows.UpdateReserveManager.FunctionReturnedError

This event is sent when the Update Reserve Manager returns an error from one of its internal functions. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **FailedExpression**  The failed expression that was returned.
- **FailedFile**  The binary file that contained the failed function.
- **FailedFunction**  The name of the function that originated the failure.
- **FailedLine**  The line number of the failure.
- **ReturnCode**  The return code of the function.


### Microsoft.Windows.UpdateReserveManager.InitializeUpdateReserveManager

This event returns data about the Update Reserve Manager, including whether it’s been initialized. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ClientId**  The ID of the caller application.
- **Flags**  The enumerated flags used to initialize the manager.
- **FlightId**  The flight ID of the content the calling client is currently operating with.
- **Offline**  Indicates whether or the reserve manager is called during offline operations.
- **PolicyPassed**  Indicates whether the machine is able to use reserves.
- **ReturnCode**  Return code of the operation.
- **Version**  The version of the Update Reserve Manager.


### Microsoft.Windows.UpdateReserveManager.PrepareTIForReserveInitialization

This event is sent when the Update Reserve Manager prepares the Trusted Installer to initialize reserves on the next boot. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **FallbackLogicUsed**  Indicates whether fallback logic was used for initialization.
- **Flags**  The flags that are passed to the function to prepare the Trusted Installer for reserve initialization.


### Microsoft.Windows.UpdateReserveManager.RemovePendingHardReserveAdjustment

This event is sent when the Update Reserve Manager removes a pending hard reserve adjustment. The data collected with this event is used to help keep Windows secure and up to date.



### Microsoft.Windows.UpdateReserveManager.UpdatePendingHardReserveAdjustment

This event is sent when the Update Reserve Manager needs to adjust the size of the hard reserve after the option content is installed. The data collected with this event is used to help keep Windows secure and up to date.

The following fields are available:

- **ChangeSize**  The change in the hard reserve size based on the addition or removal of optional content.
- **Disposition**  The parameter for the hard reserve adjustment function.
- **Flags**  The flags passed to the hard reserve adjustment function.
- **PendingHardReserveAdjustment**  The final change to the hard reserve size.
- **UpdateType**  Indicates whether the change is an increase or decrease in the size of the hard reserve.


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



