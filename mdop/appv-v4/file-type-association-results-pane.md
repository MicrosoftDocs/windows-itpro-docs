---
title: File Type Association Results Pane
description: File Type Association Results Pane
author: dansimp
ms.assetid: bc5ceb48-1b9f-45d9-a770-1bac90629c76
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# File Type Association Results Pane


The **File Association** **Results** pane is one level below the **System** pane in the Application Virtualization Client Management Console, and it displays a list of the available file type associations. Users can see a list of file type extensions and the applications to which they correspond.

To display specific options for file types, right-click any application extension to display a pop-up menu that contains the following elements.

<a href="" id="delete"></a>**Delete**  
Deletes the file name extension from the list and removes the association to the file type.

<a href="" id="properties"></a>**Properties**  
Displays the **Properties** dialog box for the selected application extension. This dialog box has two tabs:

-   The **General** tab displays general information about the file type association, including the application icon and name:

    -   **Icon**—Displays the selected icon for the associated file type.

    -   **Association Name**—Displays the name of the file type.

    -   **Change Icon**—Click this button to change the icon for the file type association.

    -   **Extension**—Displays the extension or extensions associated with a particular file type.

    -   **Unlink**—This button is enabled when more than one extension is associated with an application. Click **Unlink** to manage the file type extension separately from the extension it is currently linked with.

    -   **Specified application**—Select this radio button, and choose an application from the drop-down list of available applications. You are changing the application that is used by the default action. You can also browse to find an application if it isn't available on the drop-down list.

    -   **OSD file**—Select this radio button, and specify a path to an Open Software Descriptor (OSD) file. You can also browse to an OSD file.

-   The **Advanced** tab displays detailed information about the file type association:

    -   **Action**—Displays a list of the available actions for the associated file type.

    -   **Content Type**—Displays a description of the contents of the file type. If this field is left blank, the client will fill it.

    -   **Perceived Type**—Displays the file type. You can select one of the options from the drop-down list or add your own.

    -   **Confirm open after download**—Select this check box to display a confirmation message after a file is loaded. If this box is selected, when you attempt to open a file of this type by downloading it into a Web browser, the browser prompts you to see whether you want to save the file rather than open it directly into the browser without confirmation.

    -   **Always show extension**—Select this check box to specify that extensions should be shown even when the user requests that the system should hide extensions for known file types.

    -   **Add to new menu**—Select this check box to specify that the extension or extensions should be listed in the shell's **New** context menu.

    -   **Apply to all users**—Select this check box to specify that extensions should be available to all users.

<a href="" id="help"></a>**Help**  
Displays the Client Management Console help system.

To display general options for the **Results** pane, right-click anywhere in the **Results** pane to display a pop-up menu that contains the following elements.

<a href="" id="new-association"></a>**New Association**  
This menu item displays the New Association Wizard. This wizard consists of two pages:

1.  Enter a new or existing file name extension, and associate the extension with a file type:

    -   **Extension**—Enter a new file name extension. This field is blank by default.

    -   **Create a new file type with this description**—Select this radio button to enter a new file type description in the active field. This button is selected by default, and the active field is blank.

    -   **Apply this file type to all users**—Select this check box when you want this association to be global for all users. By default, this box is not selected.

    -   **Link this extension with an existing file type**—Select this radio button to associate the extension with an existing file type. Pick a file type from the drop-down list. When you choose this option, **Next** is changed to **Finish**.

2.  Select the application that will open files with the specified extension:

    -   **Open files with the selected application**—Select this radio button to open the file with an existing application. Choose an application from the drop-down list of available applications.

    -   **Open file with the association described in this OSD file**—Select this radio button to specify an OSD file that determines the application used to open the file. Use the browse button to select an existing location, or enter a path or HTTP-formatted URL in this field.

<a href="" id="refresh"></a>**Refresh**  
This item refreshes the **Results** pane.

<a href="" id="export-list"></a>**Export List**  
With this menu item, you can create a tab-delimited text file that contains the contents of the **Results** pane. This item displays a standard **File Save** dialog box where you specify the location for the text file you are creating.

<a href="" id="view"></a>**View**  
This pop-up list of menu item lets you change the appearance and content of the **Results** pane.

<a href="" id="arrange-line-up-icons"></a>**Arrange/Line Up Icons**  
These menu items can be used to change how the icons are displayed in the **Results** pane.

<a href="" id="help"></a>**Help**  
This item displays the help system for the management console.

## Related topics


[How to Change an Application Icon](how-to-change-an-application-icon.md)

[File Type Associations Node](file-type-associations-node-client.md)

[File Type Association Results Pane Columns](file-type-association-results-pane-columns.md)

 

 





