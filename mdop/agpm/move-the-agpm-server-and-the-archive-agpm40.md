---
title: Move the AGPM Server and the Archive
description: Move the AGPM Server and the Archive
author: mjcaparas
ms.assetid: 9ec48d3a-c293-45f0-8939-32ccdc062303
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Move the AGPM Server and the Archive


If you are replacing the AGPM Server and the server on which the archive is hosted, you must move the AGPM Service and the archive. If you prefer, you can move the AGPM Service and the archive separately.

**Note**  
-   The AGPM Server is the computer that hosts the AGPM Service and the computer on which Microsoft Advanced Group Policy Management – Server is installed.

-   By default, the archive is hosted on the AGPM Server, but you can specify an archive path to host it on another server instead.

 

A user account that is a member of the Domain Admins group and has access to the previous and new AGPM Servers is required to complete this procedure. Additionally, you must provide credentials for the AGPM Service Account to be used by the new AGPM Server to complete this procedure.

**To move the AGPM Service and the archive to a different server or servers**

1.  Back up the archive. For more information, see [Back Up the Archive](back-up-the-archive-agpm40.md).

2.  Move the AGPM Service:

    1.  Stop the AGPM Service. For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service-agpm40.md).

    2.  Install Microsoft Advanced Group Policy Management - Server on the new server that will host the AGPM Service. During this process, you specify the new archive path, the location for the archive in relation to the AGPM Server. For more information, see [Step-by-Step Guide for Microsoft Advanced Group Policy Management 4.0](https://go.microsoft.com/fwlink/?LinkId=153505) (https://go.microsoft.com/fwlink/?LinkId=153505) and [Planning Guide for Microsoft Advanced Group Policy Management](https://go.microsoft.com/fwlink/?LinkId=156883) (https://go.microsoft.com/fwlink/?LinkId=156883).

    3.  Either an AGPM Administrator (Full Control) must configure the AGPM Server connection for all Group Policy administrators who will use the new AGPM Server and remove the connection for the old AGPM Server, or else each Group Policy administrator must manually configure the new AGPM Server connection and remove the old AGPM Server connection for the AGPM snap-in on their computer. For more information, see [Configure AGPM Server Connections](configure-agpm-server-connections-agpm40.md).

        **Note**  
        As a best practice, you should uninstall Microsoft Advanced Group Policy Management – Server from the previous AGPM Server. This will ensure that the AGPM Service cannot be unintentionally restarted on that server and potentially cause confusion if any AGPM Server connections to it remain.

         

3.  Copy the archive from the backup to the new server that will host the archive. For more information, see [Restore the Archive from a Backup](restore-the-archive-from-a-backup-agpm40.md).

    **Important**  
    If you moved the archive without moving the AGPM Service at the same time:

    1.  You must change the archive path to point to the new location for the archive in relation to the AGPM Server. For more information, see [Modify the AGPM Service](modify-the-agpm-service-agpm40.md).

    2.  You must re-enter and confirm the password on the **Domain Delegation** tab. For more information, see [Configure E-Mail Notification](configure-e-mail-notification-agpm40.md).

     

### Additional references

-   [Back Up the Archive](back-up-the-archive-agpm40.md)

-   [Restore the Archive from a Backup](restore-the-archive-from-a-backup-agpm40.md)

-   [Configure AGPM Server Connections](configure-agpm-server-connections-agpm40.md)

-   [Modify the AGPM Service](modify-the-agpm-service-agpm40.md)

-   [Step-by-Step Guide for Microsoft Advanced Group Policy Management 4.0](https://go.microsoft.com/fwlink/?LinkId=153505) (https://go.microsoft.com/fwlink/?LinkId=153505)

-   [Planning Guide for Microsoft Advanced Group Policy Management](https://go.microsoft.com/fwlink/?LinkId=156883) (https://go.microsoft.com/fwlink/?LinkId=156883)

-   [Performing AGPM Administrator Tasks](performing-agpm-administrator-tasks-agpm40.md)

 

 





