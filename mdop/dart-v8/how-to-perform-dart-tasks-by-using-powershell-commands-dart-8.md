---
title: How to Perform DaRT Tasks by Using PowerShell Commands
description: How to Perform DaRT Tasks by Using PowerShell Commands
author: dansimp
ms.assetid: bc788b00-38c7-4f57-a832-916b68264d89
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Perform DaRT Tasks by Using PowerShell Commands


Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 provides the following listed set of Windows PowerShell cmdlets. Administrators can use these PowerShell cmdlets to perform various DaRT 8.0 server tasks from the command prompt rather than from the DaRT Recovery Image wizard.

## To administer DaRT by using PowerShell commands


Use the PowerShell cmdlets described here to administer DaRT.

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
<td align="left"><p>Copy-DartImage</p></td>
<td align="left"><p>Burns an ISO to a CD, DVD, or USB drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Export-DartImage</p></td>
<td align="left"><p>Allows the source WIM file, which contains a DaRT image, to be converted into an ISO file.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>New-DartConfiguration</p></td>
<td align="left"><p>Creates a DaRT configuration object that is needed to apply a DaRT toolset to a Windows Image.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Set-DartImage</p></td>
<td align="left"><p>Applies a DartConfiguration object to a mounted Windows Image. This includes adding all files, configuration, and package dependencies.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Administering DaRT 8.0 Using PowerShell](administering-dart-80-using-powershell-dart-8.md)

 

 





