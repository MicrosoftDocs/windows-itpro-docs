---
title: How to Deploy a MED-V Workspace Manually
description: How to Deploy a MED-V Workspace Manually
author: levinec
ms.assetid: 94bfb209-2230-49b6-bb40-9c6ab088dbf4
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Deploy a MED-V Workspace Manually


In some instances, you might want to deploy your MED-V workspace manually, for example, if your company does not use an electronic software distribution system to deploy applications.

This section provides instruction about how to manually deploy a MED-V workspace.

**To deploy a MED-V workspace manually**

1.  Copy all prerequisite applications and the MED-V workspace package files to a shared drive or to a DVD. The following is a list of the required applications and files.

    -   **Windows Virtual PC**. For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

    -   **Windows Virtual PC Additions and Updates**. For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

    -   **MED-V Host Agent Installation File** – installs the Host Agent (MED-V\_HostAgent\_Setup installation file).

        **Warning**  
        Close Internet Explorer before you install the MED-V Host Agent, otherwise conflicts can occur later with URL redirection. You can also do this by specifying a computer restart during a distribution.

         

    -   **MED-V Workspace Installer, VHD, and Setup Executable** – created with the **MED-V Workspace Packager**. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).

        **Important**  
        The compressed VHD file (.medv) and the Setup executable program (setup.exe) must be in the same folder as the MED-V workspace installer.

         

2.  Install the following in the order listed. The end user can perform this task manually or you can create a script to install the following:

    -   Windows Virtual PC and the Windows Virtual PC additions and updates. A computer restart is required.

    -   The MED-V Host Agent.

        **Note**  
        If it is running, Internet Explorer must be restarted before the installation of the MED-V Host Agent can finish.

         

    -   The MED-V workspace package.

        Install the MED-V workspace by running the setup.exe program that is included in the MED-V workspace package files.

3.  Complete first time setup.

    After the MED-V workspace is installed, you have the option of starting MED-V. This starts the MED-V Host Agent. You can either start MED-V at that time, or start the MED-V Host Agent later to complete first time setup.

    To start the MED-V Host Agent, click **Start**, click **All Programs**, click **Microsoft Enterprise Desktop Virtualization**, and then click **MED-V Host Agent**.

## Related topics


[How to Deploy a MED-V Workspace Through an Electronic Software Distribution System](how-to-deploy-a-med-v-workspace-through-an-electronic-software-distribution-system.md)

[How to Deploy a MED-V Workspace in a Windows 7 Image](how-to-deploy-a-med-v-workspace-in-a-windows-7-image.md)

[Deploying the MED-V Workspace Package](deploying-the-med-v-workspace-package.md)

 

 





