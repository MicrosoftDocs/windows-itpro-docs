---
title: How to Install the Publishing Server on a Remote Computer
description: How to Install the Publishing Server on a Remote Computer
author: dansimp
ms.assetid: 37970706-54ff-4799-9485-b9b49fd50f37
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the Publishing Server on a Remote Computer


Use the following procedure to install the publishing server on a separate computer. Before you perform the following procedure, ensure the database and management server are available.

**To install the publishing server on a separate computer**

1. Copy the App-V 5.0 server installation files to the computer on which you want to install it on. To start the App-V 5.0 server installation right-click and run **appv\_server\_setup.exe** as an administrator. Click **Install**.

2. On the **Getting Started** page, review and accept the license terms, and click **Next**.

3. On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates, select **Use Microsoft Update when I check for updates (recommended).** To disable Microsoft updates, select **I don’t want to use Microsoft Update**. Click **Next**.

4. On the **Feature Selection** page, select the **Publishing Server** checkbox and click **Next**.

5. On the **Installation Location** page, accept the default location and click **Next**.

6. On the **Configure Publishing Server Configuration** page, specify the following items:

   -   The URL for the management service that the publishing server will connect to. For example, **http://ManagementServerName:12345**.

   -   Specify the website name that you want to use for the publishing service. Accept the default if you do not have a custom name.

   -   For the **Port Binding**, specify a unique port number that will be used by App-V 5.0, for example **54321**.

7. On the **Ready to Install** page, click **Install**.

8. After the installation is complete, the publishing server must be registered with the management server. In the App-V 5.0 management console, use the following steps to register the server:

   1.  Open the App-V 5.0 management server console.

   2.  In the left pane, select **Servers**, and then select **Register New Server**.

   3.  Type the name of this server and a description (if required) and click **Add**.

9. To verify if the publishing server is running correctly, you should import a package to the management server, entitle the package to an AD group, and publish the package. Using an internet browser, open the following URL: <strong>http://publishingserver:pubport</strong>. If the server is running correctly information similar to the following will be displayed:

   ```xml
   <Publishing Protocol="1.0">
     <Packages>
       <Package PackageId="28115343-06e2-44dc-a327-3a0b9b868bda" VersionId="5d03c08f-51dc-4026-8cf9-15ebe3d65a72" PackageUrl="\\server\share\file.appv" />
     </Packages>
     <NoGroup>
       <Package PackageId="28115343-06e2-44dc-a327-3a0b9b868bda" />
     </NoGroup>
   </Publishing>
   ```

   **Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Deploying App-V 5.0](deploying-app-v-50.md)

 

 





