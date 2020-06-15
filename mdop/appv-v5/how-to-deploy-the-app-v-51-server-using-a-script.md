---
title: How to Deploy the App-V 5.1 Server Using a Script
description: How to Deploy the App-V 5.1 Server Using a Script
author: dansimp
ms.assetid: 15c33d7b-9b61-4dbc-8674-399bb33e5f7e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 03/20/2020
---

# How to Deploy the App-V 5.1 Server Using a Script

In order to complete the **appv\_server\_setup.exe** Server setup successfully using the command line, you must specify and combine multiple parameters.

## Install the App-V 5.1 server using a script

- Use the following information about installing the App-V 5.1 server using the command line.

    > [!NOTE]
    > The information in the following tables can also be accessed using the command line by typing the following command: **appv\_server\_setup.exe /?**.

### Install the Management server and Management database on a local machine

The following parameters are valid with both the default and custom instance of Microsoft SQL Server:

- /MANAGEMENT_SERVER
- /MANAGEMENT_ADMINACCOUNT
- /MANAGEMENT_WEBSITE_NAME
- /MANAGEMENT_WEBSITE_PORT
- /DB_PREDEPLOY_MANAGEMENT
- /MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT
- /MANAGEMENT_DB_NAME

**Example: Using a custom instance of Microsoft SQL Server**

```dos
appv_server_setup.exe /QUIET /MANAGEMENT_SERVER /MANAGEMENT_ADMINACCOUNT="Domain\AdminGroup" /MANAGEMENT_WEBSITE_NAME="Microsoft AppV Management Service" /MANAGEMENT_WEBSITE_PORT="8080" /DB_PREDEPLOY_MANAGEMENT /MANAGEMENT_DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /MANAGEMENT_DB_NAME="AppVManagement"
```

### Install the Management server using an existing Management database on a local machine

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /MANAGEMENT_SERVER
- /MANAGEMENT_ADMINACCOUNT
- /MANAGEMENT_WEBSITE_NAME
- /MANAGEMENT_WEBSITE_PORT
- /EXISTING_MANAGEMENT_DB_SQL_SERVER_USE_LOCAL
- */EXISTING_MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
- /EXISTING_MANAGEMENT_DB_NAME

To use a custom instance of Microsoft SQL Server, use the following parameters (difference from default instance in *italic*):

- /MANAGEMENT_SERVER
- /MANAGEMENT_ADMINACCOUNT
- /MANAGEMENT_WEBSITE_NAME
- /MANAGEMENT_WEBSITE_PORT
- /EXISTING_MANAGEMENT_DB_SQL_SERVER_USE_LOCAL
- */EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
- /EXISTING_MANAGEMENT_DB_NAME

**Example: Using a custom instance of Microsoft SQL Server**

```dos
appv_server_setup.exe /QUIET /MANAGEMENT_SERVER /MANAGEMENT_ADMINACCOUNT="Domain\AdminGroup" /MANAGEMENT_WEBSITE_NAME="Microsoft AppV Management Service" /MANAGEMENT_WEBSITE_PORT="8080" /EXISTING_MANAGEMENT_DB_SQL_SERVER_USE_LOCAL /EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE ="SqlInstanceName" /EXISTING_MANAGEMENT_DB_NAME ="AppVManagement"
```

### Install the Management server using an existing Management database on a remote machine

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /MANAGEMENT_SERVER
- /MANAGEMENT_ADMINACCOUNT
- /MANAGEMENT_WEBSITE_NAME
- /MANAGEMENT_WEBSITE_PORT
- /EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME
- */EXISTING_MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
- /EXISTING_MANAGEMENT_DB_NAME

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /MANAGEMENT_SERVER
- /MANAGEMENT_ADMINACCOUNT
- /MANAGEMENT_WEBSITE_NAME
- /MANAGEMENT_WEBSITE_PORT
- /EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME
- */EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
- /EXISTING_MANAGEMENT_DB_NAME

**Example: Using a custom instance of Microsoft SQL Server:**

