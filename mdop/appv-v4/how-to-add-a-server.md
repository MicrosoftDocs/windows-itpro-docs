---
title: How to Add a Server
description: How to Add a Server
author: dansimp
ms.assetid: 1f31678a-8edf-4d35-a812-e4a2abfd979b
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Add a Server


To help you manage your Application Virtualization Management Servers more efficiently, organize them into server groups. After you create a server group in the Application Virtualization Server Management Console, you can use the following procedure to add a server to the group.

**Note**  
All servers in a server group must be connected to the same data store.

 

**To add a server to a group**

1.  Click the **Server Groups** node in the left pane to expand the list of server groups.

2.  Right-click the desired server group, and select **New Application Virtualization Management Server**.

3.  In the **New Server Group Wizard**, enter the **Display Name** and the **DNS Host Name**.

4.  Leave the default values in the **Maximum Memory Allocation** field for the server cache and the **Warn Memory Allocation** field to specify the threshold warning level.

5.  Click **Next**.

6.  In the **Connection Security Mode** dialog, check the **Use enhanced security** box to select enhanced security mode, if desired. If necessary, complete the **Certificate Wizard** or view existing certificates.

7.  Click **Next**.

8.  In the **App Virt Port Setting** dialog, select the **Use Default Port** or the **User Custom Port** radio button and enter the custom port number.

9.  Click **Finish**.

## Related topics


[How to Create a Server Group](how-to-create-a-server-group.md)

[How to Remove a Server](how-to-remove-a-server.md)

 

 





