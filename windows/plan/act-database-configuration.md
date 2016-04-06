---
title: ACT Database Configuration (Windows 10)
description: The Application Compatibility Toolkit (ACT) uses a Microsoft® SQL Server® database for storing and sharing compatibility issue data.
ms.assetid: 032bbfe0-86fa-48ff-b638-b9d6a908c45e
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# ACT Database Configuration


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The Application Compatibility Toolkit (ACT) uses a Microsoft® SQL Server® database for storing and sharing compatibility issue data. If you do not use Microsoft SQL Server, you can download and install Microsoft SQL Server Express. For information about creating Microsoft SQL Server databases, see [Administering the Database Engine](http://go.microsoft.com/fwlink/p/?LinkId=64169).

## ACT Database Creation


You can create the ACT database by using one of the following methods:

-   Run Application Compatibility Manager (ACM), and then use the ACT Configuration Wizard to create a new database.

    -or-

-   Run the CreateDB.sql file, located at %SYSTEMDRIVE%\\ProgramData\\Microsoft\\Application Compatibility Toolkit\\CreateDB.sql.

### ACT Database Permissions

You must assign the following database roles to the following accounts.

-   To the user and local service accounts that will run the ACT Log Processing Service (LPS), assign the db\_datareader, db\_datawriter, and db\_owner database roles.

-   To the user account that will run Application Compatibility Manager (ACM), assign the db\_datareader and db\_datawriter database roles.

Alternatively, grant the following explicit permissions to each user that will run the ACT LPS or ACM.

-   SELECT

-   INSERT

-   UPDATE

-   DELETE

-   EXECUTE

### ACT Database Recommendations

We also recommend that you make the following changes to the database as part of your deployment planning:

-   **Create a larger database, including a larger log file–size setting, and then set the growth increments appropriately**. If you create a database with the default setting for data storage, the data portion of the database will have an initial size of 1 megabyte (MB), and a growth increment of 1 MB. If you create a database with the default setting for log file storage, the log file portion of the database will have an initial size of 1 MB and a growth increment of 10 percent. We recommend that you maintain a data-to-log file ratio of 5:1 or 4:1. For example, if your data portion is 5 gigabytes (GB), your log file portion should be 1 GB.

-   **Change the recovery model of your database**. The default recovery model is **Full**, but we recommend that you change the recovery model to **Simple** to improve performance and reduce disk space requirements.

-   **Store the data portion and log file portion of your ACT database on separate hard drives**. Unless otherwise specified by your SQL Administrator, the default is for the data and log files to be stored on the same hard drive. We recommend separating the data from the log files to reduce disk I/O contention.

## Related topics


[ACT Tools, Packages, and Services](act-tools-packages-and-services.md)

[ACT Deployment Options](act-deployment-options.md)

[ACT Database Migration](act-database-migration.md)

[ACT LPS Share Permissions](act-lps-share-permissions.md)

 

 





