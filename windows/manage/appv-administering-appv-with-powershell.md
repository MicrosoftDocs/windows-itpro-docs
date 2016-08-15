---
title: Administering App-V by Using Windows PowerShell (Windows 10)
description: Administering App-V by Using Windows PowerShell
author: MaggiePucciEvans
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---


# Administering App-V by Using Windows PowerShell

Applies to: Windows 10, version 1607

Microsoft Application Virtualization (App-V) provides Windows PowerShell cmdlets, which can help administrators perform various App-V tasks. The following sections provide more information about using Windows PowerShell with App-V.

## How to administer App-V by using Windows PowerShell


Use the following Windows PowerShell procedures to perform various App-V tasks.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[How to Load the PowerShell Cmdlets and Get Cmdlet Help](appv-load-the-powershell-cmdlets-and-get-cmdlet-help.md)</p></td>
<td align="left"><p>Describes how to install the Windows PowerShell cmdlets and find cmdlet help and examples.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[How to Manage App-V Packages Running on a Stand-Alone Computer by Using PowerShell](appv-manage-appv-packages-running-on-a-stand-alone-computer-with-powershell.md)</p></td>
<td align="left"><p>Describes how to manage the client package lifecycle on a stand-alone computer by using Windows PowerShell.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell](appv-manage-connection-groups-on-a-stand-alone-computer-with-powershell.md)</p></td>
<td align="left"><p>Describes how to manage connection groups by using Windows PowerShell.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[How to Modify Client Configuration by Using Windows PowerShell](appv-modify-client-configuration-with-powershell.md)</p></td>
<td align="left"><p>Describes how to modify the client by using Windows PowerShell.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[How to Apply the User Configuration File by Using PowerShell](appv-apply-the-user-configuration-file-with-powershell.md)</p></td>
<td align="left"><p>Describes how to apply a user configuration file by using Windows PowerShell.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[How to Apply the Deployment Configuration File by Using PowerShell](appv-apply-the-deployment-configuration-file-with-powershell.md)</p></td>
<td align="left"><p>Describes how to apply a deployment configuration file by using Windows PowerShell.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[How to Sequence a Package by Using PowerShell](appv-sequence-a-package-with-powershell.md)</p></td>
<td align="left"><p>Describes how to create a new package by using Windows PowerShell.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[How to Create a Package Accelerator by Using PowerShell](appv-create-a-package-accelerator-with-powershell.md)</p></td>
<td align="left"><p>Describes how to create a package accelerator by using Windows PowerShell. You can use package accelerators automatically sequence large, complex applications.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[How to Enable Reporting on the App-V Client by Using PowerShell](appv-enable-reporting-on-the-appv-client-with-powershell.md)</p></td>
<td align="left"><p>Describes how to enable the computer running the App-V to send reporting information.</p></td>
</tr>
<tr class="even">
<td align="left"><p>[How to Install the App-V Databases and Convert the Associated Security Identifiers by Using PowerShell](appv-install-the-appv-databases-and-convert-the-associated-security-identifiers-with-powershell.md)</p></td>
<td align="left"><p>Describes how to take an array of account names and to convert each of them to the corresponding SID in standard and hexadecimal formats.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[How to Configure the Client to Receive Package and Connection Groups Updates From the Publishing Server](appv-configure-the-client-to-receive-updates-from-the-publishing-server.md)
</p></td>
<td align="left"><p>Describes how to use Windows PowerShell to configure a client after you deploy the App-V management and publishing servers, and add the required packages and connection groups.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
Make sure that any script you execute with your App-V packages matches the execution policy that you have configured for Windows PowerShell.

 

## Windows PowerShell Error Handling


Use the following table for information about App-V PowerShell error handling.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Event</th>
<th align="left">Action</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Using the RollbackOnError attribute with embedded scripts</p></td>
<td align="left"><p>When you use the <strong>RollbackOnError</strong> attribute with embedded scripts, the attribute is ignored for the following events:</p>
<ul>
<li><p>Removing a package</p></li>
<li><p>Unpublishing a package</p></li>
<li><p>Terminating a virtual environment</p></li>
<li><p>Terminating a process</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Package name contains <strong>$</strong></p></td>
<td align="left"><p>If a package name contains the character ( <strong>$</strong> ), you must use a single-quote ( <strong>‘</strong> ), for example,</p>
<p><strong>Add-AppvClientPackage ‘Contoso$App.appv’</strong></p></td>
</tr>
</tbody>
</table>

 

## Have a suggestion for App-V?


Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related topics


[Operations for App-V](appv-operations.md)
