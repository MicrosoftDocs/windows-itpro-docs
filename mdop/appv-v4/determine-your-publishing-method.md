---
title: Determine Your Publishing Method
description: Determine Your Publishing Method
author: dansimp
ms.assetid: 1f2d0d39-5d65-457a-b826-4f45b00c8c85
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Determine Your Publishing Method


After you sequence an application by using the Application Virtualization Sequencer, you need to *publish* that application to your users. Publishing the application consists of delivering the icons, package definition information, and content source location to each computer where the Application Virtualization Client has been installed. The following table describes publishing methods that are supported when you deploy Application Virtualization by using an electronic software distribution (ESD) system.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Advantages</th>
<th align="left">Disadvantages</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Generate a Windows Installer file during sequencing, as a stand-alone solution.</p></td>
<td align="left"><ul>
<li><p>Very simple to use.</p></li>
<li><p>Package loaded into cache locally on each computer.</p></li>
<li><p>Icons displayed to user.</p></li>
<li><p>Similar to traditional software deployment.</p></li>
<li><p>No need for streaming servers.</p></li>
</ul></td>
<td align="left"><ul>
<li><p>No flexibility in location of package contents on computers—same location on all computers.</p></li>
<li><p>Must use only Add/Remove Programs or msiexec to remove applications.</p></li>
<li><p>Removal and replacement with new version required for package updating.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Generate a Windows Installer file during sequencing, used with MODE, LOAD, and OVERRIDEURL command-line properties and the package manifest.</p></td>
<td align="left"><ul>
<li><p>Simple to use but with added flexibility.</p></li>
<li><p>Icons displayed to user.</p></li>
<li><p>SFT file containing the applications can be placed on a streaming source location, with clients configured to use that location.</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Limited flexibility—only the location of the package content can be controlled at run time.</p></li>
<li><p>Must use only Add/Remove Programs or msiexec to remove the application.</p></li>
<li><p>Removal and replacement with new version required for package updating, unless using streaming server.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Run SFTMIME commands.</p></td>
<td align="left"><ul>
<li><p>Complete flexibility—full control of all package management functions.</p></li>
</ul></td>
<td align="left"><ul>
<li><p>Commands must be scripted for use with the ESD system.</p></li>
<li><p>Commands must be run on each computer in correct sequence.</p></li>
<li><p>Detailed understanding of command language and careful planning required.</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

For more information about using these publishing methods, see [How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md).

## Related topics


[Determine Your Streaming Method](determine-your-streaming-method.md)

[Electronic Software Distribution-Based Scenario](electronic-software-distribution-based-scenario.md)

[Electronic Software Distribution-Based Scenario Overview](electronic-software-distribution-based-scenario-overview.md)

[How to Publish a Virtual Application on the Client](how-to-publish-a-virtual-application-on-the-client.md)

[SFTMIME Command Reference](sftmime--command-reference.md)

 

 





