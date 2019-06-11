---
title: How to Back Up and Restore a MED-V Server
description: How to Back Up and Restore a MED-V Server
author: dansimp
ms.assetid: 8d05e3a4-279b-4ce6-a319-8a09e7a30c60
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Back Up and Restore a MED-V Server


XML files located on the server can be backed up and then restored in case of loss of data on the server.

**To back up a MED-V server**

-   Back up the following files, located in *&lt;InstallDir&gt;\\Servers\\ConfigurationServer*:

    **Note**  
    If the configuration has been changed from the default, the files might be stored in a different location.

     

    -   ClientPolicy.xml

    -   ClientSettings.xml

    -   ConfigurationFiles.xml

    -   OrganizationPolicy.xml

    -   WorkspaceKeys.xml

    **Note**  
    The ServerSettings.xml file can be backed up as well. However, if a specific configuration has been changed (for example, on the original server, the MED-V VMS directory is located in "*C:\\Vms*" and such a directory does not exist on the new server), it can cause an error.

     

**To restore a MED-V server**

1.  Install a new MED-V server.

2.  Copy the backup files to the following directory:

    *&lt;InstallDir&gt;\\Servers\\ConfigurationServer*

3.  Restart the MED-V service.

 

 





