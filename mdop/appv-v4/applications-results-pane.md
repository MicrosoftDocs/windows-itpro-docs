---
title: Applications Results Pane
description: Applications Results Pane
author: dansimp
ms.assetid: 977a4d35-5344-41fa-af66-14957b38ed47
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Applications Results Pane


The **Applications Results** pane in the Application Virtualization Client Management Console displays a list of the available applications. Users can see a list of applications for which they have been granted access privileges.

For more information about the procedures you can perform from this pane, see [How to Manage Applications in the Client Management Console](how-to-manage-applications-in-the-client-management-console.md).

Right-click any application to display a pop-up menu that contains the following elements.

<a href="" id="new-shortcut"></a>**New Shortcut**  
This menu item displays the New Shortcut Wizard. This wizard consists of three pages:

1.  Select an icon, and specify a name for the shortcut:

    1.  **Change Icon**—Displays a standard Windows icon browser. Browse to and select the desired icon.

    2.  **Shortcut Title**—Enter the name you want to give the shortcut. This field defaults to the existing name and version of the application.

2.  Determine the location of the published shortcut.

    1.  **Location of shortcut**—Select a location by selecting one of the check boxes. The available locations are **Desktop**, **Quick Launch Toolbar**, **Send to Menu**, **Start Menu**, and **Another location**.

    2.  **Programs in the Start Menu**—When you select the **Start Menu** check box, this field becomes active. Leave this field blank to publish the shortcut directly to the root of the Programs folder, or enter a folder name or hierarchy—for example, "My\_Computer\\Office Applications." Shortcuts created this way are available only for the current user.

    3.  **Another location** and browse button—When you select the **Another location** check box, this field becomes active. Enter any valid location on the computer or any available Universal Naming Convention (UNC) path(shared file or directory on a network). The browse button displays a standard Windows **File Open** dialog box.

3.  Enter the desired command-line parameters, and then click **Finish** to exit the wizard.

<a href="" id="new-association"></a>**New Association**  
This menu item displays the New Association Wizard. This wizard consists of two pages:

1.  Enter a file name extension, and associate the extension with a file type.

    1.  **Extension**—Enter a file name extension. This field is blank by default.

    2.  **Create a new file type with this description**—Select this radio button to enter a new file type description in the active field. This button is selected by default, and the active field is blank.

    3.  **Apply this file type to all users**—Select this check box when you want this association to be global for all users. By default, this box is not selected.

    4.  **Link this extension with an existing file type**—Select this radio button to associate the extension with an existing file type. Choose a file type from the drop-down list. When you choose this option, **Next** is changed to **Finish**.

2.  Select the application that will open files with the specified extension:

    1.  **Open files with the selected application**—Select this radio button to open the file with an existing application. Choose an application from the drop-down list of available applications.

    2.  **Open file with the association described in this OSD file**—Select this radio button to specify an Open Software Descriptor (OSD) file that determines the application used to open the file. Use the browse button to select an existing location, or enter a path or HTTP-formatted URL in this field.

<a href="" id="repair"></a>**Repair**  
Resets the application default settings and eliminates all user-defined settings for the selected application.

<a href="" id="load-or-unload"></a>**Load** or **Unload**  
Loads or unloads the selected application into the cache. This command is not available if 100 percent of the application is in the cache.

<a href="" id="clear"></a>**Clear**  
Removes the user's settings, shortcuts, and file type associations for the selected application. This item is not available if a user is running any application from a suite of applications. Displays a confirmation prompt.

<a href="" id="lock-or-unlock"></a>**Lock** or **Unlock**  
Locks or unlocks an application in the cache. When an application is locked, it cannot be deleted or overwritten.

<a href="" id="import"></a>**Import**  
Imports an application into the cache directly from this command in the **Applications** node.

<a href="" id="delete"></a>**Delete**  
Deletes an application from the **Results** pane and from the computer, and clears the application from cache.

<a href="" id="refresh"></a>**Refresh**  
Refreshes the contents of the **Results** pane.

<a href="" id="properties"></a>**Properties**  
Displays the **Properties** dialog box for the selected application. This dialog box has two tabs:

1.  The **General** tab displays the application icon and name, the location from where the application was streamed, and the path to the local OSD file. From this tab, you can change the icon for the application or you can clear the settings (which removes the shortcuts and the file type associations).

2.  The **Package** tab displays information about the application package, and you can **Lock**, **Unlock**, **Load**, **Unload**, and **Import** applications.

<a href="" id="help"></a>**Help**  
Displays the Client Management Console help system.

## Displaying General Options for the Results pane


Right-click anywhere in the **Results** pane to display a pop-up menu that contains the following elements.

<a href="" id="new-application"></a>**New Application**  
This menu item displays the New Application Wizard. This wizard consists of one page where you can select an icon for the application and browse to or enter a URL or a path to the OSD file:

1.  **Change Icon**—Displays a standard Windows icon browser. Browse to and select the desired icon.

2.  **OSD File Path or URL**—Enter a local absolute path, a full UNC path, or an HTTP URL.

3.  **... (OSD browse button)**—Displays the standard Windows **Open File** dialog box. Browse to find the desired file.

<a href="" id="refresh"></a>**Refresh**  
Refreshes the **Results** pane.

<a href="" id="export-list"></a>**Export List**  
You can use this menu item to create a tab-delimited text file that contains the contents of the **Results** pane. This item displays a standard **File Save** dialog box where you specify the location for the text file you are creating.

<a href="" id="view"></a>**View**  
This pop-up list of menu items lets you change the appearance and content of the **Results** pane.

<a href="" id="arrange-line-up-icons"></a>**Arrange/Line Up Icons**  
These menu items can be used to change how the icons are displayed in the **Results** pane.

<a href="" id="help"></a>**Help**  
Displays the help system for the management console.

## Related topics


[Applications Node](applications-node.md)

[Applications Results Pane Columns](applications-results-pane-columns.md)

[Application Virtualization Client Management Console Reference](application-virtualization-client-management-console-reference.md)

[How to Manage Applications in the Client Management Console](how-to-manage-applications-in-the-client-management-console.md)

 

 





