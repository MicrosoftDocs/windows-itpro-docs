---
title: How to Use Optional Packages in Connection Groups
description: How to Use Optional Packages in Connection Groups
author: dansimp
ms.assetid: 67666f18-b704-4852-a1e4-d13633bd2baf
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Use Optional Packages in Connection Groups


Starting in Microsoft Application Virtualization (App-V) 5.0 SP3, you can add optional packages to your connection groups to simplify connection group management. The following table summarizes the tasks that you can complete more easily by using optional packages, and provides links to instructions for each task.

**Note**  
**Optional packages are not supported in releases prior to App-V 5.0 SP3.**

 

Before using optional packages, see [Requirements for using optional packages in connection groups](#bkmk-reqs-using-cg).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Link to instructions</th>
<th align="left">Task</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><a href="#bkmk-apps-plugs-optional" data-raw-source="[Use one connection group, with optional packages, for multiple users who have different packages entitled to them](#bkmk-apps-plugs-optional)">Use one connection group, with optional packages, for multiple users who have different packages entitled to them</a></p></td>
<td align="left"><p>Use a single connection group to make different groups of applications and plug-ins available to different end users.</p>
<p>For example, you want to distribute Microsoft Office to all end users, but distribute different plug-ins to different subsets of users.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="#bkmk-unpub-del-optl-pkg" data-raw-source="[Unpublish or delete an optional package, or unpublish an optional package and republish it later, without changing the connection group](#bkmk-unpub-del-optl-pkg)">Unpublish or delete an optional package, or unpublish an optional package and republish it later, without changing the connection group</a></p></td>
<td align="left"><p>Unpublish, delete, or republish an optional package without having to disable, remove, edit, add, and re-enable the connection group on the App-V Client.</p>
<p>You can also unpublish the optional package and republish it later without having to disable or republish the connection group.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-apps-plugs-optional"></a>Use one connection group, with optional packages, for multiple users with different packages entitled to them


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task description</th>
<th align="left">How to perform the task</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>With App-V 5.0 SP3 and App-V 5.1</strong></p>
<p>You can add optional packages to connection groups, which enables you to provide different combinations of applications and plug-ins to different end users.</p>
<p><strong>Example</strong>: You want to distribute Microsoft Office to your end users, but enable a certain plug-in for only a subset of users.</p>
<p>To do this, create a connection group that contains a package with Office, and another package with Office plug-ins, and then make the plug-ins package optional.</p>
<p>End users who are not entitled to the plug-in package will still be able to run Office.</p></td>
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
<li><p>In the Management Console, select <strong>CONNECTION GROUPS</strong> to display the Connection Groups library.</p></li>
<li><p>Select the correct connection group from the Connection Groups library.</p></li>
<li><p>Click <strong>EDIT</strong> in the CONNECTED PACKAGES pane.</p></li>
<li><p>Select <strong>Optional</strong> next to the package name.</p></li>
<li><p>Select the <strong>ADD PACKAGE ACCESS TO GROUP ACCESS</strong> check box. This required step adds to the connection group the package entitlements that you configured earlier when you assigned packages to Active Directory groups.</p></li>
</ol></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Server - PowerShell cmdlet</p></td>
<td align="left"><p>Use the following cmdlet, and specify the <strong>-Optional</strong> parameter:</p>
<p><strong>Add-AppvServerConnectionGroupPackage</strong></p>
<p><strong>Syntax:</strong></p>
<p><code>Add-AppvServerConnectionGroupPackage [-AppvServerConnectionGroup] &lt;SerializableConnectionGroup&gt; [[-AppvServerPackage] &lt;PackageVersion&gt;] [-Optional] [-Order &lt;int&gt;] [-UseAnyPackageVersion]</code></p>
<p><strong>Example:</strong></p>
<p><code>Add-AppvServerConnectionGroupPackage -Name &quot;Connection Group 1&quot; -PackageName &quot;Package 1&quot; -Optional</code></p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Client on a Stand-alone computer</p></td>
<td align="left"><ol>
<li><p>Create the connection group XML document, and set the <strong>Package</strong> tag attribute <strong>IsOptional</strong> to <strong>“true”.</strong></p></li>
<li><p>Use the following cmdlets to add and enable the connection group:</p>
<ul>
<li><p>Add-AppvClientConnectionGroup</p></li>
<li><p>Enable-AppvClientConnectionGroup</p></li>
</ul></li>
</ol>
<p><strong>Example connection group XML document with optional packages:</strong></p>
<pre class="syntax" space="preserve"><code>&lt;?xml version=&quot;1.0&quot; ?&gt;
&lt;AppConnectionGroup
   xmlns=&quot;<a href="http://schemas.microsoft.com/appv/2014/virtualapplicationconnectiongroup&amp;quot" data-raw-source="http://schemas.microsoft.com/appv/2014/virtualapplicationconnectiongroup&amp;quot">http://schemas.microsoft.com/appv/2014/virtualapplicationconnectiongroup&quot</a>;
   AppConnectionGroupId=&quot;8105CCD5-244B-4BA1-8888-E321E688D2CB&quot;
   VersionId=&quot;84CE3797-F1CB-4475-A223-757918929EB4&quot;
   DisplayName=&quot;Contoso Software Connection Group&quot; &gt;
&lt;Packages&gt;
&lt;Package
   PackageId=&quot;7735d1a8-5ef9-4df9-a1cf-3aa92ef54fe7&quot;
   VersionId=&quot;ec560d6f-e62e-48eb-a9e5-7c52a8c2e149&quot;
   DisplayName=&quot;Contoso Business Manager&quot;
/&gt;

&lt;Package
   PackageId=&quot;fc6fe0f7-be3d-4643-b37d-fc3f62d4dd5c&quot;
   VersionId=&quot;c67a71cd-3542-4a48-93e8-20c643c50970&quot;
   DisplayName=&quot;Contoso Forms&quot;
   IsOptional=&quot;false&quot;
/&gt;

&lt;Package
   PackageId=&quot;8f6301a5-4348-4039-9560-b27a5bb72711&quot;
   VersionId=&quot;6c694b45-3e19-46c6-a327-d159aa39e1d2&quot;
   DisplayName=&quot;Contoso Tax&quot;
   IsOptional=&quot;true&quot;
/&gt;

&lt;Package
   PackageId=&quot;89d701bc-d507-4299-b6b6-000000003472&quot;
   VersionId=&quot;*&quot;
   DisplayName=&quot;Contoso Accounts&quot;
   IsOptional=&quot;true&quot;
/&gt;

&lt;/Packages&gt;
&lt;/AppConnectionGroup&gt;</code></pre></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>With versions earlier than App-V 5.0 SP3</strong></p></td>
<td align="left"><p>You had to create many connection groups to make specific application and plug-in combinations available to specific users.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-unpub-del-optl-pkg"></a>Unpublish or delete an optional package, or unpublish an optional package and republish it later, without changing the connection group


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task description</th>
<th align="left">How to perform the task</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>With App-V 5.0 SP3 and App-V 5.1</strong></p>
<p>You can unpublish, delete, or republish an optional package, which is in a connection group, without having to disable or re-enable the connection group on the App-V Client.</p>
<p>You can also unpublish an optional package and republish it later without having to disable or republish the connection group.</p>
<p><strong>Example</strong>: If you publish an optional package that contains a Microsoft Office plug-in, and you want to remove the plug-in, you can unpublish the package without having to disable the connection group.</p></td>
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
<td align="left"><ul>
<li><p>To unpublish the package: In the Management Console, select elect the <strong>PACKAGES</strong> page, click or right-click the package that you want to unpublish, and click <strong>Unpublish</strong>.</p></li>
<li><p>To remove an optional package from a connection group: On the <strong>CONNECTION GROUPS</strong> page, select the package that you want to remove, and click the right arrow to remove the package from the connection group pane on the bottom left.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Client on a Stand-alone computer</p></td>
<td align="left"><p>Use the following existing cmdlets:</p>
<ul>
<li><p>Unpublish-AppvClientPackage</p></li>
<li><p>Remove-AppvClientPackage</p></li>
</ul>
<p>For more information, see <a href="how-to-manage-app-v-51-packages-running-on-a-stand-alone-computer-by-using-powershell.md" data-raw-source="[How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell](how-to-manage-app-v-51-packages-running-on-a-stand-alone-computer-by-using-powershell.md)">How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell</a>.</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>With versions earlier than App-V 5.0 SP3</strong></p></td>
<td align="left"><p>You had to:</p>
<ol>
<li><p>Remove the connection group from each App-V Client computer where it was enabled.</p></li>
<li><p>Unpublish the package.</p></li>
<li><p>Remove the package from the connection group’s definition.</p></li>
<li><p>Republish the connection group.</p></li>
</ol></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-reqs-using-cg"></a>Requirements for using optional packages in connection groups


Review the following requirements before using optional packages in connection groups:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Requirement</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Connection groups must contain at least one non-optional package.</p></td>
<td align="left"><ul>
<li><p>Check carefully that you meet this requirement, as the App-V Server and the PowerShell cmdlet don’t validate that the requirement has been met.</p></li>
<li><p>If you accidentally create a connection group that does not contain at least one non-optional package, and the end user tries to open a packaged application in that connection group, the connection group will fail.</p></li>
</ul>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><ul>
<li><p>User-published connection groups can contain packages that are published globally or to the user.</p></li>
<li><p>Globally published connection groups must contain only globally published packages.</p></li>
</ul></td>
<td align="left"><p>Globally published connection groups must contain packages that are published globally to ensure that the packages will be available when starting the connection group’s virtual environment.</p>
<p>If you try to add or enable globally published connection groups that contain user-published packages, the connection group will fail.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>You must publish all non-optional packages before publishing the connection group that contains those packages.</p></td>
<td align="left"><p>A connection group’s virtual environment cannot start if any non-optional packages are missing.</p>
<p>The App-V Client fails to add or enable a connection group if any non-optional packages have not been published.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Before you unpublish a globally published package, ensure that the connection groups that are entitled to all the users on that computer no longer require the package.</p></td>
<td align="left"><p>The system does not check whether the package is part of another user’s connection group. Unpublishing a global package will make it unavailable to every user on that computer, so make sure that each user’s connection groups no longer contain the package, or alternatively make the package optional.</p></td>
</tr>
</tbody>
</table>

 






## Related topics


[Managing Connection Groups](managing-connection-groups51.md)

 

 





