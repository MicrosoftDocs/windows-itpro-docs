---
title: How to Manage Virtual Applications Manually
description: How to Manage Virtual Applications Manually
author: dansimp
ms.assetid: 583c5255-d3f4-4197-85cd-2a59868d85de
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Manage Virtual Applications Manually


You can use the Application Virtualization (App-V) Client Management Console to manage virtual applications in the App-V Desktop Client or the App-V Client for Remote Desktop Services (formerly Terminal Services). App-V administrators can use perform the following tasks:

## How to Load or Unload an App-V Application


You can use the following procedures to load or unload an application from the cache, directly from the **Results** pane of the **Application** node in the Application Virtualization Client Management Console. When you select this node, the **Results** pane displays a list of applications.

**Note**  
When you load or unload a package, all the applications in the package are loaded into or removed from cache. When loading a package, if you do not have adequate space in cache to load the applications, increase your cache size. For more information about cache size, see [How to Change the Cache Size and the Drive Letter Designation](how-to-change-the-cache-size-and-the-drive-letter-designation.md).

 

**To load an App-V application**

1.  Move the cursor to the **Results** pane, right-click the desired application, and select **Load** from the pop-up menu.

2.  The application is automatically loaded. The progress is tracked in the column labeled **Package Status**. You must refresh the view to see that the load is complete or to see the progress.

**To unload an App-V application**

1.  Move the cursor to the **Results** pane, right-click the desired application, and select **Unload** from the pop-up menu.

2.  The application is automatically unloaded, and the **Package Status** column is updated to reflect the change.

## How to clear an App-V application


You can clear an application from the console directly from the **Results** pane of the **Application** node in the Application Virtualization Client Management Console. When you clear an application, the system removes the settings, shortcuts, and file type associations that correspond to the application and also removes the application from the user’s list of applications.

**Note**  
When you clear an application from the console, you can no longer use that application. However, the application remains in cache and is still available to other users on the same system. After a publishing refresh, the cleared applications will again become available to you. If there are multiple applications in a package, the user's settings are not removed until all of the applications are cleared.

 

**To clear an application from the console**

1.  Move the cursor to the **Results** pane, right-click the desired application, and select **Clear** from the pop-up menu.

2.  At the confirmation prompt, click **Yes** to remove the application or click **No** to cancel the operation.

## How to Repair an App-V application


To repair a selected application, you can perform the following procedure directly from the **Results** pane of the **Application** node in the Application Virtualization Client Management Console. When you repair an application, you remove any custom user settings and restore the default settings. This action does not change or delete shortcuts or file type associations, and it does not remove the application from cache.

**To repair an App-V application**

1.  Move the cursor to the **Results** pane.

2.  Right-click the desired application, and select **Repair** from the pop-up menu.

3.  At the confirmation prompt, click **Yes** to repair the application or **No** to cancel.

## How to import an App-V application


You can use the following procedure to import an application into the cache directly from the **Results** pane of the **Application** node in the Application Virtualization Client Management Console.

**To import an App-V application**

1.  Move the cursor to the **Results** pane, right-click the desired application, and select **Import** from the pop-up menu.

2.  From the **Browse** window, navigate to the location of the package file for the desired application, and then click **OK**.

    **Note**  
    If you have already configured an import search path or if the SFT file is in the same path as the last successful import, step 2 is not required.

     

## How to lock or unlock an App-V application


You can use the following procedures to lock or unlock any application in the Application Virtualization Desktop Client cache or the Client for Remote Desktop Services (formerly Terminal Services) cache. A locked application cannot be removed from the cache to make room for new applications. To remove a locked application from the Application Virtualization Desktop Client cache or the Client for Remote Desktop Services cache, you must first unlock it.

**To lock an application**

1.  Move the cursor to the **Results** pane.

2.  Right-click the desired application, and select **Lock** from the pop-up menu. The selected application is locked in the cache.

**To unlock an application**

1.  Move the cursor to the **Results** pane.

2.  Right-click the desired application, and select **Unlock** from the pop-up menu. The selected application is unlocked in the cache and can be removed.

## How to delete an App-V application


When you select the **Application** node in the Application Virtualization Client Management Console, the **Results** pane displays a list of applications. You can use the following procedure to delete an application from the **Results** pane, which also removes the application from the cache.

**Note**  
When you delete an application, the selected application will no longer be available to any users on that client. Shortcuts and file type associations are hidden, and the application is deleted from cache. However, if another application refers to data in the file system cache data for the selected application, these items will not be deleted.

After a publishing refresh, the deleted applications will again become available to you.

 

**To delete an application**

1.  Move the cursor to the **Results** pane, right-click the desired application, and select **Delete** from the pop-up menu.

2.  At the confirmation prompt, click **Yes** to remove the application or click **No** to cancel the operation.

