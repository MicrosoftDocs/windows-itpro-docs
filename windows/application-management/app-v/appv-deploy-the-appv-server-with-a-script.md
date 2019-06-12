---
title: How to Deploy the App-V Server Using a Script (Windows 10)
description: How to Deploy the App-V  Server Using a Script
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
# How to deploy the App-V server using a script

>Applies to: Windows Server 2016

In order to complete the **appv_server_setup.exe** server setup successfully using the command line, you must specify and combine multiple parameters.

## To install the App-V server using a script

Use the following lists and tables for more information about installing the App-V server using the command line.

The information in the following lists and tables can also be accessed through the command line by entering the following command: ```appv\_server\_setup.exe /?```.

## How to use common parameters to install the Management server and Management database on a local machine

The following examples will show you how to install the Management server and database on a local machine.

### Parameters for a default instance of Microsoft SQL Server for a new installation on a local machine

To use the default instance of Microsoft SQL Server, use the following parameters:

* */MANAGEMENT_SERVER*
* */MANAGEMENT_ADMINACCOUNT*
* */MANAGEMENT_WEBSITE_NAME*
* */MANAGEMENT_WEBSITE_PORT*
* */DB_PREDEPLOY_MANAGEMENT*
* */MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
* */MANAGEMENT_DB_NAME*

### Parameters for a custom instance of Microsoft SQL Server for a new installation on a local machine

To use a custom instance of Microsoft SQL Server, use the following parameters:

* */MANAGEMENT_SERVER*
* */MANAGEMENT_ADMINACCOUNT*
* */MANAGEMENT_WEBSITE_NAME*
* */MANAGEMENT_WEBSITE_PORT*
* */DB_PREDEPLOY_MANAGEMENT*
* */MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
* */MANAGEMENT_DB_NAME*

### Example parameters for using a custom instance of Microsoft SQL Server for a new installation on a local machine

```SQL
/appv_server_setup.exe /QUIET
/MANAGEMENT_SERVER
/MANAGEMENT_ADMINACCOUNT="Domain\AdminGroup"
/MANAGEMENT_WEBSITE_NAME="Microsoft AppV Management Service"
/MANAGEMENT_WEBSITE_PORT="8080"
/DB_PREDEPLOY_MANAGEMENT
/MANAGEMENT_DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/MANAGEMENT_DB_NAME="AppVManagement"
```

## How to use common parameters to install the Management server using an existing Management database on a local machine

The following examples will show you how to install the Management server on a local machine with an existing Management database.

### Default instance of Microsoft SQL Server for installation with an existing Management database on a local machine

To use the default instance of Microsoft SQL Server, use the following parameters:

* */MANAGEMENT_SERVER*
* */MANAGEMENT_ADMINACCOUNT*
* */MANAGEMENT_WEBSITE_NAME*
* */MANAGEMENT_WEBSITE_PORT*
* */EXISTING_MANAGEMENT_DB_SQL_SERVER_USE_LOCAL*
* */EXISTING_MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
* */EXISTING_MANAGEMENT_DB_NAME*

### Custom instance of Microsoft SQL Server for installation with an existing Management database on a local machine

To use a custom instance of Microsoft SQL Server, use these parameters:

* */MANAGEMENT_SERVER*
* */MANAGEMENT_ADMINACCOUNT*
* */MANAGEMENT_WEBSITE_NAME*
* */MANAGEMENT_WEBSITE_PORT*
* */EXISTING_MANAGEMENT_DB_SQL_SERVER_USE_LOCAL*
* */EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
* */EXISTING_MANAGEMENT_DB_NAME*

### Example parameters for using a custom instance of Microsoft SQL Server for installation with an existing Management database on a local machine

```SQL
/appv_server_setup.exe /QUIET
/MANAGEMENT_SERVER
/MANAGEMENT_ADMINACCOUNT="Domain\AdminGroup"
/MANAGEMENT_WEBSITE_NAME="Microsoft AppV Management Service"
/MANAGEMENT_WEBSITE_PORT="8080"
/EXISTING_MANAGEMENT_DB_SQL_SERVER_USE_LOCAL
/EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE ="SqlInstanceName"
/EXISTING_MANAGEMENT_DB_NAME ="AppVManagement"
```

## How to install the Management server with an existing Management database on a remote machine

### Default instance of Microsoft SQL Server with an existing Management database on a remote machine

