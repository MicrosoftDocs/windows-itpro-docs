---
title: Publishing Servers Results Pane Columns
description: Publishing Servers Results Pane Columns
author: eavena
ms.assetid: ad875715-50b3-4881-a6b3-586238d12527
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Publishing Servers Results Pane Columns


The **Publishing Servers Results** pane can display a variety of columns. **Name**, **URL**, and **Next Refresh** are shown by default.

**Note**  
You can add or remove a column simply by right-clicking in the **Results** pane, selecting **View**, then selecting **Add/Remove Columns**.

 

The list can be sorted by any of the columns. Columns that contain dates and times are sorted in chronological order, not alphabetical. For columns that contain a mix of dates and times and text (for example, **Next Refresh**), dates and times are considered to come before any other text.

The available column names contain the following elements.

<a href="" id="name"></a>**Name**  
The display name for the server.

<a href="" id="url"></a>**URL**  
The protocol, server name, server port, and path combined into a URL.

<a href="" id="next-user-refresh"></a>**Next User Refresh**  
The next time a refresh is scheduled for the current user. Displays the time if periodic refreshes are set up. Displays **On Login** if the server is set to refresh only on login. Displays **Manual** if automatic refresh is not enabled.

<a href="" id="default-refresh-policy"></a>**Default Refresh Policy**  
Displays **Manual**, **On Login**, or **Periodic** to describe how the server is configured.

<a href="" id="host"></a>**Host**  
The name or IP address for the server.

<a href="" id="type"></a>**Type**  
Displays **HTTP** or **Virtual Application** to indicate the server type.

<a href="" id="port"></a>**Port**  
The port on the server to be used.

<a href="" id="path"></a>**Path**  
The path on the server (generally just "/" for Application Virtualization Servers).

<a href="" id="last-user-refresh"></a>**Last User Refresh**  
The time the last refresh occurred for the current user.

<a href="" id="last-system-refresh"></a>**Last System Refresh**  
The last time a refresh happened from this server for any user.

## Related topics


[Publishing Servers Node](publishing-servers-node.md)

[Publishing Servers Results Pane](publishing-servers-results-pane.md)

 

 





