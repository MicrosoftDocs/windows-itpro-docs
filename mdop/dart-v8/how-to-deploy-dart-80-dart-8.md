---
title: How to Deploy DaRT 8.0
description: How to Deploy DaRT 8.0
author: msfttracyp
ms.assetid: ab772e7a-c02f-4847-acdf-8bd362769a77
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Deploy DaRT 8.0


The following instructions explain how to deploy Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 in your environment. To get the DaRT software, see [How to Get MDOP](https://go.microsoft.com/fwlink/?LinkId=322049). It is assumed that you are installing all functionality on one administrator computer. If you need to deploy or uninstall DaRT 8.0 on multiple computers, using an electronic software distribution system, for example, it might be easier to use command line installation options. Descriptions and examples of the available command line options are provided in this section.

**Important**  
Before you install DaRT, see [DaRT 8.0 Supported Configurations](dart-80-supported-configurations-dart-8.md) to ensure that you have installed all of the prerequisite software and that the computer meets the minimum system requirements. The computer onto which you install DaRT must be running Windows 8 or Windows Server 2012.

 

You can install DaRT using one of two different configurations:

-   Install DaRT and all of the DaRT tools on the administrator computer.

-   Install on the administrator computer only the tools that you need to create the DaRT recovery image, and then install the **Remote Connection Viewer** and, optionally, **Crash Analyzer** on a help desk computer.

The DaRT installation file is available in both 32-bit and 64-bit versions. Install the version that matches the architecture of the computer on which you are running the DaRT Recovery Image wizard, not the computer architecture of the recovery image that you are creating.

You can use either version of the DaRT installation file to create a recovery image for either 32-bit or 64-bit computers, but you cannot create one recovery image for both 32-bit and 64-bit computers.

**To install DaRT and all DaRT tools on an administrator computer**

1.  Download the 32-bit or 64-bit version of the DaRT 8.0 installer file. Choose the architecture that matches the computer on which you are installing DaRT and running the DaRT Recovery Image wizard.

2.  From the folder into which you downloaded DaRT 8.0, run the **MSDaRT80.msi** installation file that corresponds to your system requirements.

3.  On the **Welcome to the Microsoft DaRT 8.0 Setup Wizard** page, click **Next**.

4.  Accept the Microsoft Software License Terms, and then click **Next**.

5.  On the **Microsoft Update** page, select **Use Microsoft Update when I check for updates**, and then click **Next**.

6.  On the **Select Installation Folder** page, select a folder, or click **Next** to install DaRT in the default installation location.

7.  On the **Setup Options** page, select the DaRT features that you want to install, or click **Next** to install DaRT with all of the features.

8.  To start the installation, click **Install**.

9.  After the installation has completed successfully, click **Finish** to exit the wizard.

## To install DaRT and all DaRT tools on an administrator computer by using a command prompt


When you install or uninstall DaRT, you have the option of running the installation files at the command prompt. This section describes some examples of different options that you can specify when you install or uninstall DaRT at the command prompt.

The following example shows how to install all DaRT functionality.

``` syntax
msiexec /i MSDaRT80.msi ADDLOCAL=CommonFiles, DaRTRecoveryImage,CrashAnalyzer,RemoteViewer 
```

The following example shows how to install only the DaRT Recovery Image wizard.

``` syntax
msiexec /i MSDaRT80.msi ADDLOCAL=CommonFiles, ,DaRTRecoveryImage
```

The following example shows how to install only the Crash Analyzer and the DaRT Remote Connection Viewer.

``` syntax
msiexec /i MSDaRT80.msi ADDLOCAL=CommonFiles,CrashAnalyzer,RemoteViewer 
```

The following example creates a setup log for the Windows Installer. This is valuable for debugging.

``` syntax
msiexec.exe /i MSDaRT80.msi /l*v log.txt 
```

**Note**  
You can add /qn or /qb to perform a silent installation.

 

**To validate the DaRT installation**

1.  Click **Start**, and select **Diagnostics and Recovery Toolset**.

    The **Diagnostics and Recovery Toolset** window opens.

2.  Check that all of the DaRT tools that you selected for installation were successfully installed.

## Related topics


[Deploying DaRT 8.0 to Administrator Computers](deploying-dart-80-to-administrator-computers-dart-8.md)

 

 





