---
title: SharedPC CSP
description: SharedPC CSP
ms.assetid: 31273166-1A1E-4F96-B176-CB42ECB80957
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 01/16/2019
---

# SharedPC CSP


The SharedPC configuration service provider is used to configure settings for Shared PC usage.

The following diagram shows the SharedPC configuration service provider management objects in tree format as used by Open Mobile Alliance Device Management (OMA DM), OMA Client Provisioning, and Enterprise DM.

![sharedpc](images/sharedpc-csp.png)

<a href="" id="--vendor-msft-sharedpc"></a>**./Vendor/MSFT/SharedPC**  
The root node for the SharedPC configuration service provider.

The supported operation is Get.

<a href="" id="enablesharedpcmode"></a>**EnableSharedPCMode**  
A boolean value that specifies whether Shared PC mode is enabled.

The supported operations are Add, Get, Replace, and Delete.

Setting this value to True triggers the action to configure a device to Shared PC mode.

The default value is Not Configured and SharedPC mode is not enabled.

<a href="" id="setedupolicies"></a>**SetEduPolicies**  
A boolean value that specifies whether the policies for education environment are enabled. Setting this value to true triggers the action to configure a device as education environment.

The supported operations are Add, Get, Replace, and Delete.

The default value changed to false in Windows 10, version 1703. The default value is Not Configured and this node needs to be configured independent of EnableSharedPCMode. In Windows 10, version 1607, the value is set to True and the education environment is automatically configured when SharedPC mode is configured.

<a href="" id="setpowerpolicies"></a>**SetPowerPolicies**  
Optional. A boolean value that specifies that the power policies should be set when configuring SharedPC mode.

> [!Note]  
> If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and the effective power settings are determined by the OS's default power settings. Its value in the SharedPC provisioning package is True.

<a href="" id="maintenancestarttime"></a>**MaintenanceStartTime**  
Optional. An integer value that specifies the daily start time of maintenance hour. Given in minutes from midnight. The range is 0-1440.

> [!Note]  
>  If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and its value in the SharedPC provisioning package is 0 (12 AM).

<a href="" id="signinonresume"></a>**SignInOnResume**  
Optional. A boolean value that, when set to True, requires sign in whenever the device wakes up from sleep mode.

> [!Note]  
> If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and its value in the SharedPC provisioning package is True.

<a href="" id="sleeptimeout"></a>**SleepTimeout**  
The amount of time in seconds before the PC sleeps. 0 means the PC never sleeps. Default is 5 minutes. This node is optional. 

> [!Note]  
> If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured, and effective behavior is determined by the OS's default settings. Its value in the SharedPC provisioning package for Windows 10, version 1703 is 300, and in Windows 10, version 1607 is 3600.

<a href="" id="enableaccountmanager"></a>**EnableAccountManager**  
A boolean that enables the account manager for shared PC mode.

> [!Note]  
> If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The supported operations are Add, Get, Replace, and Delete.

The default value is Not Configured and its value in the SharedPC provisioning package is True.

<a href="" id="accountmodel"></a>**AccountModel**  
Configures which type of accounts are allowed to use the PC.

> [!Note]  
> If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The supported operations are Add, Get, Replace, and Delete.

The following list shows the supported values:

-   0 (default) - Only guest accounts are allowed.
-   1 - Only domain-joined accounts are enabled.
-   2 - Domain-joined and guest accounts are allowed.

Its value in the SharedPC provisioning package is 1 or 2.

<a href="" id="deletionpolicy"></a>**DeletionPolicy**  
Configures when accounts are deleted.

> [!Note]  
> If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The supported operations are Add, Get, Replace, and Delete.

For Windows 10, version 1607, here is the list shows the supported values:

-   0 - Delete immediately.
-   1 (default) - Delete at disk space threshold.

For Windows 10, version 1703, here is the list of supported values:  

- 0 - Delete immediately
- 1 - Delete at disk space threshold
- 2 - Delete at disk space threshold and inactive threshold

