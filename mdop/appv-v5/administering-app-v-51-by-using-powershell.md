---
title: Administering App-V 5.1 by Using PowerShell
description: Administering App-V 5.1 by Using PowerShell
author: manikadhiman
ms.assetid: 9e10ff07-2cd9-4dc1-9e99-582f90c36081
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Administering App-V 5.1 by Using PowerShell


Microsoft Application Virtualization (App-V) 5.1 provides Windows PowerShell cmdlets, which can help administrators perform various App-V 5.1 tasks. The following sections provide more information about using PowerShell with App-V 5.1.

## How to administer App-V 5.1 by using PowerShell


Use the following PowerShell procedures to perform various App-V 5.1 tasks.

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
<td align="left"><p><a href="how-to-load-the-powershell-cmdlets-and-get-cmdlet-help-51.md" data-raw-source="[How to Load the PowerShell Cmdlets and Get Cmdlet Help](how-to-load-the-powershell-cmdlets-and-get-cmdlet-help-51.md)">How to Load the PowerShell Cmdlets and Get Cmdlet Help</a></p></td>
<td align="left"><p>Describes how to install the PowerShell cmdlets and find cmdlet help and examples.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="how-to-manage-app-v-51-packages-running-on-a-stand-alone-computer-by-using-powershell.md" data-raw-source="[How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell](how-to-manage-app-v-51-packages-running-on-a-stand-alone-computer-by-using-powershell.md)">How to Manage App-V 5.1 Packages Running on a Stand-Alone Computer by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to manage the client package lifecycle on a stand-alone computer using PowerShell.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="how-to-manage-connection-groups-on-a-stand-alone-computer-by-using-powershell51.md" data-raw-source="[How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell](how-to-manage-connection-groups-on-a-stand-alone-computer-by-using-powershell51.md)">How to Manage Connection Groups on a Stand-alone Computer by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to manage connection groups using PowerShell.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="how-to-modify-client-configuration-by-using-powershell51.md" data-raw-source="[How to Modify Client Configuration by Using PowerShell](how-to-modify-client-configuration-by-using-powershell51.md)">How to Modify Client Configuration by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to modify the client using PowerShell.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="how-to-apply-the-user-configuration-file-by-using-powershell51.md" data-raw-source="[How to Apply the User Configuration File by Using PowerShell](how-to-apply-the-user-configuration-file-by-using-powershell51.md)">How to Apply the User Configuration File by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to apply a user configuration file using PowerShell.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="how-to-apply-the-deployment-configuration-file-by-using-powershell51.md" data-raw-source="[How to Apply the Deployment Configuration File by Using PowerShell](how-to-apply-the-deployment-configuration-file-by-using-powershell51.md)">How to Apply the Deployment Configuration File by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to apply a deployment configuration file using PowerShell.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="how-to-sequence-a-package--by-using-powershell-51.md" data-raw-source="[How to Sequence a Package by Using PowerShell](how-to-sequence-a-package--by-using-powershell-51.md)">How to Sequence a Package by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to create a new package using PowerShell.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="how-to-create-a-package-accelerator-by-using-powershell51.md" data-raw-source="[How to Create a Package Accelerator by Using PowerShell](how-to-create-a-package-accelerator-by-using-powershell51.md)">How to Create a Package Accelerator by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to create a package accelerator using PowerShell. You can use package accelerators automatically sequence large, complex applications.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><a href="how-to-enable-reporting-on-the-app-v-51-client-by-using-powershell.md" data-raw-source="[How to Enable Reporting on the App-V 5.1 Client by Using PowerShell](how-to-enable-reporting-on-the-app-v-51-client-by-using-powershell.md)">How to Enable Reporting on the App-V 5.1 Client by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to enable the computer running the App-V 5.1 to send reporting information.</p></td>
</tr>
<tr class="even">
<td align="left"><p><a href="how-to-install-the-app-v-databases-and-convert-the-associated-security-identifiers--by-using-powershell51.md" data-raw-source="[How to Install the App-V Databases and Convert the Associated Security Identifiers by Using PowerShell](how-to-install-the-app-v-databases-and-convert-the-associated-security-identifiers--by-using-powershell51.md)">How to Install the App-V Databases and Convert the Associated Security Identifiers by Using PowerShell</a></p></td>
<td align="left"><p>Describes how to take an array of account names and to convert each of them to the corresponding SID in standard and hexadecimal formats.</p></td>
</tr>
</tbody>
</table>

 

**Important**  
Make sure that any script you execute with your App-V packages matches the execution policy that you have configured for PowerShell.

 

## PowerShell Error Handling


Use the following table for information about App-V 5.1 PowerShell error handling.

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

 






## Related topics


[Operations for App-V 5.1](operations-for-app-v-51.md)

 

 





