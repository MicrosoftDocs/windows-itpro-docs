---
title: About Virtual Environments
description: About Virtual Environments
author: dansimp
ms.assetid: e03a8c72-56c1-4ae9-aa45-0283c50a154c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# About Virtual Environments


Virtual applications run in virtual environments. Virtual environments enable each application to run on a desktop, laptop, or Remote Desktop Session Host (RD Session Host) server without installation and alteration of the host operating system. Each application carries its own configuration information in the virtual environment. As a result, many applications run side by side with other applications on the same computer without any conflicts.

Virtual applications run locally, so they run with the full performance, functionality, and access to local services that you would expect from any application installed locally.

Because each application runs in a virtual environment, the following problems are reduced:

-   Application conflicts—In environments that do not use Application Virtualization, you must thoroughly test every application to ensure that it does not interfere with other installed applications.

-   Regression testing—Because the application does not change the underlying operating system, lengthy regression testing is eliminated.

-   Version incompatibilities—Different versions of the same application can run simultaneously on the same computer.

-   Multiuser access—Applications that do not run in multiuser mode, and therefore cannot run within an RD Session Host, can now do so and function correctly for multiple users on a single RD Session Host.

-   Multitenancy issues—Two instances of the same application that use different configurations can run on the same computer at the same time.

-   Server siloing—The need for many separate server farms is eliminated.

Virtual environments include a virtual registry for each application. Registry settings created by one application cannot be seen by other applications or utilities such as Regedit. Rather than copying the entire registry, the virtual registry uses an *overlay* method. Items in the client registry can be read by the application as long as a virtual copy of that registry item is not included in the virtual registry. All application writes to the registry are contained in the virtual registry.

Virtual environments also include a virtual file system and other virtual components, including virtual services and virtual COM.

## Related topics


[Application Virtualization Client Management Console Overview](application-virtualization-client-management-console-overview.md)

 

 





