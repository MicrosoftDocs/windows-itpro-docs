---
title: How to Share Folders Between the Host and the MED-V Workspace
description: How to Share Folders Between the Host and the MED-V Workspace
author: dansimp
ms.assetid: 3cb295f2-c07e-4ee6-aa3c-ce4c8c45c191
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Share Folders Between the Host and the MED-V Workspace


You can share folders between the host and the MED-V workspace. The shared folders can be stored on the following:

-   An external computer on the network

-   The host computer

The following procedures demonstrate how to share folders between the host and the MED-V workspace.

**To share folders located on the network**

1.  Configure MED-V in full desktop mode.

2.  In MED-V management, on the Network tab, click **Use different IP address than host (Bridge)**.

3.  Do the following on the host computer:

    1.  In Control Panel, click **View network status and tasks**, and set **Network discovery** to **On**.

    2.  On the Start menu, right-click **Computer**, and click **Map network drive**.

    3.  In the **Map Network Drive** dialog box, in the **Drive** field, select a drive.

        **Note**  
        Ensure that the same drive letter is not in use on both computers.

         

    4.  Click **Browse**.

    5.  In the **Browse For Folder** dialog box, browse to the shared drive, and click **OK**.

    6.  Click **Finish**.

4.  Repeat step 3 in the MED-V workspace. Point to the same drive as on the host computer.

**To share folders located on the host**

1.  Configure the folder to be shared with the appropriate permissions.

2.  From the MED-V workspace, go to **My network places** and locate the shared folder.

3.  From the MED-V workspace, locate the shared folder.

**Note**  
Ensure that both the host and MED-V workspace computers are in the same domain or workgroup.

 

 

 