To use the default instance of Microsoft SQL Server, use the following parameters:

* */MANAGEMENT_SERVER*
* */MANAGEMENT_ADMINACCOUNT*
* */MANAGEMENT_WEBSITE_NAME*
* */MANAGEMENT_WEBSITE_PORT*
* */EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME*
* */EXISTING_MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
* */EXISTING_MANAGEMENT_DB_NAME*

### Custom instance of Microsoft SQL Server with an existing Management database on a remote machine

To use a custom instance of Microsoft SQL Server, use these parameters:

* */MANAGEMENT_SERVER*
* */MANAGEMENT_ADMINACCOUNT*
* */MANAGEMENT_WEBSITE_NAME*
* */MANAGEMENT_WEBSITE_PORT*
* */EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME*
* */EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
* */EXISTING_MANAGEMENT_DB_NAME*

### Example for using a custom instance of Microsoft SQL Server with an existing Management database on a remote machine

```SQL
/appv_server_setup.exe /QUIET
/MANAGEMENT_SERVER
/MANAGEMENT_ADMINACCOUNT="Domain\AdminGroup"
/MANAGEMENT_WEBSITE_NAME="Microsoft AppV Management Service"
/MANAGEMENT_WEBSITE_PORT="8080"
/EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME="SqlServermachine.domainName"
/EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE ="SqlInstanceName"
/EXISTING_MANAGEMENT_DB_NAME ="AppVManagement"
```

## Installing the Management database and the Management Server on the same computer

The following examples will show you how to install the Management server and database on the same computer.

### Default instance of Microsoft SQL Server for installation on the same computer

To use the default instance of Microsoft SQL Server, use these parameters:

* */DB_PREDEPLOY_MANAGEMENT*
* */MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
* */MANAGEMENT_DB_NAME*
* */MANAGEMENT_SERVER_MACHINE_USE_LOCAL*
* */MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT*

### Custom instance of Microsoft SQL Server for installation on the same computer

To use a custom instance of Microsoft SQL Server, use these parameters:

* */DB_PREDEPLOY_MANAGEMENT*
* */MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
* */MANAGEMENT_DB_NAME*
* */MANAGEMENT_SERVER_MACHINE_USE_LOCAL*
* */MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT*

### Example for using a custom instance of Microsoft SQL Server for installation on the same computer

```SQL
/appv_server_setup.exe /QUIET
/DB_PREDEPLOY_MANAGEMENT
/MANAGEMENT_DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/MANAGEMENT_DB_NAME="AppVManagement"
/MANAGEMENT_SERVER_MACHINE_USE_LOCAL
/MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

## Installing the Management database on a different computer than the Management server

The following examples will show you how to install the Management database and server on different computers.

### Default instance of Microsoft SQL Server for installing the Management database on a different computer than the Management server

To use the default instance of Microsoft SQL Server, use the following parameters:

* */DB_PREDEPLOY_MANAGEMENT*
* */MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT*
* */MANAGEMENT_DB_NAME*
* */MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT*
* */MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT*

### Custom instance of Microsoft SQL Server for installing the Management database on a different computer than the Management server

To use a custom instance of Microsoft SQL Server, use these parameters:

* */DB_PREDEPLOY_MANAGEMENT*
* */MANAGEMENT_DB_CUSTOM_SQLINSTANCE*
* */MANAGEMENT_DB_NAME*
* */MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT*
* */MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT*

### Example for using a custom instance of Microsoft SQL Server for installing the Management database on a different computer than the Management server

```SQL
/appv_server_setup.exe /QUIET
/DB_PREDEPLOY_MANAGEMENT
/MANAGEMENT_DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/MANAGEMENT_DB_NAME="AppVManagement"
/MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT="Domain\MachineAccount"
/MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

## Installing the Publishing server

The following examples will show you how to install the Publishing server.

### Default instance of Microsoft SQL Server for installing the Publishing server

To use the default instance of Microsoft SQL Server, use the following parameters:

* */PUBLISHING_SERVER*
* */PUBLISHING_MGT_SERVER*
* */PUBLISHING_WEBSITE_NAME*
* */PUBLISHING_WEBSITE_PORT*

### Example for installing the Publishing server

