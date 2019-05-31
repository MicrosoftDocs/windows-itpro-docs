---
title: Installation Files Page
description: Installation Files Page
author: eavena
ms.assetid: b0aad26f-b143-4f09-87a1-9f016a23cb62
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Installation Files Page


Use the **Installation Files** page to specify the installation files that were used to create the virtual application package specified on the **Select Package** page of this wizard. If you created a virtual application package that contains multiple applications, you should copy all required installation files to a single folder on the computer running the Microsoft Application Virtualization Sequencer.

This page contains the following elements:

<a href="" id="original-installation-files"></a>**Original Installation Files**  
Click **Browse** to specify the installation files that were originally used to create the virtual application package. The parent directory you specify should be saved locally to the computer running the Sequencer and must contain all required installation files or subfolders that contain the installation files. The installation files can be contained in the parent folder or in any of the subfolders of the specified parent folder.

<a href="" id="files-installed-on-local-system"></a>**Files installed on local system**  
Click **Browse** to specify the installation files that have been installed locally on the computer running the Sequencer. You can only select this option if the application installation files have been installed to the application’s default location.

**Note**  
The default installation location you provide depends on the following conditions:

 

-   The package root specified when the package was originally created.

-   The installation location specified in the Windows Installer when the package was originally created.

-   The default application installation path.

For example, if the package root specified is **Q:\\Office12** and during installation, the default installation location is changed from **C:\\Program Files\\Office12** to **Q:\\Office12**, then the path specified during dehydration must be **C:\\Program Files\\Office 12**.

If the package root specified is **Q:\\Microsoft** and during installation, the default installation location is changed from **C:\\Program Files\\Office12** to **Q:\\Microsoft\\Office12**, then the path specified during dehydration must be **C:\\Program Files**.

When you create a package using a package accelerator, each file in the package, for example **Q:\\Office12\\file.txt** is found on the local computer by replacing the package root **Q:\\Office12** with the default location specified when the Package Accelerator was created, for example, **C:\\Program Files\\Office12**. In the previous example, the file should be located in **C:\\Program Files\\Office12\\file.txt**.

## Related topics


[Create Package Accelerator Wizard (AppV 4.6 SP1)](create-package-accelerator-wizard--appv-46-sp1-.md)

 

 