The default value is Not Configured. Its value in the SharedPC provisioning package is 1 or 2.

<a href="" id="diskleveldeletion"></a>**DiskLevelDeletion**  
Sets the percentage of disk space remaining on a PC before cached accounts will be deleted to free disk space. Accounts that have been inactive the longest will be deleted first.

> [!Note]  
> If used, this value must be set before the action on the **EnableSharedPCMode** node is taken.

The default value is Not Configured. Its default value in the SharedPC provisioning package is 25.

For example, if the **DiskLevelCaching** number is set to 50 and the **DiskLevelDeletion** number is set to 25 (both default values). Accounts will be cached while the free disk space is above 25%. When the free disk space is less than 25% (the deletion number) during a daily maintenance period, accounts will be deleted (oldest last used first) when the system is idle until the free disk space is above 50% (the caching number). Accounts will be deleted immediately at sign off of an account if free space is under half of the deletion threshold and disk space is very low, regardless of whether the PC is actively in use or not.

The supported operations are Add, Get, Replace, and Delete.

<a href="" id="disklevelcaching"></a>**DiskLevelCaching**  
Sets the percentage of available disk space a PC should have before it stops deleting cached accounts.

> [!Note]  
> If used, this value must set before the action on the **EnableSharedPCMode** node is taken.

The default value is Not Configured. The default value in the SharedPC provisioning package is 25.

For example, if the **DiskLevelCaching** number is set to 50 and the **DiskLevelDeletion** number is set to 25 (both default values). Accounts will be cached while the free disk space is above 25%. When the free disk space is less than 25% (the deletion number) during a maintenance period, accounts will be deleted (oldest last used first) until the free disk space is above 50% (the caching number). Accounts will be deleted immediately at sign off of an account if free space is under the deletion threshold and disk space is very low, regardless whether the PC is actively in use or not.

The supported operations are Add, Get, Replace, and Delete.

<a href="" id="restrictlocalstorage"></a>**RestrictLocalStorage**  
Added in Windows 10, version 1703. Restricts the user from using local storage. This node is optional. 

The default value is Not Configured and behavior is no such restriction applied. Value type is bool. Supported operations are Add, Get, Replace, and Delete. Default in SharedPC provisioning package is False.

> [!Note]  
> If used, this value must set before the action on the **EnableSharedPCMode** node is taken.

<a href="" id="kioskmodeaumid"></a>**KioskModeAUMID**  
Added in Windows 10, version 1703. Specifies the AUMID of the app to use with assigned access. This node is optional. 

Value type is string. Supported operations are Add, Get, Replace, and Delete.  

> [!Note]  
> If used, this value must set before the action on the **EnableSharedPCMode** node is taken.

<a href="" id="kioskmodeusertiledisplaytext"></a>**KioskModeUserTileDisplayText**  
Added in Windows 10, version 1703. Specifies the display text for the account shown on the sign-in screen which launches the app specified by KioskModeAUMID. This node is optional. 

Value type is string. Supported operations are Add, Get, Replace, and Delete. 

> [!Note]  
> If used, this value must set before the action on the **EnableSharedPCMode** node is taken.

<a href="" id="inactivethreshold"></a>**InactiveThreshold**  
Added in Windows 10, version 1703. Accounts will start being deleted when they have not been logged on during the specified period, given as number of days.

The default value is Not Configured. Value type is integer. Supported operations are Add, Get, Replace, and Delete.

The default in the SharedPC provisioning package is 30.

<a href="" id="maxpagefilesizemb"></a>**MaxPageFileSizeMB**  
Added in Windows 10, version 1703. Maximum size of the paging file in MB. Applies only to systems with less than 32 GB storage and at least 3 GB of RAM. This node is optional. 

> [!Note]  
> If used, this value must set before the action on the **EnableSharedPCMode** node is taken.

Default value is Not Configured. Value type is integer. Supported operations are Add, Get, Replace, and Delete.

The default in the SharedPC provisioning package is 1024.

## Related topics


[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