```SQL
/appv_server_setup.exe /QUIET
/PUBLISHING_SERVER
/PUBLISHING_MGT_SERVER="http://ManagementServerName:ManagementPort"
/PUBLISHING_WEBSITE_NAME="Microsoft AppV Publishing Service"
/PUBLISHING_WEBSITE_PORT="8081"
```

## Installing the Reporting server and Reporting database on a local machine

The following examples will show you how to install the Reporting server and database on a local machine.

### Default instance of Microsoft SQL Server for installing the Reporting server and Reporting database on a local machine

To use the default instance of Microsoft SQL Server, use the following parameters:

* */REPORTING_SERVER*
* */REPORTING_WEBSITE_NAME*
* */REPORTING_WEBSITE_PORT*
* */DB_PREDEPLOY_REPORTING*
* */REPORTING_DB_SQLINSTANCE_USE_DEFAULT*
* */REPORTING_DB_NAME*

### Custom instance of Microsoft SQL Server for installing the Reporting server and Reporting database on a local machine

To use a custom instance of Microsoft SQL Server, use these parameters:

* */REPORTING_SERVER*
* */REPORTING_ADMINACCOUNT*
* */REPORTING_WEBSITE_NAME*
* */REPORTING_WEBSITE_PORT*
* */DB_PREDEPLOY_REPORTING*
* */REPORTING_DB_CUSTOM_SQLINSTANCE*
* */REPORTING_DB_NAME*

### Example for using a custom instance of Microsoft SQL Server for installing the Reporting server and Reporting database on a local machine

```SQL
/appv_server_setup.exe /QUIET
/REPORTING_SERVER
/REPORTING_WEBSITE_NAME="Microsoft AppV Reporting Service"
/REPORTING_WEBSITE_PORT="8082"
/DB_PREDEPLOY_REPORTING
/REPORTING_DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/REPORTING_DB_NAME="AppVReporting"
```

## Installing the Reporting server using an existing Reporting database on a local machine

The following examples will show you how to install the reporting machine on a local machine with an existing Reporting database.

### Default instance of Microsoft SQL Server for installing the Reporting server using an existing Reporting database on a local machine

To use the default instance of Microsoft SQL Server, use the following parameters:

* */REPORTING_SERVER*
* */REPORTING_WEBSITE_NAME*
* */REPORTING_WEBSITE_PORT*
* */EXISTING_REPORTING_DB_SQL_SERVER_USE_LOCAL*
* */EXISTING_REPORTING_DB_SQLINSTANCE_USE_DEFAULT*
* */EXISTING_REPORTING_DB_NAME*

### Custom instance of Microsoft SQL Server for installing the Reporting server using an existing Reporting database on a local machine

To use a custom instance of Microsoft SQL Server, use these parameters:

* */REPORTING_SERVER*
* */REPORTING_ADMINACCOUNT*
* */REPORTING_WEBSITE_NAME*
* */REPORTING_WEBSITE_PORT*
* */EXISTING_REPORTING_DB_SQL_SERVER_USE_LOCAL*
* */EXISTING_REPORTING_DB_CUSTOM_SQLINSTANCE*
* */EXISTING_REPORTING_DB_NAME*

### Example for using a custom instance of Microsoft SQL Server for installing the Reporting server using an existing Reporting database on a local machine

```SQL
/appv_server_setup.exe /QUIET
/REPORTING_SERVER
/REPORTING_WEBSITE_NAME="Microsoft AppV Reporting Service"
/REPORTING_WEBSITE_PORT="8082"
/EXISTING_REPORTING_DB_SQL_SERVER_USE_LOCAL
/EXISTING_REPORTING _DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/EXITING_REPORTING_DB_NAME="AppVReporting"
```

## Installing the Reporting server using an existing Reporting database on a remote machine

The following examples will show you how to install the Reporting server and on a remote machine with an existing database.

### Default instance of Microsoft SQL Server for installing the Reporting server using an existing Reporting database on a remote machine

To use the default instance of Microsoft SQL Server, use the following parameters:

* */REPORTING_SERVER*
* */REPORTING_WEBSITE_NAME*
* */REPORTING_WEBSITE_PORT*
* */EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME*
* */EXISTING_REPORTING_DB_SQLINSTANCE_USE_DEFAULT*
* */EXISTING_REPORTING_DB_NAME*

### Custom instance of Microsoft SQL Server for installing the Reporting server using an existing Reporting database on a remote machine

To use a custom instance of Microsoft SQL Server, use these parameters:

