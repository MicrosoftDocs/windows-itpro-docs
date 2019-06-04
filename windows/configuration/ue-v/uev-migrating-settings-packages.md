---
title: Migrating UE-V settings packages
description: Migrating UE-V settings packages
author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---


# Migrating UE-V settings packages

**Applies to**
-   Windows 10, version 1607

In the lifecycle of a User Experience Virtualization (UE-V) deployment, you might have to relocate the user settings packages either when you migrate to a new server or when you perform backups. Settings packages might have to be migrated in the following scenarios:

-   Upgrade of existing server hardware to a more modern server

-   Migration of a settings storage location share from a test server to a production server

Simply copying the files and folders does not preserve the security settings and permissions. The following steps describe how to correctly copy the settings package along with their NTFS file system permissions to a new share.

**To preserve UE-V settings packages when you migrate to a new server**

1.  In a new location on a different server, create a new folder, for example, MySettings.

2.  Disable sharing for the old folder share on the old server.

3.  To copy the existing settings packages to the new server with Robocopy

    ``` syntax
    C:\start robocopy "\\servername\E$\MySettings" "\\servername\E$\MySettings" /b /sec /secfix /e /LOG:D:\Robocopylogs\MySettings.txt
    ```

    **Note**  
    To monitor the copy progress, open MySettings.txt with a log viewer such as Trace32.

     

4.  Grant share-level permissions to the new share. Leave the NTFS file system permissions as they were set by Robocopy.

    On computers on which the UE-V service is enabled, update the **SettingsStoragePath** configuration setting to the Universal Naming Convention (UNC) path of the new share.





## Related topics

[Administering UE-V](uev-administering-uev.md)

