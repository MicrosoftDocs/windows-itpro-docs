---
title: How to Deploy the App-V Server (Windows 10)
description: How to Deploy the App-V Server in App-V for Windows 10
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
# How to Deploy the App-V Server (new installation)

>Applies to: Windows Server 2016

## Before you start

>[!IMPORTANT]
>If you're already using App-V 5.x, you don't need to re-deploy the App-V server components as they haven't changed since App-V 5.0 was released.

* Ensure that you’ve installed required software. See [App-V prerequisites](appv-prerequisites.md).
* Review the server section of [App-V security considerations](appv-security-considerations.md).
* Specify a port where each component will be hosted.
* Add firewall rules to allow incoming requests to access the specified ports.
* If you use SQL scripts instead of the Windows Installer to set up the Management database or Reporting database, you must run the required SQL scripts before installing the Management Server or Reporting Server. See [How to deploy the App-V databases by using SQL scripts](appv-deploy-appv-databases-with-sql-scripts.md).

## Installing the App-V server

1. Download the App-V server components. All five App-V server components are included in the Microsoft Desktop Optimization Pack (MDOP) 2015 ISO package, which can be downloaded from either of the following locations:

    * The [MSDN (Microsoft Developer Network) subscriptions site](https://msdn.microsoft.com/subscriptions/downloads/default.aspx#FileId=65215). You must have a MSDN subscription to download the MDOP ISO package from this site.
    * The [Volume Licensing Service Center](https://www.microsoft.com/en-us/licensing/default.aspx) if you're using [Windows 10 for Enterprise or Education](https://www.microsoft.com/en-us/WindowsForBusiness/windows-product-home).
2. Copy the App-V server installation files to the computer on which you want to install it.
3. Start the App-V server installation by right-clicking and running **appv\_server\_setup.exe** as an administrator, and then click **Install**.
4. Review and accept the license terms, and choose whether to enable Microsoft updates.
5. On the **Feature Selection** page, select all components listed in the following table.

    | Component | Description |
    |---|---|
    | Management server | Provides overall management functionality for the App-V infrastructure. |
    | Management database | Facilitates database predeployments for App-V management. |
    | Publishing server | Provides hosting and streaming functionality for virtual applications. |
    | Reporting server | Provides App-V reporting services. |
    | Reporting database | Facilitates database predeployments for App-V reporting. |
6. On the **Installation Location** page, accept the default location where the selected components will be installed, or change the location by typing a new path on the **Installation Location** line.
7. On the initial **Create New Management Database** page, configure the **Microsoft SQL Server instance** and **Management Server database** by selecting the appropriate option below.

    | Method | What you need to do |
    |---|---|
    | You are using a custom Microsoft SQL Server instance. | Select **Use the custom instance**, then specify the instance name.<br/>Use the format **INSTANCENAME**. The assumed installation location is the local computer.<br/>Not supported: A server name using the format **ServerName**\\**INSTANCE**.|
    | You are using a custom database name. | Select **Custom configuration** and type the database name.<br/>The database name must be unique, or the installation will fail.|
8. On the **Configure** page, accept the default value, **Use this local computer**.

    >[!NOTE]
    >If you're installing the Management server and Management database side-by-side, the appropriate options are selected by default and cannot be changed.
9. On the initial **Create New Reporting Database** page, configure the **Microsoft SQL Server instance** and **Reporting Server database** by selecting the appropriate option below.

    | Method | What you need to do |
    |---|---|
    | You are using a custom Microsoft SQL Server instance. | Select **Use the custom instance**, and type the name of the instance.<br/>Use the format **INSTANCENAME**. The assumed installation location is the local computer.<br/>Not supported: A server name using the format **ServerName**\\**INSTANCE**.|
    | You are using a custom database name. | Select **Custom configuration** and type the database name.<br/>The database name must be unique, or the installation will fail.|
10. On the **Configure** page, accept the default value: **Use this local computer**.

    >[!NOTE]
    >If you're installing the Management server and Management database side-by-side, the appropriate options are selected by default and cannot be changed.
11. On the **Configure** (Management Server Configuration) page, specify the following:

    |  Item to configure | Description and examples |
    |---|---|
    | Specify AD group | Specify the AD group with sufficient permissions to manage the App-V environment. Example: MyDomain\MyUser<br><br/>After installation, you can add users or groups on the management console. However, global security groups and Active Directory Domain Services (AD DS) distribution groups are not supported. You must use <strong>Domain local</strong> or <strong>Universal</strong> groups to perform this action.|
    |Website name | Specify the custom name that will be used to run the publishing service.<br>If you do not have a custom name, you don't have to change it.|
    |Port binding | Specify a unique port number that will be used by App-V. Example: **12345**<br>Ensure that the port specified is not being used by another website. |
12. On the **Configure Publishing Server Configuration** page, specify the following:

    | Item to configure | Description and examples |
    |---|---|
    | Specify the management service URL | Example: http:<span></span>//localhost:12345 |
    | Website name | Specify the custom website name that will be used to run the publishing service. <br>If you do not have a custom name, do not make any changes. |
    | Port binding | Specify a unique port number that will be used by App-V. Example: 54321<br>Ensure that the port specified is not being used by another website. |
13. On the **Reporting Server** page, specify the following:

    | Item to configure | Description and examples |
    |---|---|
    | Website name | Specify the custom name that will be used to run the Reporting Service.  <br>If you do not have a custom name, do not make any changes. |
    | Port binding | Specify a unique port number that will be used by App-V. Example: 55555<br/>Ensure that the port specified is not being used by another website.|
14. To start the installation, click **Install** on the **Ready** page, and then click **Close** on the **Finished** page.
15. To verify that the setup completed successfully, open a web browser, and type the following URL with the bracketed variables adjusted according to your specifications in the earlier steps:

    ```http://<Management server machine name>:<Management service port number>/console.html```

    Example: ```http://localhost:12345/console.html```. If the installation succeeded, the App-V Management console will display with no errors.

## Related topics

* [Deploying App-V](appv-deploying-appv.md)
* [How to install the management and reporting databases on separate computers from the management and reporting services](appv-install-the-management-and-reporting-databases-on-separate-computers.md)
* [How to install the publishing server on a remote computer](appv-install-the-publishing-server-on-a-remote-computer.md)
* [How to deploy the App-V server using a script](appv-deploy-the-appv-server-with-a-script.md)