* */REPORTING_SERVER*
* */REPORTING_ADMINACCOUNT*
* */REPORTING_WEBSITE_NAME*
* */REPORTING_WEBSITE_PORT*
* */EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME*
* */EXISTING_REPORTING_DB_CUSTOM_SQLINSTANCE*
* */EXISTING_REPORTING_DB_NAME*

### Example using a custom instance of Microsoft SQL Server for installing the Reporting server using an existing Reporting database on a remote machine

```SQL
/appv_server_setup.exe /QUIET
/REPORTING_SERVER
/REPORTING_WEBSITE_NAME="Microsoft AppV Reporting Service"
/REPORTING_WEBSITE_PORT="8082"
/EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME="SqlServerMachine.DomainName"
/EXISTING_REPORTING _DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/EXITING_REPORTING_DB_NAME="AppVReporting"
```

## Installing the Reporting database on the same computer as the Reporting server

The following examples will show you how to install the Reporting database and server on the same computer.

### Default instance of Microsoft SQL Server for installing the Reporting database on the same computer as the Reporting server

To use the default instance of Microsoft SQL Server, use the following parameters:

* */DB_PREDEPLOY_REPORTING*
* */REPORTING_DB_SQLINSTANCE_USE_DEFAULT*
* */REPORTING_DB_NAME*
* */REPORTING_SERVER_MACHINE_USE_LOCAL*
* */REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT*

### Custom instance of Microsoft SQL Server for installing the Reporting database on the same computer as the Reporting server

To use a custom instance of Microsoft SQL Server, use these parameters:

* */DB_PREDEPLOY_REPORTING*
* */REPORTING_DB_CUSTOM_SQLINSTANCE*
* */REPORTING_DB_NAME*
* */REPORTING_SERVER_MACHINE_USE_LOCAL*
* */REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT*

### Example for using a custom instance of Microsoft SQL Server for installing the Reporting database on the same computer as the Reporting server

