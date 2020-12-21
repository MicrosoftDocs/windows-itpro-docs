---
title: How to Register and Unregister a Publishing Server by Using the Management Console (Windows 10)
description: How to Register and Unregister a Publishing Server by Using the Management Console
author: lomayor
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---


# How to Register and Unregister a Publishing Server by Using the Management Console

**Applies to**
-   Windows 10, version 1607

You can register and unregister publishing servers that will synchronize with the App-V management server. You can also see the last attempt that the publishing server made to synchronize the information with the management server.

Use the following procedure to register or unregister a publishing server.

**To register a publishing server using the Management Console**

1.  Connect to the Management Console and select **Servers**. For more information about how to connect to the Management Console, see [How to Connect to the Management Console](appv-connect-to-the-management-console.md).

2.  A list of publishing servers that already synchronize with the management server is displayed. Click Register New Server to register a new server.

3.  Type a computer name of a domain joined computer on the **Server Name** line, to specify a name for the server. You should also include a domain name, for example, **MyDomain\\TestServer**. Click **Check**.

4.  Select the computer and click **Add** to add the computer to the list of servers. The new server will be displayed in the list.

**To unregister a publishing server using the Management Console**

1.  Connect to the Management Console and select **Servers**. For more information about how to connect to the Management Console, see [How to Connect to the Management Console](appv-connect-to-the-management-console.md).

2.  A list of publishing servers that synchronize with the management server is displayed.

3.  To unregister the server, right-click the computer name and select the computer name and select **unregister server**.



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics

[Operations for App-V](appv-operations.md)
