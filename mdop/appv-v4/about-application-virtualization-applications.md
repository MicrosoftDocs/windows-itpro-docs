---
title: About Application Virtualization Applications
description: About Application Virtualization Applications
author: dansimp
ms.assetid: 3bf833b7-d172-4eef-a9e8-4b4f0c7eb15b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About Application Virtualization Applications


In Application Virtualization, an *application* is an executable program, such as Microsoft Visio, that is streamed to the Application Virtualization Desktop Client or Client for Remote Desktop Services (formerly Terminal Services) from an Application Virtualization Management Server. Before an application can be streamed to a client, the application must be prepared for streaming by processing it with the Application Virtualization Sequencer.

## Managing Applications


You must add applications to the system before you can make the applications available to users. The most common method for adding applications to the system is to import them. To access this feature, right-click the **Applications** node in the Application Virtualization Server Management Console and choose **Import Applications**.

You can import more than one Open Software Descriptor (OSD) file at the same time, or you can import a Sequencer Project file (SPRJ) that can contain multiple OSD files. This functionality enables you to configure related applications similarly.

You can also use the following features to help you manage your applications:

-   **Application Groups**—Enables you to create logical groups of applications for simplified management. When changes are made to a group (for example, access permissions), the changes are applied to all applications in the group. Applications in a group can come from different packages.

-   **Multi Select**—Enables you to select multiple applications at once by holding the CTRL key when you click an application to modify the application properties. However, if you want to maintain a relationship between the applications, you should create an application group to hold the applications.

-   **Cross System Copy**—Enables you to copy applications from one environment to another environment that is running the same version of App-V in one step. For example, you might have a user acceptance test environment where you initially deploy and configure applications. After you finish your testing phase, you might want to replicate the same set of applications (including permissions) to the production environment.

## Related topics


[About Application Virtualization Packages](about-application-virtualization-packages.md)

[About the Application Virtualization Server Management Console](about-the-application-virtualization-server-management-console.md)

[How to Manage Application Groups in the Server Management Console](how-to-manage-application-groups-in-the-server-management-console.md)

[How to Manage Applications in the Server Management Console](how-to-manage-applications-in-the-server-management-console.md)

 

 





