---
title: ACT Database Migration (Windows 10)
description: The schema for an ACT database can change when ACT is updated or when a new version of ACT is released.
ms.assetid: b13369b4-1fb7-4889-b0b8-6d0ab61aac3d
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# ACT Database Migration


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The schema for an ACT database can change when ACT is updated or when a new version of ACT is released. If the schema for an ACT database does not match the current schema, you can migrate the compatibility data to a new database. You can then use the current version of ACT to open the new database.

To create the new database, you must have database-creation permissions on the instance of SQL Server.

## Migrating Compatibility Data from an ACT Database


You can migrate compatibility data from an ACT database to a new database by using one of the following methods:

-   Run Application Compatibility Manager (ACM), and then use the ACT Configuration Wizard to open the database. The wizard guides you through migrating the compatibility data to a new database.

-   Run the MigrateDB.sql file, located at %SYSTEMDRIVE%\\ProgramData\\Microsoft\\Application Compatibility Toolkit\\MigrateDB.sql.. The following table shows the location of the MigrateDB.sql file.

## Database Migration from ACT 5.6


When you migrate compatibility data from an ACT 5.6 database to a new database, the following information is excluded from the migration:

-   Issues that were reported by ACT 5.6 data-collection packages (DCPs).

-   Solutions that correspond to issues reported by ACT 5.6 DCPs.

-   Lists of file names that ACT 5.6 associated with each application.

You cannot migrate any compatibility data from ACT databases that were created on a version of ACT before ACT 5.6.

## Related topics


[ACT Tools, Packages, and Services](act-tools-packages-and-services.md)

[ACT Deployment Options](act-deployment-options.md)

[ACT Database Configuration](act-database-configuration.md)

[ACT LPS Share Permissions](act-lps-share-permissions.md)

 

 





