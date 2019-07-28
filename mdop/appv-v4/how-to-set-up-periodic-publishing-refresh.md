---
title: How to Set Up Periodic Publishing Refresh
description: How to Set Up Periodic Publishing Refresh
author: eavena
ms.assetid: c358c765-cb88-4881-b4e7-0a2e87304870
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Set Up Periodic Publishing Refresh


You can use the following procedure to configure the client to periodically refresh the publishing information from the App-V servers. After the client is configured, the refresh operation is automatic. These settings configure the default settings for the client so that all users on this computer will see the same settings.

**Note**  
After you have performed this procedure, the publishing information will be refreshed according to the new settings after the first refresh at login. When this first refresh occurs, the server might override the computer settings with different settings, depending on how it is configured. The **Refresh** tab in the **Properties** dialog box shows the locally configured client computer settings and any settings that might have been configured for the user by the publishing server.

 

**To periodically refresh the publishing information from the Application Virtualization Servers**

1.  Click **Publishing Servers** in the **Scope** pane.

2.  In the **Results** pane, right-click the desired server and select **Properties** from the pop-up-menu.

3.  In the **Properties** dialog box, on the **Refresh** tab, select the **Refresh configuration every** check box and enter a number that represents the frequency in the field. Then select **Minutes**, **Hours**, **Days** from the drop-down menu.

    **Note**  
    This setting will cause the client to refresh publishing information every time the configured period elapses. If the user is not logged in when it's time to do a refresh, the refresh will take place when the user next logs in. The timer is then started again for the next period.

     

4.  Click **Apply** to change the configuration.

5.  When you finish configuring the server, click **OK** to exit the dialog box and return to the Application Virtualization Client Management Console.

## Related topics


[How to Configure the Client in the Application Virtualization Client Management Console](how-to-configure-the-client-in-the-application-virtualization-client-management-console.md)

 

 





