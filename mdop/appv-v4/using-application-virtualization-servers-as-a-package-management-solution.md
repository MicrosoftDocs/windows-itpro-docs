---
title: Using Application Virtualization Servers as a Package Management Solution
description: Using Application Virtualization Servers as a Package Management Solution
author: manikadhiman
ms.assetid: 41597355-e7bb-45e2-b300-7b1724419975
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Using Application Virtualization Servers as a Package Management Solution


If you do not have an existing ESD system to deploy your Application Virtualization solution or do not wish to use one, you will need to install one or more Application Virtualization Management Servers as the core of your system architecture. The Application Virtualization Management Server requires a dedicated server computer and needs a Microsoft SQL Server database. The database can be on the same server, or it can be configured on a corporate database server that is accessible to the Application Virtualization Management Server over a high-speed LAN connection. In addition, you will need to install the Microsoft Application Virtualization Management Console, on either the Application Virtualization Management Server or on a designated management workstation, and you will need to install the Microsoft Application Virtualization Management Web Service, which can also be installed on the Application Virtualization Management Server or on a separate IIS server. The Application Virtualization Management Console is used to connect to the Application Virtualization Management Web Service, enabling the system administrator to interact with the Application Virtualization Management Server.

**Note**  
Access to the applications is controlled by means of Security Groups in Active Directory Domain Services, so you will need to plan a process to set up a security group for each virtualized application and for managing which users are added to each group. The Application Virtualization Management Server administrator configures the server to use these Active Directory groups, and the server then automatically controls access to the packages based on Active Directory group membership.

 

## In This Section


<a href="" id="overview-of-the-application-virtualization-system-components"></a>[Overview of the Application Virtualization System Components](overview-of-the-application-virtualization-system-components.md)  
Lists and describes the primary components of the Microsoft Application Virtualization Management System.

<a href="" id="publishing-virtual-applications-using-application-virtualization-management-servers"></a>[Publishing Virtual Applications Using Application Virtualization Management Servers](publishing-virtual-applications-using-application-virtualization-management-servers.md)  
Provides a brief overview of how virtual applications are published in an Application Virtualization Server-based deployment scenario.

<a href="" id="planning-your-streaming-solution-in-an-application-virtualization-server-based-implementation"></a>[Planning Your Streaming Solution in an Application Virtualization Server-Based Implementation](planning-your-streaming-solution-in-an-application-virtualization-server-based-implementation.md)  
Describes available options for using Application Virtualization Streaming Servers in conjunction with your Application Virtualization Management Server-based implementation.

## Related topics


[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)

[Planning for Application Virtualization System Deployment](planning-for-application-virtualization-system-deployment.md)

 

 





