---
title: How to Set Up Publishing Servers
description: How to Set Up Publishing Servers
author: dansimp
ms.assetid: 2111f079-c202-4c49-b2a6-f4237068b2dc
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Set Up Publishing Servers


You can use the following procedures to add and configure Application Virtualization Servers directly from the Client Management Console.

**To add an application publishing server**

1.  In the **Results** pane, right-click and select **New Server** from the pop-up-menu to start the New Application Virtualization Server Wizard, or alternatively, right-click the **Publishing Server** node and select **New Server** from the pop-up-menu.

2.  On page one of the wizard, enter the name of the server in the **Display Name** field and select the server type from the **Type** drop-down list. You can choose **Application Virtualization Server**, **Enhanced Security Application Virtualization Server**, **Standard HTTP Server**, or **Enhanced Security HTTP Server** from the drop-down list of server types.

3.  Click **Next**.

4.  On page two of the wizard, type the appropriate information into the **Host Name** and **Port** fields. The **Path** field is not editable for Application Virtualization Servers. You must enter a path for Standard HTTP Server or Enhanced Security HTTP Server.

5.  Click **Finish** to add the server.

**To set up an application publishing server**

1.  In the **Results** pane, right-click the desired server and select **Properties** from the pop-up menu.

2.  Click the **General** tab, where you can change the server name, select a type from the drop-down list of server types, and specify the host name and port. When the server type is Standard HTTP Server or Enhanced Security HTTP Server, the **Path** field is also editable.

3.  Click the **Refresh** tab, where the **Refresh publishing on user login** check box is selected by default. To change the refresh rate, select the **Refresh publishing every** check box and enter a number that represents the frequency in the field. Then select **Minutes**, **Hours**, **Days** from the drop-down menu. (The minimum amount of time you can enter is 30 minutes.)

4.  Click **Apply** to change the configuration.

5.  When you are finished publishing, click **OK** to exit the dialog box and return to the Client Management Console.

## Related topics


[How to Disable or Modify Disconnected Operation Mode Settings](how-to-disable-or-modify-disconnected-operation-mode-settings.md)

 

 





