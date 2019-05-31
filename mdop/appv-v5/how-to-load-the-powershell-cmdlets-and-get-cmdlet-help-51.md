---
title: How to Load the PowerShell Cmdlets and Get Cmdlet Help
description: How to Load the PowerShell Cmdlets and Get Cmdlet Help
author: dansimp
ms.assetid: b6ae5460-2c3a-4030-b132-394d9d5a541e
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/02/2016
---


# How to Load the PowerShell Cmdlets and Get Cmdlet Help


What this topic covers:

-   [Requirements for using PowerShell cmdlets](#bkmk-reqs-using-posh)

-   [Loading the PowerShell cmdlets](#bkmk-load-cmdlets)

-   [Getting help for the PowerShell cmdlets](#bkmk-get-cmdlet-help)

-   [Displaying the help for a PowerShell cmdlet](#bkmk-display-help-cmdlet)

## <a href="" id="bkmk-reqs-using-posh"></a>Requirements for using PowerShell cmdlets


Review the following requirements for using the App-V PowerShell cmdlets:

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
<td align="left"><p>Users can run App-V Server cmdlets only if you grant them access by using one of the following methods:</p></td>
<td align="left"><ul>
<li><p><strong>When you are deploying and configuring the App-V Server</strong>:</p>
<p>Specify an Active Directory group or individual user that has permissions to manage the App-V environment. See [How to Deploy the App-V 5.1 Server](how-to-deploy-the-app-v-51-server.md).</p></li>
<li><p><strong>After you’ve deployed the App-V Server</strong>:</p>
<p>Use the App-V Management console to add an additional Active Directory group or user. See [How to Add or Remove an Administrator by Using the Management Console](how-to-add-or-remove-an-administrator-by-using-the-management-console51.md).</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Cmdlets that require an elevated command prompt</p></td>
<td align="left"><ul>
<li><p>Add-AppvClientPackage</p></li>
<li><p>Remove-AppvClientPackage</p></li>
<li><p>Set-AppvClientConfiguration</p></li>
<li><p>Add-AppvClientConnectionGroup</p></li>
<li><p>Remove-AppvClientConnectionGroup</p></li>
<li><p>Add-AppvPublishingServer</p></li>
<li><p>Remove-AppvPublishingServer</p></li>
<li><p>Send-AppvClientReport</p></li>
<li><p>Set-AppvClientMode</p></li>
<li><p>Set-AppvClientPackage</p></li>
<li><p>Set-AppvPublishingServer</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Cmdlets that end users can run, unless you configure them to require an elevated command prompt</p></td>
<td align="left"><ul>
<li><p>Publish-AppvClientPackage</p></li>
<li><p>Unpublish-AppvClientPackage</p></li>
</ul>
<p>To configure these cmdlets to require an elevated command prompt, use one of the following methods:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">More resources</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Run the <strong>Set-AppvClientConfiguration</strong> cmdlet with the <strong>-RequirePublishAsAdmin</strong> parameter.</p></td>
<td align="left"><ul>
<li><p>[How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell](how-to-manage-connection-groups-on-a-stand-alone-computer-by-using-powershell51.md#bkmk-admin-only-posh-topic-cg)</p></li>
<li><p>[How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell](how-to-manage-app-v-51-packages-running-on-a-stand-alone-computer-by-using-powershell.md)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Enable the “Require publish as administrator” Group Policy setting for App-V Clients.</p></td>
<td align="left"><p>[How to Publish a Package by Using the Management Console](how-to-publish-a-package-by-using-the-management-console-51.md)</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-load-cmdlets"></a>Loading the PowerShell cmdlets

To load the PowerShell cmdlet modules:

1.  Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).

2.  Type one of the following commands to load the cmdlets for the module you want:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">App-V component</th>
<th align="left">Command to type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V Server</p></td>
<td align="left"><p>Import-Module AppvServer</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Sequencer</p></td>
<td align="left"><p>Import-Module AppvSequencer</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Client</p></td>
<td align="left"><p>Import-Module AppvClient</p></td>
</tr>
</tbody>
</table>

## <a href="" id="bkmk-get-cmdlet-help"></a>Getting help for the PowerShell cmdlets
Starting in App-V 5.0 SP3, cmdlet help is available in two formats:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Format</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>As a downloadable module</p></td>
<td align="left"><p>To download the latest help after downloading the cmdlet module:</p>
<ol>
<li><p>Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).</p></li>
<li><p>Type one of the following commands to load the cmdlets for the module you want:</p></li>
</ol>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">App-V component</th>
<th align="left">Command to type</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App-V Server</p></td>
<td align="left"><p>Update-Help -Module AppvServer</p></td>
</tr>
<tr class="even">
<td align="left"><p>App-V Sequencer</p></td>
<td align="left"><p>Update-Help -Module AppvSequencer</p></td>
</tr>
<tr class="odd">
<td align="left"><p>App-V Client</p></td>
<td align="left"><p>Update-Help -Module AppvClient</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
<tr class="even">
<td align="left"><p>On TechNet as web pages</p></td>
<td align="left"><p>See the App-V node under [Microsoft Desktop Optimization Pack Automation with Windows PowerShell](https://technet.microsoft.com/library/dn520245.aspx).</p></td>
</tr>
</tbody>
</table>

## <a href="" id="bkmk-display-help-cmdlet"></a>Displaying the help for a PowerShell cmdlet
To display help for a specific PowerShell cmdlet:

1.  Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).

2.  Type **Get-Help** &lt;*cmdlet*&gt;, for example, **Get-Help Publish-AppvClientPackage**.

**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

 

 





