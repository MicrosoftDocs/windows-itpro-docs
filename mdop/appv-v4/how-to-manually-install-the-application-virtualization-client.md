---
title: How to Manually Install the Application Virtualization Client
description: How to Manually Install the Application Virtualization Client
author: dansimp
ms.assetid: bb67f70b-d525-4317-b254-e4f084c717ab
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# How to Manually Install the Application Virtualization Client


There are two types of Application Virtualization Client components: the Application Virtualization Desktop Client, which is designed for installation on desktop computers, and the Application Virtualization Client for Remote Desktop Services (formerly Terminal Services), which you can install on Remote Desktop Session Host (RD Session Host) servers . Although the two client installer programs are different, you can use the following procedure to manually install either the Application Virtualization Desktop Client on a single desktop computer or the Application Virtualization Client for Remote Desktop Services on a single RD Session Host server. In a production environment, you most likely will install the Application Virtualization Desktop Client on multiple desktop computers with an automated scripted installation process. For information about how to install multiple clients by using a scripted installation process, see [How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md).

**Note**  
1.  If you are installing the Application Virtualization Client for Remote Desktop Services software on a RD Session Host server, advise users who have an open RDP or ICA client session with the RD Session Host server that they must save their work and close their sessions. In a Remote Desktop session, you can install the client the client manually. For more information about upgrading the client, see [How to Upgrade the Application Virtualization Client](how-to-upgrade-the-application-virtualization-client.md).

2.  If you have any configuration on the user’s computer that depends on the client install path, note that the Application Virtualization (App-V) 4.5 client uses a different install folder than previous versions. By default, a new install of the Application Virtualization (App-V) 4.5 client will install to the \\Program Files\\Microsoft Application Virtualization Client folder. If an earlier version of the client is already installed, installing the App-V client will perform an upgrade into the existing installation folder.



**Note**  
For App-V version 4.6 and later, when the App-V client is installed, SFTLDR.DLL is installed in the Windows\\system32 directory. If the App-V client is installed on a 64-bit system, SFTLDR\_WOW64.DLL is installed in the Windows\\SysWOW64 directory.



**To manually install Application Virtualization Desktop Client**

1.  After you have obtained the correct installer archive file and saved it to your computer, make sure you are logged on with an account having administrator rights on the computer and double-click the file to expand the archive.

2.  Choose the folder in which to save the files, and then open the folder after the files have been copied to it.

3.  Review the Release Notes if appropriate.

4.  Browse to find the setup.exe file, and double-click setup.exe to start the installation.

5.  The wizard checks the system to ensure that all prerequisite software is installed, and if any of the following are missing, the wizard will automatically prompt you to install them:

    -   Microsoft Visual C++ 2005 SP1 Redistributable Package (x86)

    -   Microsoft Core XML Services (MSXML) 6.0 SP1 (x86)

    -   Microsoft Application Error Reporting

    **Note**  
    For App-V version 4.6 and later, the wizard will also install Microsoft Visual C++ 2008 SP1 Redistributable Package (x86).

    For more information about installing Microsoft Visual C++ 2008 SP1 Redistributable Package (x86), see <https://go.microsoft.com/fwlink/?LinkId=150700> (https://go.microsoft.com/fwlink/?LinkId=150700).



~~~
If prompted, click **Install**. Installation progress is displayed, and the status changes from **Pending** to **Installing**. Installation status changes to **Succeeded** as each step is completed successfully.
~~~

6. When the **Microsoft Application Virtualization Desktop Client – InstallShield Wizard** is displayed, click **Next**.

7. The **License Agreement** screen is displayed. Read the license agreement, and if you agree, click **I accept the terms in the license agreement** and then click **Next**.

   Optionally, you can click the button to read the Privacy Statement. You must be connected to the Internet to access the Privacy Statement.

8. On the **Setup Type** screen, select the setup type. Click **Typical** to use the default program values, or click **Custom** if you want to configure the program settings during installation.

9. If you choose **Typical**, the next screen displays **Ready to Install the Program**. Click **Install** to begin the installation.

10. If you choose **Custom**, the **Destination Folder** screen appears.

11. On the **Destination Folder** screen, click **Next** to accept the default folder or click **Change** to display the **Change Current Destination Folder** screen. Browse to or, in the **Folder Name** field, enter the destination folder, click **OK**, and then click **Next**.

