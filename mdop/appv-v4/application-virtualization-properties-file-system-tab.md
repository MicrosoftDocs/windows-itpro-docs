---
title: Application Virtualization Properties File System Tab
description: Application Virtualization Properties File System Tab
author: dansimp
ms.assetid: c7d56d36-8c50-4dfc-afee-83dea06376d4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Application Virtualization Properties: File System Tab


Use the **File System** tab of the **Application Virtualization Properties** dialog box to view and monitor file system settings.

This tab contains the following elements.

<a href="" id="client-cache-configuration-settings"></a>**Client Cache Configuration Settings**  
This section enables you to configure the client cache settings. Click one of the following radio buttons to choose how to manage the cache space:

-   **Use maximum cache size**

    Enter a numeric value from 100 to 1,048,576 (1 TB) in the **Maximum size (MB)** field to specify the maximum size in MB of the cache. The value shown in **Reserved Cache Size** indicates the amount of cache in use.

-   **Use free disk space threshold**

    Enter a numeric value to specify the amount of free disk space, in MB, that the cache must leave available on the disk. This allows the cache to grow until the amount of free disk space reaches this limit. The value shown in **Free disk space remaining** indicates how much disk space is unused.

<a href="" id="drive-letter"></a>**Drive Letter**  
This field displays the current drive being used. To change the drive, select any drive letter from the drop-down list of available drives. This setting becomes effective when the computer is rebooted.

## Related topics


[Client Management Console: Application Virtualization Properties](client-management-console-application-virtualization-properties.md)

 

 





