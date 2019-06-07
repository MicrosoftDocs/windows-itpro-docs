---
title: How to sequence a package by using Windows PowerShell (Windows 10)
description: How to sequence a package by using Windows PowerShell
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: lomayor
---


# How to Sequence a Package by using Windows PowerShell

**Applies to**
-   Windows 10, version 1607

Use the following procedure to create a new App-V package using Windows PowerShell.

> [!NOTE]   
> Before you use this procedure you must copy the associated installer files to the computer running the sequencer and you have read and understand the sequencer section of [Planning for the App-V Sequencer and Client Deployment](appv-planning-for-sequencer-and-client-deployment.md).

 
**To create a new virtual application by using Windows PowerShell**

1.  Install the App-V sequencer. For more information about installing the sequencer see [How to Install the Sequencer](appv-install-the-sequencer.md).

2.  Click **Start** and type **Windows PowerShell**. Right-click **Windows PowerShell**, and select **Run as Administrator**.

3.  Using the Windows PowerShell console, type the following: **import-module appvsequencer**.

4.  To create a package, use the **New-AppvSequencerPackage** cmdlet. The following parameters are required to create a package:

    -   **Name** - specifies the name of the package.

    -   **PrimaryVirtualApplicationDirectory** - specifies the path to the directory that will be used to install the application. This path must exist.

    -   **Installer** - specifies the path to the associated application installer.

    -   **Path** - specifies the output directory for the package.

    For example:

    ```
    New-AppvSequencerPackage –Name <name of package> -PrimaryVirtualApplicationDirectory <path to the package root> -Installer <path to the installer executable> -OutputPath <directory of the output path>
    ```


Wait for the sequencer to create the package. Creating a package by using Windows PowerShell can take time. If the package was not created successfully, an error will be returned.

The following list displays additional optional parameters that can be used with **New-AppvSequencerPackage** cmdlet:

-   AcceleratorFilePath – specifies the path to the accelerator .cab file to generate a package.

-   InstalledFilesPath - specifies the path to where the local installed files of the application are saved.

-   InstallMediaPath - specifies the path of the installation media

-   TemplateFilePath - specifies the path to a template file if you want to customize the sequencing process.

-   FullLoad - specifies that the package must be fully downloaded to the computer running the App-V before it can be opened.

In Windows 10, version 1703, running the new-appvsequencerpackage or the update-appvsequencepackage cmdlets automatically captures and stores all of your customizations as an App-V project template. If you want to make changes to this package later, your customizations are automatically loaded from this template file. 

>[!IMPORTANT]
>If you have an auto-saved template and you attempt to load another template through the _TemplateFilePath_ parameter, the customization value from the parameter will override the auto-saved template. 

## Related topics

- [Administering App-V by using Windows PowerShell](appv-administering-appv-with-powershell.md)



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).