12. On the **Application Virtualization Data Location** screen, click **Next** to accept the default data locations or complete the following actions to change where the data is stored:

   1.  Click **Change**, and then browse to or, in the **Global Data Location** field, enter the destination folder for the global data location, and click **OK**. The Global Data Directory is where the Application Virtualization Desktop Client caches data shared by all users on the computer, like OSD files and SFT file data.

   2.  If you want to change the drive letter to be used, select the preferred drive letter from the drop-down list.

   3.  Enter a new path to store the user-specific data in the **User-specific Data Location** field if you want to change the data location. The User Data Directory is where the Application Virtualization Desktop Client stores user-specific information, like personal settings for virtualized applications.

       **Note**  
       This path must be different for every user, so it should include a user-specific environment variable or a mapped drive or something else that will resolve to a unique path for each user.



   4.  When you have finished making the changes, click **Next**.

13. On the **Cache Size Settings** screen, you can accept or change the default cache size. Click one of the following radio buttons to choose how to manage the cache space:

   1.  **Use maximum cache size**. Enter a numeric value from 100–1,048,576 (1 TB) in the **Maximum size (MB)** field to specify the maximum size of the cache.

   2.  **Use free disk space threshold**. Enter a numeric value to specify the amount of free disk space, in MB, that the Application Virtualization Client must leave available on the disk. This allows the cache to grow until the amount of free disk space reaches this limit. The value shown in **Free disk space remaining** indicates how much disk space is currently unused.

   **Important**  
   To ensure that the cache has sufficient space allocated for all packages that might be deployed, use the **Use free disk space threshold** setting when you configure the client so that the cache can grow as needed. Alternatively, determine in advance how much disk space will be needed for the App-V cache, and at installation time, set the cache size accordingly. For more information about the cache space management feature, in the Microsoft Application Virtualization (App-V) Operations Guide, see **How to Use the Cache Space Management Feature**.



~~~
Click **Next** to continue.
~~~

14. In the following sections of the **Runtime Package Policy Configuration** screen, you can change the parameters that affect how the Application Virtualization client behaves during runtime:

   1.  **Application Source Root**. Specifies the location of SFT files. If used, overrides the protocol, server, and port portions of the CODEBASE HREF URL in the OSD file.

   2.  **Application Authorization**. When **Require User authorization even when cached** is checked, users are required to connect to a server and validate their credentials at least once before they are allowed to start each virtual application.

   3.  **Allow streaming from file**. Indicates whether streaming from file will be enabled, regardless of how the **Application Source Root** field is used. If not checked, streaming from files is disabled. This must be checked if **Application Source Root** contains a UNC path in the form \\\\server\\share.

   4.  **Automatically Load Application**. Controls when and how automatic background loading of applications occurs.

       **Note**  
       When you install the App-V client to use with a read-only cache, for example, with a VDI server implementation, set **What applications to Auto Load** to **Do not automatically load applications** to prevent the client from trying to update applications in the read-only cache.



~~~
Click **Next** to continue.
~~~

15. On the **Publishing Server** screen, select the **Set up a Publishing Server now** check box if you want to define a publishing server, or click **Next** if you want to complete this later. To define a publishing server, specify the following information:

   1.  **Display Name**—Enter the name you want to display for the server.

   2.  **Type**—Select the server type from the drop-down list of server types.

   3.  **Host Name** and **Port**—Enter the host name and the port in the corresponding fields. When you select a server type in the drop-down list, the port field will automatically fill with the standard port numbers. To change a port number, click the server type in the list and change the port number according to your needs.

   4.  **Path**—If you have selected either **Standard HTTP Server** or **Enhanced Security HTTP Server**, you must enter the complete path to the XML file containing publishing data in this field. If you select either **Application Virtualization Server** or **Enhanced Security Application Virtualization Server**, this field is not active.

   5.  **Automatically contact this server to update settings when a user logs in**—Select this check box if you want this server to be queried automatically when users log in to their account on the Application Virtualization Client.

   6.  When finished with the configuration steps, click **Next**.

16. On the **Ready to Install the Program** screen, click **Install**. A screen is displayed that shows the progress of the installation.

17. On the **Install Wizard Completed** screen, click **Finish**.

   **Note**  
   If the installation fails for any reason, you might need to restart the computer before trying the install again.



## Related topics


[How to Install the Client by Using the Command Line](how-to-install-the-client-by-using-the-command-line-new.md)

[Stand-Alone Delivery Scenario Overview](stand-alone-delivery-scenario-overview.md)









