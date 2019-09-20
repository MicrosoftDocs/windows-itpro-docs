---
title: Publishing Virtual Applications Using Application Virtualization Management Servers
description: Publishing Virtual Applications Using Application Virtualization Management Servers
author: dansimp
ms.assetid: f3d79284-3f82-4ca3-b741-1a80b61490da
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Publishing Virtual Applications Using Application Virtualization Management Servers


In an Application Virtualization Server-based deployment, virtual application packages that have been sequenced, tested, and found deployable are copied to the main CONTENT share to be used by the Application Virtualization Management Server. After the packages are imported on the Application Virtualization Management Server, they can be published to the end users.

**Note**  
The CONTENT share should be located on the server’s attached disk storage. Using a network storage device such as a SAN or a DFS share should be considered carefully because of the network impact.

 

Applications are provisioned to Active Directory groups. Typically, the Application Virtualization administrator will create Active Directory groups for each virtual application to be published and then add the appropriate users to those groups. When the users log on to their workstations, the Application Virtualization Client, by default, performs a publishing refresh using the credentials of the logged on user. The user can then start applications from wherever the shortcuts have been placed. The Application Virtualization administrator determines where and how many shortcuts are located on the client system during the sequencing of the application.

**Note**  
A *publishing refresh* is a call to the Application Virtualization Server that is defined on the Application Virtualization Client, to determine which virtual application shortcuts are sent to the client for use by the end user.

 

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md)

[Overview of the Application Virtualization System Components](overview-of-the-application-virtualization-system-components.md)

[Planning Your Streaming Solution in an Application Virtualization Server-Based Implementation](planning-your-streaming-solution-in-an-application-virtualization-server-based-implementation.md)

 

 





