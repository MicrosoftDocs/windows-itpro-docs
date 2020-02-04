---
title: How to install the Reporting Server on a Standalone Computer and Connect it to the Database
description: How to install the Reporting Server on a Standalone Computer and Connect it to the Database
author: dansimp
ms.assetid: 11f07750-4045-4c8d-a583-7d70c9e9aa7b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to install the Reporting Server on a Standalone Computer and Connect it to the Database


Use the following procedure to install the reporting server on a standalone computer and connect it to the database.

**Important**  
Before performing the following procedure you should read and understand [About App-V 5.1 Reporting](about-app-v-51-reporting.md).



**To install the reporting server on a standalone computer and connect it to the database**

1.  Copy the App-V 5.1 server installation files to the computer on which you want to install it on. To start the App-V 5.1 server installation right-click and run **appv\_server\_setup.exe** as an administrator. Click **Install**.

2.  On the **Getting Started** page, review and accept the license terms, and click **Next**.

3.  On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates, select **Use Microsoft Update when I check for updates (recommended).** To disable Microsoft updates, select **I don’t want to use Microsoft Update**. Click **Next**.

4.  On the **Feature Selection** page, select the **Reporting Server** checkbox and click **Next**.

5.  On the **Installation Location** page, accept the default location and click **Next**.

6.  On the **Configure Existing Reporting Database** page, select **Use a remote SQL Server**, and type the machine name of the computer running Microsoft SQL Server, for example **SqlServerMachine**.

    **Note**  
    If the Microsoft SQL Server is deployed on the same server, select **Use local SQL Server**.



~~~
For the SQL Server Instance, select **Use the default instance**. If you are using a custom Microsoft SQL Server instance, you must select **Use a custom instance** and then type the name of the instance.

Specify the **SQL Server Database name** that this reporting server will use, for example **AppvReporting**.
~~~

7. On the **Configure Reporting Server Configuration** page.

   -   Specify the Website Name that you want to use for the Reporting Service. Leave the default unchanged if you do not have a custom name.

   -   For the **Port binding**, specify a unique port number that will be used by App-V 5.1, for example **55555**. You should also ensure that the port specified is not being used by another website.

8. Click **Install**.

   **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[About App-V 5.1 Reporting](about-app-v-51-reporting.md)

[Deploying App-V 5.1](deploying-app-v-51.md)

[How to Enable Reporting on the App-V 5.1 Client by Using PowerShell](how-to-enable-reporting-on-the-app-v-51-client-by-using-powershell.md)









