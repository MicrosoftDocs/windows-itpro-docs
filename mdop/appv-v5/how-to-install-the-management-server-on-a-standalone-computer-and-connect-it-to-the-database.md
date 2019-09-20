---
title: How to install the Management Server on a Standalone Computer and Connect it to the Database
description: How to install the Management Server on a Standalone Computer and Connect it to the Database
author: dansimp
ms.assetid: 95281287-cb56-4117-befd-854268ea147c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to install the Management Server on a Standalone Computer and Connect it to the Database


Use the following procedure to install the management server on a standalone computer and connect it to the database.

**To install the management server on a standalone computer and connect it to the database**

1.  Copy the App-V 5.0 server installation files to the computer on which you want to install it on. To start the App-V 5.0 server installation right-click and run **appv\_server\_setup.exe** as an administrator. Click **Install**.

2.  On the **Getting Started** page, review and accept the license terms, and click **Next**.

3.  On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates, select **Use Microsoft Update when I check for updates (recommended).** To disable Microsoft updates, select **I don’t want to use Microsoft Update**. Click **Next**.

4.  On the **Feature Selection** page, select the **Management Server** checkbox and click **Next**.

5.  On the **Installation Location** page, accept the default location and click **Next**.

6.  On the **Configure Existing Management Database** page, select **Use a remote SQL Server**, and type the machine name of the computer running Microsoft SQL SQL, for example **SqlServerMachine**.

    **Note**  
    If the Microsoft SQL Server is deployed on the same server, select **Use local SQL Server**.



~~~
For the SQL Server Instance, select **Use the default instance**. If you are using a custom Microsoft SQL Server instance, you must select **Use a custom instance** and then type the name of the instance.

Specify the **SQL Server Database name** that this management server will use, for example **AppvManagement**.
~~~

7. On the **Configure Management Server Configuration** page, specify the AD group or account that will connect to the management console for administrative purposes for example **MyDomain\\MyUser** or **MyDomain\\AdminGroup**. The account or AD group you specify will be enabled to manage the server through the management console. You can add additional users or groups using the management console after installation

   Specify the **Website Name** that you want to use for the management service. Accept the default if you do not have a custom name. For the **Port Binding**, specify a unique port number to be used, for example **12345**.

8. Click **Install**.

9. To confirm that the setup has completed successfully, open a web browser, and type the following URL: http://managementserver:portnumber/Console.html if the installation was successful you should see the **Silverlight Management Console** appear without any error messages or warnings being displayed.

   **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying App-V 5.0](deploying-app-v-50.md)









