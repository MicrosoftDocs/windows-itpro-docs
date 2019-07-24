---
title: How to install the Reporting Server on a standalone computer and connect it to the database (Windows 10)
description: How to install the App-V Reporting Server on a Standalone Computer and Connect it to the Database
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
# How to install the reporting server on a standalone computer and connect it to the database

>Applies to: Windows Server 2016

Use the following procedure to install the reporting server on a standalone computer and connect it to the database.

>[!IMPORTANT]
>Before performing the following procedure you should read and understand [About App-V reporting](appv-reporting.md).

## Install the reporting server on a standalone computer and connect it to the database

1. Copy the App-V server installation files to the computer you plan to install it on. To start the App-V server installation, run **appv\_server\_setup.exe** as an administrator, then select **Install**.
2. On the **Getting started** page, review and accept the license terms, then select **Next**.
3. On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft Update, select **Use Microsoft Update when I check for updates (recommended)**. To disable Microsoft Update, select **I don’t want to use Microsoft Update**. Select **Next**.
4. On the **Feature selection** page, select the **Reporting Server** checkbox, then select **Next**.
5. On the **Installation location** page, accept the default location and select **Next**.
6. On the **Configure existing reporting database** page, select **Use a remote SQL Server**, then enter the machine name of the computer running Microsoft SQL Server. For example, you can name your computer **SqlServerMachine**.

   > [!NOTE]
    >If the Microsoft SQL Server is deployed on the same server, select **Use local SQL Server**. For the SQL Server instance, select **Use the default instance**. If you're using a custom Microsoft SQL Server instance, select **Use a custom instance**, then enter the name of your custom instance. Specify the **SQL Server Database name** that this reporting server will use; for example, you can name the server **AppvReporting**.
7. On the **Configure reporting server configuration** page.

    * Specify the website name  you want to use for the reporting service. Leave the default unchanged if you do not have a custom name.
    * For the **Port binding**, specify a unique, five-digit port number for App-V to use, such as **55555**. Make sure that the specified port isn't being used by another website.
8. Select **Install**.

 



## Related topics

* [About App-V reporting](appv-reporting.md)
* [Deploying App-V](appv-deploying-appv.md)
* [How to enable reporting on the App-V client by using Windows PowerShell](appv-enable-reporting-on-the-appv-client-with-powershell.md)
