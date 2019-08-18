---
title: Planning for MBAM 1.0 Server Deployment
description: Planning for MBAM 1.0 Server Deployment
author: msfttracyp
ms.assetid: 3cbef284-3092-4c42-9234-2826b18ddef1
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning for MBAM 1.0 Server Deployment


The Microsoft BitLocker Administration and Monitoring (MBAM) server infrastructure depends on a set of server features that can be installed on one or more server computers, based on the requirements of your enterprise.

## Planning for MBAM Server deployment


The following MBAM features represent the server infrastructure for an MBAM server deployment:

-   Recovery and Hardware Database

-   Compliance and Audit Database

-   Compliance and Audit Reports

-   Administration and Monitoring Server

MBAM server databases and features can be installed in different configurations, depending on your scalability needs. All MBAM Server features can be installed on a single server or distributed across multiple servers. Generally, we recommend that you use a three-server or five-server configuration for production environments, although configurations of two or four servers can also be used, depending on your computing needs.

**Note**  
For more information about performance scalability of MBAM and recommended deployment topologies, see the MBAM Scalability and High-Availability Guide white paper at <https://go.microsoft.com/fwlink/p/?LinkId=258314>.

 

Each MBAM feature has specific prerequisites. For a full list of server feature prerequisites and hardware and software requirements, see [MBAM 1.0 Deployment Prerequisites](mbam-10-deployment-prerequisites.md) and [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

In addition to the server-related MBAM features, the server Setup application includes an MBAM Group Policy template. This template can be installed on any computer that is able to run the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).

## Order of deployment of MBAM Server Features


When you deploy the MBAM Server features, install the features in the following order:

1.  Recovery and Hardware Database

2.  Compliance and Audit Database

3.  Compliance Audit and Reports

4.  Administration and Monitoring Server

5.  Policy Template

**Note**  
Keep track of the names of the computers on which you install each feature. You will use this information throughout the installation process. You can print and use a deployment checklist to assist you in the installation process. For more information about the MBAM deployment checklist, see [MBAM 1.0 Deployment Checklist](mbam-10-deployment-checklist.md).

 

## Related topics


[Planning to Deploy MBAM 1.0](planning-to-deploy-mbam-10.md)

[Deploying the MBAM 1.0 Server Infrastructure](deploying-the-mbam-10-server-infrastructure.md)

 

 





