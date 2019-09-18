---
title: MED-V 2.0 Deployment Overview
description: MED-V 2.0 Deployment Overview
author: dansimp
ms.assetid: 0b8998ea-c46f-4c81-a304-f380b2ed7cf8
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# MED-V 2.0 Deployment Overview


This section provides general information and instructions about how to install and deploy Microsoft Enterprise Desktop Virtualization (MED-V) 2.0.

## Overview


MED-V 2.0 is based on an application model, where the same methods that you use to deploy applications can be used to deploy and manage MED-V. A deployed MED-V solution includes two components: the MED-V Host Agent and Guest Agent. The MED-V Host Agent is installed on the Windows 7 desktop and the MED-V Guest Agent is installed on Windows XP inside the MED-V workspace. MED-V also includes a MED-V Workspace Packager that provides the information and tools necessary for creating and configuring MED-V workspaces.

**Important**  
MED-V only supports the installation of the MED-V Workspace Packager, the MED-V Host Agent, and the MED-V workspace for all users. Installing MED-V for the current user only by selecting **ALLUSERS=””** causes failures in the installation of the components and in the setup of the MED-V workspace.



### The MED-V Installation Files

MED-V includes the following installation files, required for running MED-V:

**The MED-V Host Agent Installation File**

The Host Agent installation file is named MED-V\_HostAgent\_Setup.exe. This file is distributed and installed on each relevant end-user computer as part of your enterprise-wide deployment of MED-V.

**The MED-V Workspace Packager Installation File**

The MED-V Workspace Packager installation file is named MED-V\_WorkspacePackager\_Setup.exe. Use this file to install the MED-V Workspace Packager on a computer where you have administrator rights and permissions. The desktop administrator uses the MED-V Workspace Packager to create and manage MED-V workspaces.

**Note**  
The MED-V Guest Agent is installed automatically during first time setup.



### The MED-V Deployment Process

The following is a high-level overview of the MED-V installation and deployment process:

1.  Install the MED-V Workspace Packager on the computer where you have administrative credentials and that you will be using to build the MED-V workspace packages. For more information, see [How to Install the MED-V Workspace Packager](how-to-install-the-med-v-workspace-packager.md).

2.  Prepare your MED-V image and create your MED-V workspace packages by using the MED-V Workspace Packager. For more information, see [Operations for MED-V](operations-for-med-v.md).

3.  Deploy the required MED-V components throughout your enterprise. The required components of MED-V are Windows Virtual PC, the MED-V Host Agent, and the MED-V workspace.

**Important**  
Installation of the MED-V components requires administrative credentials. If an end user is installing MED-V, they are prompted to enter administrative credentials. Alternately, administrative credentials can be provided in context if you are installing by using an electronic software distribution (ESD) system.



### The MED-V Components

The MED-V components that you deploy throughout your enterprise consist of the following:

**Windows Virtual PC**

MED-V functions inside Windows Virtual PC images for its compatibility solution. Windows Virtual PC and the update for Windows 7 (KB977206) are required. For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

**The MED-V Host Agent Installation File**

MED-V\_HostAgent\_Setup.exe.

**The MED-V Workspace Installation Files**

The MED-V workspace installation files are created when you build your MED-V workspace package that consists of the following:

A setup.exe executable program that executes the MED-V workspace installation

A &lt;MED-V\_workspace\_name&gt;.msi installer

A &lt;VHD\_filename&gt;.medv file, which is the compressed virtual hard disk

The files for configuration settings (&lt;workspace\_name&gt;.reg and &lt;workspace\_name&gt;.ps1)

To deploy MED-V, copy all the required installation files to the host computer or to a share that can be accessed by the host computer. Run the component installation files for Windows Virtual PC, the MED-V Host Agent, and the MED-V workspace. Then start the MED-V Host Agent to complete the first time setup of MED-V.

You can perform the installation manually. However, we recommend that you use an electronic software distribution method to automate the deployment of the components. For more information, see [How to Deploy a MED-V Workspace Through an Electronic Software Distribution System](how-to-deploy-a-med-v-workspace-through-an-electronic-software-distribution-system.md).

**Note**  
For information about available command-line arguments to control install options, see [Command-Line Options for MED-V Installation Files](command-line-options-for-med-v-installation-files.md).



## Deployment Steps


