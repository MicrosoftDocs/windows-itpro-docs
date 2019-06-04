---
title: How to create a package accelerator by using Windows PowerShell (Windows 10)
description: How to create a package accelerator with Windows PowerShell.
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 07/10/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# How to create a package accelerator by using Windows PowerShell

>Applies to: Windows 10, version 1607

App-V Package Accelerators automatically sequence large, complex applications. Also, when you apply an App-V Package Accelerator, you don't have to manually install an application to create the virtualized package.

## Create a package accelerator

1. Install the App-V sequencer. For more information about installing the sequencer, see [How to install the sequencer](appv-install-the-sequencer.md).
2. To open a Windows PowerShell console, select **Start** and enter **PowerShell**. Right-click **Windows PowerShell** and select **Run as Administrator**.
3. Make sure that you have the .appv package to create an accelerator from the installation media or installation files. You can also optionally use a readme file for the accelerator's users to reference.
4. Enter the **New-AppvPackageAccelerator** cmdlet.

    The following parameters are required to use the package accelerator cmdlet:

    - *InstalledFilesPath* specifies the application installation path.
    - *Installer* specifies the path to the application installer media.
    - *InputPackagePath* specifies the path to the .appv package.
    - *Path* specifies the output directory for the package.

    The following example cmdlet shows how you can create a package accelerator with an .appv package and the installation media:

    ```PowerShell
    New-AppvPackageAccelerator -InputPackagePath <path to the .appv file> -Installer <path to the installer executable> -Path <directory of the output path>
    ```

    You can also use the following optional parameter with the **New-AppvPackageAccelerator** cmdlet:

    - *AcceleratorDescriptionFile* specifies the path to user-created package accelerator instructions. The package accelerator instructions are **.txt** or **.rtf** description files that will be included in the package created by the package accelerator.





## Related topics

- [Administering App-V by using Windows PowerShell](appv-administering-appv-with-powershell.md)
