---
title: How to Install Application Virtualization Management Server
description: How to Install Application Virtualization Management Server
author: dansimp
ms.assetid: 8184be79-8c27-4328-a3c1-183791b5556c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Install Application Virtualization Management Server


The Application Virtualization Management Server publishes its applications to clients. In a load-balanced environment, which is typical of large deployments, all servers in a server group should stream the same applications. If Application Virtualization Management Servers are to publish different applications, assign the servers to different server groups. In this case, you also might need to increase a server group's capacity.

If you have designated a target computer on the network, with a login account having local Administrator privileges, you can use the following procedure to install the Application Virtualization Management Server and assign it to the appropriate server group.

**Note**  
The Installation Wizard can create a server group record, if one does not exist, as well as a record of the Application Virtualization Management Server's membership in this group.



After you complete the installation process, reboot the server.

**To install an Application Virtualization Management Server**

1.  Verify and, if necessary, uninstall previous versions of the Application Virtualization Management Server that are installed on the target computer.

2.  To open the **Microsoft Application Virtualization Management Server installation** wizard, navigate to the location of the Application Virtualization System **setup.exe** program on the network, either run this program from the network or copy its directory to the target computer, and then double-click the **Setup.exe** file.

3.  On the **Welcome** page, click **Next**.

4.  On the **License Agreement** page, read the license agreement and, to accept the license agreement, select **I accept the license terms and conditions**. Click **Next**.

5.  On the **Registering Information** page, you must enter the user name and the **Organization**. Click **Next**.

6.  On the **Setup Type** page, select **Custom**. Click **Next**. On the **Custom Setup** page, deselect all Application Virtualization System components except **Application Virtualization Server**, and then click **Next**.

    **Caution**  
    If a component is already installed on the computer, when you deselect it in the **Custom Setup** window, the component is automatically uninstalled.



7.  On the **Configuration Database** page, select a database server from the list of available servers or add a server by selecting **Use the following host name** and specifying the **Server Name** and **Port Number** data. Click **Next**.

    **Note**  
    The Application Virtualization Management Server does not support case sensitive SQL.



~~~
If a database is available, click the radio button, select the database from the list, and then click **Next**. Setup will upgrade it to this newer version. If the name does not appear in the list, enter the name in the space provided.

**Note**  
When naming a server, do not use the backslash character (/) in the server name.

If you need to install a database, see [How to Install a Database](how-to-install-a-database.md). If you would like to create a new database for this version, select **Create a new database** and specify the name that will be assigned to the new database. You can also specify a new location for the database by selecting the check box and entering the path.
~~~



8. On the **Connection Security Mode** page, select the desired certificate from the drop-down list. Click **Next**.

   **Note**  
   The **Secure Connection Mode** setting requires the server to have a server certificate provisioned to it from a public key infrastructure. If a server certificate is not installed on the server, this option is unavailable and cannot be selected. You must grant the Network Service account read access to the certificate being used.



9. On the **TCP Port Configuration** page, to use the default port (554), select **Use default port (554)**. To specify a custom port, select **Use custom port** and specify the port number that will be used. Click **Next**.

   **Note**  
   When you install the server in a nonsecure environment, you can use the default port (554) or you can define a custom port.



10. On the **Administrator Group** page, specify the name of the security group authorized to manage this server in **Group Name**. Click **Next**. Confirm the group specified and click **Next**.

11. On the **Default Provider Group** page, specify the name of the default provider group, and then click **Next**.

12. On the **Content Path** page, specify the location on the target computer where SFT files will be saved, and then click **Next**.

   **Note**  
   If the HTTP or RTSP port for the Management Server is already allocated, you will be prompted to choose a new port. Select the desired port, and then click **Next**.



13. On the **Ready to Install the Program** page, to install the Application Virtualization Management Server, click **Install**.

   **Note**  
   If error 25120 is displayed when you try to complete this step, you need to enable IIS **Management Scripts and Tools**. To enable this Windows feature, open the **Programs and Features** control panel, select **Turn Windows features on or off**, and navigate to **Internet Information Services.**

   Under **Web Management Tools**, enable **IIS Management Scripts and Tools**.



14. On the **Installation Wizard Completed** screen, to close the wizard, click **Finish**.

   **Important**  
   The installation can take a few minutes to finish. A status message will flash above the Windows desktop notification area, indicating that the installation succeeded.

   It is not necessary to reboot the computer when prompted. However, to optimize system performance, a reboot is recommended.



## Related topics


[How to Install the Servers and System Components](how-to-install-the-servers-and-system-components.md)









