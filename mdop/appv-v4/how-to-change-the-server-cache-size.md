---
title: How to Change the Server Cache Size
description: How to Change the Server Cache Size
author: dansimp
ms.assetid: 24e63744-21c3-458e-b137-9592f4fe785c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Change the Server Cache Size


You can use the following procedure to change the cache size for any server directly from the Application Virtualization Server Management Console.

**Note**  
Although you can change the cache size, unless your configuration specifically requires you to change the size, it is recommended that you leave the cache size set to the default values.

 

**To change the server cache size**

1.  Click the **Server Groups** node in the left pane to expand the list of server groups.

2.  In the **Results** pane, double-click the desired server group to display the list of servers in the group.

3.  In the **Results** pane, right-click the desired server and select **Properties**.

4.  Select the **Advanced** tab.

5.  Enter a value in the **Maximum Memory Allocation** field for the server cache, and enter a value for the threshold warning level in the **Warn Memory Allocation** field.

6.  Enter a value in the **Maximum Block Size** field. This number must be greater than or equal to the maximum block size of the largest package that will be streamed from the server.

7.  Click **OK**.

## Related topics


[How to Change the Server Port](how-to-change-the-server-port.md)

[How to Manage Servers in the Server Management Console](how-to-manage-servers-in-the-server-management-console.md)

 

 





