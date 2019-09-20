---
title: Back Up the Archive
description: Back Up the Archive
author: dansimp
ms.assetid: 538d85eb-3596-4c1d-bbd7-26bc28857c28
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Back Up the Archive


To help in the recovery of the archive for Advanced Group Policy Management (AGPM) if there is a disaster, an AGPM Administrator (Full Control) should back up the archive frequently. By default, the archive is created in %ProgramData%\\Microsoft\\AGPM. However, you can specify a different path during the setup of Microsoft Advanced Group Policy Management - Server.

A user account that has access to both the AGPM Server—the computer on which the AGPM Service is installed—and to the folder that contains the archive is required to complete this procedure.

**To back up the archive**

1.  Stop the AGPM Service. For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service-agpm40.md).

2.  Back up the archive folder by using Windows Explorer, Xcopy, Windows Server® Backup, or another backup tool. Make sure that you back up hidden, system, and read-only files.

3.  Store the archive backup in a secure location.

4.  Restart the AGPM Service. For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service-agpm40.md).

**Note**  
If an AGPM Administrator backs up the archive infrequently, the Group Policy Objects (GPOs) in the archive backup will not be current. To better ensure that the archive backup is current, back up the archive as part of your organization’s daily backup strategy.

 

### Additional references

-   [Restore the Archive from a Backup](restore-the-archive-from-a-backup-agpm40.md)

-   [Move the AGPM Server and the Archive](move-the-agpm-server-and-the-archive-agpm40.md)

-   [Managing the Archive](managing-the-archive-agpm40.md)

 

 





