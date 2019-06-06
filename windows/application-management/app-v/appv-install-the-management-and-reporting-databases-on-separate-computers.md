---
title: How to Install the Management and Reporting Databases on separate computers from the Management and Reporting Services (Windows 10)
description: How to install the Management and Reporting Databases on separate computers from the Management and Reporting Services.
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
# How to Install the Management and Reporting Databases on separate computers from the Management and Reporting Services

>Applies to: Windows Server 2016

Use the following procedure to install the database server and management server on different computers. The computer you plan to install the database server on must be running a supported version of Microsoft SQL or the installation will fail.

>[!NOTE]
>After you complete the deployment, the administrator installing the service will need the Microsoft SQL Server name, instance name and the database name to connect to these databases.

## Installing the management database and the management server on separate computers

1. Copy the App-V server installation files to the computer you want to install it on. To start the App-V server installation, run **appv\_server\_setup.exe** as an administrator, then select **Install**.
2. On the **Getting started** page, review and accept the license terms, then select **Next**.
3. On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates, select **Use Microsoft Update when I check for updates (recommended).** To disable Microsoft updates, select **I don’t want to use Microsoft Update**, then select **Next**.
4. On the **Feature selection** page, select the components you want to install by first selecting the **Management Server Database** checkbox, then selecting **Next**.
5. On the **Installation location** page, accept the default location and select **Next**.
6. On the initial **Create new management server database** page, accept the default selections if appropriate, then select **Next**.
   * If you are using a custom SQL Server instance, select **Use a custom instance** and enter the name of the instance.
   * If you are using a custom database name, select **Custom configuration** and enter the database name.
7. On the next **Create new management server database** page, select **Use a remote computer**, then enter the remote machine account using the following format: ```Domain\MachineAccount```.

    >[!NOTE]
    >If you plan to deploy the management server on the same computer you must select **Use this local computer**. Specify the user name for the management server **Install Administrator** using the following format: ```Domain\AdministratorLoginName```. After that, select **Next**.
8. To start the installation, select **Install**.

## Installing the reporting database and the reporting server on separate computers

1. Copy the App-V server installation files to the computer you want to install it on. To start the App-V server installation, run **appv\_server\_setup.exe** as an administrator, then select **Install**.
2. On the **Getting started** page, review and accept the license terms, then select **Next**.
3. On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft Update, select **Use Microsoft Update when I check for updates (recommended)**. To disable Microsoft Update, select **I don’t want to use Microsoft Update**. After that, select **Next**.
4. On the **Feature selection** page, select the components you want to install by first selecting the **Reporting Server Database** checkbox, then selecting **Next**.
5. On the **Installation Location** page, accept the default location and select **Next**.
6. On the initial **Create new management server database** page, accept the default selections if appropriate, then select **Next**.
   * If you're using a custom SQL Server instance, select **Use a custom instance** and enter the instance name.
   * If you're using a custom database name, select **Custom configuration** and enter the database name.
7. On the next **Create new management server database** page, select **Use a remote computer**, and enter the remote machine account using the following format: ```Domain\MachineAccount```.

    >[!NOTE]
    >If you plan to deploy the reporting server on the same computer you must select **Use this local computer**. Specify the user name for the reporting server **Install Administrator** using the following format: Domain\\AdministratorLoginName. After that, select **Next**.
8. To start the installation, select **Install**.

## Installing the management and reporting databases using App-V database scripts

1. Copy the App-V server installation files to the computer on which you want to install it on.
2. To extract the App-V database scripts, open a command prompt and specify the location where the installation files are saved and run the following command:

   ```SQL
    appv\_server\_setup.exe /LAYOUT /LAYOUTDIR=”InstallationExtractionLocation”
   ```
  
3. After the extraction has been completed, to access the App-V database scripts and instructions readme file:

   * The App-V Management Database scripts and instructions readme are located in the following folder: **InstallationExtractionLocation** \\ **Database Scripts** \\ **Management Database**.
   * The App-V Reporting Database scripts and instructions readme are located in the following folder: **InstallationExtractionLocation** \\ **Database Scripts** \\ **Reporting Database**.
4. For each database, copy the scripts to a share and modify them following the instructions in the readme file.

   >[!NOTE]
   >For more information about modifying the required SIDs contained in the scripts see, [How to Install the App-V Databases and Convert the Associated Security Identifiers by Using Windows PowerShell](appv-install-the-appv-databases-and-convert-the-associated-security-identifiers-with-powershell.md).
5. Run the scripts on the computer running Microsoft SQL Server.





## Related topics

* [Deploying App-V](appv-deploying-appv.md)
