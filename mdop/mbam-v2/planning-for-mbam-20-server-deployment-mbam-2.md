---
title: Planning for MBAM 2.0 Server Deployment
description: Planning for MBAM 2.0 Server Deployment
author: msfttracyp
ms.assetid: b57f1a42-134f-4997-8697-7fbed08e2fc4
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Planning for MBAM 2.0 Server Deployment


The Microsoft BitLocker Administration and Monitoring (MBAM) server infrastructure depends on a set of server features that can be installed on one or more server computers, based on the requirements of the enterprise. If you are installing Microsoft BitLocker Administration and Monitoring with the Configuration Manager topology, see [Planning to Deploy MBAM with Configuration Manager](planning-to-deploy-mbam-with-configuration-manager-2.md).

**Note**  
Installations of Microsoft BitLocker Administration and Monitoring on a single server are recommended only for test environments.

 

## Planning for MBAM Server Deployment


The infrastructure for an MBAM Server deployment includes the following features:

-   Recovery Database

-   Compliance and Audit Database

-   Compliance and Audit Reports

-   Self-Service Portal

-   Administration and Monitoring Server

-   MBAM Group Policy Template

MBAM Server databases and features can be installed in different configurations, depending on your scalability requirements. All MBAM Server features can be installed on a single server or distributed across multiple servers. We recommend that you use a two-server configuration for production environments, although configurations of two to four servers can also be used, depending on your computing requirements.

Each MBAM feature has specific prerequisites. For a full list of server feature prerequisites and hardware and software requirements, see [MBAM 2.0 Deployment Prerequisites](mbam-20-deployment-prerequisites-mbam-2.md) and [MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md).

In addition to the server-related MBAM features, the Server Setup application includes an MBAM Group Policy template. The template contains Group Policy Object (GPO) settings that you configure to manage BitLocker Drive Encryption in the enterprise. You can install this template on any computer that can run the Group Policy Management Console (GPMC) or Advanced Group Policy Management (AGPM).

As you plan the MBAM Server deployment, consider that BitLocker recovery keys in MBAM are intended for single use only, after which recovery keys expire. In order for the keys to expire after use, they must be retrieved through the Help Desk Portal or the Self-Service Portal.

## Order of Deployment of MBAM Server Features


To deploy MBAM features on multiple servers, you have to install the features in the following order:

1.  Recovery Database

2.  Compliance and Audit Database

3.  Compliance Audit and Reports

4.  Self-Service Portal

5.  Administration and Monitoring Server

6.  MBAM Group Policy Template

**Note**  
Keep track of the names of the computers on which you install each feature. You have to use this information throughout the installation process. You can print and use a deployment checklist to assist in this effort. For more information about the MBAM Deployment Checklist, see [MBAM 2.0 Deployment Checklist](mbam-20-deployment-checklist-mbam-2.md).

 

## Related topics


[Planning to Deploy MBAM 2.0](planning-to-deploy-mbam-20-mbam-2.md)

[Deploying the MBAM 2.0 Server Infrastructure](deploying-the-mbam-20-server-infrastructure-mbam-2.md)

 

 





