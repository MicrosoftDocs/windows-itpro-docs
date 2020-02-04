---
title: How to Convert a Package Created in a Previous Version of App-V
description: How to Convert a Package Created in a Previous Version of App-V
author: dansimp
ms.assetid: 3366d399-2891-491d-8de1-f8cfdf39bbab
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Convert a Package Created in a Previous Version of App-V


You can use the package converter utility to upgrade virtual application packages that have been created with previous versions of App-V.

**Note**  
If you are running a computer with a 64-bit architecture, you must use the x86 version of PowerShell.



The package converter can only directly convert packages that were created by using the App-V 4.5 sequencer or a subsequent version. Packages that were created using a version prior to App-V 4.5 must be upgraded to the App-V 4.5 or App-V 4.6 format before conversion.

The following information provides direction for converting existing virtual application packages.

**Important**  
You must configure the package converter to always save the package ingredients file to a secure location and directory. A secure location is accessible only by an administrator. Additionally, when you deploy the package, you should save the package to a location that is secure, or make sure that no other user is allowed to be logged in during the conversion process.



**App-V 4.6 installation folder is redirected to virtual file system root**

When you convert packages from App-V 4.6 to 5.1, the App-V 5.1 package can access the hardcoded drive that you were required to use when you created 4.6 packages. The drive letter will be the drive you selected as the installation drive on the 4.6 sequencing machine. (The default drive letter is Q:\\.)

Prior to App-V 5.1, the 4.6 root folder was not recognized and could not be accessed by App-V 5.0 packages. Now, App-V 5.1 packages can access hardcoded files by their full path or can programmatically enumerate files under the App-V 4.6 installation root.

**Technical Details:** The App-V 5.1 package converter will save the App-V 4.6 installation root folder and short folder names in the FilesystemMetadata.xml file in the Filesystem element. When the App-V 5.1 client creates the virtual process, it will map requests from the App-V 4.6 installation root to the virtual file system root.

**Getting started**

1.  Install the App-V Sequencer on a computer in your environment. For information about how to install the Sequencer, see [How to Install the Sequencer](how-to-install-the-sequencer-51beta-gb18030.md).

2.  

    The following cmdlets are available:

    -   Test-AppvLegacyPackage – This cmdlet is designed to check packages. It will return information about any failures with the package such as missing **.sft** files, an invalid source, **.osd** file errors, or invalid package version. This cmdlet will not parse the **.sft** file or do any in depth validation. For information about options and basic functionality for this cmdlet, using the PowerShell cmdline, type `Test-AppvLegacyPackage -?`.

    -   ConvertFrom-AppvLegacyPackage – To convert an existing package, type `ConvertFrom-AppvLegacyPackage c:\contentStore c:\convertedPackages`. In this command, `c:\contentStore` represents the location of the existing package and `c:\convertedPackages` is the output directory to which the resulting App-V 5.1 virtual application package file will be saved. By default, if you do not specify a new name, the old package name will be used for the App-V 5.1 filename.

        Additionally, the package converter optimizes performance of packages in App-V 5.1 by setting the package to stream fault the App-V package.  This is more performant than the primary feature block and fully downloading the package. The flag **DownloadFullPackageOnFirstLaunch** allows you to convert the package and set the package to be fully downloaded by default.

        **Note**  
        Before you specify the output directory, you must create the output directory.



~~~
**Advanced Conversion Tips**

-   Piping - PowerShell supports piping. Piping allows you to call `dir c:\contentStore\myPackage | Test-AppvLegacyPackage`. In this example, the directory object that represents `myPackage` will be given as input to the `Test-AppvLegacyPackage` command and bound to the `-Source` parameter. Piping like this is especially useful when you want to batch commands together; for example, `dir .\ | Test-AppvLegacyPackage | ConvertFrom-AppvLegacyAppvPackage -Target .\ConvertedPackages`. This piped command would test the packages and then pass those objects on to actually be converted. You can also apply a filter on packages without errors or only specify a directory which contains an **.sprj** file or pipe them to another cmdlet that adds the filtered package to the server or publishes them to the App-V 5.1 client.

-   Batching - The PowerShell command enables batching. More specifically, the cmdlets support taking a string\[\] object for the `-Source` parameter which represents a list of directory paths. This allows you to enter `$packages = dir c:\contentStore` and then call `ConvertFrom-AppvLegacyAppvPackage-Source $packages -Target c:\ConvertedPackages` or to use piping and call `dir c:\ContentStore | ConvertFrom-AppvLegacyAppvPackage -Target C:\ConvertedPackages`.

-   Other functionality - PowerShell has other built-in functionality for features such as aliases, piping, lazy-binding, .NET object, and many others. All of these are usable in PowerShell and can help you create advanced scenarios for the Package Converter.

**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).
~~~

## Related topics


[Operations for App-V 5.1](operations-for-app-v-51.md)









