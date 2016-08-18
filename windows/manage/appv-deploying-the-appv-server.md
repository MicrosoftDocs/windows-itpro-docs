---
title: Deploying the App-V Server (Windows 10)
description: Deploying the App-V Server in App-V for Windows 10
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Deploying the App-V server

**Applies to**
-   Windows Server 2016

>**Note**<br>If you plan to use the App-V server components in your deployment, note that they reference App-V 5.x. This is because the App-V server components have not changed in App-V for Windows 10. 

You can install the Application Virtualization (App-V) server components using different deployment configurations, which are described in this topic. Before you install the server features, review the server section of [App-V Security Considerations](appv-security-considerations.md). 

For information about deploying App-V for Windows 10, see [What's new in App-V](appv-about-appv.md).

>**Important**<br>Before you install and configure the App-V servers, you must specify a port where each component will be hosted. You must also add the associated firewall rules to allow incoming requests to access the specified ports. The installer does not modify firewall settings.

## Download and install App-V server components

>**Note**<br>
If you're already using App-V 5.x, you don't need to re-deploy the App-V server components as they haven't changed since App-V 5.0 was released.

App-V offers the following five server components, each of which serves a specific purpose in an App-V environment. 

- **Management server.** Use the App-V management server and console to manage your App-V infrastructure. See [Administering App-V with the management console](appv-administering-virtual-applications-with-the-management-console.md) for more information about the management server.

    >**Note**<br>If you are using App-V with your electronic software distribution solution, you don’t need to use the management server and console. However, you may want to take advantage of the reporting and streaming capabilities in App-V.
    
- **Management database.** Use the App-V management database to facilitate database pre-deployments for App-V management. See [How to Deploy the App-V Server](appv-deploy-the-appv-server.md) for more information about the management database.
 
- **Publishing server.** Use the App-V publishing server to host and stream virtual applications. The publishing server supports the HTTP and HTTPS protocols and does not require a database connection. See [How to install the App-V publishing server](appv-install-the-publishing-server-on-a-remote-computer.md) for more information about configuring the publishing server.

- **Reporting server.** Use the App-V reporting server to generate reports that help you manage your App-V infrastructure. The reporting server requires a connection to the reporting database. See [About App-V reporting](appv-reporting.md) for more information about the reporting capabilities in App-V.

- **Reporting database.** Use the App-V reporting database to facilitate database pre-deployments for App-V reporting. See [How to Deploy the App-V Server](appv-deploy-the-appv-server.md) for more information about the reporting database.

All five App-V server components are included in the Microsoft Desktop Optimization Pack (MDOP) 2015 ISO package, which can be downloaded from:

-   The [MSDN (Microsoft Developer Network) subscriptions site](https://msdn.microsoft.com/en-us/subscriptions/downloads/default.aspx#FileId=65215) You must have a MSDN subscription to download the MDOP ISO package from the MSDN subscriptions site.

-   The [Volume Licensing Service Center](https://www.microsoft.com/en-us/licensing/default.aspx) if you're using [Windows 10 for Enterprise or Education](https://www.microsoft.com/en-us/WindowsForBusiness/windows-product-home).

In large organizations, you might want to install more than one instance of the server components to get:

- Fault tolerance for situations when one of the servers is unavailable.

- High availability to balance server requests. We recommend using a network load balancer to achieve this.

- Scalability to support a high load. For example, you can install additional servers behind a network load balancer.

## App-V standalone deployment
The App-V standalone deployment provides a good topology for a small deployment or a test environment. When you use this type of implementation, all server components are installed on a single computer. The services and associated databases will compete for the resources on the computer that runs the App-V components. Therefore, you should not use this strategy for larger deployments.

- [How to Deploy the App-V Server](appv-deploy-the-appv-server.md)

- [How to Deploy the App-V Server Using a Script](appv-deploy-the-appv-server-with-a-script.md)

##  App-V Server distributed deployment
The distributed deployment topology can support a large App-V client base and it allows you to more easily manage and scale your environment. When you use this type of deployment, the App-V server components are deployed across multiple computers, based on the structure and requirements of the organization.

- [How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services](appv-install-the-management-and-reporting-databases-on-separate-computers.md)

- [How to install the Management Server on a Standalone Computer and Connect it to the Database](appv-install-the-management-server-on-a-standalone-computer.md)

- [How to Deploy the App-V Server Using a Script](appv-deploy-the-appv-server-with-a-script.md)

- [How to Install the Publishing Server on a Remote Computer](appv-install-the-publishing-server-on-a-remote-computer.md)

- [How to install the Management Server on a Standalone Computer and Connect it to the Database](appv-install-the-management-server-on-a-standalone-computer.md)

## Using an Enterprise Software Distribution (ESD) solution and App-V
You can also deploy packages by using an ESD. The full capabilities for integration will vary depending on the ESD that you use.

>**Note**<br>The App-V reporting server and reporting database can still be deployed alongside the ESD to collect the reporting data from the App-V clients. However, the other three server components should not be deployed, because they will conflict with the ESD functionality.

[Deploying App-V Packages by Using Electronic Software Distribution (ESD)](appv-deploying-packages-with-electronic-software-distribution-solutions.md)

## App-V Server logs
You can use App-V server log information to help troubleshoot the server installation and operational events while using App-V. The server-related log information can be reviewed with the **Event Viewer**. The following line displays the specific path for Server-related events:

**Event Viewer \\ Applications and Services Logs \\ Microsoft \\ App V**

Associated setup logs are saved in the following directory:

**%temp%**

## App-V reporting
App-V reporting allows App-V clients to collect data and then send it back to be stored in a central repository. You can use this information to get a better view of the virtual application usage within your organization. The following list displays some of the types of information the App-V client collects:

-   Information about the computer that runs the App-V client.

-   Information about virtualized packages on a specific computer that runs the App-V client.

-   Information about package open and shutdown for a specific user.

The reporting information will be maintained until it is successfully sent to the reporting server database. After the data is in the database, you can use Microsoft SQL Server Reporting Services to generate any necessary reports.

If you want to retrieve report information, you must use Microsoft SQL Server Reporting Services (SSRS) which is available with Microsoft SQL. SSRS is not installed when you install the App-V reporting server and it must be deployed separately to generate the associated reports.

For more information, see [About App-V Reporting](appv-reporting.md) and [How to Enable Reporting on the App-V Client by Using Windows PowerShell](appv-enable-reporting-on-the-appv-client-with-powershell.md).

## Other resources for the App-V server
- [Deploying App-V](appv-deploying-appv.md)

## Have a suggestion for App-V?
Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).