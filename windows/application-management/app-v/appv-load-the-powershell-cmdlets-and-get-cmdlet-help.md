---
title: How to Load the Windows PowerShell Cmdlets for App-V and Get Cmdlet Help (Windows 10)
description: How to Load the Windows PowerShell Cmdlets for App-V and Get Cmdlet Help
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/19/2017
---
# How to load the Windows PowerShell cmdlets for App-V and get cmdlet help

>Applies to: Windows 10, version 1607

## Requirements for using Windows PowerShell cmdlets

Review the following requirements for using the Windows PowerShell cmdlets:

|Requirement|Details|
|---|---|
|||
|||
|||

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
<p>Specify an Active Directory group or individual user that has permissions to manage the App-V environment. See [How to Deploy the App-V Server](appv-deploy-the-appv-server.md).</p></li>
<li><p><strong>After you’ve deployed the App-V Server</strong>:</p>
<p>Use the App-V Management console to add an additional Active Directory group or user. See [How to Add or Remove an Administrator by Using the Management Console](appv-add-or-remove-an-administrator-with-the-management-console.md).</p></li>
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
<ul>
<li><p>Run the <strong>Set-AppvClientConfiguration</strong> cmdlet with the <strong>-RequirePublishAsAdmin</strong> parameter.</p>
<p>For more information, see:<br>[How to Manage Connection Groups on a Stand-alone Computer by Using Windows PowerShell](appv-manage-connection-groups-on-a-stand-alone-computer-with-powershell.md)<br>[How to Manage App-V Packages Running on a Stand-Alone Computer by Using Windows PowerShell](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md#bkmk-admins-pub-pkgs).</p></li>
<li><p>Enable the “Require publish as administrator” Group Policy setting for App-V Clients.</p>
<p>For more information, see [How to Publish a Package by Using the Management Console](appv-publish-a-packages-with-the-management-console.md)</p></li>
</ul>
</td>
</tr>
</tbody>
</table>

Alt:

This section will tell you what you'll need to use the PowerShell cmdlets.

### How to let users use cmdlets

You can grant your users access to PowerShell cmdlets through one of the following methods:

* While you're deploying and configuring the App-V server, specify an Active Directory group or individual user with permissions to manage the App-V environment. For more information, see [How to deploy the App-V Server](appv-deploy-the-appv-server.md).
* After you've deployed the App-V server, you can use the App-V Management console to add an additional Active Directory group or user. For more information, see [How to add or remove an administrator by using the Management console](appv-add-or-remove-an-administrator-with-the-management-console.md).

### Elevated command prompt

You'll need an elevated command prompt to run the following cmdlets:

* Add-AppvClientPackage
* Remove-AppvClientPackage
* Set-AppvClientConfiguration

## Loading the Windows PowerShell cmdlets

To load the Windows PowerShell cmdlet modules:

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

## Getting help for the Windows PowerShell cmdlets

Starting in App-V 5.0 SP3, cmdlet help is available in two formats:

- **As a downloadable module**: To download the latest help after downloading the cmdlet module, open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE), and type one of the following commands: 

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

<br>

- **On TechNet as web pages**: See the App-V node under [Microsoft Desktop Optimization Pack Automation with Windows PowerShell](https://technet.microsoft.com/library/dn520245.aspx).

## <a href="" id="bkmk-display-help-cmdlet"></a>Displaying the help for a Windows PowerShell cmdlet


To display help for a specific Windows PowerShell cmdlet:

1.  Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).

2.  Type **Get-Help** &lt;*cmdlet*&gt;, for example, **Get-Help Publish-AppvClientPackage**.


## Have a suggestion for App-V?

Add or vote on suggestions on the [Application Virtualization feedback site](https://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).