```SQL
/appv_server_setup.exe /QUIET
/DB_PREDEPLOY_REPORTING
/REPORTING_DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/REPORTING_DB_NAME="AppVReporting"
/REPORTING_SERVER_MACHINE_USE_LOCAL
/REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

## Installing the Reporting database on a different computer than the Reporting server

The following examples will show you how to install the Reporting database and server on different computers.

### Default instance of Microsoft SQL Server for installing the Reporting database on a different computer than the Reporting server

To use the default instance of Microsoft SQL Server, use the following parameters:

* */DB_PREDEPLOY_REPORTING*
* */REPORTING_DB_SQLINSTANCE_USE_DEFAULT*
* */REPORTING_DB_NAME*
* */REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT*
* */REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT*

### Custom instance of Microsoft SQL Server for installing the Reporting database on a different computer than the Reporting server

To use a custom instance of Microsoft SQL Server, use these parameters:

* */DB_PREDEPLOY_REPORTING*
* */REPORTING_DB_CUSTOM_SQLINSTANCE*
* */REPORTING_DB_NAME*
* */REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT*
* */REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT*

### Example for using a custom instance of Microsoft SQL Server for installing the Reporting database on a different computer than the Reporting server

```SQL
/appv_server_setup.exe /QUIET
/DB_PREDEPLOY_REPORTING
/REPORTING_DB_CUSTOM_SQLINSTANCE="SqlInstanceName"
/REPORTING_DB_NAME="AppVReporting"
/REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT="Domain\MachineAccount"
/REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT="Domain\InstallAdminAccount"
```

## Parameter definitions

* [General parameters](#parameter-definitions-for-general-parameters)
* [Management Server installation parameters](#parameter-definitions-for-management-server-installation-parameters)
* [Management Server Database parameters](#parameter-definitions-for-the-management-server-database)
* [Publishing Server installation parameters](#parameter-definitions-for-publishing-server-installation-parameters)
* [Reporting Server parameters](#parameter-definitions-for-reporting-server)
* [Parameters for using an existing Reporting Server database](#parameters-for-using-an-existing-reporting-server-database)
* [Reporting Server database installation parameters](#parameter-definitions-for-reporting-server-database-installation)
* [Parameters for using an existing Management Server database](#parameters-for-using-an-existing-management-server-database)

### Parameter definitions for general parameters

| Parameter | Description |
|-----------|-------------|
| */QUIET* | Specifies silent install. |
| */UNINSTALL* | Specifies an uninstall. |
| */LAYOUT* | Specifies layout action. This extracts the MSIs and script files to a folder without installing the actual product. No value is expected. |
| */LAYOUTDIR* | Specifies the layout directory with a string. For example, ```/LAYOUTDIR="C:\Application Virtualization Server"```. |
| */INSTALLDIR* | Specifies the installation directory with a string. For example, ```/INSTALLDIR="C:\Program Files\Application Virtualization\Server"```. |
| */MUOPTIN* | Enables Microsoft Update. No value is expected. |
| */ACCEPTEULA* | Accepts the license agreement. This is required for an unattended installation. For example, ```/ACCEPTEULA``` or ```/ACCEPTEULA=1```. |

### Parameter definitions for Management Server installation parameters

| Parameter | Description |
|-----------|-------------|
| */MANAGEMENT_SERVER* | Specifies that the management server will be installed. No value is expected. |
| */MANAGEMENT_ADMINACCOUNT* | Specifies the account that will be allowed administrator access to the management server. This account can be an individual user account or a group. For example, ```/MANAGEMENT_ADMINACCOUNT="mydomain\admin"```. If **/MANAGEMENT_SERVER** isn't specified, this parameter will be ignored.|
| */MANAGEMENT_WEBSITE_NAME* | Specifies name of the website that will be created for the management service. For example, ```/MANAGEMENT_WEBSITE_NAME="Microsoft App-V Management Service"``` |
| */MANAGEMENT_WEBSITE_PORT* | Specifies the port number that will be used by the management service will use. For example, ```/MANAGEMENT_WEBSITE_PORT=82```. |

### Parameter definitions for the Management Server Database

| Parameter | Description |
|-----------|-------------|
| */DB\_PREDEPLOY\_MANAGEMENT* | Specifies that the management database will be installed. You must have sufficient database permissions to complete this installation. No value is expected. |
| */MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT* | Indicates that the default SQL instance should be used. No value is expected. |
| */MANAGEMENT_DB_CUSTOM_SQLINSTANCE* | Specifies the name of the custom SQL instance that should be used to create a new database. For example, ```/MANAGEMENT_DB_CUSTOM_SQLINSTANCE="MYSQLSERVER"```. If **/DB_PREDEPLOY_MANAGEMENT** isn't specified, this parameter will be ignored. |
| */MANAGEMENT_DB_NAME* | Specifies the name of the new management database that should be created. For example, ```/MANAGEMENT_DB_NAME="AppVMgmtDB"```. If **/DB_PREDEPLOY_MANAGEMENT** isn't specified, this will be ignored. |
| */MANAGEMENT_SERVER_MACHINE_USE_LOCAL* | Indicates if the management server that will be accessing the database is installed on the local server. This is a switch parameter, so no value is expected. |
| */MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT* | Specifies the machine account of the remote machine that the management server will be installed on. For example, ```/MANAGEMENT_REMOTE_SERVER_MACHINE_ACCOUNT="domain\computername"```. |
| */MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT* | Indicates the Administrator account that will be used to install the management server. For example, ```/MANAGEMENT_SERVER_INSTALL_ADMIN_ACCOUNT ="domain\alias"```. |

### Parameter definitions for Publishing Server installation parameters

| Parameter | Description |
|-----------|-------------|
| */PUBLISHING_SERVER* | Specifies that the publishing server will be installed. No value is expected. |
| */PUBLISHING_MGT_SERVER* | Specifies the URL to Management Service the Publishing server will connect to. For example, ```http://<management server name>;<Management server port number>```. If **/PUBLISHING_SERVER** isn't used, this parameter will be ignored. |
| */PUBLISHING_WEBSITE_NAME* | Specifies name of the website that will be created for the publishing service. For example, ```/PUBLISHING_WEBSITE_NAME="Microsoft App-V Publishing Service"```. |
| */PUBLISHING_WEBSITE_PORT* | Specifies the port number used by the publishing service. For example, ```/PUBLISHING_WEBSITE_PORT=83```. |

### Parameter definitions for Reporting Server

| Parameter | Description |
|-----------|-------------|
| */REPORTING_SERVER* | Specifies that the Reporting Server will be installed. No value is expected. |
| */REPORTING_WEBSITE_NAME* | Specifies name of the website that will be created for the Reporting Service. For example, ```/REPORTING_WEBSITE_NAME="Microsoft App-V ReportingService"```. |
| */REPORTING_WEBSITE_PORT* | Specifies the port number that the Reporting Service will use. For example, ```/REPORTING_WEBSITE_PORT=82```. |

