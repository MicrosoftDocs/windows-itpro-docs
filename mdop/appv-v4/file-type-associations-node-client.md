---
title: File Type Associations Node
description: File Type Associations Node
author: dansimp
ms.assetid: 48e4d9eb-00bd-4231-a68a-f8597ab683ff
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# File Type Associations Node


The **File Type Associations** node is one level below the **Application Virtualization** node in the **Scope** pane of the Application Virtualization Client Management Console. When you select this node, the **Results** pane displays a list of file type associations.

Right-click the **File Type Associations** node to display a pop-up menu that contains the following elements.

<a href="" id="new-association"></a>**New Association**  
This menu item displays the New Association Wizard. This wizard consists of two pages:

1.  Enter a new or existing file name extension, and associate the extension with a file type:

    -   **Extension**—Enter a new or existing file name extension. This field is blank by default.

    -   **Create a new file type with this description**—Select this radio button to enter a new file type description in the active field. This button is selected by default, and the active field is blank.

    -   **Apply this file type to all users**—Select this check box when you want this association to be global for all users. By default, this box is not selected.

    -   **Link this extension with an existing file type**—Select this radio button to associate the extension with an existing file type. Choose a file type from the drop-down list. When you choose this option, **Next** is changed to **Finish**.

2.  Select the application that will open files with the specified extension:

    -   **Open files with the selected application**—Select this radio button to open the file with an existing application. Choose an application from the drop-down list of available applications.

    -   **Open files with the application described in this OSD file**—Select this radio button to specify an Open Software Descriptor (OSD) file that determines the application used to open the file. Browse to select an existing location, or enter a path or HTTP-formatted URL in this field.

<a href="" id="new-window-from-here"></a>**New Window from Here**  
Select this menu item to open a new management console with the selected node as the root node.

<a href="" id="export-list"></a>**Export List**  
You can use this menu item to create a tab-delimited text file that contains the contents of the **Results** pane. This item displays a standard **File Save** dialog box where you specify the location for the text file you are creating.

<a href="" id="view"></a>**View**  
This pop-up list of menu items enables you to change the appearance and content of the **Results** pane.

<a href="" id="refresh"></a>**Refresh**  
Select this item to refresh the management console.

<a href="" id="help"></a>**Help**  
With this menu item, you can display the help system for the management console.

## Related topics


[File Type Association Results Pane](file-type-association-results-pane.md)

[File Type Association Results Pane Columns](file-type-association-results-pane-columns.md)

 

 





