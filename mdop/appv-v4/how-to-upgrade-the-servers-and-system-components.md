---
title: How to Upgrade the Servers and System Components
description: How to Upgrade the Servers and System Components
author: eavena
ms.assetid: 7d8374fe-5897-452e-923e-556a854b2024
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Upgrade the Servers and System Components


Use the following procedure to upgrade software components installed on all Application Virtualization System computers. Application Virtualization System services will be restarted automatically on each computer after it has been upgraded.

**Note**  
-   The upgrade process stops all Application Virtualization System services, thereby taking the system out of service. User sessions should be shut down before you begin the upgrade process, and you should stop all Application Virtualization Server services in your environment.

-   If you have more than one server that is sharing access to the Application Virtualization database, all those servers must be taken offline while the database is being upgraded. You should follow your normal business practices for the database upgrade, but it is highly advisable that you test the database upgrade by using a backup copy of the database first on a test server. Then, you should select one of the servers for the first upgrade, which will upgrade the database schema. After the production database has been successfully upgraded, you can upgrade the other servers.

-   You can upgrade to Microsoft Application Virtualization (App-V) 4.5 only from Microsoft Application Virtualization (App-V) 4.1 or 4.1 SP1. App-V 4.0 and earlier must be uninstalled or upgraded to 4.1 or 4.1 SP1 before upgrading to App-V 4.5.

 

**To upgrade software components on Application Virtualization System computers**

1.  Navigate to the location of the Setup program on the network, either run this program from the network or copy its directory to the target computer, and then double-click the Setup.exe file.

2.  On the **Welcome** page of the Installation Wizard, click **Next**.

3.  On the **License Agreement** page, read the license agreement, check **I accept the terms in the license agreement**, and click **Next**.

4.  When the **Installed Software** page opens and displays a list of the installed Application Virtualization System components and the version of each component, click **Next**.

5.  On the **Session Loss Warning** page, read the displayed message and click **Next**.

6.  On the **Connect to Configuration Database** page, review the content on the page and click **Next**.

7.  If the **Database Upgrade Required** page is displayed, a database upgrade is required. Enter the database administrative credentials, and then click **Next**. If this page is not displayed, skip to Step 9.

8.  On the **Backup Configuration Database** page, check the appropriate boxes to perform the backup and export it to an existing location, and then click **Next**.

    **Important**  
    If you want to be able to roll back to the previous version in the event of an upgrade failure, make sure you check the **Perform a backup of the configuration database** box, or you will lose the configuration data.

    When you want to restore a database with VSS, you must first stop the App-V Server Service on the Management Server. This should be done on every Management server if there is more than one server connected to the same database.

     

9.  On the first **Package Validation** page, read the content and then click **Next**.

10. On the second **Package Validation** page, you have the option of displaying the details of the package validation in a Notepad window. To see the details, click **Details**; otherwise, click **Next**.

11. On the **Ready to Upgrade the Program** page, click **Next**.

12. On the **Installation Wizard Completed** page, click **Finish**.

13. Repeat steps 1–12 on all other computers where you installed the Application Virtualization Management Console or the Application Virtualization Server software component.

    After upgrading the data store, you can resume normal operation. (The data store is upgraded when you upgrade any server or the App-V Management Web Service.)

## Related topics


[Application Virtualization Deployment and Upgrade Considerations](application-virtualization-deployment-and-upgrade-considerations.md)

 

 





