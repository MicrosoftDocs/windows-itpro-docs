---
title: How to Deploy the App-V 5.1 Server
description: How to Deploy the App-V 5.1 Server
author: dansimp
ms.assetid: 4729beda-b98f-481b-ae74-ad71c59b1d69
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Deploy the App-V 5.1 Server


Use the following procedure to install the Microsoft Application Virtualization (App-V) 5.1 server. For information about deploying the App-V 5.1 Server, see [About App-V 5.1](about-app-v-51.md#bkmk-migrate-to-51).

**Before you start:**

-   Ensure that you’ve installed prerequisite software. See [App-V 5.1 Prerequisites](app-v-51-prerequisites.md).

-   Review the server section of [App-V 5.1 Security Considerations](app-v-51-security-considerations.md).

-   Specify a port where each component will be hosted.

-   Add firewall rules to allow incoming requests to access the specified ports.

-   If you use SQL scripts, instead of the Windows Installer, to set up the Management database or Reporting database, you must run the SQL scripts before installing the Management Server or Reporting Server. See [How to Deploy the App-V Databases by Using SQL Scripts](how-to-deploy-the-app-v-databases-by-using-sql-scripts51.md).

**To install the App-V 5.1 server**

1. Copy the App-V 5.1 server installation files to the computer on which you want to install it.

2. Start the App-V 5.1 server installation by right-clicking and running **appv\_server\_setup.exe** as an administrator, and then click **Install**.

3. Review and accept the license terms, and choose whether to enable Microsoft updates.

4. On the **Feature Selection** page, select all of the following components.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Component</th>
   <th align="left">Description</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>Management server</p></td>
   <td align="left"><p>Provides overall management functionality for the App-V infrastructure.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Management database</p></td>
   <td align="left"><p>Facilitates database predeployments for App-V management.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Publishing server</p></td>
   <td align="left"><p>Provides hosting and streaming functionality for virtual applications.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>Reporting server</p></td>
   <td align="left"><p>Provides App-V 5.1 reporting services.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p>Reporting database</p></td>
   <td align="left"><p>Facilitates database predeployments for App-V reporting.</p></td>
   </tr>
   </tbody>
   </table>

     

5. On the **Installation Location** page, accept the default location where the selected components will be installed, or change the location by typing a new path on the **Installation Location** line.

6. On the initial **Create New Management Database** page, configure the **Microsoft SQL Server instance** and **Management Server database** by selecting the appropriate option below.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Method</th>
   <th align="left">What you need to do</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>You are using a custom Microsoft SQL Server instance.</p></td>
   <td align="left"><p>Select <strong>Use the custom instance</strong>, and type the name of the instance.</p>
   <p>Use the format <strong>INSTANCENAME</strong>. The assumed installation location is the local computer.</p>
   <p>Not supported: A server name using the format <strong>ServerName</strong>&lt;strong&gt;INSTANCE</strong>.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>You are using a custom database name.</p></td>
   <td align="left"><p>Select <strong>Custom configuration</strong> and type the database name.</p>
   <p>The database name must be unique, or the installation will fail.</p></td>
   </tr>
   </tbody>
   </table>

     

7. On the **Configure** page, accept the default value **Use this local computer**.

   **Note**  
   If you are installing the Management server and Management database side by side, some options on this page are not available. In this case, the appropriate options are selected by default and cannot be changed.

     

8. On the initial **Create New Reporting Database** page, configure the **Microsoft SQL Server instance** and **Reporting Server database** by selecting the appropriate option below.

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Method</th>
   <th align="left">What you need to do</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p>You are using a custom Microsoft SQL Server instance.</p></td>
   <td align="left"><p>Select <strong>Use the custom instance</strong>, and type the name of the instance.</p>
   <p>Use the format <strong>INSTANCENAME</strong>. The assumed installation location is the local computer.</p>
   <p>Not supported: A server name using the format <strong>ServerName</strong>&lt;strong&gt;INSTANCE</strong>.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p>You are using a custom database name.</p></td>
   <td align="left"><p>Select <strong>Custom configuration</strong> and type the database name.</p>
   <p>The database name must be unique, or the installation will fail.</p></td>
   </tr>
   </tbody>
   </table>

     

9. On the **Configure** page, accept the default value: **Use this local computer**.

   **Note**  
   If you are installing the Management server and Management database side by side, some options on this page are not available. In this case, the appropriate options are selected by default and cannot be changed.

     

10. On the **Configure** (Management Server Configuration) page, specify the following:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Item to configure</th>
    <th align="left">Description and examples</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Type the AD group with sufficient permissions to manage the App-V environment.</p></td>
    <td align="left"><p>Example: MyDomain\MyUser</p>
    <p>After installation, you can add additional users or groups by using the Management console. However, global security groups and Active Directory Domain Services (AD DS) distribution groups are not supported. You must use <strong>Domain local</strong> or <strong>Universal</strong> groups are required to perform this action.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Website name</strong>: Specify the custom name that will be used to run the publishing service.</p></td>
    <td align="left"><p>If you do not have a custom name, do not make any changes.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Port binding</strong>: Specify a unique port number that will be used by App-V.</p></td>
    <td align="left"><p>Example: <strong>12345</strong></p>
    <p>Ensure that the port specified is not being used by another website.</p></td>
    </tr>
    </tbody>
    </table>

     

11. On the **Configure** **Publishing Server Configuration** page, specify the following:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Item to configure</th>
    <th align="left">Description and examples</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>Specify the URL for the management service.</p></td>
    <td align="left"><p>Example: <a href="http://localhost:12345" data-raw-source="http://localhost:12345">http://localhost:12345</a></p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Website name</strong>: Specify the custom name that will be used to run the publishing service.</p></td>
    <td align="left"><p>If you do not have a custom name, do not make any changes.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Port binding</strong>: Specify a unique port number that will be used by App-V.</p></td>
    <td align="left"><p>Example: 54321</p>
    <p>Ensure that the port specified is not being used by another website.</p></td>
    </tr>
    </tbody>
    </table>

     

12. On the **Reporting Server** page, specify the following:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">Item to configure</th>
    <th align="left">Description and examples</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Website name</strong>: Specify the custom name that will be used to run the Reporting Service.</p></td>
    <td align="left"><p>If you do not have a custom name, do not make any changes.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Port binding</strong>: Specify a unique port number that will be used by App-V.</p></td>
    <td align="left"><p>Example: 55555</p>
    <p>Ensure that the port specified is not being used by another website.</p></td>
    </tr>
    </tbody>
    </table>

     

13. To start the installation, click **Install** on the **Ready** page, and then click **Close** on the **Finished** page.

14. To verify that the setup completed successfully, open a web browser, and type the following URL:

    **http://&lt;Management server machine name&gt;:&lt;Management service port number&gt;/Console.html**.

    Example: **http://localhost:12345/console.html**. If the installation succeeded, the App-V Management console is displayed with no errors.

    **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying App-V 5.1](deploying-app-v-51.md)

[How to Install the Management and Reporting Databases on Separate Computers from the Management and Reporting Services](how-to-install-the-management-and-reporting-databases-on-separate-computers-from-the-management-and-reporting-services51.md)

[How to Install the Publishing Server on a Remote Computer](how-to-install-the-publishing-server-on-a-remote-computer51.md)

[How to Deploy the App-V 5.1 Server Using a Script](how-to-deploy-the-app-v-51-server-using-a-script.md)

 

 





