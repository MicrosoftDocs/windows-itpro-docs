---
title: How to Install the Management Web Service
description: How to Install the Management Web Service
author: dansimp
ms.assetid: cac296f5-8ca0-4ce7-afdb-859ae207d2f1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Install the Management Web Service


Use the following procedure to install the Application Virtualization Management Web Service on a target computer on the network, with a logon account having local administrative privileges. Although it is not required, we recommended that you install this component on your Web server.

**To install the Management Web Service**

1.  Verify that no previous versions of the Application Virtualization Web Service are installed on your target computer.

2.  Navigate to the location of the Application Virtualization System setup program on the network, either run this program from the network or copy its directory to the target computer, and then double-click **Setup.exe**.

3.  After the Installation Wizard opens, on the **Welcome** page, click **Next**.

4.  On the **License Agreement** page, to accept the license agreement, select **I accept the license terms and conditions**, and then click **Next**.

5.  On the **Registration Information** page, specify the **User Name** and organization information, and then click **Next**.

6.  On the **Setup Type** page, click **Custom**, and then click **Next**.

    **Note**  
    If this is not the first component you installed on this computer, the **Program Maintenance** page is displayed. On the **Program Maintenance** page, click **Modify**.

     

7.  On the **Custom Setup** page, clear all Application Virtualization System components except **App Virt Management Service**, and then click **Next**.

    **Note**  
    If a component is already installed on the computer, by clearing it on the **Custom Setup** page, you will automatically uninstall it.

     

8.  On the **Database Server** page, click **Connect to available database**, and then click **Next**.

    **Note**  
    In a production environment, Microsoft assumes that you will connect to an existing database. If you want to install a database, see [How to Install a Database](how-to-install-a-database.md). After installing the database, continue with step 13.

     

9.  On the **Database Server Type** page, select a database type from the list, and then click **Next**.

10. On the **Database Server Location** page, select a database server from the list of available servers or add a server by selecting the **Use the following host name** check box and entering information in the **Server Name** and **Port Number** boxes, and then click **Next**.

11. On the **Select Database** page, select the database you want, and then click **Next**.

12. On the **Database User Configuration** page, enter the credentials that the Management Web Service will use to access the data store, and then click **Next**.

13. On the **Ready to Modify the Program** page, click **Install**.

    **Note**  
    If this is the first component you install, the **Ready to Install the Program** page is displayed. On the page, click **Install**.

     

14. On the **Installation Wizard Completed** page, click **Finish**.

## Related topics


[How to Install the Servers and System Components](how-to-install-the-servers-and-system-components.md)

 

 