```dos
appv_server_setup.exe /QUIET /MANAGEMENT_SERVER /MANAGEMENT_ADMINACCOUNT="Domain\AdminGroup" /MANAGEMENT_WEBSITE_NAME="Microsoft AppV Management Service" /MANAGEMENT_WEBSITE_PORT="8080" /EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME="SqlServermachine.domainName" /EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE ="SqlInstanceName" /EXISTING_MANAGEMENT_DB_NAME ="AppVManagement"
```

### Install the Management database and the Management Server on the same computer

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /DB_PREDEPLOY_MANAGEMENT
- */MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
- /MANAGEMENT_DB_NAME
- /MANAGEMENT_SERVER_MACHINE_USE_LOCAL
- /MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /DB_PREDEPLOY_MANAGEMENT
- */MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
- /MANAGEMENT_DB_NAME
- /MANAGEMENT_SERVER_MACHINE_USE_LOCAL
- /MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT

**Example: Using a custom instance of Microsoft SQL Server**

```dos
appv_server_setup.exe /QUIET /DB_PREDEPLOY_MANAGEMENT /MANAGEMENT_DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /MANAGEMENT_DB_NAME="AppVManagement" /MANAGEMENT_SERVER_MACHINE_USE_LOCAL /MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

### Install the Management database on a different computer than the Management server

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /DB_PREDEPLOY_MANAGEMENT
- */MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
- /MANAGEMENT_DB_NAME
- /MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT
- /MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /DB_PREDEPLOY_MANAGEMENT
- */MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
- /MANAGEMENT_DB_NAME
- /MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT
- /MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT

**Example: Using a custom instance of Microsoft SQL Server**

```dos
appv_server_setup.exe /QUIET /DB_PREDEPLOY_MANAGEMENT /MANAGEMENT_DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /MANAGEMENT_DB_NAME="AppVManagement" /MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT="Domain\MachineAccount" /MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

### Install the publishing server

To use the default instance of Microsoft SQL Server, use the following parameters:

- /PUBLISHING_SERVER
- /PUBLISHING_MGT_SERVER
- /PUBLISHING_WEBSITE_NAME
- /PUBLISHING_WEBSITE_PORT

**Example: Using a custom instance of Microsoft SQL Server:**

```dos
appv_server_setup.exe /QUIET /PUBLISHING_SERVER /PUBLISHING_MGT_SERVER="http://ManagementServerName:ManagementPort" /PUBLISHING_WEBSITE_NAME="Microsoft AppV Publishing Service" /PUBLISHING_WEBSITE_PORT="8081"
```

### Install the Reporting server and Reporting database on a local machine

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /REPORTING _SERVER
- /REPORTING _WEBSITE_NAME
- /REPORTING _WEBSITE_PORT
- /DB_PREDEPLOY_REPORTING
- */REPORTING _DB_SQLINSTANCE_USE_DEFAULT*
- /REPORTING _DB_NAME

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /REPORTING _SERVER
- */REPORTING _ADMINACCOUNT*
- /REPORTING _WEBSITE_NAME
- /REPORTING _WEBSITE_PORT
- /DB_PREDEPLOY_REPORTING
- */REPORTING _DB_CUSTOM_SQLINSTANCE*
- /REPORTING _DB_NAME

**Example: Using a custom instance of Microsoft SQL Server:**

```dos
appv_server_setup.exe /QUIET /REPORTING_SERVER /REPORTING_WEBSITE_NAME="Microsoft AppV Reporting Service" /REPORTING_WEBSITE_PORT="8082" /DB_PREDEPLOY_REPORTING /REPORTING_DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /REPORTING_DB_NAME="AppVReporting"
```

### Install the Reporting server and using an existing Reporting database on a local machine

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /REPORTING _SERVER
- /REPORTING _WEBSITE_NAME
- /REPORTING _WEBSITE_PORT
- /EXISTING_REPORTING_DB_SQL_SERVER_USE_LOCAL
- */EXISTING_REPORTING _DB_SQLINSTANCE_USE_DEFAULT*
- /EXISTING_REPORTING _DB_NAME

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /REPORTING _SERVER
- */REPORTING _ADMINACCOUNT*
- /REPORTING _WEBSITE_NAME
- /REPORTING _WEBSITE_PORT
- /EXISTING_REPORTING_DB_SQL_SERVER_USE_LOCAL
- */EXISTING_REPORTING _DB_CUSTOM_SQLINSTANCE*
- /EXISTING_REPORTING _DB_NAME

