---
title: How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services
description: How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services
author: dansimp
ms.assetid: 2a67402e-3119-40ea-a247-24d166af1ced
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services


Use the following procedure to install the database server and management server on different computers. The computer you plan to install the database server on must be running a supported version of Microsoft SQL or the installation will fail.

**Note**  
After you complete the deployment, the **Microsoft SQL Server name**, **instance name** and **database name** will be required by the administrator installing the service to be able to connect to these databases.

 

**To install the management database and the management server on separate computers**

1.  Copy the App-V 5.1 server installation files to the computer on which you want to install it on. To start the App-V 5.1 server installation right-click and run **appv\_server\_setup.exe** as an administrator. Click **Install**.

2.  On the **Getting Started** page, review and accept the license terms, and click **Next**.

3.  On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates, select **Use Microsoft Update when I check for updates (recommended).** To disable Microsoft updates, select **I don’t want to use Microsoft Update**. Click **Next**.

4.  On the **Feature Selection** page, select the components you want to install by selecting the **Management Server Database** checkbox and click **Next**.

5.  On the **Installation Location** page, accept the default location and click **Next**.

6.  On the initial **Create New Management Server Database page**, accept the default selections if appropriate, and click **Next**.

    If you are using a custom SQL Server instance, then select **Use a custom instance** and type the name of the instance.

    If you are using a custom database name, then select **Custom configuration** and type the database name.

7.  On the next **Create New Management Server Database** page, select **Use a remote computer**, and type the remote machine account using the following format: **Domain\\MachineAccount**.

    **Note**  
    If you plan to deploy the management server on the same computer you must select **Use this local computer**.

     

    Specify the user name for the management server **Install Administrator** using the following format: **Domain\\AdministratorLoginName**. Click **Next**.

8.  To start the installation, click **Install**.

**To install the reporting database and the reporting server on separate computers**

1.  Copy the App-V 5.1 server installation files to the computer on which you want to install it on. To start the App-V 5.1 server installation right-click and run **appv\_server\_setup.exe** as an administrator. Click **Install**.

2.  On the **Getting Started** page, review and accept the license terms, and click **Next**.

3.  On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates, select **Use Microsoft Update when I check for updates (recommended).** To disable Microsoft updates, select **I don’t want to use Microsoft Update**. Click **Next**.

4.  On the **Feature Selection** page, select the components you want to install by selecting the **Reporting Server Database** checkbox and click **Next**.

5.  On the **Installation Location** page, accept the default location and click **Next**.

6.  On the initial **Create New Reporting Server Database** page, accept the default selections if appropriate, and click **Next**.

    If you are using a custom SQL Server instance, then select **Use a custom instance** and type the name of the instance.

    If you are using a custom database name, then select **Custom configuration** and type the database name.

7.  On the next **Create New Reporting Server Database** page, select **Use a remote computer**, and type the remote machine account using the following format: **Domain\\MachineAccount**.

    **Note**  
    If you plan to deploy the reporting server on the same computer you must select **Use this local computer**.

     

    Specify the user name for the reporting server **Install Administrator** using the following format: **Domain\\AdministratorLoginName**. Click **Next**.

8.  To start the installation, click **Install**.

**To install the management and reporting databases using App-V 5.1 database scripts**

1.  Copy the App-V 5.1 server installation files to the computer on which you want to install it on.

2.  To extract the App-V 5.1 database scripts, open a command prompt and specify the location where the installation files are saved and run the following command:

    **appv\_server\_setup.exe** **/LAYOUT** **/LAYOUTDIR=”InstallationExtractionLocation”**.

3.  After the extraction has been completed, to access the App-V 5.1 database scripts and instructions readme file:

    -   The App-V 5.1 Management Database scripts and instructions readme are located in the following folder: **InstallationExtractionLocation** \\ **Database Scripts** \\ **Management Database**.

    -   The App-V 5.1 Reporting Database scripts and instructions readme are located in the following folder: **InstallationExtractionLocation** \\ **Database Scripts** \\ **Reporting Database**.

4.  For each database, copy the scripts to a share and modify them following the instructions in the readme file.

    **Note**  
    For more information about modifying the required SIDs contained in the scripts see, [How to Install the App-V Databases and Convert the Associated Security Identifiers by Using PowerShell](how-to-install-the-app-v-databases-and-convert-the-associated-security-identifiers--by-using-powershell51.md).

     

5.  Run the scripts on the computer running Microsoft SQL Server.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying App-V 5.1](deploying-app-v-51.md)

 

 





