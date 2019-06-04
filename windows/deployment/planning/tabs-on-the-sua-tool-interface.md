---
title: Tabs on the SUA Tool Interface (Windows 10)
description: The tabs in the Standard User Analyzer (SUA) tool show the User Account Control (UAC) issues for the applications that you analyze.
ms.assetid: 0d705321-1d85-4217-bf2c-0ca231ca303b
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Tabs on the SUA Tool Interface


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

The tabs in the Standard User Analyzer (SUA) tool show the User Account Control (UAC) issues for the applications that you analyze.

The following table provides a description of each tab on the user interface for the SUA tool.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Tab name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>App Info</p></td>
<td align="left"><p>Provides the following information for the selected application:</p>
<ul>
<li><p>Debugging information</p></li>
<li><p>Error, warning, and informational messages (if they are enabled)</p></li>
<li><p>Options for running the application</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>File</p></td>
<td align="left"><p>Provides information about access to the file system.</p>
<p>For example, this tab might show an attempt to write to a file that only administrators can typically access.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Registry</p></td>
<td align="left"><p>Provides information about access to the system registry.</p>
<p>For example, this tab might show an attempt to write to a registry key that only administrators can typically access.</p></td>
</tr>
<tr class="even">
<td align="left"><p>INI</p></td>
<td align="left"><p>Provides information about WriteProfile API issues.</p>
<p>For example, in the Calculator tool (Calc.exe) in Windows® XP, when you change the view from <strong>Standard</strong> to <strong>Scientific</strong>, Calc.exe calls the WriteProfile API to write to the Windows\Win.ini file. The Win.ini file is writable only for administrators.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Token</p></td>
<td align="left"><p>Provides information about access-token checking.</p>
<p>For example, this tab might show an explicit check for the Builtin\Administrators security identifier (SID) in the user's access token. This operation may not work for a standard user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Privilege</p></td>
<td align="left"><p>Provides information about permissions.</p>
<p>For example, this tab might show an attempt to explicitly enable permissions that do not work for a standard user.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Name Space</p></td>
<td align="left"><p>Provides information about creation of system objects.</p>
<p>For example, this tab might show an attempt to create a new system object, such as an event or a memory map, in a restricted namespace. Applications that attempt this kind of operation do not function for a standard user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Other Objects</p></td>
<td align="left"><p>Provides information related to applications accessing objects other than files and registry keys.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Process</p></td>
<td align="left"><p>Provides information about process elevation.</p>
<p>For example, this tab might show the use of the CreateProcess API to open an executable (.exe) file that, in turn, requires process elevation that will not function for a standard user.</p></td>
</tr>
</tbody>
</table>

 

 

 





