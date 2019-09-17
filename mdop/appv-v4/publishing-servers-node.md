---
title: Publishing Servers Node
description: Publishing Servers Node
author: dansimp
ms.assetid: b5823c6c-15bc-4e8d-aeeb-acc366ffedd1
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Publishing Servers Node


The **Publishing Servers** node is one level below the **Application Virtualization** node in the **Scope** pane of the Application Virtualization Client Management Console. When you select this node, the **Results** pane displays a list of publishing servers.

Right-click the **Publishing Servers** node to display a pop-up menu that contains the following elements.

<a href="" id="new-server"></a>**New Server**  
This menu item displays the New Server Wizard. This wizard consists of two pages:

1.  Enter a server display name and server type:

    -   **Display Name**—Enter a name that you want displayed for the server. This field is blank by default.

    -   **Type**—Choose the server type from the drop-down list of server types.

2.  Specify the connection settings for the server:

    -   **Host Name**—Enter the name or IP address for the server.

    -   **Port**—Enter a numeric value that corresponds to the port number. The default value is 554 if the server type is "Application Virtualization Server" and 80 if the server type is "Standard HTTP Server."

    -   **Path**—This field defaults to "/" and is read-only when the server type is "Application Virtualization Server" or “Enhanced Security Application Virtualization Server”. When the server type is “Standard HTTP Server” or “Enhanced Security HTTP Server”, the **Path** field is also editable.

<a href="" id="new-window-from-here"></a>**New Window from Here**  
Select this menu item to open a new management console with the selected node as the root node.

<a href="" id="export-list"></a>**Export List**  
You can use this menu item to create a tab-delimited text file that contains the contents of the **Results** pane. This item displays a standard **File Save** dialog box where you specify the location for the text file you are creating.

<a href="" id="view"></a>**View**  
This pop-up list of menu items enables you to change the appearance and content of the **Results** pane.

<a href="" id="refresh"></a>**Refresh**  
Select this item to refresh the management console.

<a href="" id="help"></a>**Help**  
This item displays the help system for the management console.

## Related topics


[Publishing Servers Results Pane](publishing-servers-results-pane.md)

[Publishing Servers Results Pane Columns](publishing-servers-results-pane-columns.md)

 

 





