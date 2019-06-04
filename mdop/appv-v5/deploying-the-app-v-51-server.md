---
title: Deploying the App-V 5.1 Server
description: Deploying the App-V 5.1 Server
author: dansimp
ms.assetid: 987b61dc-00d6-49ba-8f1b-92d7b948e702
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Deploying the App-V 5.1 Server


You can install the Microsoft Application Virtualization (App-V) 5.1 server features by using different deployment configurations, which described in this topic. Before you install the server features, review the server section of [App-V 5.1 Security Considerations](app-v-51-security-considerations.md).

For information about deploying the App-V Server, see [About App-V 5.1](about-app-v-51.md#bkmk-migrate-to-51).

**Important**  
Before you install and configure the App-V 5.1 servers, you must specify a port where each component will be hosted. You must also add the associated firewall rules to allow incoming requests to access the specified ports. The installer does not modify firewall settings.

 

## <a href="" id="---------app-v-5-1-server-overview"></a> App-V 5.1 Server overview


The App-V 5.1 Server is made up of five components. Each component serves a different purpose within the App-V 5.1 environment. Each of the five components is briefly described here:

-   Management Server – provides overall management functionality for the App-V 5.1 infrastructure.

-   Management Database – facilitates database predeployments for App-V 5.1 management.

-   Publishing Server – provides hosting and streaming functionality for virtual applications.

-   Reporting Server – provides App-V 5.1 reporting services.

-   Reporting Database – facilitates database predeployments for App-V 5.1 reporting.

## <a href="" id="---------app-v-5-1-stand-alone-deployment"></a> App-V 5.1 stand-alone deployment


The App-V 5.1 standalone deployment provides a good topology for a small deployment or a test environment. When you use this type of implementation, all server components are deployed to a single computer. The services and associated databases will compete for the resources on the computer that runs the App-V 5.1 components. Therefore, you should not use this topology for larger deployments.

[How to Deploy the App-V 5.1 Server](how-to-deploy-the-app-v-51-server.md)

[How to Deploy the App-V 5.1 Server Using a Script](how-to-deploy-the-app-v-51-server-using-a-script.md)

## <a href="" id="---------app-v-5-1-server-distributed-deployment"></a> App-V 5.1 Server distributed deployment


The distributed deployment topology can support a large App-V 5.1 client base and it allows you to more easily manage and scale your environment. When you use this type of deployment, the App-V 5.1 Server components are deployed across multiple computers, based on the structure and requirements of the organization.

[How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services](how-to-install-the-management-and-reporting-databases-on-separate-computers-from-the-management-and-reporting-services51.md)

[How to install the Management Server on a Standalone Computer and Connect it to the Database](how-to-install-the-management-server-on-a-standalone-computer-and-connect-it-to-the-database51.md)

[How to Deploy the App-V 5.1 Server Using a Script](how-to-deploy-the-app-v-51-server-using-a-script.md)

[How to Install the Publishing Server on a Remote Computer](how-to-install-the-publishing-server-on-a-remote-computer51.md)

[How to install the Management Server on a Standalone Computer and Connect it to the Database](how-to-install-the-management-server-on-a-standalone-computer-and-connect-it-to-the-database51.md)

## Using an Enterprise Software Distribution (ESD) solution and App-V 5.1


You can also deploy the App-V 5.1 clients and packages by using an ESD without having to deploy App-V 5.1. The full capabilities for integration will vary depending on the ESD that you use.

**Note**  
The App-V 5.1 reporting server and reporting database can still be deployed alongside the ESD to collect the reporting data from the App-V 5.1 clients. However, the other three server components should not be deployed, because they will conflict with the ESD functionality.

 

[Deploying App-V 5.1 Packages by Using Electronic Software Distribution (ESD)](deploying-app-v-51-packages-by-using-electronic-software-distribution--esd-.md)

## <a href="" id="---------app-v-5-1-server-logs"></a> App-V 5.1 Server logs


You can use App-V 5.1 server log information to help troubleshoot the server installation and operational events while using App-V 5.1. The server-related log information can be reviewed with the **Event Viewer**. The following line displays the specific path for Server-related events:

**Event Viewer \\ Applications and Services Logs \\ Microsoft \\ App V**

Associated setup logs are saved in the following directory:

**%temp%**

In App-V 5.0 SP3, some logs were consolidated and moved. See [About App-V 5.0 SP3](about-app-v-50-sp3.md#bkmk-event-logs-moved).

## <a href="" id="---------app-v-5-1-reporting"></a> App-V 5.1 reporting


App-V 5.1 reporting allows App-V 5.1 clients to collect data and then send it back to be stored in a central repository. You can use this information to get a better view of the virtual application usage within your organization. The following list displays some of the types of information the App-V 5.1 client collects:

-   Information about the computer that runs the App-V 5.1 client.

-   Information about virtualized packages on a specific computer that runs the App-V 5.1 client.

-   Information about package open and shutdown for a specific user.

The reporting information will be maintained until it is successfully sent to the reporting server database. After the data is in the database, you can use Microsoft SQL Server Reporting Services to generate any necessary reports.

If you want to retrieve report information, you must use Microsoft SQL Server Reporting Services (SSRS) which is available with Microsoft SQL. SSRS is not installed when you install the App-V 5.1 reporting server and it must be deployed separately to generate the associated reports.

Use the following link for more information [About App-V 5.1 Reporting](about-app-v-51-reporting.md).

[How to Enable Reporting on the App-V 5.1 Client by Using PowerShell](how-to-enable-reporting-on-the-app-v-51-client-by-using-powershell.md)

## Other resources for the App-V server


[Deploying App-V 5.1](deploying-app-v-51.md)






 

 





