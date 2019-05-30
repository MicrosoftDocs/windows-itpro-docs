---
title: Client Installation Command Line Reference
description: Client Installation Command Line Reference
author: dansimp
ms.assetid: 122a593d-3314-4e9b-858a-08a25ed00c32
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Client Installation Command Line Reference


**To install MED-V from the command line**

1.  From the command line, run the MED-V .msi package followed by any of the optional parameters described in the following table.

2.  The MED-V .msi package is called *MED-V\_x.msi*, where *x* is the version number.

    For example, *MED-V\_1.0.65.msi*.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>/quiet</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Silent installation</p></td>
</tr>
<tr class="even">
<td align="left"><p>/log &lt;full path to log file&gt;</p></td>
<td align="left"><p>The full path to the log file.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>INSTALLDIR</p></td>
<td align="left"><p>The full path to the installation directory.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>VMSFOLDER</p></td>
<td align="left"><p>The full path to the virtual machine folder.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>INSTALL_ADMIN_TOOLS</p></td>
<td align="left"><p><strong>1,0</strong></p>
<p>Default: <strong>0</strong></p></td>
<td align="left"><p>Installs MED-V administration tools.</p></td>
</tr>
<tr class="even">
<td align="left"><p>START_AUTOMATICALLY</p></td>
<td align="left"><p><strong>1,0</strong></p>
<p>Default: <strong>0</strong></p></td>
<td align="left"><p>Automatically starts MED-V client every time the user logs on to Windows.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SERVER_ADDRESS</p></td>
<td align="left"><p>host name or IP</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>SERVER_PORT</p></td>
<td align="left"><p>port</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>SERVER_SSL</p></td>
<td align="left"><p><strong>1,0</strong></p>
<p>for <strong>https</strong> or <strong>http</strong></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>START_MEDV</p></td>
<td align="left"><p><strong>1,0</strong></p>
<p>Default: <strong>1</strong></p></td>
<td align="left"><p>Starts MED-V at the completion of the MED-V installation.</p>
<div class="alert">
<strong>Note</strong>  
<p>It is recommended to set START_MEDV=0 in case MED-V is installed by the system.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>DESKTOP_SHORTCUT</p></td>
<td align="left"><p><strong>1,0</strong></p>
<p>Default: <strong>1</strong></p></td>
<td align="left"><p>Creates a shortcut on the desktop, which starts MED-V client.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MINIMAL_RAM_REQUIRED</p></td>
<td align="left"><p>RAM in MB</p></td>
<td align="left"><p>When installing MED-V, checks whether the computer has the minimum amount of RAM specified. If not, installation is aborted.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SKIP_OS_CHECK</p></td>
<td align="left"><p><strong>1,0</strong></p></td>
<td align="left"><p>Omits the operating system validation.</p></td>
</tr>
</tbody>
</table>

 

 

 





