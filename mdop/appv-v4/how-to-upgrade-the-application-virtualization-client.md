---
title: How to Upgrade the Application Virtualization Client
description: How to Upgrade the Application Virtualization Client
author: eavena
ms.assetid: 2a75d8b5-da88-456c-85bb-f5bd3d470f7f
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Upgrade the Application Virtualization Client


You can use the following procedures to upgrade the Application Virtualization (App-V) Desktop Client or the App-V Client for Remote Desktop Services (formerly Terminal Services). You upgrade the client by installing a new version over the previously installed older version. When you upgrade the clients, the installer software automatically preserves and migrates the user’s settings for virtual applications. Administrative rights are required to run the setup program.

**Note**  
During the upgrade to Application Virtualization (App-V) 4.5 or later versions, the permissions to the HKCU registry key are changed. Because of this, users will lose user configurations that were set previously, such as user-configured Disconnected Mode settings. If the user is not actively restricted from configuring client user interface behavior through a permission lockdown, the user can reset these preferences after a publishing refresh.

 

**Important**  
When upgrading to version 4.6 or a later version of the App-V Client, you must use the correct installer for the computer’s operating system, 32-bit or 64-bit. The installation will fail and an error message will be displayed if you use the wrong installer.

 

**To upgrade the Application Virtualization Desktop Client**

1.  Shut down all virtual applications, right-click the App-V Desktop Client icon displayed in the Windows desktop notification area, and select **Exit** to shut down the existing client.

2.  After you have obtained the correct installer archive file and saved it to your computer, double-click it to expand the archive.

3.  Browse to find the setup.exe file, and double-click setup.exe to start the installation.

4.  The wizard checks the system to ensure that all prerequisite software is installed and will prompt you to install any of the following, if missing:

    -   Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)

    -   Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)

    -   Microsoft Application Error Reporting

    **Note**  
    For version 4.6 and higher, the wizard will also install the following software prerequisite:

    -   Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)

     

5.  Click **Install**. Installation progress is displayed, and the status changes from **Pending** to **Installing**. Installation status changes to **Succeeded** as each step is completed successfully.

6.  When the **Application Virtualization Desktop Client** dialog appears and displays a message stating that an older version of the client has been found on the computer, click **Next** to upgrade to the new version.

7.  When the **License Agreement** screen is displayed, read the license agreement, and if you agree, click **I accept the terms in the license agreement**, and then click **Next**.

8.  When the InstallShield Wizard displays the **Ready to Upgrade the Program** dialog screen, click **Upgrade** to begin the upgrade. The next screen indicates that the client is being installed.

    **Warning**  
    If you did not shut down the client program in step 1, you might see a **Files In Use** warning displayed. If this happens, right-click the App-V Client icon displayed in the desktop notification area and select **Exit** to shut down the existing client. Then click **Retry** to continue.

     

9.  When the installation completes successfully, you will be prompted to restart the computer. You need to restart the computer to complete the installation.

    **Caution**  
    If the upgrade fails for any reason, you will need to restart the computer before attempting the upgrade again.

     

**To upgrade the Application Virtualization Client by Using the Command Line**

1.  If upgrading the App-V client using the setup.msi program, ensure that any necessary prerequisite software has been installed.

    **Important**  
    -   For version 4.6 and later of the App-V client, the setup.msi program checks the system and will fail with an error message indicating that installation cannot continue if prerequisite software is not installed.

    -   For App-V version 4.6, command-line parameters cannot be used during an upgrade and will be ignored.

     

2.  The following command-line example uses the setup.msi file to upgrade the App-V Client. You will need to use the correct client installer program depending on whether you are upgrading the App-V Desktop Client or the App-V Client for Remote Desktop Services (formerly Terminal Services).

    **msiexec.exe /i "setup.msi"**

    **Important**  
    The quotation marks are required only when the value contains a space. For consistency, all instances in the preceding example are shown as having quotation marks.

     

**To upgrade the Application Virtualization Client for Remote Desktop Services**

1.  Follow your organization’s standard policies for installing or upgrading applications on the Remote Desktop Session Host (RD Session Host) server. If the system is part of a farm, remove the RD Session Host from the server farm.

2.  To upgrade the App-V Client for Remote Desktop Services (formerly Terminal Services), you must use the command line because you cannot upgrade the client manually on the RD Session Host.

    **Note**  
    In App-V version 4.6 and later, in addition to using the command line to upgrade the client, you can also use a Remote Desktop session. No special parameters are required to start the Remote Desktop session.

     

3.  After the Client for Remote Desktop Services upgrade is complete, restart and log in to the RD Session Host.

4.  After the system is restarted, add the server to the server farm.

    **Caution**  
    If the upgrade fails for any reason, you will need to restart the computer before attempting the upgrade again.

     

## Related topics


[Application Virtualization Deployment and Upgrade Considerations](application-virtualization-deployment-and-upgrade-considerations.md)

 

 





