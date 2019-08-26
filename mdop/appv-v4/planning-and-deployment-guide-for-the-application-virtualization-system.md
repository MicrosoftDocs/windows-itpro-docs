---
title: Planning and Deployment Guide for the Application Virtualization System
description: Planning and Deployment Guide for the Application Virtualization System
author: eavena
ms.assetid: 6c012e33-9ac6-4cd8-84ff-54f40973833f
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning and Deployment Guide for the Application Virtualization System


Microsoft Application Virtualization Management provides the capability to make applications available to end user computers without having to install the applications directly on those computers. This is made possible through a process known as *sequencing the application*, which enables each application to run in its own self-contained virtual environment on the client computer. The sequenced applications are isolated from one another, eliminating application conflicts, yet can still interact with the client computer.

The Application Virtualization Client is the Application Virtualization system component that enables the end user to interact with the applications after they have been published to the computer. The client manages the virtual environment in which the virtualized applications run on each computer. After the client has been installed on a computer, the applications must be made available to the computer through a process known as *publishing*, which enables the end user to run the virtual applications. The publishing process places the virtual application icons and shortcuts on the computer—typically on the Windows desktop or on the **Start** menu—and also places the package definition and file type association information on the computer. Publishing also makes the application package content available to the end user’s computer.

The virtual application package content can be placed on one or more Application Virtualization servers so that it can be streamed down to the clients on demand and cached locally. File servers and Web servers can also be used as streaming servers, or the content can be placed directly on the end user’s computer—for example, if you are using an electronic software distribution system, such as Microsoft System Center Configuration Manager 2007. In a multi-server implementation, maintaining the package content and keeping it up to date on all the streaming servers requires a comprehensive package management solution. Depending on the size of your organization, you might need to have many virtual applications accessible to end users located all over the world. Managing the packages to ensure that the right applications are available to all users where and when they need access to them is therefore an essential requirement.

The Application Virtualization Planning and Deployment Guide provides information to help you better understand and deploy the Microsoft Application Virtualization application and its components. It also provides step-by-step procedures for implementing the key deployment scenarios.

## In This Section


<a href="" id="planning-for-application-virtualization-system-deployment"></a>[Planning for Application Virtualization System Deployment](planning-for-application-virtualization-system-deployment.md)  
Provides the guidance necessary to plan the implementation and deployment of your Application Virtualization system.

<a href="" id="application-virtualization-deployment-and-upgrade-considerations"></a>[Application Virtualization Deployment and Upgrade Considerations](application-virtualization-deployment-and-upgrade-considerations.md)  
Provides information about hardware and software requirements for installing the various Application Virtualization components, as well as upgrade information.

<a href="" id="electronic-software-distribution-based-scenario"></a>[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)  
Provides information about deploying Application Virtualization using an electronic software distribution (ESD) system.

<a href="" id="application-virtualization-server-based-scenario"></a>[Application Virtualization Server-Based Scenario](application-virtualization-server-based-scenario.md)  
Provides information about deploying Application Virtualization using the Application Virtualization Management Server.

<a href="" id="stand-alone-delivery-scenario-for-application-virtualization-clients"></a>[Stand-Alone Delivery Scenario for Application Virtualization Clients](stand-alone-delivery-scenario-for-application-virtualization-clients.md)  
Describes how to deploy Application Virtualization in a stand-alone mode, without the use of ESD or server-based resources.

<a href="" id="application-virtualization-reference"></a>[Application Virtualization Reference](application-virtualization-reference.md)  
Contains detailed technical reference material related to installing and managing system components.

 

 





