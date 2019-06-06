---
title: About the Deployment Tab
description: About the Deployment Tab
author: dansimp
ms.assetid: 12891798-baa4-45a5-b845-b9505ab95633
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# About the Deployment Tab


Use the **Deployment** tab in the Application Virtualization Sequencer Console to change the information for an application you are about to sequence. This tab contains the following elements.

## Server URL


Use the **Server URL** controls to specify the virtual application server configuration settings.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Control</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Protocol</strong></p></td>
<td align="left"><p>Enables you to select the protocol that will stream the sequenced application package from a virtual application server to an Application Virtualization Desktop Client. The following protocols are available:</p>
<ul>
<li><p><strong>RTSP</strong>—The default, it specifies that the Real-Time Streaming Protocol controls the exchange of virtualization-enabled applications.</p></li>
<li><p><strong>RTSPS</strong>—Specifies that the Real-Time Streaming Protocol with Transport Layer Security controls the exchange of a sequenced application package.</p></li>
<li><p><strong>File</strong>—Specifies that the sequenced application will be streamed from a file share.</p></li>
<li><p><strong>HTTPS</strong>—Specifies that Secure Hypertext Transport Protocol controls the exchange of a package.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Hostname</strong></p></td>
<td align="left"><p>Enables you to select the virtual application server or the load balancer in front of a group of virtual application servers that will stream the software package to an Application Virtualization Desktop Client. You must complete this item to create a sequenced application package, but you can change from the default %SFT_SOFTGRIDSERVER% environment variable to the actual hostname or IP address of a virtual application server.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you choose not to specify a static hostname or IP address, on each Application Virtualization Desktop Client you must set up an environment variable called SFT_SOFTGRIDSERVER. Its value must be the hostname or IP address of the virtual application server or load balancer that is this client's source of applications. You should make this environment variable a system variable rather than a user variable. Any Application Virtualization Desktop Client session that is running on this computer during your assignment of this variable must be closed and then opened so that the resumed session will be aware of its new application source.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Port</strong></p></td>
<td align="left"><p>Enables you to specify the port on which the virtual application server or the load balancer will listen for an Application Virtualization Desktop Client's request for the package. This information is required to create a package, but you can change it. The default port is 554.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Path</strong></p></td>
<td align="left"><p>Enables you to specify the relative path on the virtual application server where the software package is stored and from which it will be streamed. This information is required to create a package if the SFT file will be stored in a subdirectory of CONTENT; otherwise, this information is not required.</p></td>
</tr>
</tbody>
</table>

 

## Operating Systems


Use the **Operating Systems** controls to specify the application's operating system requirements. If an Application Virtualization Desktop Client cannot support any of the selected operating systems, the application will not start.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Controls</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Available Operating Systems</strong></p></td>
<td align="left"><p>Displays a list of operating systems that can support the applications in the package.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Selected Operating Systems</strong></p></td>
<td align="left"><p>Displays a list of selected operating systems that support the applications in the package.</p></td>
</tr>
</tbody>
</table>

 

## Output Options


Use the **Output Options** controls to specify the output options for the application to be installed.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Control</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Compression Algorithm</strong></p></td>
<td align="left"><p>Use to select the method for compressing the SFT file for streaming across a network. Select one of the following compression methods:</p>
<ul>
<li><p><strong>Compressed</strong>—Specifies that the SFT file be compressed in the [ZLIB](https://go.microsoft.com/fwlink/?LinkId=111475) format.</p></li>
<li><p><strong>Not Compressed</strong>—The default; specifies that the SFT file not be compressed.</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Enforce Security Descriptors</strong></p></td>
<td align="left"><p>Select to enforce security descriptors of the applications in the package after it is deployed to the client.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Generate Microsoft Windows Installer (MSI) Package</strong></p></td>
<td align="left"><p>Select to install or deploy a sequenced application package with the Windows Installer. If you have made any changes using the sequencer the changes will not be included with the Windows Installer file. The Windows Installer file will always be created using the .sft file saved on the hard disk.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[How to Change Deployment Properties](how-to-change-deployment-properties.md)

[Sequencer Console](sequencer-console.md)

 

 





