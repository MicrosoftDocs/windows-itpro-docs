---
title: How to Make a Connection Group Ignore the Package Version
description: How to Make a Connection Group Ignore the Package Version
author: dansimp
ms.assetid: db16b095-dbe2-42c7-863d-b0d5d91b2f4c
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Make a Connection Group Ignore the Package Version


Microsoft Application Virtualization (App-V) 5.1 lets you configure a connection group to use any version of a package, which simplifies package upgrades and reduces the number of connection groups you need to create.

To upgrade a package in some earlier versions of App-V, you had to perform several steps, including disabling the connection group and modifying the connection group’s XML definition file.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task description with App-V 5.1</th>
<th align="left">How to perform the task with App-V 5.1</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>You can configure a connection group to accept any version of a package, which enables you to upgrade the package without having to disable the connection group.</p>
<p><strong>How the feature works:</strong></p>
<ul>
<li><p>If the connection group has access to multiple versions of a package, the latest version is used.</p></li>
<li><p>If the connection group contains an optional package that has an incorrect version, the package is ignored and won’t block the connection group’s virtual environment from being created.</p></li>
<li><p>If the connection group contains a non-optional package that has an incorrect version, the connection group’s virtual environment cannot be created.</p></li>
</ul></td>
<td align="left"><table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Steps</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V Server – Management Console</p></td>
<td align="left"><ol>
<li><p>In the Management Console, select <strong>CONNECTION GROUPS</strong>.</p></li>
<li><p>Select the correct connection group from the Connection Groups library.</p></li>
<li><p>Click <strong>EDIT</strong> in the CONNECTED PACKAGES pane.</p></li>
<li><p>Select <strong>Use Any Version</strong> check box next to the package name, and click <strong>Apply</strong>.</p></li>
</ol>
<p>For more about adding or upgrading packages, see <a href="how-to-add-or-upgrade-packages-by-using-the-management-console-51-gb18030.md" data-raw-source="[How to Add or Upgrade Packages by Using the Management Console](how-to-add-or-upgrade-packages-by-using-the-management-console-51-gb18030.md)">How to Add or Upgrade Packages by Using the Management Console</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Client on a Stand-alone computer</p></td>
<td align="left"><ol>
<li><p>Create the connection group XML document.</p></li>
<li><p>For the package to be upgraded, set the <strong>Package</strong> tag attribute <strong>VersionID</strong> to an asterisk (<strong>*</strong>).</p></li>
<li><p>Use the following cmdlet to add the connection group, and include the path to the connection group XML document:</p>
<p><strong>Add-AppvClientConnectionGroup</strong></p></li>
<li><p>When you upgrade a package, use the following cmdlets to remove the old package, add the upgraded package, and publish the upgraded package:</p>
<ul>
<li><p>RemoveAppvClientPackage</p></li>
<li><p>Add-AppvClientPackage</p></li>
<li><p>Publish-AppvClientPackage</p></li>
</ul></li>
</ol>
<p>For more information, see:</p>
<ul>
<li><p>The example XML file, <strong>Connection group XML file with optional packages</strong>, in this section: <a href="how-to-use-optional-packages-in-connection-groups51.md#bkmk-apps-plugs-optional" data-raw-source="[How to Use Optional Packages in Connection Groups](how-to-use-optional-packages-in-connection-groups51.md#bkmk-apps-plugs-optional)">How to Use Optional Packages in Connection Groups</a></p></li>
<li><p><a href="how-to-manage-app-v-51-packages-running-on-a-stand-alone-computer-by-using-powershell.md" data-raw-source="[How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell](how-to-manage-app-v-51-packages-running-on-a-stand-alone-computer-by-using-powershell.md)">How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell</a></p></li>
</ul></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>

 






## Related topics


[Managing Connection Groups](managing-connection-groups51.md)

 

 





