---
title: How to Sequence a Package by Using PowerShell
description: How to Sequence a Package by Using PowerShell
author: dansimp
ms.assetid: b41feed9-d1c5-48a3-940c-9a21d594f4f8
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Sequence a Package by Using PowerShell


Use the following procedure to create a new App-V 5.0 package using PowerShell.

**Note**  
Before you use this procedure you must copy the associated installer files to the computer running the sequencer and you have read and understand the sequencer section of [Planning for the App-V 5.0 Sequencer and Client Deployment](planning-for-the-app-v-50-sequencer-and-client-deployment.md).

 

**To create a new virtual application using PowerShell**

1.  Install the App-V 5.0 sequencer. For more information about installing the sequencer see [How to Install the Sequencer](how-to-install-the-sequencer-beta-gb18030.md).

2.  To open a PowerShell console click **Start** and type **PowerShell**. Right-click **Windows PowerShell** and select **Run as Administrator**.

3.  Using the PowerShell console, type the following: **import-module appvsequencer**.

4.  To create a package, use the **New-AppvSequencerPackage** cmdlet. The following parameters are required to create a package:

    -   **Name** - specifies the name of the package.

    -   **PrimaryVirtualApplicationDirectory** - specifies the path to the directory that will be used to install the application. This path must exist.

    -   **Installer** - specifies the path to the associated application installer.

    -   **Path** - specifies the output directory for the package.

    For example:

    **New-AppvSequencerPackage –Name &lt;name of Package&gt; -PrimaryVirtualApplicationDirectory &lt;path to the package root&gt; -Installer &lt;path to the installer executable&gt; -OutputPath &lt;directory of the output path&gt;**

    Wait for the sequencer to create the package. Creating a package using PowerShell can take time. If the package was not created successfully an error will be returned.

    The following list displays additional optional parameters that can be used with **New-AppvSequencerPackage** cmdlet:

    -   AcceleratorFilePath – specifies the path to the accelerator .cab file to generate a package.

    -   InstalledFilesPath - specifies the path to where the local installed files of the application are saved.

    -   InstallMediaPath - specifies the path to where the installation media is

    -   TemplateFilePath - specifies the path to a template file if you want to customize the sequencing process.

    -   FullLoad - specifies that the package must be fully downloaded to the computer running the App-V 5.0 before it can be opened.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issu**e? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Administering App-V by Using PowerShell](administering-app-v-by-using-powershell.md)

 

 





