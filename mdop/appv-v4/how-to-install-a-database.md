---
title: How to Install a Database
description: How to Install a Database
author: dansimp
ms.assetid: 52e3a19d-b7cf-4f2c-8268-0f8361cc9766
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Install a Database


You can use the following procedure to install a database for your server-based deployment of Application Virtualization if a database is not already available. Typically, in a production environment, you will connect to an existing database.

**Important**  
To install the database, you must use a network account with the appropriate permissions. If your organization requires that only database administrators are allowed to create and conduct database upgrades, scripts are available that allow this task to be performed.

 

**To install a database**

1.  Navigate to the location of the Application Virtualization System setup program on the network, either run this program from the network or copy its directory to the target computer, and then double-click **Setup.exe**.

2.  On the **Welcome Page**, click **Next**.

3.  On the **License Agreement** page, to accept the license agreement, select **I accept the license terms and conditions**, and click **Next**.

4.  On the **Registering Information** page, specify the **User Name** and **Organization** information, and then click **Next**.

5.  On the **Setup Type** page, select **Custom** and then click **Next**.

6.  On the **Custom Setup** page, deselect all Application Virtualization System components except **Application Virtualization Server**, and then click **Next**.

    **Note**  
    If a component is already installed on the computer, by deselecting it on the **Custom Setup** screen it will automatically be uninstalled.

     

7.  On the **Database Server** page, type the passwords, assign an installation path, save the information, and click **Next**.

8.  Select a name for the database, and then click **Next**.

    **Note**  
    If error 25109 is displayed when you try to complete this step, you have incorrectly set up the permissions necessary to install the database. For details on setting up the necessary SQL permissions, please see <https://go.microsoft.com/fwlink/?LinkId=132144>.

     

9.  On the **Directory Server** screen, enter a domain name and credentials that Application Virtualization Servers and the Management Web Service will use to access your domain controller, save this information, and then click **Next**.

    **Note**  
    The installation will default to the domain of the current computer.

     

10. On the **Administrator Group** page, enter the name of a group that will have Administrator privileges, save this information, and then click **Next**.

    **Note**  
    You can also enter the first few characters of the name of a group that will have Administration privileges, click **Next**, and on the **Select Administrator Group** screen, select the group from the resulting list. Then save this information and click **Next**.

     

11. On the **Default Provider Group** page, enter the complete name of a group that will control access to applications, save this information, and then click **Next**.

    **Note**  
    You can also enter the first few characters of the name of a group that will control access to applications, click **Next**, and on the **Select Default Provider Group** screen, select the group in the list. Then save this information and click **Next**.

     

12. On the **Installation Wizard Completed** page, to close the wizard, click **Finish**.

    **Important**  
    The installation can take a few minutes to finish. A status message will flash above the Windows desktop notification area, indicating whether the installation succeeded.

     

## Related topics


[How to Install the Servers and System Components](how-to-install-the-servers-and-system-components.md)

 

 





