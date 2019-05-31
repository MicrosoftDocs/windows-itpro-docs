---
title: Migrating UE-V Settings Packages
description: Migrating UE-V Settings Packages
author: levinec
ms.assetid: 93d99254-3e17-4e96-92ad-87059d8554a7
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Migrating UE-V Settings Packages


In the lifecycle of a Microsoft User Experience Virtualization (UE-V) deployment, you might need to relocate the user settings packages either when migrating to a new server or for backup purposes. Migration of settings packages might be needed in the following scenarios:

-   Upgrade of existing server hardware to a more modern server.

-   Migration of a settings storage location share from a lab to a production server.

Simply copying the files and folders will not preserve the security settings and permissions. The following described steps will properly copy the settings package files with their NTFS permissions to a new share.

**How to preserve UE-V settings packages when migrating to a new server**

1.  In a new location on a different server, create a new folder; for example, MySettings.

2.  Disable sharing for the old folder share on the old server.

3.  Move the existing settings packages to the new server with Robocopy from the command line. For example:

    ``` syntax
    c:\start robocopy "\\servername\E$\MySettings" "\\servername\E$\MySettings" /b /sec /secfix /e /LOG:D:\Robocopylogs\MySettings.txt
    ```

    **Note**  
    To monitor the copy progress, open MySettings.txt with a log file reader such as Trace32.

     

4.  Grant share-level permissions to the new share. Leave the NTFS permissions as they were set by Robocopy.

    On computers that run the UE-V agent, update the SettingsStoragePath configuration setting to the UNC path of the new share.

## Related topics


[Administering UE-V 1.0](administering-ue-v-10.md)

[Operations for UE-V 1.0](operations-for-ue-v-10.md)

 

 