### Parameters for using an existing Reporting Server database

| Parameter | Description |
|-----------|-------------|
| */EXISTING\_REPORTING\_DB_SQL_SERVER_USE_LOCAL* | Indicates that the Microsoft SQL Server is installed on the local server. This is a switch parameter, so no value is expected. |
| */EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME* | Specifies the name of the remote computer that SQL Server is installed on. Takes a string. For example,  ```/EXISTING_REPORTING_DB_REMOTE_SQL_SERVER_NAME="mycomputer1"```. |
| */EXISTING_REPORTING_DB_SQLINSTANCE_USE_DEFAULT* | Indicates that the default SQL instance is to be used. This is a switch parameter, so no value is expected. |
| */EXISTING_REPORTING_DB_CUSTOM_SQLINSTANCE* | Specifies the name of the custom SQL instance that should be used. Takes a string. For example, ```/EXISTING_REPORTING_DB_CUSTOM_SQLINSTANCE="MYSQLSERVER"```. |
| */EXISTING_REPORTING_DB_NAME* | Specifies the name of the existing Reporting database that should be used. Takes a string. For example, ```/EXISTING_REPORTING_DB_NAME="AppVReporting"```. |

### Parameter definitions for Reporting Server database installation

| Parameter | Description |
|-----------|-------------|
| */DB\_PREDEPLOY\_REPORTING* | Specifies that the Reporting Database will be installed. DBA permissions are required for this installation. No value is expected. |
| */REPORTING_DB_SQLINSTANCE_USE_DEFAULT* | Specifies the name of the custom SQL instance that should be used. Takes a string. For example, ```/REPORTING_DB_CUSTOM_SQLINSTANCE="MYSQLSERVER"```. |
| */REPORTING_DB_NAME* | Specifies the name of the new Reporting database that should be created. Takes a string. For example, ```/REPORTING_DB_NAME="AppVMgmtDB"```. |
| */REPORTING_SERVER_MACHINE_USE_LOCAL* | Indicates that the Reporting server that will be accessing the database is installed on the local server. This is a switch parameter, so no value is expected. |
| */REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT* | Specifies the machine account of the remote machine that the Reporting server will be installed on. Takes a string. For example, ```/REPORTING_REMOTE_SERVER_MACHINE_ACCOUNT = "domain\computername"```. |
| */REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT* | Indicates the Administrator account that will be used to install the App-V Reporting Server. Takes a string. For example, ```/REPORTING_SERVER_INSTALL_ADMIN_ACCOUNT = "domain\alias"```. |

### Parameters for using an existing Management Server database

| Parameter | Description |
|-----------|-------------|
| */EXISTING\_MANAGEMENT\_DB_SQL_SERVER_USE_LOCAL* | Indicates that the SQL Server is installed on the local server. Switch parameter so no value is expected. If **/DB_PREDEPLOY_MANAGEMENT** isn't specified, this variable will be ignored. |
| */EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME* | Specifies the name of the remote computer that SQL Server is installed on. Takes a string. For example, ```/EXISTING_MANAGEMENT_DB_REMOTE_SQL_SERVER_NAME="mycomputer1"```. |
| */EXISTING_MANAGEMENT_DB_SQLINSTANCE_USE_DEFAULT* | Indicates that the default SQL instance is to be used. Switch parameter so no value is expected. If **/DB_PREDEPLOY_MANAGEMENT** isn't specified, this variable will be ignored. |
| */EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE* | Specifies the name of the custom SQL instance that will be used. For example, ```/EXISTING_MANAGEMENT_DB_CUSTOM_SQLINSTANCE="AppVManagement"```. If **/DB_PREDEPLOY_MANAGEMENT** isn't specified, this will be ignored. |
| */EXISTING_MANAGEMENT_DB_NAME* | Specifies the name of the existing management database that should be used. For example, ```/EXISTING_MANAGEMENT_DB_NAME="AppVMgmtDB"```. If **/DB_PREDEPLOY_MANAGEMENT** isn't specified, this will be ignored. |





## Related topics

* [Deploying the App-V Server](appv-deploying-the-appv-server.md)