**Example: Using a custom instance of Microsoft SQL Server:**

```dos
appv_server_setup.exe /QUIET /REPORTING_SERVER /REPORTING_WEBSITE_NAME="Microsoft AppV Reporting Service" /REPORTING_WEBSITE_PORT="8082" /EXISTING_REPORTING_DB_SQL_SERVER_USE_LOCAL /EXISTING_REPORTING _DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /EXITING_REPORTING_DB_NAME="AppVReporting"
```

### Install the Reporting server using an existing Reporting database on a remote machine

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /REPORTING _SERVER
- /REPORTING _WEBSITE_NAME
- /REPORTING _WEBSITE_PORT
- /EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME
- */EXISTING_REPORTING _DB_SQLINSTANCE_USE_DEFAULT*
- /EXISTING_REPORTING _DB_NAME

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /REPORTING _SERVER
- */REPORTING _ADMINACCOUNT*
- /REPORTING _WEBSITE_NAME
- /REPORTING _WEBSITE_PORT
- /EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME
- */EXISTING_REPORTING _DB_CUSTOM_SQLINSTANCE*
- /EXISTING_REPORTING _DB_NAME

**Example: Using a custom instance of Microsoft SQL Server:**

```dos
appv_server_setup.exe /QUIET /REPORTING_SERVER /REPORTING_WEBSITE_NAME="Microsoft AppV Reporting Service" /REPORTING_WEBSITE_PORT="8082" /EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME="SqlServerMachine.DomainName" /EXISTING_REPORTING _DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /EXITING_REPORTING_DB_NAME="AppVReporting"
```

### Install the Reporting database on the same computer as the Reporting server

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /DB_PREDEPLOY_REPORTING
- */REPORTING _DB_SQLINSTANCE_USE_DEFAULT*
- /REPORTING _DB_NAME
- /REPORTING_SERVER_MACHINE_USE_LOCAL
- /REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /DB_PREDEPLOY_REPORTING
- */REPORTING _DB_CUSTOM_SQLINSTANCE*
- /REPORTING _DB_NAME
- /REPORTING_SERVER_MACHINE_USE_LOCAL
- /REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT

**Example: Using a custom instance of Microsoft SQL Server:**

```dos
appv_server_setup.exe /QUIET /DB_PREDEPLOY_REPORTING /REPORTING_DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /REPORTING_DB_NAME="AppVReporting" /REPORTING_SERVER_MACHINE_USE_LOCAL /REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

### Install the Reporting database on a different computer than the Reporting server

To use the default instance of Microsoft SQL Server, use the following parameters (difference from custom instance in *italic*):

- /DB_PREDEPLOY_REPORTING
- /REPORTING _DB_SQLINSTANCE_USE_DEFAULT
- /REPORTING _DB_NAME
- /REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT
- /REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT

To use a custom instance of Microsoft SQL Server, use these parameters (difference from default instance in *italic*):

- /DB_PREDEPLOY_REPORTING
- /REPORTING _DB_CUSTOM_SQLINSTANCE
- /REPORTING _DB_NAME
- /REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT
- /REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT

**Example: Using a custom instance of Microsoft SQL Server:**

```dos
 appv_server_setup.exe /QUIET /DB_PREDEPLOY_REPORTING /REPORTING_DB_CUSTOM_SQLINSTANCE="SqlInstanceName" /REPORTING_DB_NAME="AppVReporting" /REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT="Domain\MachineAccount" /REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

### Parameter Definitions

#### General Parameters

