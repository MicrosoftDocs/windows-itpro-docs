---
title: Sync Trigger Events for UE-V
description: Learn how User Experience Virtualization (UE-V) lets you synchronize your application and Windows settings across all your domain-joined devices.
author: greg-lindsay
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: greglin
ms.topic: article
---

# Sync Trigger Events for UE-V

**Applies to**
-   Windows 10, version 1607

User Experience Virtualization (UE-V) lets you synchronize your application and Windows settings across all your domain-joined devices. *Sync trigger events* define when the UE-V service synchronizes those settings with the settings storage location. For more information about Sync Method configuration, see [Sync Methods for UE-V](uev-sync-methods.md).

## UE-V Sync Trigger Events

The following table explains the trigger events for classic applications and Windows settings.

|UE-V Trigger Event|SyncMethod=SyncProvider|SyncMethod=None|
|--- |--- |--- |
|**Windows Logon**|<li>Application and Windows settings are imported to the local cache from the settings storage location.<li>[Asynchronous Windows settings](uev-prepare-for-deployment.md#windows-settings-synchronized-by-default) are applied.<li>Synchronous Windows settings will be applied during the next Windows logon.<li>Application settings will be applied when the application starts.|<li>Application and Windows settings are read directly from the settings storage location.<li>Asynchronous and synchronous Windows settings are applied.<li>Application settings will be applied when the application starts.|
|**Windows Logoff**|Store changes locally and cache and copy asynchronous and synchronous Windows settings to the settings storage location server, if available|Store changes to asynchronous and synchronous Windows settings storage location|
|**Windows Connect (RDP) / Unlock**|Synchronize any asynchronous Windows settings from settings storage location to local cache, if available.<p>Apply cached Windows settings|Download and apply asynchronous windows settings from settings storage location|
|**Windows Disconnect (RDP) / Lock**|Store asynchronous Windows settings changes to the local cache.<p>Synchronize any asynchronous Windows settings from the local cache to settings storage location, if available|Store asynchronous Windows settings changes to the settings storage location|
|**Application start**|Apply application settings from local cache as the application starts|Apply application settings from settings storage location as the application starts|
|**Application closes**|Store any application settings changes to the local cache and copy settings to settings storage location, if available|Store any application settings changes to settings storage location|
|**Sync Controller Scheduled Task**|Application and Windows settings are synchronized between the settings storage location and the local cache.<br><div class="alert">**Note**Settings changes are not cached locally until an application closes. This trigger will not export changes made to a currently running application.<p>For Windows settings, this means that any changes will not be cached locally and exported until the next Lock (Asynchronous) or Logoff (Asynchronous and Synchronous).</div><p>Settings are applied in these cases:<li>Asynchronous Windows settings are applied directly.<li>Application settings are applied when the application starts.<li>Both asynchronous and synchronous Windows settings are applied during the next Windows logon.<li>Windows app (AppX) settings are applied during the next refresh. See [Monitor Application Settings](uev-changing-the-frequency-of-scheduled-tasks.md#monitor-application-settings) for more information.|NA|
|**Asynchronous Settings updated on remote store***|Load and apply new asynchronous settings from the cache.|Load and apply settings from central server|

## Related topics


[Technical Reference for UE-V](uev-technical-reference.md)

[Changing the Frequency of UE-V Scheduled Tasks](uev-changing-the-frequency-of-scheduled-tasks.md)

[Choose the Configuration Method for UE-V](uev-deploy-required-features.md)









