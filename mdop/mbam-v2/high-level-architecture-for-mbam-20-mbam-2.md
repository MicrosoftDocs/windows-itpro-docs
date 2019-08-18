---
title: High-Level Architecture for MBAM 2.0
description: High-Level Architecture for MBAM 2.0
author: msfttracyp
ms.assetid: 7f73dd3a-0b1f-4af6-a2f0-d0c5bc5d183a
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# High-Level Architecture for MBAM 2.0


Microsoft BitLocker Administration and Monitoring (MBAM) is a client/server solution that can help you simplify BitLocker provisioning and deployment, improve compliance and reporting on BitLocker, and reduce support costs. Microsoft BitLocker Administration and Monitoring includes the features that are described in this topic.

Microsoft BitLocker Administration and Monitoring can be deployed in the Stand-alone topology, or in a topology that is integrated with Microsoft System Center Configuration Manager 2007 or Microsoft System Center 2012 Configuration Manager. This topic describes the architecture for the Stand-alone topology. For information about deploying in the integrated Configuration Manager topology, see [Using MBAM with Configuration Manager](using-mbam-with-configuration-manager.md).

The following diagram shows the MBAM recommended architecture for a production environment, which consists of two servers and a management workstation. This architecture supports up to 200,000 MBAM clients. The server features and databases in the architecture image are described in the following section and are listed under the computer or server where we recommend that you install them.

**Note**  
A single-server architecture should be used only in test environments.

 

![mbam 2 two-server deployment topology](images/mbam2-3-servers.gif)

## Administration and Monitoring Server


The following features are installed on this server:

-   **Administration and Monitoring Server**. The Administration and Monitoring Server feature is installed on a Windows server and consists of the Administration and Monitoring website, which includes the reports and the Help Desk Portal, and the monitoring web services.

-   **Self-Service Portal**. The Self-Service Portal is installed on a Windows server. The Self-Service Portal enables end users on client computers to independently log on to a website, where they can obtain a recovery key to recover a locked BitLocker volume.

## Database Server


The following features are installed on this server:

-   **Recovery Database**. The Recovery Database is installed on a Windows server and a supported instance of Microsoft SQL Server. This database stores recovery data that is collected from MBAM client computers.

-   **Compliance and Audit Database**. The Compliance and Audit Database is installed on a Windows server and a supported instance of SQL Server. This database stores compliance data for MBAM client computers. This data is used primarily for reports that SQL Server Reporting Services (SSRS) hosts.

-   **Compliance and Audit Reports**. The Compliance and Audit Reports are installed on a Windows server and a supported instance of SQL Server that has the SQL Server Reporting Services (SSRS) feature installed. These reports provide MBAM reports that you can access from the Administration and Monitoring website or directly from the SSRS server.

## Management Workstation


The following feature is installed on the Management workstation, which can be a Windows server or a client computer.

-   **Policy Template**. The Policy Template consists of Group Policy settings that define MBAM implementation settings for BitLocker drive encryption. You can install the Policy template on any server or workstation, but it is commonly installed on a management workstation, which is a supported Windows server or client computer. The workstation does not have to be a dedicated computer.

## <a href="" id="---------mbam-client"></a> MBAM Client


The MBAM Client is installed on a Windows computer and has the following characteristics:

-   Uses Group Policy to enforce the BitLocker drive encryption of client computers in the enterprise.

-   Collects the recovery key for the three BitLocker data drive types: operating system drives, fixed data drives, and removable data (USB) drives.

-   Collects compliance data for the computer and passes the data to the reporting system.

## Related topics


[Getting Started with MBAM 2.0](getting-started-with-mbam-20-mbam-2.md)

 

 