## How to change an App-V application icon


You can use the following procedure to change an icon associated with the selected application directly from the **Results** pane of the **Application** node in the Application Virtualization Client Management Console.

**To change an application icon**

1.  Move the cursor to the **Results** pane, and right-click the desired application.

2.  Select **Properties**.

3.  On the **General** tab, click **Change Icon**.

4.  Select the desired icon, or browse to another location to select the icon. After you've selected the icon, click **OK**. The new icon appears in the **Results** pane.

## How to add an App-V application


You can use the following procedure to add an application directly from the **Results** pane of the **Application** node in the Application Virtualization Client Management Console.

**To add an application**

1.  In the **Results** pane, right-click and select **New Application** from the pop-up menu.

2.  On the wizard page, you can perform the following tasks:

    1.  **Change Icon**—Displays a standard Windows icon browser. Browse to and select the desired icon.

    2.  **OSD File Path or URL**—Enter a local absolute path, a full UNC path (shared file or directory on a network), or an HTTP URL.

    3.  **(OSD browse button)**—Displays the standard Windows **Open File** dialog box. Browse to find the desired file.

3.  Click **Finish** to add the application to the **Results** pane.

## How to publish an App-V application shortcut


You can use the following procedure to publish shortcuts to an application directly from the **Results** pane of the **Application** node in the Application Virtualization Client Management Console.

**To publish application shortcuts**

1.  Move the cursor to the **Results** pane, right-click the desired application, and select **New Shortcut** from the pop-up menu to display the New Shortcut Wizard.

2.  On the first page of the New Shortcut Wizard, select an icon and specify a name for the shortcut.

    1.  **Change Icon**—Displays a standard Windows icon browser. Browse to and select the desired icon.

    2.  **Shortcut Title**—Enter the name you want to give the shortcut. This field defaults to the existing name and version of the application.

3.  On the second page of the wizard, determine the location of the published shortcut.

    1.  **The Desktop**—Select this check box to publish the shortcut to the desktop.

    2.  **The Quick Launch Toolbar**—Select this check box to publish the shortcut to the Quick Launch toolbar.

    3.  **The Send To Menu**—Select this check box to publish the shortcut to the **Send To** menu.

    4.  **Programs in the Start Menu**—When you select the **Start Menu** check box, this field becomes active. Leave this field blank to publish the shortcut directly to the root of the Programs folder, or enter a folder name or hierarchy—for example, "My\_Computer\\Office Applications." Shortcuts created this way are available only for the current user.

    5.  **Another location** and **Browse** button—When you select the **Another location** check box, this field becomes active. Enter any valid location on the computer or any available UNC path (shared file or directory on a network). The **Browse** button displays a standard Windows **File Open** dialog box.

4.  On the third page of the wizard, enter desired command-line parameters.

5.  Click **Finish** to publish the shortcuts and exit to the **Results** pane.

## How to add a file type association for an App-V application


You can use the following procedure to add a file type association, using the **File Type Associations** node in the Application Virtualization Client Management Console.

**To add a file type association**

1.  Right-click the **File Type Associations** node, and select **New Association** from the pop-up menu.

2.  Complete the first step of the dialog box by completing the following information, and then click **Next**:

    1.  **Extension**—Enter a new file name extension. This field is blank by default.

    2.  **Create a new file type with this description**—Select this radio button to enter a new file type description in the active field. This button is selected by default, and the active field is blank.

    3.  **Apply this file type to all users**—Select this check box when you want this association to be global for all users. By default, this box is cleared.

    4.  **Link this extension with an existing file type**—Select this radio button to associate the extension with an existing file type. Pick a file type from the drop-down list. When you choose this option, **Next** is changed to **Finish**.

3.  Complete the second step of the dialog box by completing the following information, and then click **Finish** to return to the Client Management Console:

    1.  **Change Icon**—Click this button to change the application icon. Select one of the available icons, or browse to a new location and select an icon.

    2.  **Open files with the selected application**—Select this radio button to open the file with an existing application. Choose an application from the drop-down list of available applications.

    3.  **Open file with the association described in this OSD file**—Select this radio button to specify an Open Software Descriptor (OSD) file that determines the application used to open the file. Use the browse button to select an existing location, or enter a path or HTTP-formatted URL in this field.

## How to delete a file type association for an App-V application


You can use the following procedure to delete a file type association. The **File Type Associations** node is one level below the **Application Virtualization** node in the **Scope** pane. When you select this node, the **Results** pane displays a list of file type associations.

**To remove a file type association**

1.  In the **Results** pane, right-click the extension of the file type association you want to delete.

2.  Select **Delete** from the pop-up menu.

3.  Click **Yes** to delete the association, or click **No** to return to the **Results** pane.

## Related topics


[Application Virtualization Client](application-virtualization-client.md)

 

 





