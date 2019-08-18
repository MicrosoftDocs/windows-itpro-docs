---
title: How to Connect to an Application Virtualization System
description: How to Connect to an Application Virtualization System
author: dansimp
ms.assetid: ac38216c-5464-4c0b-a4d3-3949ba6358ac
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Connect to an Application Virtualization System


You must connect the Application Virtualization Server Management Console to an Application Virtualization System before you can use the management console to manage applications, file type associations, packages, application licenses, server groups, provider policies and administrators. The following procedure outlines the steps you must follow to connect the console to an Application Virtualization System.

**To connect to an Application Virtualization System**

1. Right-click the Application Virtualization System node in the **Scope** pane, and select **Connect to Application Virtualization System** from the pop-up menu.

   **Note**  
   There are three components to Application Virtualization server management: the Application Virtualization Management Console, the Management Web Service, and the SQL Datastore. If these components are distributed across different physical machines, you must configure security properly for the components to communicate across the system. For more information, see the following manuals and articles:

   [How to Configure the Server to be Trusted for Delegation](https://go.microsoft.com/fwlink/?LinkID=166682) (https://go.microsoft.com/fwlink/?LinkID=166682)

   [Planning and Deployment Guide for the Application Virtualization System](https://go.microsoft.com/fwlink/?LinkID=122063) (https://go.microsoft.com/fwlink/?LinkID=122063)

   [Operations Guide for the Application Virtualization System](https://go.microsoft.com/fwlink/?LinkID=133129) (https://go.microsoft.com/fwlink/?LinkID=133129)

   [Article 930472](https://go.microsoft.com/fwlink/?LinkId=114647) in the Microsoft Knowledge Base (https://go.microsoft.com/fwlink/?LinkId=114647)

   [Article 930565](https://go.microsoft.com/fwlink/?LinkId=114648) in the Microsoft Knowledge Base (https://go.microsoft.com/fwlink/?LinkId=114648)

     

2. Complete the fields in the **Connect to Application Virtualization System** dialog box:

   1. **Web Service Host Name**—Enter the name of the Application Virtualization System to which you want to connect, or enter **localhost** to connect to the local server.

   2. **Use Secure Connection**—Select this check box if you want to connect to the server with a secure connection.

   3. **Port**—Enter the port number you want to use for the connection. **80** is the default regular port number, and **443** is the secure-port number.

   4. **Use Current Windows Account**—Select this radio button to use the current Windows account credentials.

   5. **Specify Windows Account**—Select this radio button when you want to connect to the server as a different user.

   6. **Name**—Enter the name of the new user by using either the *DOMAIN\\username* or the <em>username@domain</em> format.

   7. **Password**—Enter the password that corresponds to the new user.

3. Click **OK**.

## Related topics


[How to Perform Administrative Tasks in the Application Virtualization Server Management Console](how-to-perform-administrative-tasks-in-the-application-virtualization-server-management-console.md)

 

 





