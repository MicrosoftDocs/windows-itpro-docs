---
title: Modify the Port on Which the AGPM Service Listens
description: Modify the Port on Which the AGPM Service Listens
author: mjcaparas
ms.assetid: a82c6873-e916-4a04-b263-aa612cd6956b
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Modify the Port on Which the AGPM Service Listens


The AGPM Service is a Windows service that acts as a security proxy, managing client access to Group Policy objects (GPOs) in the archive and production environment. By default, the AGPM Service listens on port 4600. You can change this port by modifying the Advanced Group Policy Management (AGPM) archive index file for each archive.

**Note**  
Before modifying the port on which the AGPM Service listens, it is recommended that you back up the AGPM archive index file (gpostate.xml). This file is located in the folder entered as the archive path during the installation of Advanced Group Policy Management - Server. By default, this location of this file is %CommonAppData%\\Microsoft\\AGPM\\gpostate.xml on the AGPM Server. If you do not know which computer hosts the archive, you can follow the procedure for modifying the archive path to display the current archive path. For more information, see [Modify the Archive Path](modify-the-archive-path.md).

 

A user account with access to the AGPM Server (the computer on which the AGPM Service is installed) and the archive index file is required to complete this procedure.

**To modify the port on which the AGPM Service listens**

1.  On the computer hosting the archive, open the archive index file (gpostate.xml) in a text editor.

2.  In the file, search for **agpm:port="4600"**.

3.  Replace **4600** with the port on which the AGPM Service should listen; then, save and close the file.

4.  On the AGPM Server, restart the AGPM Service. (For more information, see [Start and Stop the AGPM Service](start-and-stop-the-agpm-service.md).)

5.  Modify the port in the AGPM Server connection for each Group Policy administrator. (For more information, see [Configure the AGPM Server Connection](configure-the-agpm-server-connection.md).)

6.  Repeat for each archive and AGPM Server.

### Additional references

-   [Managing the AGPM Service](managing-the-agpm-service.md)

 

 





