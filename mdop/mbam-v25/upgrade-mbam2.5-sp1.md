---
title: Upgrading from MBAM 2.5 to MBAM 2.5 SP1 Servicing Release Update
author: dansimp
ms.author: ksharma
manager: dcscontentpm
audience: ITPro
ms.topic: article
ms.prod: mbam
localization_priority: Normal
--- 

# Upgrading from MBAM 2.5 to MBAM 2.5 SP1 Servicing Release Update

This article provides step-by-step instructions for upgrading Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 to MBAM 2.5 SP1 along with Microsoft Desktop Optimization Pack (MDOP) July 2018 Servicing update in a stand-alone configuration. In this guide we will use a two-server configuration. One of the two servers will be a database server that's running Microsoft SQL Server 2016. This server will host the MBAM databases and reports. The additional server will be a Windows Server 2012 R2 web server and will host "Administration and Monitoring Server" and "Self-Service Portal."

## Preparation steps before you upgrade MBAM 2.5 SP1 server

### Know the MBAM Servers in your environment

1. SQL Server Database Engine: Server Hosting the MBAM Databases.
2. SQL Server Reporting Services: Server Hosting the MBAM Reports.
3. Internet Information Services (IIS) Web Servers: Server Hosting MBAM Web Applications and Services.
4. (Optional) Microsoft System Center Configuration Manager (SCCM) Primary Site Server: MBAM Configuration Application is run on this server to integrate MBAM Repots with SCCM which are then merged with existing SCCM reports on the SCCM’s SQL Server Reporting Services (SSRS) instance.

### Identify Service Accounts, Groups, Server Name and Reports URL

1. Identify the MBAM App Pool Svc Account used by IIS web servers to Read and Write Data to MBAM Databases.
2. Identify the Groups used during MBAM Web Features Configuration and the Reports Web Service URL.
3. Identify the SQL Server Name and Instance Name.
    > [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE3ANP1]
4. Identify the SQL Server Reporting Services Account used for reading compliance data from Compliance and Audit Database.
    > [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE3ALdZ]

## Upgrade the MBAM Infrastructure to the latest version available

> [!NOTE]
> We recommend that you take a full database backup of the MBAM Databases before performing upgrades.

### Upgrade the MBAM SQL Server

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE3ALew]

### Upgrade MBAM Web Server

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE3ALex]

## More information

For more about MBAM 2.5 SP1 known issues, please refer [Release Notes for MBAM 2.5 SP1](https://docs.microsoft.com/microsoft-desktop-optimization-pack/mbam-v25/release-notes-for-mbam-25-sp1).
