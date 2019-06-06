---
title: Applications Licenses Node
description: Applications Licenses Node
author: dansimp
ms.assetid: 2b8752ff-aa56-483e-b844-966941af2d94
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Applications Licenses Node


The **Applications Licenses** node is one level below the Application Virtualization System node in the **Scope** pane in the Application Virtualization Server Management Console. When you select this node, the **Results** pane displays a list of licenses and license groups. The following license types are available:

-   **Unlimited License**—Provides access for any number of simultaneous users. This method of licensing is appropriate when you want to associate an enterprise-wide license with an application.

-   **Concurrent License**—Enables you to define the maximum number of concurrent users who are allowed to use the application.

-   **Named License**—Enables you to assign a license to an individual user. A named license can be used to ensure that a particular user will always be able to run the application.

**Note**  
You can combine concurrent and named licenses for the same application.

 

Right-click the **Applications Licenses** node to display a pop-up menu that contains the following elements.

<a href="" id="new-unlimited-license"></a>**New Unlimited License**  
Displays the New Unlimited License Wizard. This wizard consists of the following pages:

1.  Enter the name of the license group in the **Applications License Group Name** field, and enter a value (in minutes) in the **License Expiration Warning** field. (You can enter any value from 0 through 100.) You can also use the up and down arrows to select the number of minutes.

2.  Enter brief descriptive text in the **License Description** field, and select the **Enabled** check box to enable the license.

    Optionally, you can use the **Expiration Date** field to specify an expiration date for the license. You can select the check box to use the displayed expiration date, or you can use the calendar utility to browse to the desired expiration date.

3.  Click **Finish** to add the new license.

<a href="" id="new-concurrent-license"></a>**New Concurrent License**  
Displays the New Concurrent License Wizard. This wizard consists of the following three pages and is almost identical to the New Unlimited License Wizard:

1.  Enter the name of the license group in the **Applications License Group Name** field, and enter a value (in minutes) in the **License Expiration Warning** field. (You can enter any value from 0 through 100.) You can also use the up and down arrows to select the number of minutes.

2.  Enter brief descriptive text in the **License Description** field, and enter a value in the **Concurrent License Quantity** field.

    You can also use the up and down arrows to specify the number of concurrent licenses. Select the **Enabled** check box to enable the license.

    Optionally, you can use the **Expiration Date** field to specify an expiration date for the license. You can select the check box to use the displayed expiration date, or you can use the calendar utility to browse to the desired expiration date.

3.  Click **Finish** to add the new licenses.

<a href="" id="new-named-license"></a>**New Named License**  
Displays the New Named License Wizard. This wizard consists of the following four pages:

1.  Enter the name of the license group in the **Applications License Group Name** field, and enter a value (in minutes) in the **License Expiration Warning** field. (You can enter any value from 0 through 100). You can also use the up and down arrows to select the number of minutes.

2.  Enter brief descriptive text in the **License Description** field, and select the **Enabled** check box to enable the license.

    Optionally, you can use the **Expiration Date** field to specify an expiration date for the license. You can select the check box to use the displayed expiration date, or you can use the calendar utility to browse to the desired expiration date.

3.  Click **Add**, **Edit**, or **Remove** named users.

4.  Click **Finish** to add the new license.

<a href="" id="view"></a>**View**  
Changes the appearance and content of the **Results** pane.

<a href="" id="new-window-from-here"></a>**New Window from Here**  
Opens a new management console with the selected node as the root node.

<a href="" id="refresh"></a>**Refresh**  
Refreshes the view of the server.

<a href="" id="export-list"></a>**Export List**  
Creates a tab-delimited text file that contains the contents of the **Results** pane. This item displays a standard **File Save** dialog box where you specify the location for the text file you are creating.

<a href="" id="help"></a>**Help**  
Displays the help system for the Application Virtualization Server Management Console.

If you click a license group or license that appears under the **Application Licenses** node in the **Scope** pane, the following elements are available.

<a href="" id="view"></a>**View**  
Changes the appearance and content of the **Results** pane.

<a href="" id="new-window-from-here"></a>**New Window from Here**  
Opens a new management console with the selected node as the root node.

<a href="" id="delete"></a>**Delete**  
Deletes a package from the **Results** pane.

<a href="" id="rename"></a>**Rename**  
Changes the name of a package in the **Results** pane.

<a href="" id="export-list"></a>**Export List**  
Creates a tab-delimited text file that contains the contents of the **Results** pane. This item displays a standard **File Save** dialog box where you specify the location for the text file you are creating.

<a href="" id="properties"></a>**Properties**  
Displays the **Properties** dialog box for the selected license group. The **General** tab of the **Properties** dialog box displays information about the license group and lets you change the time value in the **License Expiration Warning** field. The **Applications** tab displays the list of applications associated with the license group.

<a href="" id="help"></a>**Help**  
Displays the help system for the Application Virtualization Server Management Console.

## Related topics


[About Application Licensing](about-application-licensing.md)

[How to Manage Application Licenses in the Server Management Console](how-to-manage-application-licenses-in-the-server-management-console.md)

[Server Management Console: Application Licenses Node](server-management-console-application-licenses-node.md)

 

 





