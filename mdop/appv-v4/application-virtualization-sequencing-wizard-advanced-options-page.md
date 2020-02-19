---
title: Application Virtualization Sequencing Wizard Advanced Options Page
description: Application Virtualization Sequencing Wizard Advanced Options Page
author: dansimp
ms.assetid: 2c4c5d95-d55e-463d-a851-8486f6a724f2
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Application Virtualization Sequencing Wizard Advanced Options Page


Use the **Advanced Options** page of the Application Virtualization (App-V) Sequencing Wizard to specify advanced options for the application to be installed. The page contains the elements described in the following table.

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
<td align="left"><p><strong>Block Size</strong></p></td>
<td align="left"><p>Use to specify the size of blocks that the SFT file will be divided into when streamed across a network. All blocks equal the specified size; however, the last block might be smaller than specified. Select one of the following values:</p>
<ul>
<li><p><strong>4 KB</strong></p></li>
<li><p><strong>16 KB</strong></p></li>
<li><p><strong>32 KB</strong></p></li>
<li><p><strong>64 KB</strong></p></li>
</ul>
<div class="alert">
<strong>Note</strong><br/><p>When you select a block size, consider the size of the SFT file and your network bandwidth. A file with a smaller block size takes longer to stream over the network but is less bandwidth-intensive. Files with larger block sizes might stream faster, but they use more network bandwidth. Through experimentation, you can discover the optimum block size for streaming applications on your network.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Enable Microsoft Update During Monitoring</strong></p></td>
<td align="left"><p>Enables installation of Microsoft Updates during the Sequencing Wizard&#39;s monitoring phase.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Rebase DLLs</strong></p></td>
<td align="left"><p>Enables remapping of supported dynamic-link libraries to a contiguous space in RAM, saving memory and improving performance.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Back</strong></p></td>
<td align="left"><p>Accesses the Sequencing Wizard&#39;s previous page.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Next</strong></p></td>
<td align="left"><p>Accesses the Sequencing Wizard&#39;s next page.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Cancel</strong></p></td>
<td align="left"><p>Terminates operation of the Sequencing Wizard.</p></td>
</tr>
</tbody>
</table>



\[Template Token Value\]

Use the **Advanced Options** page of the App-V Sequencing Wizard to specify advanced options for the application you are sequencing. This page contains the elements described in the following table.

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
<td align="left"><p><strong>Allow Microsoft Update to run during monitoring</strong></p></td>
<td align="left"><p>Specifies whether software updates will be applied to the application during the monitoring phase of application sequencing. This option is helpful if updates are required to successfully complete the application installation. This option is not selected by default.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Rebase Dlls</strong></p></td>
<td align="left"><p>Enables remapping of supported dynamic-link libraries to a contiguous space in RAM. Selecting this option can help manage memory and improve application performance. This option is not selected by default.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Back</strong></p></td>
<td align="left"><p>Goes to the previous page of the wizard.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Next</strong></p></td>
<td align="left"><p>Goes to the next page of the wizard.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Cancel</strong></p></td>
<td align="left"><p>Discards the settings and exits the wizard.</p></td>
</tr>
</tbody>
</table>



\[Template Token Value\]

## Related topics


[Sequencing Wizard](sequencing-wizard.md)









