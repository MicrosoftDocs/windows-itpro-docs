---
title: How to Install MED-V Client and MED-V Management Console
description: How to Install MED-V Client and MED-V Management Console
author: dansimp
ms.assetid: 8a5f3010-3a50-487e-99d8-e352e5cb51c6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Install MED-V Client and MED-V Management Console


The following MED-V components are included in the client .msi package:

-   MED-V client—The MED-V software that must be installed on client computers for running MED-V workspaces.

-   MED-V management console—The administrative tool that administrators can use to create and maintain images, MED-V workspaces, and policies.

The MED-V management console and the MED-V client are both installed from the MED-V client .msi package. The MED-V client, however, can be installed independently without the MED-V management console by clearing the **Install the MED-V Management application** check box during installation.

**Note**  
The MED-V client and MED-V management console can only be installed on Windows 7-, Windows Vista-, and Windows XP-based computers. They cannot be installed on server products.

 

**Note**  
Do not install the MED-V client using the Windows **runas** command.

 

**To install the MED-V client**

1.  Log in as a user with local administrator rights on the local computer.

2.  Run the MED-V .msi package.

    The MED-V .msi package is called *MED-V\_x.msi*, where *x* is the version number.

    For example, *MED-V\_1.0.65.msi*.

3.  When the **InstallShield Wizard Welcome** screen appears, click **Next**.

4.  On the **License Agreement** screen, read the license agreement, click **I accept the terms in the license agreement**, and click **Next**.

    The **Destination Folder** screen appears, with the default installation folder displayed.

    The default installation folder is the directory where the operating system is installed.

    -   To change the folder where MED-V should be installed, click **Change**, and browse to an existing folder.

5.  Click **Next**.

6.  On the **MED-V Settings** screen, configure the MED-V installation as follows:

    -   Select the **Install the MED-V management application** check box to include the management component in the installation.

        **Note**  
        Enterprise Desktop Virtualization administrators should install the MED-V management application. This application is required for configuring desktop images and MED-V workspaces.

         

    -   Select the **Load MED-V when Windows starts** check box to start MED-V automatically on startup.

    -   Select the **Add a MED-V shortcut to my desktop** check box to create a MED-V shortcut on your desktop.

    -   In the **Server address** field, type the server address.

    -   In the **Server port** field, type the server's port.

    -   Select the **Server requires encrypted connections (https)** check box to work with https.

    -   The default virtual machine images folder is displayed. The default installation folder is *%systemdrive%\\MED-V Images\\*. To change the folder where MED-V should be installed, click **Change**, and browse to an existing folder.

7.  Click **Next**.

8.  On the **Ready to Install the Program** screen, click **Install**.

    The MED-V client installation starts. This can take several minutes, and the screen might not display text. During installation, several progress screens appear. If a message appears, follow the instructions provided.

    Upon successful installation, the **InstallShield Wizard Completed** screen appears.

9.  Click **Finish** to close the wizard.

## Related topics


[Supported Configurations](supported-configurationsmedv-orientation.md)

[Installation and Upgrade Checklists](installation-and-upgrade-checklists.md)

 

 