| Parameter | Information |
|--|--|
| /QUIET | Specifies silent install. |
| /UNINSTALL | Specifies an uninstall. |
| /LAYOUT | Specifies layout action. This extracts the MSIs and script files to a folder without actually installing the product. No value is expected. |
| /LAYOUTDIR | Specifies the layout directory. Takes a string. Example usage: **/LAYOUTDIR="C:\\Application Virtualization Server"** |
| /INSTALLDIR | Specifies the installation directory. Takes a string. Example usage: **/INSTALLDIR="C:\\Program Files\\Application Virtualization\\Server"** |
| /MUOPTIN | Enables Microsoft Update. No value is expected. |
| /ACCEPTEULA | Accepts the license agreement. This is required for an unattended installation. Example usage: **/ACCEPTEULA** or **/ACCEPTEULA=1** |

#### Management Server Installation Parameters

|Parameter |Information |
|--|--|
| /MANAGEMENT_SERVER | Specifies that the management server will be installed. No value is expected |
| /MANAGEMENT_ADMINACCOUNT | Specifies the account that will be allowed Administrator access to the management server. This can be a user account or a group. Example usage: **/MANAGEMENT_ADMINACCOUNT="mydomain\\admin"**. If **/MANAGEMENT_SERVER** is not specified, this will be ignored. |
| /MANAGEMENT_WEBSITE_NAME | Specifies name of the website that will be created for the management service. Example usage: **/MANAGEMENT_WEBSITE_NAME="Microsoft App-V Management Service"** |
| MANAGEMENT_WEBSITE_PORT | Specifies the port number that will be used by the management service will use. Example usage: **/MANAGEMENT_WEBSITE_PORT=82** |

#### Parameters for the Management Server Database

| Parameter | Information |
|--|--|
| /DB_PREDEPLOY_MANAGEMENT | Specifies that the management database will be installed. You must have sufficient database permissions to complete this installation. No value is expected. |
| /MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT | Indicates that the default SQL instance should be used. No value is expected. |
| /MANAGEMENT_DB_ CUSTOM_SQLINSTANCE | Specifies the name of the custom SQL instance that should be used to create a new database. Example usage: **/MANAGEMENT_DB_ CUSTOM_SQLINSTANCE="MYSQLSERVER"**. If **/DB_PREDEPLOY_MANAGEMENT** is not specified, this will be ignored. |
| /MANAGEMENT_DB_NAME | Specifies the name of the new management database that should be created. Example usage: **/MANAGEMENT_DB_NAME="AppVMgmtDB"**. If **/DB_PREDEPLOY_MANAGEMENT** is not specified, this will be ignored. |
| /MANAGEMENT_SERVER_MACHINE_USE_LOCAL | Indicates if the management server that will be accessing the database is installed on the local server. Switch parameter so no value is expected. |
| /MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT | Specifies the machine account of the remote machine that the management server will be installed on. Example usage: **/MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT="domain\\computername"** |
| /MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT | Indicates the Administrator account that will be used to install the management server. Example usage: **/MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT ="domain\\alias"** |

#### Parameters for Installing Publishing Server

| Parameter | Information |
|--|--|
| /PUBLISHING_SERVER | Specifies that the Publishing Server will be installed. No value is expected. |
| /PUBLISHING_MGT_SERVER | Specifies the URL to Management Service the Publishing server will connect to. Example usage: **http://&lt;management server name&gt;:&lt;Management server port number&gt;**. If **/PUBLISHING_SERVER** is not used, this parameter will be ignored. |
| /PUBLISHING_WEBSITE_NAME | Specifies name of the website that will be created for the publishing service. Example usage: **/PUBLISHING_WEBSITE_NAME="Microsoft App-V Publishing Service"** |
| /PUBLISHING_WEBSITE_PORT | Specifies the port number used by the publishing service. Example usage: **/PUBLISHING_WEBSITE_PORT=83** |

#### Parameters for Reporting Server

| Parameter | Information |
|--|--|
| /REPORTING_SERVER | Specifies that the Reporting Server will be installed. No value is expected. |
| /REPORTING_WEBSITE_NAME | Specifies name of the website that will be created for the Reporting Service. Example usage: **/REPORTING_WEBSITE_NAME="Microsoft App-V ReportingService"** |
| /REPORTING_WEBSITE_PORT | Specifies the port number that the Reporting Service will use. Example usage: **/REPORTING_WEBSITE_PORT=82** |

