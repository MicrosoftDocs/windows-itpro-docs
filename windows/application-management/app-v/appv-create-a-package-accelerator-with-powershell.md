---
title: How to create a package accelerator by using Windows PowerShell (Windows 10/11)
description: Learn how to create an App-v Package Accelerator by using Windows PowerShell. App-V Package Accelerators automatically sequence large, complex applications.
author: aczechowski
ms.prod: windows-client
ms.date: 07/10/2018
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.topic: article
ms.technology: itpro-apps
---
# How to create a package accelerator by using Windows PowerShell

[!INCLUDE [Applies to Windows client versions](../includes/applies-to-windows-client-versions.md)]

App-V Package Accelerators automatically sequence large, complex applications. Also, when you apply an App-V Package Accelerator, you don't have to manually install an application to create the virtualized package.

## Create a package accelerator

1. Install the App-V sequencer. For more information about installing the sequencer, see [How to install the sequencer](appv-install-the-sequencer.md).
2. To open a Windows PowerShell console, select **Start** and enter **PowerShell**. Right-click **Windows PowerShell** and select **Run as Administrator**.
3. Ensure there's the App-V package to create an accelerator from the installation media or installation files. You can also optionally use a readme file for the accelerator's users to reference.
4. Enter the **New-AppvPackageAccelerator** cmdlet.

    The following parameters are required to use the package accelerator cmdlet:

   - *InstalledFilesPath* specifies the application installation path.
   - *Installer* specifies the path to the application installer media.
   - *InputPackagePath* specifies the path to the App-V package.
   - *Path* specifies the output directory for the package.

     The following example cmdlet shows how you can create a package accelerator with the App-V package and the installation media:

     ```PowerShell
     New-AppvPackageAccelerator -InputPackagePath <path to the .appv file> -Installer <path to the installer executable> -Path <directory of the output path>
     ```

     You can also use the following optional parameter with the **New-AppvPackageAccelerator** cmdlet:

   - *AcceleratorDescriptionFile* specifies the path to user-created package accelerator instructions. The package accelerator instructions are **.txt** or **.rtf** description files that will be included in the package created by the package accelerator.





## Related articles

- [Administering App-V by using Windows PowerShell](appv-administering-appv-with-powershell.md)
