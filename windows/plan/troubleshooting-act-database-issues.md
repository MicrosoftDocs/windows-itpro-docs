---
title: Troubleshooting ACT Database Issues (Windows 10)
description: The following solutions may help you resolve issues that are related to your Microsoft® SQL Server® database for the Application Compatibility Toolkit (ACT).
ms.assetid: c36ab5d8-cc82-4681-808d-3d491551b75e
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: TrudyHa
---

# Troubleshooting ACT Database Issues


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The following solutions may help you resolve issues that are related to your Microsoft® SQL Server® database for the Application Compatibility Toolkit (ACT).

For information about how to set up the database, see [ACT Database Configuration](act-database-configuration.md).

## Connecting to a SQL Server Database


When you attempt to connect to a SQL Server database, you may receive the following error message:

The SQL Server you entered either does not exist or you do not have the required credentials for access.

This error message indicates that the connection to the database is not valid. To investigate this error, do the following:

1.  Verify that the SQL Server database to which you are connecting is a valid database.

2.  Verify that you have read and write permissions to the database. If you do not have read and write permissions, contact your SQL Server administrator. For more information, see [Adding a Member to a SQL Server Database Role](http://go.microsoft.com/fwlink/p/?LinkId=64170).

If you have read and write permissions to the database but cannot connect to it, you may be able to change the settings for your instance of SQL Server to resolve the issue. Namely, you can enable TCP/IP and firewall exceptions.

**To enable TCP/IP and firewall exceptions for your instance of SQL Server**

1.  In a **Command Prompt** window, type the following command to stop your instance of SQL Server.

    ``` syntax
    net stop 
    <MSSQLSERVER>
    ```

    In the preceding command, *MSSQLSERVER* is the name of the instance of SQL Server. For SQL Server, the default name is MSSQLSERVER. For Microsoft SQL Server Express, the default name is MSSQL$SQLEXPRESS.

2.  Enable TCP/IP for your instance of SQL Server:

    1.  In the **Command Prompt** window, type `SQLServerManager.msc`

    2.  In SQL Server Configuration Manager, expand **SQL Server 2005 Network Configuration**, and then click **Protocols for MSSQLSERVER**.

    3.  Right-click **TCP/IP**, and then click **Enable**.

3.  Add firewall port exceptions for your instance of SQL Server:

    1.  In the **Command Prompt** window, type `firewall.cpl`

    2.  In the Windows® Firewall tool, click the **Exceptions** tab, and then click **Add Port**.

    3.  Add a firewall exception for TCP port 1433 (SQL Server) and for UDP port 1434 (SQL Server Browser), and then click **OK**.

        **Note**  
        SQL Server Browser is the service that receives incoming SQL Server requests so that you can access the SQL Server Express database from a remote computer. By default, this service is disabled, which means that you can only access the database locally. If Application Compatibility Manager (ACM) or the ACT Log Processing Service is not installed on the same computer as the database, you must use the Services tool to manually start SQL Server Browser.

         

4.  In the **Command Prompt** window, type `net start <MSSQLSERVER>` to start your instance of SQL Server, where *MSSQLSERVER* is the name of the instance.

5.  Type `sc config SQLBrowser start= auto` to change the configuration of SQL Server Browser.

6.  Type `net start SQLBrowser` to start SQL Server Browser.

## Verifying SQL Server Version


If you attempt to connect to a SQL Server version that is not valid for ACT, you may receive the following error message:

The SQL Server you are trying to connect to is not a supported version. Please check the Help documentation to find out about the supported versions of the SQL Server.

To investigate this error, verify that ACT supports your version of SQL Server or SQL Server Express. For more information, see [Software Requirements for ACT](software-requirements-for-act.md).

## Creating an ACT Database


You cannot create an ACT database by using ACM if you do not have database-creation permissions for the instance of SQL Server. To create the database, add the required permissions to the user account and then use ACM to create it. Alternatively, ask a SQL Server administrator to create the database.

**To grant database-creation permissions to a user account**

1.  In SQL Server Management Studio, expand the **Security** folder, right-click **Logins**, and then click **New Logins**.

2.  On the **General** page, type the name of the user account that you will use to create the ACT database.

3.  Click **Server Roles**.

4.  Select the **sysadmin** or **dbcreator** check box, depending on your organization's policy.

**To create an ACT database as a SQL Server administrator**

1.  Use SQL Server Management Studio to open and run the CreateDB.sql script against your instance of SQL Server. For information about the location of the CreateDB.sql file, see [ACT Database Configuration](act-database-configuration.md).

    - or -

    Use the OSQL tool, and run the command `osql -E -S <serverName> -I CreateDB.sql`

2.  In ACM, in the **Settings** dialog box, update the **Database** box with the information for the newly created database.

    To use ACM with the ACT database, the user account must have read and write permissions to the database.

## Granting ACT Database Permissions for the ACT Log Processing Service


The ACT Log Processing Service requires read and write access to the ACT database.

**To grant permissions to the ACT database**

1.  In SQL Server Management Studio, expand the **Security** folder, right-click **Logins**, and then click **New Login**.

2.  Complete the following information on the **General** page:

    -   **Login name**. Type the name of the account that requires permissions. If you are using the Local System account for the ACT Log Processing Service, provide access to the *&lt;domain&gt;*\\*&lt;computer\_name&gt;*$ account, where *&lt;computer\_name&gt;* is the name of the computer that is running the ACT Log Processing Service.

    -   **Default database**. Select the ACT database to which your user account requires permissions.

3.  Click **User Mapping**.

4.  Select the check box next to your ACT database.

5.  Select the **db\_datareader** and **db\_datawriter** check boxes, and then click **OK**.

    **Important**  
    If you continue to experience issues with the ACT Log Processing Service, even while you are using the Local System account, see [Troubleshooting Kerberos Delegation](http://go.microsoft.com/fwlink/p/?LinkId=65474).

     

## Related topics


[ACT Database Configuration](act-database-configuration.md)

[Software Requirements for ACT](software-requirements-for-act.md)

 

 





