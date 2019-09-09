---
title: How to Install the Publishing Server on a Remote Computer (Windows 10)
description: How to Install the App-V Publishing Server on a Remote Computer
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
---
# How to install the publishing server on a remote computer

>Applies to: Windows Server 2016

Use the following procedure to install the publishing server on a separate computer. Before you perform the following procedure, ensure the database and management server are available.

## Installing the publishing server on a separate computer

1. Copy the App-V server installation files to the computer on which you want to install it on. To start the App-V server installation, run **appv\_server\_setup.exe** as an administrator, then select **Install**.
2. On the **Getting started** page, review and accept the license terms, then select **Next**.
3. On the **Use Microsoft Update to help keep your computer secure and up-to-date** page, to enable Microsoft updates, select **Use Microsoft Update when I check for updates (recommended)**. To disable Microsoft Update, select **I don’t want to use Microsoft Update**. Click **Next**.
4. On the **Feature selection** page, select the **Publishing Server** checkbox, then select **Next**.
5. On the **Installation location** page, accept the default location, then select **Next**.
6. On the **Configure publishing server configuration** page, specify the following items:

   * The URL for the management service that the publishing server will connect to. For example, **http:<span></span>//ManagementServerName:12345**.
   * Specify the website name that you want to use for the publishing service. If you don't have a custom name, then use the default name.
   * For the **Port binding**, specify a unique port number that will be used by App-V. For example, **54321**.
7. On the **Ready to install** page, select **Install**.
8. After the installation is complete, the publishing server must be registered with the management server. In the App-V management console, use the following steps to register the server:

    1. Open the App-V management server console.
    2. In the left pane, select **Servers**, then select **Register New Server**.
    3. Enter the server name and a description (if required), then select **Add**.
9. To verify that the publishing server is running correctly, you should import a package to the management server, entitle that package to an AD group, then publish it. Using an internet browser, open the following URL: <strong>https://publishingserver:pubport</strong>. If the server is running correctly, information like the following example should appear.

    ```SQL
    <Publishing Protocol="1.0">
    
        <Packages>

        <Package PackageId="28115343-06e2-44dc-a327-3a0b9b868bda" VersionId="5d03c08f-51dc-4026-8cf9-15ebe3d65a72" PackageUrl="\\server\share\file.appv" />
        
        </Packages>

        <NoGroup>

        <Package PackageId="28115343-06e2-44dc-a327-3a0b9b868bda" />

        </NoGroup>

    </Publishing>
    ```

 



## Related topics

* [Deploying App-V](appv-deploying-appv.md)
