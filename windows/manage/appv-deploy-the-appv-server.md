---
title: How to Deploy the App-V 5.1 Server
description: How to Deploy the App-V 5.1 Server
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# How to Deploy the App-V 5.1 Server

Use the following procedure to install the App-V 5.1 server.

**Before you start:**

-   Ensure that you’ve installed prerequisite software. See [App-V Prerequisites](appv-prerequisites.md).

-   Review the server section of [App-V security considerations](appv-security-considerations.md).

-   Specify a port where each component will be hosted.

-   Add firewall rules to allow incoming requests to access the specified ports.

-   If you use SQL scripts, instead of the Windows Installer, to set up the Management database or Reporting database, you must run the SQL scripts before installing the Management Server or Reporting Server. See [How to Deploy the App-V Databases by Using SQL Scripts](appv-deploy-appv-databases-with-sql-scripts.md).

**To install the App-V 5.1 server**

1.  Copy the App-V 5.1 server installation files to the computer on which you want to install it.

2.  Start the App-V 5.1 server installation by right-clicking and running **appv\_server\_setup.exe** as an administrator, and then click **Install**.

3.  Review and accept the license terms, and choose whether to enable Microsoft updates.

4.  On the **Feature Selection** page, select all of the following components.

    | Component | Description |
    | - | - |
    | Management server | Provides overall management functionality for the App-V infrastructure. |
    | Management database | Facilitates database predeployments for App-V management. |
    | Publishing server | Provides hosting and streaming functionality for virtual applications. |
    | Reporting server | Provides App-V reporting services. |
    | Reporting database | Facilitates database predeployments for App-V reporting. |

5.  On the **Installation Location** page, accept the default location where the selected components will be installed, or change the location by typing a new path on the **Installation Location** line.

6.  On the initial **Create New Management Database** page, configure the **Microsoft SQL Server instance** and **Management Server database** by selecting the appropriate option below.

    | Method | What you need to do |
    | - | - |
    | You are using a custom Microsoft SQL Server instance. | Select **Use the custom instance**, and type the name of the instance.<br/>Use the format **INSTANCENAME**. The assumed installation location is the local computer.<br/>Not supported: A server name using the format **ServerName**\\**INSTANCE**.|
    | You are using a custom database name. | Select **Custom configuration** and type the database name.<br/>The database name must be unique, or the installation will fail.|

7.  On the **Configure** page, accept the default value **Use this local computer**.

    > [!NOTE]  
    > If you are installing the Management server and Management database side by side, some options on this page are not available. In this case, the appropriate options are selected by default and cannot be changed.

8.  On the initial **Create New Reporting Database** page, configure the **Microsoft SQL Server instance** and **Reporting Server database** by selecting the appropriate option below.

    | Method | What you need to do |
    | - | - |
    | You are using a custom Microsoft SQL Server instance. | Select **Use the custom instance**, and type the name of the instance.<br/>Use the format **INSTANCENAME**. The assumed installation location is the local computer.<br/>Not supported: A server name using the format **ServerName**\\**INSTANCE**.|
    | You are using a custom database name. | Select **Custom configuration** and type the database name.<br/>The database name must be unique, or the installation will fail.|


9.  On the **Configure** page, accept the default value: **Use this local computer**.

    > [!NOTE]  
    > If you are installing the Management server and Management database side by side, some options on this page are not available. In this case, the appropriate options are selected by default and cannot be changed.


10. On the **Configure** (Management Server Configuration) page, specify the following:

    |  Item to configure | Description and examples |
    | - | - |
    | Type the AD group with sufficient permissions to manage the App-V environment. | Example: MyDomain\MyUser<br/>After installation, you can add additional users or groups by using the Management console. However, global security groups and Active Directory Domain Services (AD DS) distribution groups are not supported. You must use <strong>Domain local</strong> or <strong>Universal</strong> groups are required to perform this action.|
    | **Website name**: Specify the custom name that will be used to run the publishing service.<br/>If you do not have a custom name, do not make any changes.|
    |**Port binding**: Specify a unique port number that will be used by App-V. | Example: **12345**<br/>Ensure that the port specified is not being used by another website. |

11. On the **Configure Publishing Server Configuration** page, specify the following:

    | Item to configure | Description and examples |
    | - | - |
    | Specify the URL for the management service. | Example: http://localhost:12345 |
    | **Website name**: Specify the custom name that will be used to run the publishing service.| If you do not have a custom name, do not make any changes. |
    | **Port binding**: Specify a unique port number that will be used by App-V. | Example: 54321<br/>Ensure that the port specified is not being used by another website. |

12. On the **Reporting Server** page, specify the following:

    | Item to configure | Description and examples |
    | - | - |
    | **Website name**: Specify the custom name that will be used to run the Reporting Service. | If you do not have a custom name, do not make any changes. |
    | **Port binding**: Specify a unique port number that will be used by App-V. | Example: 55555<br/>Ensure that the port specified is not being used by another website. |

13. To start the installation, click **Install** on the **Ready** page, and then click **Close** on the **Finished** page.

14. To verify that the setup completed successfully, open a web browser, and type the following URL:

    **http://\<_Management server machine name_\>:\<_Management service port number_\>/console.html**.

    Example: **http://localhost:12345/console.html**. If the installation succeeded, the App-V Management console is displayed with no errors.

## Have a suggestion for App-V?

Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

- [Deploying App-V](appv-deploying-appv.md)

- [How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services](appv-install-the-management-and-reporting-databases-on-separate-computers.md)

- [How to Install the Publishing Server on a Remote Computer](appv-install-the-publishing-server-on-a-remote-computer.md)

- [How to Deploy the App-V 5.1 Server Using a Script](appv-deploy-the-appv-server-with-a-script.md)
