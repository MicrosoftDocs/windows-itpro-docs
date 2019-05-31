---
title: How to Deploy DaRT 7.0
description: How to Deploy DaRT 7.0
author: msfttracyp
ms.assetid: 30522441-40cb-4eca-99b4-dff758f5c647
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Deploy DaRT 7.0


This topic provides instructions to deploy Microsoft Diagnostics and Recovery Toolset (DaRT) 7 in your environment. The first procedure in this topic assumes that you are installing all functionality on one administrator computer. When you need to deploy or uninstall DaRT on multiple computers, using an electronic software distribution system for example, it might be easier to use command line installation options. Those options are defined in the second procedure in this topic which provides example usage for the available command line options.

**Important**  
Before you install DaRT, ensure that the computer meets the minimum system requirements listed in [DaRT 7.0 Supported Configurations](dart-70-supported-configurations-dart-7.md).

 

**To install DaRT on an administrator computer**

1.  Locate the DaRT installation files that you received as part of your software download.

2.  Double-click the DaRT installation file that corresponds to your system requirements, either 32-bit or 64-bit. The DaRT installation file is named **MSDaRT70.msi**.

3.  Accept the Microsoft Software License Terms, and then click **Next**.

4.  Select the destination folder for installing DaRT, select whether DaRT should be installed for all users or just the current user, and then click **Next**.

5.  Select whether the installation should be **Typical**, **Custom**, or **Complete**, and then click **Next**.

    -   **Typical** installs the tools that are most frequently used. This method is recommended for most users.

    -   **Custom** lets you select the tools that are installed and where they will be installed. This is recommended for advanced users, especially if you are installing different DaRT tools on different helpdesk computers.

    -   **Complete** installs all DaRT tools and requires the most disk space.

    After you have selected your method of installation, click **Next**.

6.  To start the installation, click **Install**.

7.  After the installation is completed successfully, click **Finish** to exit the wizard.

**To install DaRT at the command prompt**

1.  The following example shows how to install all DaRT functionality.

    ``` syntax
    msiexec /i MSDaRT70.msi ADDLOCAL=CommonFiles,MSDaRTHelp,DaRTRecoveryImage,CrashAnalyzer,RemoteViewer 
    ```

2.  The following example shows how to install only the **DaRT Recovery Image Wizard**.

    ``` syntax
    msiexec /i MSDaRT70.msi ADDLOCAL=CommonFiles,MSDaRTHelp,DaRTRecoveryImage
    ```

3.  The following example shows how to install only the Crash Analyzer and the DaRT Remote Connection Viewer.

    ``` syntax
    msiexec /i MSDaRT70.msi ADDLOCAL=CommonFiles,MSDaRTHelp,CrashAnalyzer,RemoteViewer 
    ```

4.  The following example creates a setup log for the Windows Installer. This is valuable for debugging.

    ``` syntax
    msiexec.exe /i MSDaRT70.msi /l*v log.txt 
    ```

**Note**  
You can add /qn or /qb to any of the DaRT installation command prompt options to perform a silent installation.

 

## Related topics


[Deploying DaRT 7.0 to Administrator Computers](deploying-dart-70-to-administrator-computers-dart-7.md)

 

 





