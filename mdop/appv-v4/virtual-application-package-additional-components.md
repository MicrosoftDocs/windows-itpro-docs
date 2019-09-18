---
title: Virtual Application Package Additional Components
description: Virtual Application Package Additional Components
author: dansimp
ms.assetid: 476b0f40-ebd6-4296-92fa-61fa9495c03c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Virtual Application Package Additional Components


The App-V Sequencer has detected a directory that contains 64-bit and 32-bit executables and/or dynamic-link library (.dll) files that depend on the same side-by-side assembly. Typically, the Sequencer creates private side-by-side assemblies for all public assemblies that are used by the package; however, it is not possible to create 32-bit and 64-bit versions of the private assemblies in the same directory.

If the Sequencer detects a single conflict, it will perform the following actions:

-   Remove all of the existing 64-bit private assemblies in the entire package, whether or not the directory has a conflict.

-   Create only 32-bit versions of the private side-by-side assemblies.

You should natively install public versions of all the required 64-bit assemblies on the computer running the Sequencer and on all App-V client computers.

To locate the required existing public assemblies, open the directory where the package is saved and look in the **VFS** folder. For example, if the package root is **Q:\\MyApp**, when you sequence the application, look in **Q:\\MyApp\\VFS\\CSIDL\_Windows\\WinSxS\\Manifests** and locate all of the existing public assemblies. The 64-bit versions of these files will always start with the following text at the beginning of the manifest name: **amd64…**. The exact name and version of the assembly can be found in the associated manifest file.

Use any of the following links to download and install the correct version of the required prerequisites:

-   [Microsoft Visual C++ 2005 Redistributable Package (x64)](https://go.microsoft.com/fwlink/?LinkId=152697)

-   [Microsoft Visual C++ 2005 SP1 Redistributable Package (x64)](https://go.microsoft.com/fwlink/?LinkId=152698)

-   [Microsoft Visual C++ 2008 Redistributable Package (x64)](https://go.microsoft.com/fwlink/?LinkId=152699)

-   [Microsoft Visual C++ 2008 SP1 Redistributable Package (x64)](https://go.microsoft.com/fwlink/?LinkId=152700)

 

 





