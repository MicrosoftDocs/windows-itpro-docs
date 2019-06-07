---
title: How to convert a package created in a previous version of App-V (Windows 10)
description: How to convert a package created in a previous version of App-V.
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
# How to convert a package created in a previous version of App-V

>Applies to: Windows 10, version 1607

You can use the package converter utility to upgrade virtual application packages created by previous versions of App-V. This section will tell you how to convert existing virtual application packages for upgrade.

>[!NOTE]  
>If you are running a computer with a 64-bit architecture, you must use the x86 version of Windows PowerShell.

The package converter can only directly convert packages created by an App-V sequencer version 4.5 or later. Packages created with an App-V version earlier than 4.5 must be upgraded to at least App-V 4.5 before conversion.

>[!IMPORTANT]
>In order to keep your files secure, you must configure the package converter to always save the package ingredients file to a secure location and directory that can only be accessed by an administrator. When you deploy the package, you should either save the package to a secure location or make sure that no other users can sign in during the conversion process.

## App-V 4.6 installation folder is redirected to virtual file system root

When you convert packages from App-V 4.6 to App-V for Windows 10, the App-V for Windows 10 package can access the hardcoded drive that you were required to use when you created 4.6 packages. The drive letter will be the drive you selected as the installation drive on the 4.6 sequencing machine. (The default drive is drive Q.)

The App-V package converter will save the App-V 4.6 installation root folder and short folder names in the FilesystemMetadata.xml file in the **Filesystem** element. When the App-V for Windows 10 client creates the virtual process, it will map requests from the App-V 4.6 installation root to the virtual file system root.

## Getting started

1. Install the App-V Sequencer on a computer in your environment. For information about how to install the Sequencer, see [How to install the Sequencer](appv-install-the-sequencer.md).

2. You can enter the following cmdlets to check or convert packages:

   - **Test-AppvLegacyPackage**—This cmdlet checks packages. It will return information about any failures with the package such as missing **.sft** files, an invalid source, **.osd** file errors, or invalid package version. This cmdlet will not parse the **.sft** file or do any in-depth validation. For information about options and basic functionality for this cmdlet, using Windows PowerShell, enter the following cmdlet:

        ```PowerShell
        Test-AppvLegacyPackage -?
        ```

   - **ConvertFrom-AppvLegacyPackage**—This cmdlet converts packages from legacy versions to updated versions. To convert an existing package, enter the following cmdlet:

        ```PowerShell
        ConvertFrom-AppvLegacyPackage C:\contentStore C:\convertedPackages
        ```

     In this cmdlet, `C:\contentStore` represents the location of the existing package and `C:\convertedPackages` is the output directory to which the resulting App-V for Windows 10 virtual application package file will be saved. By default, if you do not specify a new name, the old package name will be used.

     Additionally, the package converter optimizes performance of packages in App-V for Windows 10 by setting the package to stream fault the App-V package.  This is more performant than the primary feature block and fully downloading the package. The flag **DownloadFullPackageOnFirstLaunch** allows you to convert the package and set the package to be fully downloaded by default.

     >[!NOTE]  
     >Before you specify the output directory, you must create the output directory.

### Advanced Conversion Tips

- Piping—Windows PowerShell supports piping. Piping allows you to enter cmdlets like this example:

    ```PowerShell
    dir C:\contentStore\myPackage | Test-AppvLegacyPackage
    ```

    In this example, the directory object that represents `myPackage` will be given as input to the **Test-AppvLegacyPackage** cmdlet and bound to the *-Source* parameter. Piping like this is especially useful when you want to batch commands together, such as in the following example cmdlet:
     
    ```PowerShell
    dir .\ | Test-AppvLegacyPackage | ConvertFrom-AppvLegacyAppvPackage -Target .\ConvertedPackages
    ```
      
    This piped example command tests packages, then passes the objects on for conversion. You can also apply a filter on packages without errors or only specify a directory which contains an **.sprj** file or pipe them to another cmdlet that adds the filtered package to the server or publishes them to the App-V client.

- Batching—The Windows PowerShell command enables batching. More specifically, the cmdlets support taking a string\[\] object for the *-Source* parameter that represents a list of directory paths. This allows you to enter the following cmdlets together:

    ```PowerShell
    $packages = dir C:\contentStore
    ConvertFrom-AppvLegacyAppvPackage-Source $packages -Target C:\ConvertedPackages
    ```

    Alternatively, you can use piping like this:

    ```PowerShell
    dir C:\ContentStore | ConvertFrom-AppvLegacyAppvPackage -Target C:\ConvertedPackages
    ```

- Other functionality—Windows PowerShell has other built-in functionality for features such as aliases, lazy-binding, .NET Object, and many others. These features can help you create advanced scenarios for the Package Converter.





## Related topics

- [Operations for App-V](appv-operations.md)
