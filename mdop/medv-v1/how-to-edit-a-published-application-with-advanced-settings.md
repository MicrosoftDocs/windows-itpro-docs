---
title: How to Edit a Published Application with Advanced Settings
description: How to Edit a Published Application with Advanced Settings
author: dansimp
ms.assetid: 06a79049-9ce9-490f-aad7-fd4fdf185590
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Edit a Published Application with Advanced Settings


After a published application has been added and configured, the published application can be edited and additional advanced settings can be configured.

**To edit a published application with advanced settings**

1.  In the **Applications** pane, add and configure a published application.

2.  Select the published application to edit.

3.  Click **Edit**.

4.  In the **Published Application** dialog box, configure the parameters as described in the following table.

5.  Click **OK**.

6.  On the **Policy** menu, select **Commit**.

**Editing Published Application Properties**

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
<td align="left"><p>Display name</p></td>
<td align="left"><p>The name of the shortcut in the user&#39;s Windows Start menu.</p>
<div class="alert">
<strong>Note</strong><br/><p>The display name is <strong>not</strong> case sensitive.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p>Description</p></td>
<td align="left"><p>A description of the published menu.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Start in</p></td>
<td align="left"><p>The directory from which to start the application.</p>
<div class="alert">
<strong>Note</strong><br/><p>The path does not need to include quotation marks.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p>Command line</p></td>
<td align="left"><p>The command with which to run the application from within the MED-V workspace.</p>
<p>The full path is required, and the parameters can be passed to the application in a similar fashion as in any other Windows command.</p>
<p>In a domain configuration, a shared drive usually exists on the server where all domain computers map to. The directory should be mapped here, and if it is a folder that requires user authentication, the <strong>Use MED-V credentials to run this application</strong> check box must be selected.</p>
<p>In a revertible MED-V workspace, you can map a network drive with MapNetworkDrive syntax: &quot;<em>MapNetworkDrive &lt;drive&gt; &lt;path&gt;</em>&quot;—for example, &quot;<em>MapNetworkDrive t: \tux\data</em>&quot;.</p>
<p>For example, to publish Windows Explorer, use the following syntax: &quot;<em>c:&amp;quot; or &quot;c:\windows</em>&quot;.</p>
<div class="alert">
<strong>Note</strong><br/><p>To have a name resolution, you need to perform one of the following:</p>
</div>
<div>

</div>
<ul>
<li><p>Configure the DNS in the base MED-V workspace image.</p></li>
<li><p>Verify that the DNS resolution is defined in the host, and configure it to use the host DNS.</p></li>
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
<td align="left"><p>Add a shortcut in the host Windows Start menu</p></td>
<td align="left"><p>Select this check box to create a shortcut for the application in the user&#39;s Windows Start menu.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Launch this application when the Workspace is started</p></td>
<td align="left"><p>Select this check box to run the application automatically when the MED-V workspace starts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Use MED-V credentials to run this application</p></td>
<td align="left"><p>Select this check box to authenticate applications that request a user name and password using the MED-V credentials instead of the credentials set for the application.</p>
<div class="alert">
<strong>Note</strong><br/><p>When using SSO, the command line should be <strong>C:\Windows\Explorer.exe &quot;folder path&quot;</strong>. When not using SSO, the command line should be &quot;<strong>folder path</strong>&quot;.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



## Related topics


[How to Configure Published Applications](how-to-configure-published-applicationsmedvv2.md)









