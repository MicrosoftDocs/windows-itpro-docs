---
title: Migrating UE-V 2.x Settings Packages
description: Migrating UE-V 2.x Settings Packages
author: levinec
ms.assetid: f79381f4-e142-405c-b728-5c048502aa70
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Migrating UE-V 2.x Settings Packages


In the lifecycle of a Microsoft User Experience Virtualization (UE-V) 2.0, 2.1, or 2.1 SP1 deployment, you might have to relocate the user settings packages either when you migrate to a new server or when you perform backups. Settings packages might have to be migrated in the following scenarios:

-   Upgrade of existing server hardware to a more modern server.

-   Migration of a settings storage location share from a test server to a production server.

Simply copying the files and folders does not preserve the security settings and permissions. The following steps describe how to correctly copy the settings package along with their NTFS file system permissions to a new share.

**To preserve UE-V 2 settings packages when you migrate to a new server**

1.  In a new location on a different server, create a new folder, for example, MySettings.

2.  Disable sharing for the old folder share on the old server.

3.  To copy the existing settings packages to the new server with Robocopy

    ``` syntax
    C:\start robocopy "\\servername\E$\MySettings" "\\servername\E$\MySettings" /b /sec /secfix /e /LOG:D:\Robocopylogs\MySettings.txt
    ```

    **Note**  
    To monitor the copy progress, open MySettings.txt with a log viewer such as Trace32.

     

4.  Grant share-level permissions to the new share. Leave the NTFS file system permissions as they were set by Robocopy.

    On computers that run the UE-V Agent, update the **SettingsStoragePath** configuration setting to the Universal Naming Convention (UNC) path of the new share.

    **Got a suggestion for UE-V**? Add or vote on suggestions [here](http://uev.uservoice.com/forums/280428-microsoft-user-experience-virtualization). **Got a UE-V issue**? Use the [UE-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopuev).

## Related topics


[Administering UE-V 2.x](administering-ue-v-2x-new-uevv2.md)

 

 





