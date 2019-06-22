---
title: Restore the Archive from a Backup
description: Restore the Archive from a Backup
author: mjcaparas
ms.assetid: 49666337-d72c-4e44-99e4-9eb59b2355a9
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Restore the Archive from a Backup


If a disaster occurs and the archive for Advanced Group Policy Management (AGPM) is damaged or destroyed, an AGPM Administrator (Full Control) can restore the archive from a backup copy prepared in advance and then import from the production environment any Group Policy Objects (GPOs) that are not in the archive or for which the version in production is more current than that in the archive. For information about how to restore an archive backup to a different server, see [Move the AGPM Server and the Archive](move-the-agpm-server-and-the-archive.md).

A user account that has access to the AGPM Server (the computer on which the AGPM Service is installed) and to the folder that contains the archive is required to complete this procedure.

**To restore the archive from a backup**

1.  Stop the AGPM Service. For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service-agpm30ops.md).

2.  Remove the existing archive. By default, the archive folder is %ProgramData%\\Microsoft\\AGPM, however the AGPM Administrator who installed Microsoft Advanced Group Policy Management - Server may have entered a different location during setup.

3.  Re-create the archive folder by configuring the archive path, AGPM Service Account, Archive Owner, and listening port. Using the same values as used during the original installation is not necessary. For more information, see [Modify the AGPM Service](modify-the-agpm-service-agpm30ops.md).

4.  Copy the contents of the archive backup to the archive folder, copying the subfolders and files to make sure that each subfolder and file inherits the permissions of the archive folder. Be careful not to overwrite the archive folder.

5.  If you not sure about whether a GPO in the archive backup is more current than the copy of that GPO in production, generate a difference report and compare their settings. For more information, see [Identify Differences Between GPOs, GPO Versions, or Templates](identify-differences-between-gpos-gpo-versions-or-templates-agpm30ops.md).

6.  Restart the AGPM Service. For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service-agpm30ops.md).

### Additional references

-   [Back Up the Archive](back-up-the-archive.md)

-   [Move the AGPM Server and the Archive](move-the-agpm-server-and-the-archive.md)

-   [Managing the Archive](managing-the-archive.md)

 

 





