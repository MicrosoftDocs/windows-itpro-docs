---
title: How to Deploy the App-V Databases by Using SQL Scripts (Windows 10)
description: How to Deploy the App-V Databases by Using SQL Scripts
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.topic: article
---
# How to deploy the App-V databases by using SQL scripts

>Applies to: Windows Server 2016

Use the following instructions to use SQL scripts, rather than the Windows Installer, to:

* Install the App-V databases
* Upgrade the App-V databases to a later version

>[!NOTE]
>If you have already deployed an App-V 5.0 SP3 database or later, the SQL scripts are not required to upgrade to App-V for Windows.

## How to install the App-V databases by using SQL scripts

1. Before you install the database scripts, review and keep a copy of the App-V license terms. By running the database scripts, you are agreeing to the license terms. If you do not accept them, you should not use this software.

2. Copy **appv\_server\_setup.exe** from the App-V release media to a temporary location.

3. From a command prompt, run **appv\_server\_setup.exe** and specify a temporary location for extracting the database scripts.

    ```sql
    appv\_server\_setup.exe /layout c:\\_<temporary location path>_
    ```

4. Browse to the temporary location that you created, open the extracted **DatabaseScripts** folder, and review the appropriate **readme.txt** file for instructions:

    | Database | Location of readme.txt file to use|
    |---|---|
    | Management database | ManagementDatabase subfolder |
    | Reporting database | ReportingDatabase subfolder |

>[!CAUTION]
>The readme.txt file in the ManagementDatabase subfolder is out of date. The information in the updated readme files below is the most current and should supersede the readme information provided in the **DatabaseScripts** folders.

>[!IMPORTANT]
> The InsertVersionInfo.sql script is not required for versions of the App-V management database later than App-V 5.0 SP3.
> The Permissions.sql script should be updated according to Step 2 in [KB article 3031340](https://support.microsoft.com/kb/3031340). Step 1 is not required for versions of App-V later than App-V 5.0 SP3.

### Updated management database README file content

```syntax
***********************************************************************************************************
Before you install and use the Application Virtualization Database Scripts, you must:

- Review the license terms.
- Print and retain a copy of the license terms for your records.

By running the App-V you agree to such license terms. If you do not accept them, do not use the software.
***********************************************************************************************************

Steps to install "AppVManagement" schema in SQL SERVER.

## PREREQUISITES:

 1. Review the installation package.  The following files MUST exist:

    SQL files
    ---------
    Database.sql
    CreateTables.sql
    CreateStoredProcs.sql
    UpdateTables.sql
    Permissions.sql

 2. Ensure the target SQL Server instance and SQL Server Agent service are running.

 3. If you are not running the scripts directly on the server, ensure the 
    necessary SQL Server client software is installed and available from
    the specified location.  Specifically, the "osql" command must be supported for these scripts to run.

## PREPARATION:

 1. Review the database.sql file and modify as necessary.  Although the
    defaults are likely sufficient, it is suggested that the following
    settings be reviewed:

    DATABASE - ensure name is satisfactory - default is "AppVManagement".   

 2. Review the Permissions.sql file and provide all the necessary account information
    for setting up read and write access on the database. Note: Default settings in the file will not work.

## INSTALLATION:

 1. Run the database.sql against the "master" database.  Your user 
    credential must have the ability to create databases.
    This script will create the database.

 2. Run the following scripts against the "AppVManagement" database using the 
    same account as above in order.

    CreateTables.sql
    CreateStoredProcs.sql
    UpdateTables.sql
    Permissions.sql 

```

### Updated reporting database README file content

```syntax
***********************************************************************************************************
Before you install and use the Application Virtualization Database Scripts, you must:

- Review the license terms.
- Print and retain a copy of the license terms for your records.

By running the App-V you agree to such license terms. If you do not accept them, do not use the software.
***********************************************************************************************************

Steps to install "AppVReporting" schema in SQL SERVER.

## PREREQUISITES:

 1. Review the installation package.  The following files MUST exist:

    SQL files
    ---------
    Database.sql
    UpgradeDatabase.sql
    CreateTables.sql
    CreateReportingStoredProcs.sql
    CreateStoredProcs.sql
    CreateViews.sql
    Permissions.sql
    ScheduleReportingJob.sql

 2. Ensure the target SQL Server instance and SQL Server Agent service are running.

 3. If you are not running the scripts directly on the server, ensure the 
    necessary SQL Server client software is installed and executable from
    the location you have chosen.  Specifically, the "osql" command must be supported for these scripts to run.

## PREPARATION:

 1. Review the database.sql file and modify as necessary.  Although the
    defaults are likely sufficient, it is suggested that the following
    settings be reviewed:

    DATABASE - ensure name is satisfactory - default is "AppVReporting".

 2. Review the Permissions.sql file and provide all the necessary account information
    for setting up read and write access on the database. Note: Default settings
    in the file will not work.

 3. Review the ScheduleReportingJob.sql file and make sure that the stored proc schedule
    time is acceptable. The default stored proc schedule time is at 12.01 AM (line 84). 
    If this time is not suitable, you can change this to a more suitable time. The time is in the format HHMMSS.

## INSTALLATION:

 1. Run the database.sql against the "master" database.  Your user 
    credential must have the ability to create databases.
    This script will create the database.

 2. If upgrading the database, run UpgradeDatabase.sql This will upgrade database schema.

 2. Run the following scripts against the "AppVReporting" database using the 
    same account as above in order.
    
    CreateTables.sql
    CreateReportingStoredProcs.sql
    CreateStoredProcs.sql
    CreateViews.sql
    Permissions.sql
    ScheduleReportingJob.sql
```





## Related topics

* [Deploying the App-V Server](appv-deploying-the-appv-server.md)
* [How to deploy the App-V Server](appv-deploy-the-appv-server.md)
