---
title: Introduction to the Application Virtualization Security Guide
description: Introduction to the Application Virtualization Security Guide
author: dansimp
ms.assetid: 50e1d220-7a95-45b8-933b-3dadddebe26f
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Introduction to the Application Virtualization Security Guide


This Microsoft Application Virtualization (App-V) security guide provides instructions for administrators who are responsible for configuring the security features that were selected for the App-V deployment.

**Note**  
This documentation does not provide guidance for choosing the specific security options. That information is provided in the App-V Security Best Practices white paper available at <https://go.microsoft.com/fwlink/?LinkId=127120>.

 

As an App-V administrator using this guide, you should be familiar with the following security-related technologies:

-   Active Directory Domain Services

-   Public key infrastructure (PKI)

-   Internet Protocol Security (IPsec)

-   Group Policies

-   Internet Information Services (IIS)

## APP-V Infrastructure Components


When planning an enhanced security App-V environment, you can consider several different infrastructure models.

**Note**  
For more information about App-V infrastructure models, see the following documentation:

-   [App-V Planning and Deployment Guide](https://go.microsoft.com/fwlink/?LinkId=122063)

-   [Infrastructure Planning and Design Guide Series](https://go.microsoft.com/fwlink/?LinkId=151986)

 

These models utilize some but possibly not all of the App-V components depicted in the following illustration.

![app-v branch office diagram](images/appvbranchoffices.gif)

<a href="" id="application-virtualization--app-v--management-server"></a>Application Virtualization (App-V) Management Server  
The App-V Management Server streams the package content and publishes the shortcuts and file-type associations to the App-V Client. The App-V Management Server also supports active upgrade, license management, and a database that can be used for reporting.

<a href="" id="application-virtualization--app-v--streaming-server"></a>Application Virtualization (App-V) Streaming Server  
The App-V Streaming Server hosts the packages for streaming to App-V Clients in environments such as branch offices, where the bandwidth of the connection to the App-V Management Server is insufficient for streaming package content to clients. The Streaming Server contains only streaming functionality and does not provide you with the App-V Management Console or the App-V Management Web Service.

<a href="" id="application-virtualization--app-v--data-store"></a>Application Virtualization (App-V) Data Store  
The App-V data store, in the SQL database, retains information related to the App-V infrastructure. The information in the App-V data store includes all application records, application assignments, and which groups manage the Application Virtualization environment.

<a href="" id="application-virtualization--app-v--management-service"></a>Application Virtualization (App-V) Management Service  
The App-V Management Service communicates read/write requests to the Application Virtualization data store. This component can be installed on the same computer as the App-V Management Server or on a separate computer with IIS installed.

<a href="" id="application-virtualization--app-v--management-console"></a>Application Virtualization (App-V) Management Console  
The App-V Management Console is a snap-in management utility for App-V Server administration. This component can be installed on the same computer as the App-V Server or on a separate workstation that has MMC 3.0 and .NET 2.0 installed.

<a href="" id="application-virtualization--app-v--sequencer"></a>Application Virtualization (App-V) Sequencer  
The App-V Sequencer monitors and captures the installation of applications and creates virtual application packages. The output of the Sequencer consists of the application icon, the OSD file containing application definition information, a package manifest file, and an SFT file containing the application’s content files. Optionally, a Windows Installer file can be created for installing the package without using the App-V infrastructure.

<a href="" id="application-virtualization--app-v--client"></a>Application Virtualization (App-V) Client  
The App-V Client is installed on the App-V Desktop Client computer or on the App-V Terminal Services Client computer. It provides the virtual environment for the virtual application packages. The App-V Client manages the package streaming to the cache, virtual application publishing refresh, and interaction with the Application Virtualization Servers.

 

 