#### Parameters for using an Existing Reporting Server Database

| Parameter | Information |
|--|--|
| /EXISTING_REPORTING_DB_SQL_SERVER_USE_LOCAL | Indicates that the Microsoft SQL Server is installed on the local server. Switch parameter so no value is expected. |
| /EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME | Specifies the name of the remote computer that SQL Server is installed on. Takes a string. Example usage: **/EXISTING_REPORTING_DB_ REMOTE_SQL_SERVER_NAME="mycomputer1"** |
| /EXISTING_ REPORTING _DB_SQLINSTANCE_USE_DEFAULT | Indicates that the default SQL instance is to be used. Switch parameter so no value is expected. |
| /EXISTING_ REPORTING_DB_CUSTOM_SQLINSTANCE | Specifies the name of the custom SQL instance that should be used. Takes a string. Example usage: **/EXISTING_REPORTING_DB_ CUSTOM_SQLINSTANCE="MYSQLSERVER"** |
| /EXISTING_ REPORTING _DB_NAME | Specifies the name of the existing Reporting database that should be used. Takes a string. Example usage: **/EXISTING_REPORTING_DB_NAME="AppVReporting"** |

#### Parameters for installing Reporting Server Database

| Parameter | Information |
|--|--|
| /DB_PREDEPLOY_REPORTING | Specifies that the Reporting Database will be installed. DBA permissions are required for this installation. No value is expected. |
| /REPORTING_DB_SQLINSTANCE_USE_DEFAULT | Specifies the name of the custom SQL instance that should be used. Takes a string. Example usage: **/REPORTING_DB_ CUSTOM_SQLINSTANCE="MYSQLSERVER"** |
| /REPORTING_DB_NAME | Specifies the name of the new Reporting database that should be created. Takes a string. Example usage: **/REPORTING_DB_NAME="AppVMgmtDB"** |
| /REPORTING_SERVER_MACHINE_USE_LOCAL | Indicates that the Reporting server that will be accessing the database is installed on the local server. Switch parameter so no value is expected. |
| /REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT | Specifies the machine account of the remote machine that the Reporting server will be installed on. Takes a string. Example usage: **/REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT="domain\computername"** |
| /REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT | Indicates the Administrator account that will be used to install the App-V Reporting Server. Takes a string. Example usage: **/REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT="domain\\alias"** |

#### Parameters for using an existing Management Server Database

| Parameter | Information |
|--|--|
| /EXISTING_MANAGEMENT_DB_SQL_SERVER_USE_LOCAL | Indicates that the SQL Server is installed on the local server. Switch parameter so no value is expected.If **/DB_PREDEPLOY_MANAGEMENT** is specified, this will be ignored. |
| /EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME | Specifies the name of the remote computer that SQL Server is installed on. Takes a string. Example usage: **/EXISTING_MANAGEMENT_DB_ REMOTE_SQL_SERVER_NAME="mycomputer1"** |
| /EXISTING_ MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT | Indicates that the default SQL instance is to be used. Switch parameter so no value is expected. If **/DB_PREDEPLOY_MANAGEMENT** is specified, this will be ignored. |
| /EXISTING_MANAGEMENT_DB_ CUSTOM_SQLINSTANCE | Specifies the name of the custom SQL instance that will be used. Example usage **/EXISTING_MANAGEMENT_DB_ CUSTOM_SQLINSTANCE="AppVManagement"**. If **/DB_PREDEPLOY_MANAGEMENT** is specified, this will be ignored. |
| /EXISTING_MANAGEMENT_DB_NAME | Specifies the name of the existing management database that should be used. Example usage: **/EXISTING_MANAGEMENT_DB_NAME="AppVMgmtDB"**. If **/DB_PREDEPLOY_MANAGEMENT** is specified, this will be ignored. |

Got an App-V issue? Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics

[Deploying the App-V 5.1 Server](deploying-the-app-v-51-server.md)
