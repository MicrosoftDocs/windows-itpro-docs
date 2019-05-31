---
title: How to Install and Configure the Default Application
description: How to Install and Configure the Default Application
author: dansimp
ms.assetid: 5c5d5ad1-af40-4f83-8234-39e972f2c29a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Install and Configure the Default Application


The default application is provided as part of the installation and is automatically copied to the Microsoft Application Virtualization (App-V) Management Server during installation. It is used to verify that the Management Server was installed and configured correctly, but it has to be published to the Microsoft Application Virtualization (App-V) Client so that the user can access it.

Use the following procedures to publish the default application and to stream it.

**To publish the default application**

1.  Log on to the App-V Management Server by using an account that is a member of the App-V Administrators group specified during installation.

2.  On the App-V Management Server, click **Start**, click **Administrative Tools**, and then click **Application Virtualization Management Console**.

3.  In the App-V Management Console, click **Actions**, and then click **Connect to Application Virtualization System**.

4.  On the **Configure Connection** page, clear the **Use Secure Connection** check box.

5.  In the **Web Service Host Name** box, type the fully qualified domain name (FQDN) of the App-V Management Server, and then click **OK**.

    **Note**  
    You can also use **localhost** for the Web Service Host name if it is installed on the Management Server.

     

6.  In the App-V Management Console, right-click the **Server** node, and click **System Options**.

7.  On the **General** tab, in the **Default Content Path** box, enter the Universal Naming Convention (UNC) path to the Content folder you created on the server during installation; for example, \\\\&lt;Server Name&gt;\\Content, and then click **OK**.

    **Important**  
    Use the FQDN for the server name so that the client can resolve the name correctly.

     

8.  In the App-V Management Console, in the navigation pane, expand the **Server** node, and then click **Applications**.

9.  In the topic pane, click **Default Application**, and then, in the **Actions** pane, click **Properties**.

10. In the **Properties** dialog box, next to the **OSD Path** box, click **Browse**.

11. In the **Open** dialog box, enter the UNC path to the Content folder you created on the server during installation; for example, \\\\&lt;Server Name&gt;\\Content, and press ENTER. You must use the actual server name and cannot use the **localhost** here.

    **Important**  
    Ensure that the values in both the **OSD Path** and **Icon Path** boxes are in UNC format (for example, \\\\&lt;Server Name&gt;\\Content\\DefaultApp.ico), and point to the Content folder you created when installing the server. Do not use **localhost** or a file path containing a drive letter such as C:\\Program Files\\..\\..\\Content.

     

12. Select the DefaultApp.osd file, and click **Open**.

13. Repeat the previous steps to configure the icon path.

14. Click the **Access Permissions** tab, and confirm that the App-V Users group has access permissions to the application.

15. Click the **Shortcuts** tab, and then click **Publish to User’s Desktop**. Click **OK**.

16. Open Windows Explorer, and locate the Content directory.

17. Double-click the DefaultApp.osd file, and open it with Notepad.

18. Locate the line that contains the **HREF** tag, and change it to the following code:

         `CODEBASEHREF=”RTSP://<FQDN of your server>:554/DefaultApp.sft”`

    Or, if you are using RTSPS:

         `CODEBASEHREF=”RTSPS://<FQDN of your server>:322/DefaultApp.sft”`

19. Close the DefaultApp.osd file, and save the changes.

**To stream the default application**

1.  On the computer that has the App-V Client installed, log on as a user who is a member of the Application Virtualization Users group specified during server installation.

2.  On the desktop, the **Default Application Virtualization Application** shortcut appears. Double-click the shortcut to start the application.

3.  A status bar, displayed above the Windows notification area, reports that the application is starting. If the application startup is successful, the title screen for the default application is displayed. Click **OK** to close the dialog box. You have now confirmed that the App-V system is running correctly.

## Related topics


[How to Configure Servers for Server-Based Deployment](how-to-configure-servers-for-server-based-deployment.md)

 

 





