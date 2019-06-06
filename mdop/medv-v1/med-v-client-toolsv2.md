---
title: MED-V Client Tools
description: MED-V Client Tools
author: dansimp
ms.assetid: ea18d82e-2433-4754-85ac-6eac84bcbb01
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# MED-V Client Tools


MED-V includes the following client tools:

-   [File Transfer Tool](#bkmk-filetransfertool)

-   [Image Downloads](#bkmk-imagedownloads)

-   [Diagnostics](#bkmk-diagnostics)

## <a href="" id="bkmk-filetransfertool"></a>File Transfer Tool


The File Transfer Tool can be used to copy files or folders from the MED-V workspace to the host and vice versa.

**Note**  
The File Transfer Tool is enabled only when the MED-V workspace is running.

 

**To copy files or folders from a MED-V workspace that is currently running**

1.  In the notification area, right-click the MED-V icon.

2.  On the submenu, point to **Tools**, and then click **File Transfer**.

3.  In the **File Transfer** tool, in the **Select transfer direction** field, click one of the following transfer options:

    -   **Copy from My Computer to 'default workspace' Workspace**—Transfer a file or folder from the host to the active MED-V workspace.

    -   **Copy from 'default workspace' Workspace to My Computer**—Transfer a file or folder from the active MED-V workspace to the host.

4.  Select the file or folder to copy by doing one of the following:

    -   In the **File to copy** field, type the full path to the directory where the file or folder to copy is located.

    -   Click **Browse** to browse the directory where the file or folder to copy is located.

5.  Select the **Copy a folder** check box to copy an entire folder.

6.  Select the destination where the file is being transferred by doing one of the following:

    -   In the **Destination** field, type the full path of the directory where the file or folder will be transferred.

    -   Click **Browse** to browse to the directory where the file or folder will be transferred.

7.  Click **Start**.

    The file transfer begins.

## <a href="" id="bkmk-imagedownloads"></a>Image Downloads


When a new image update is available for a MED-V workspace and the MED-V workspace is active, the user receives a message indicating that a new image is ready for download.

**To view available images for download**

1.  In the notification area, right-click the MED-V icon.

2.  On the submenu, point to **Tools**, and then click **Image Downloads**.

    All available image downloads are displayed.

## <a href="" id="bkmk-diagnostics"></a>Diagnostics


The diagnostics tool provides all diagnostic information.

**To view diagnostics**

1.  In the notification area, right-click the MED-V icon.

2.  On the submenu, point to **Help**, and then click **MED-V Diagnostics**.

3.  In the **Diagnostics** tool, review all diagnostic information.

The following functions can be performed using the diagnostic tool:

-   Gather diagnostic logs—Gather the diagnostic logs, and place them on the desktop.

-   Update policy—The MED-V workspace policy automatically connects to the MED-V server to refresh the policy every 15 minutes. However, a user can use this option to perform a manual refresh immediately.

-   Enable or Disable diagnostic mode—Display the virtual machine window. This function is helpful when, for example, you need to see MED-V workspace windows that are not displayed.

-   Browse image store—View all available MED-V workspace images.

 

 





