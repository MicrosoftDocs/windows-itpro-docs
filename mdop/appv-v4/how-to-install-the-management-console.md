---
title: How to Install the Management Console
description: How to Install the Management Console
author: dansimp
ms.assetid: 586d99c8-bca6-42e2-a39c-a696053142f1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Install the Management Console


You can use the following procedure to install the Application Virtualization Management Console on a target computer on the network. You must use a network account that has administrator privileges on the target computer. You can use the console to configure and manage the Application Virtualization System Platform.

Before you can complete this procedure, you must install the Application Virtualization Management Web Service on this or a different computer. The Management Web Service allows you to access the data store and the domain controller. For more information about installing the Web service, see [How to Install the Management Web Service](how-to-install-the-management-web-service.md).

**To install the Management Console**

1.  Verify that no previous versions of the Management Console are installed on the target computer.

2.  Navigate to the location of the Application Virtualization System setup program on the network, either run this program from the network or copy its directory to the target computer, and then double-click **Setup.exe**.

3.  On the **Welcome Page**, click **Next**.

4.  On the **License Agreement** page, to accept the license agreement, select **I accept the license terms and conditions**, and then click **Next**.

5.  On the **Registration Information** page, specify the **User Name** and **Organization** information, and then click **Next**.

6.  On the **Setup Type** page, click **Custom** and then click **Next**.

7.  On the **Custom Setup** page, deselect all Application Virtualization System components except **Management Console**, and then click **Next**.

    **Note**  
    If a component is already installed on the computer, by deselecting it on the Custom Setup screen, it will automatically be uninstalled.

     

8.  On the **Ready to Modify the Program** screen, click **Install**.

    **Note**  
    If this is the first component you install, the **Ready to Install the Program** page is displayed. To start the installation, click **Install**.

     

9.  On the **Installation Wizard Completed** screen, click **Finish**. Click **Okay** to restart the computer and complete the installation.

10. In the Windows Control Panel, double-click **Administrative Tools** and then click **Application Virtualization Management Console** to display the Management Console.

11. Click the **Connect** icon, or right-click the **Application Virtualization Systems** container, and then click **Connect to Application Virtualization System**.

12. On the **Connect to Application Virtualization System** screen, enter the host name and port of the Management Web Service computer, change the security information and login credentials if necessary, and then click **OK**.

13. After connecting to the Management Web Service computer, click **File** on the **Console** menu, and then click **Exit**. Click **Yes** to save console settings.

## Related topics


[How to Install the Servers and System Components](how-to-install-the-servers-and-system-components.md)

 

 