When you deploy MED-V throughout your enterprise, there are two main considerations: installation and first time setup.

### Installation

1.  **Windows Virtual PC** - During installation, MED-V checks for Windows Virtual PC and its required update for Windows 7 (KB977206). For more information, see [Configure Installation Prerequisites](configure-installation-prerequisites.md).

    You can install these as part of the Windows 7 installations before you install MED-V, or you can install them as part of the MED-V distribution. However, MED-V does not include a mechanism for their deployment; they must be deployed by using an electronic software distribution (ESD) system or as part of the Windows 7 image.

    **Important**  
    When you install the MED-V components by using a batch file, a best practice is to specify that Windows Virtual PC and the Windows Virtual PC hotfix are installed after the MED-V Host Agent and the MED-V workspace package files. This means that Windows Update will not cause any interference with the installation process by requiring a restart.



~~~
**Note**  
After you install Windows Virtual PC, the computer must be restarted.
~~~



2. **MED-V Host Agent** – Install the MED-V Host Agent on the Windows 7 computer where MED-V will be run. This must be installed before installing the MED-V workspace and checks to make sure that Windows Virtual PC is installed.

3. **MED-V workspace** – You create the files that are required in this installation by using the MED-V Workspace Packager: the setup.exe, .medv, and .msi files. To install the MED-V workspace, run setup.exe; this triggers the other files as required. The installation places an entry in the registry under the local machine run key to start the MED-V Host Agent, which always runs MED-V when Windows is started.

   **Important**  
   The installation of the MED-V workspace can be run interactively by the end user or silently through an electronic software distribution system. Installation of the MED-V workspace requires administrative credentials, so end users must be administrators of their computers to install the MED-V workspace. Alternately, an electronic software distribution system typically runs in the system context and has sufficient permissions.



~~~
**Tip**  
Because of problems that can occur when you install MED-V from a network location, we recommend that you copy the MED-V workspace setup files locally and then run setup.exe.
~~~



### First Time Setup

After MED-V and its required components are installed, MED-V must be configured. The configuration of MED-V is known as first time setup. By using the **MED-V Workspace Packager**, you can configure first time setup to run silently or interactively. First time setup of MED-V requires end users to enter their password to authenticate to the MED-V workspace, but otherwise can be almost invisible to the user. Notifications are shown in the notification area, such as when first time setup is complete and applications are ready. The following are the actions that occur during first time setup of MED-V:

1.  The virtual hard disk must be configured. Mini-Setup runs and expands the Windows XP image. Typically, this occurs in a hidden window, but MED-V can be configured to display during this configuration.

2.  After Mini-Setup finishes, you can run commands that you must have for additional configuration, such as installing ESD software or other applications, or configuring the image. These can be called in the Sysprep.inf file, but are not required there. For more information, see [Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md).

3.  Ftscompletion.exe is run as the last step in configuration. This process completes the MED-V configuration, adds the user to the RDP group to let them access the MED-V workspace, copies logs, signals MED-V that the MED-V workspace is ready, and then restarts the MED-V workspace. This process can also add the user as an administrator of the MED-V workspace if this was configured when the MED-V workspace was created. Ftscompletion.exe is typically called through the Sysprep,inf file but can also be run through another method, such as a script. However, Ftscompletion.exe must be the last action that is performed when the workstation is configured. For more information, see [Configuring a Windows Virtual PC Image for MED-V](configuring-a-windows-virtual-pc-image-for-med-v.md).

4.  After the MED-V workspace is restarted by Ftscompletion.exe, the end user is logged on. If they did not save their password during first time setup, they are prompted for it again. The MED-V workspace is then started and configured for the user. Configuration includes applying Group Policy.

    We recommend that you apply only those policies that make sense in an application compatibility environment for Windows XP. For example, desktop personalization policies do not typically need to be applied and should be disabled. For more information about how to allow only local profiles, see [Group Policy Settings for Roaming User Profiles](https://go.microsoft.com/fwlink/?LinkId=205072) (https://go.microsoft.com/fwlink/?LinkId=205072).

After first time setup is complete, the end user is notified that the published applications are ready. They are then able to access the applications installed in the MED-V workspace from their **Start** menu.

## Related topics


[Prepare the Deployment Environment for MED-V](prepare-the-deployment-environment-for-med-v.md)

[Deployment of MED-V](deployment-of-med-v.md)









