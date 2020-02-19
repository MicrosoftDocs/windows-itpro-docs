---
title: How to Configure Published Applications
description: How to Configure Published Applications
author: dansimp
ms.assetid: 43a59ff7-5d4e-49dc-84e5-1082bc4dd8f4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure Published Applications


Applications that are not compatible with the host operating system can be run within the MED-V workspace and initiated from within the MED-V workspace the same way they are initiated from the desktop—from the Start menu or from a local host shortcut. Applications selected and defined are called published applications. The procedures in this section describe how to add and remove published applications.

An application can be published in one of the following ways:

-   As an application—Select a specific application by typing in the command line for the application. Only the application selected is published.

-   As a menu—Select a folder that contains multiple applications. All applications within the folder are published and displayed as a menu.

## <a href="" id="bkmk-addingapublishedapplication"></a>How to Add a Published Application to a MED-V Workspace


**To add an application to the MED-V workspace**

1.  Click the MED-V workspace to configure.

2.  In the **Applications** pane, in the **Published Applications** section, click **Add** to add a new application.

3.  Configure the application properties as described in the following table.

4.  On the **Policy** menu, select **Commit**.

    **Note**  
    If you are setting Internet Explorer as a published application to ensure that Web redirection works properly, make certain that any parameters are not in parentheses.



**Published Application Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Enabled</p></td>
<td align="left"><p>Select this check box to enable the published application.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Display name</p></td>
<td align="left"><p>The name of the shortcut in the user&#39;s Windows Start menu.</p>
<div class="alert">
<strong>Note</strong><br/><p>The display name is <strong>not</strong> case sensitive.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Description</p></td>
<td align="left"><p>A description of the published application, which appears as a tooltip when the user&#39;s mouse hovers over the shortcut.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Command line</p></td>
<td align="left"><p>The command used to run the application from within the MED-V workspace. The full path is required, and the parameters can be passed to the application in a similar fashion as in any other Windows command.</p>
<p>In a revertible MED-V workspace, you can map a network drive with MapNetworkDrive syntax: &quot;<em>MapNetworkDrive &lt;drive&gt; &lt;path&gt;</em>&quot;—for example, &quot;<em>MapNetworkDrive t: \tux\date</em>&quot;.</p>
<p>For example, to publish Windows Explorer, use the following syntax: &quot;<em>c:&lt;/em&gt;&quot; or &quot;<em>c:\windows</em>.&quot;</p>
<div class="alert">
<strong>Note</strong><br/><p>To have a name resolution, you need to perform one of the following:</p>
</div>
<div>

</div>
<ul>
<li><p>Configure the DNS in the base MED-V workspace image.</p></li>
<li><p>Verify the DNS resolution is defined in the host, and configure it to use the host DNS.</p></li>
<li><p>Use the IP for defining the network drive.</p></li>
</ul>
<div class="alert">
<strong>Note</strong><br/><p>If the path includes spaces, the entire path must be inside quotation marks.</p>
</div>
<div>

</div>
<div class="alert">
<strong>Note</strong><br/><p>The path should not end with a backslash ().</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>Start menu</p></td>
<td align="left"><p>Select this check box to create a shortcut for the application in the user&#39;s Windows Start menu.</p></td>
</tr>
</tbody>
</table>



All published applications appear as shortcuts in the Windows **Start** menu (**Start &gt;All Programs&gt; MED-V Applications**).

## How to Remove a Published Application from a MED-V Workspace


**To remove an application from the MED-V workspace**

1.  Click a MED-V workspace.

2.  In the **Applications** pane, in the **Published Applications** section, select an application to remove.

3.  Click **Remove**.

    The application is removed from the list of published applications.

4.  On the **Policy** menu, select **Commit**.

## How to Add a Published Menu to a MED-V Workspace


**To add a published menu to the MED-V workspace**

1.  Click the MED-V workspace to configure.

2.  In the **Applications** pane, in the **Published Menus** section, click **Add** to add a new menu.

3.  Configure the menu properties as described in the following table.

4.  On the **Policy** menu, select **Commit**.

**Published Menu Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Enabled</p></td>
<td align="left"><p>Select this check box to enable the published menu.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Display name</p></td>
<td align="left"><p>The name of the shortcut in the user&#39;s Windows Start menu.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Description</p></td>
<td align="left"><p>The description, which appears as a tooltip when the user&#39;s mouse hovers over the shortcut.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Folder in workspace</p></td>
<td align="left"><p>Select the folder to publish as a menu containing all the applications within the folder.</p>
<p>The text displayed is a relative path from the Programs folder.</p>
<div class="alert">
<strong>Note</strong><br/><p>If left blank, all programs on the host will be published as a menu.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



All published menus appear as shortcuts in the Windows **Start** menu (**Start &gt;All Programs&gt; MED-V Applications**). You can change the name of the shortcut in the **Start-menu shortcuts folder** field.

**Note**  
When configuring two MED-V workspaces, it is recommended to configure a different name for the Start menu shortcuts folder.



## How to Remove a Published Menu from a MED-V Workspace


**To remove a published menu from a MED-V workspace**

1.  Click a MED-V workspace.

2.  In the **Applications** pane, in the **Published Menus** section, select a menu to remove.

3.  Click **Remove**.

    The menu is removed from the list of published menus.

4.  On the **Policy** menu, select **Commit**.

## Running a Published Application from a Command Line on the Client


The administrator can run published applications from any location, such as a desktop shortcut, using the following command:

``` syntax
"<Install path>\Manager\KidaroCommands.exe" /run "<published application name>" "<MED-V workspace name>"
```

**Note**  
The MED-V workspace in which the published application is defined must be running.



## Related topics


[How to Edit a Published Application with Advanced Settings](how-to-edit-a-published-application-with-advanced-settings.md)

[Using the MED-V Management Console User Interface](using-the-med-v-management-console-user-interface.md)

[Creating a MED-V Workspace](creating-a-med-v-workspacemedv-10-sp1.md)









