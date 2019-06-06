---
title: Deploying the App-V Server (Windows 10)
description: Deploying the App-V Server in App-V for Windows 10
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
---
# Deploying the App-V server

>Applies to: Windows Server 2016

You can install the Application Virtualization (App-V) server components using different deployment configurations, which are described in this topic. Before you install the server features, review the server section of [App-V security considerations](appv-security-considerations.md).

>[!NOTE]
>If you plan to use the App-V server components in your deployment, note that the version number is still listed as App-V 5.x, as the App-V server components have not changed in App-V for Windows 10.

To learn more about deploying App-V for Windows 10, read [What's new in App-V](appv-about-appv.md).

>[!IMPORTANT]
>Before installing and configuring the App-V servers, you must specify the port or ports where each component will be hosted. You must also add the associated firewall rules to allow incoming requests to access the specified ports, as the installer does not modify firewall settings.

## Download and install App-V server components

>[!NOTE]
>If you're already using App-V 5.x, you don't need to re-deploy the App-V server components, as they haven't changed since App-V 5.0 was released.

App-V offers the following five server components, each of which serves a specific purpose in an App-V environment.

* **Management server.** Use the App-V management server and console to manage your App-V infrastructure. See [Administering App-V with the management console](appv-administering-virtual-applications-with-the-management-console.md) for more information about the management server.

  >[!NOTE]
    >If you are using App-V with your electronic software distribution solution, you don’t need to use the management server and console. However, you may want to take advantage of the reporting and streaming capabilities in App-V.
* **Management database.** Use the App-V management database to facilitate database pre-deployments for App-V management. For more information about the management database, see [How to deploy the App-V server](appv-deploy-the-appv-server.md).
* **Publishing server.** Use the App-V publishing server to host and stream virtual applications. The publishing server supports the HTTP and HTTPS protocols and does not require a database connection. To learn how to configure the publishing server, see [How to install the App-V publishing server](appv-install-the-publishing-server-on-a-remote-computer.md).
* **Reporting server.** Use the App-V reporting server to generate reports that help you manage your App-V infrastructure. The reporting server requires a connection to the reporting database. To learn more about App-V's reporting capabilities, see [About App-V reporting](appv-reporting.md).
* **Reporting database.** Use the App-V reporting database to facilitate database pre-deployments for App-V reporting. To learn more about the reporting database, see [How to deploy the App-V server](appv-deploy-the-appv-server.md).

All five App-V server components are included in the Microsoft Desktop Optimization Pack (MDOP) 2015 ISO package, which can be downloaded from either of the following locations:

* The [MSDN (Microsoft Developer Network) subscriptions site](https://msdn.microsoft.com/subscriptions/downloads/default.aspx#FileId=65215). You must have a MSDN subscription to download the MDOP ISO package from this site.
* The [Volume Licensing Service Center](https://www.microsoft.com/en-us/licensing/default.aspx) if you're using [Windows 10 for Enterprise or Education](https://www.microsoft.com/en-us/WindowsForBusiness/windows-product-home).

In large organizations, you might want to install more than one instance of the server components to get the following benefits.

* Fault tolerance for situations when one of the servers is unavailable.
* High availability to balance server requests. A network load balancer can also help you achieve this.
* Scalability to support high loads. For example, you can install additional servers behind a network load balancer.

## App-V standalone deployment

The App-V standalone deployment's topology is good for small deployments or test environments. In this implementation type, all server components are installed on a single computer. The services and associated databases will compete for the resources on the computer that runs the App-V components. However, because services and associated databases will compete for the computer's resources, it's not a good idea to use the standalone deployment for larger deployments.

The following articles will give you more information about how to set up an App-V standalone deployment.

* [How to deploy the App-V server](appv-deploy-the-appv-server.md)
* [How to deploy the App-V server using a script](appv-deploy-the-appv-server-with-a-script.md)

## App-V server distributed deployment

The distributed deployment topology can support a large App-V client base, allowing you to more easily manage and scale your environment. When you use this type of deployment the App-V server components are deployed across multiple computers, based on your organization's structure and requirements.

* [How to install the management and reporting databases on separate computers from the management and reporting services](appv-install-the-management-and-reporting-databases-on-separate-computers.md)
* [How to install the management server on a standalone computer and connect it to the database](appv-install-the-management-server-on-a-standalone-computer.md)
* [How to deploy the App-V server using a script](appv-deploy-the-appv-server-with-a-script.md)
* [How to install the publishing server on a remote computer](appv-install-the-publishing-server-on-a-remote-computer.md)
* [How to install the management server on a standalone computer and connect it to the database](appv-install-the-management-server-on-a-standalone-computer.md)

## Using an Enterprise Software Distribution (ESD) solution and App-V

You can also deploy packages with an ESD. Its full integration capabilities will vary depending on which ESD you use.

>[!NOTE]
>The App-V reporting server and reporting database can still be deployed alongside the ESD to collect the reporting data from the App-V clients. However, the other three server components should not be deployed, because they will conflict with the ESD functionality.

* [Deploying App-V packages by Using Electronic Software Distribution (ESD)](appv-deploying-packages-with-electronic-software-distribution-solutions.md)

## App-V Server logs

You can use App-V server log information to help troubleshoot the server installation and operational events while using App-V. The server-related log information can be reviewed with the **Event Viewer**. The following line displays the specific path for Server-related events:

**Event Viewer \\ Applications and Services Logs \\ Microsoft \\ App V**

Associated setup logs are saved in the following directory:

**%temp%**

## App-V reporting

App-V reporting allows App-V clients to collect data and then send it back to be stored in a central repository. You can use this information to get a better view of the virtual application usage within your organization. The following list displays some of the types of information the App-V client collects:

* Information about the computer running the App-V client.
* Information about virtualized packages on a specific computer running the App-V client.
* Information about package open and shutdown for a specific user.

The reporting information will be maintained until it is successfully sent to the reporting server database. After the data is in the database, you can use Microsoft SQL Server Reporting Services (SSRS) to generate any necessary reports.

If you want to retrieve report information, you must use Microsoft SQL SSRS, which is available with Microsoft SQL. SSRS must be deployed separately to generate the associated reports, as it isn't automatically installed during App-V server installation.

For more information, see [About App-V reporting](appv-reporting.md) and [How to enable reporting on the App-V client by using Windows PowerShell](appv-enable-reporting-on-the-appv-client-with-powershell.md).

## Other App-V server resources

* [Deploying App-V](appv-deploying-appv.md)




