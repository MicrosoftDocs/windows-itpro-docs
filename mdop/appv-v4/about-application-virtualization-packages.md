---
title: About Application Virtualization Packages
description: About Application Virtualization Packages
author: dansimp
ms.assetid: 69bd35c1-7af3-43db-931b-3074780aa926
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# About Application Virtualization Packages


In Application Virtualization, a *package* is the output of the sequencing process. You use packages when you first deploy applications on your servers and when you upgrade applications with a new version. Packages enable you to control virtual application versions on your Application Virtualization Management Servers. A single package can contain one or more applications. Each application package contains a set of files as a self-contained unit.

## Managing Packages


After the Sequencer creates a package of one or more applications as part of its process, you can copy the Sequencer-generated files to a Application Virtualization Management Server and make them available for streaming.

Available packages appear under the **Packages** container in the left pane of the Application Virtualization Management Console. When you import an application with a Sequencer Project (SPRJ) file or an Open Software Descriptor (OSD) file, a related entry appears in the **Packages** container. From the Application Virtualization Server Management Console, you can then deploy, upgrade, or delete packages and versions of them.

Each virtual application has an associated package. This package includes the following files:

-   SFT—The file that streams the application to clients.

-   OSD—The Open Software Descriptor file contains the information needed to find and launch the application.

-   ICO—The icon file that visually represents the application in user interfaces and shortcuts.

-   SPRJ—The Sequencer Project file.

When you import the SPRJ file, all sequenced applications are available for deployment, by default, but the applications are not enabled for streaming. You can choose to stream all or some of the applications in the package. For example, if you sequenced and imported Microsoft Office, you can choose not to deploy some applications, such as the Save My Settings Wizard. In this case, right-click each application you want to deploy, choose **Properties**, and make sure that the **Enabled** box is cleared (blank). Only the applications with the **Enabled** box selected will stream to client computers.

After you resequence a package and produce a new SFT file for streaming, you can upgrade the old package quickly and easily through the Application Virtualization Server Management Console.

The only operational scenario that requires you to use the **Packages** node is when you introduce a new version (SFT file) for the package. Whenever you import applications, assign access and licenses to applications, and so on, the Application Virtualization System tracks this information at the package level. This means that when you authorize a user to use an application, you are giving the user permission to run any application in the same package.

### Package Version

A package version is represented by a specific SFT file. When you upgrade a package (apply an update to an application or add an application to a package), you generate a new SFT file. Each time you create a new SFT file, you are creating a new package version.

When you import applications through the Application Virtualization Server Management Console, the software automatically creates a package and a package version if they do not already exist.

## Related topics


[About Application Virtualization Applications](about-application-virtualization-applications.md)

[About the Application Virtualization Server Management Console](about-the-application-virtualization-server-management-console.md)

[How to Manage Packages in the Server Management Console](how-to-manage-packages-in-the-server-management-console.md)

 

 





