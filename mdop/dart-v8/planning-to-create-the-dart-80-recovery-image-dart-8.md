---
title: Planning to Create the DaRT 8.0 Recovery Image
description: Planning to Create the DaRT 8.0 Recovery Image
author: msfttracyp
ms.assetid: cfd0e1e2-c379-4460-b545-3f7be9f33583
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop
ms.mktglfcycl: support
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Planning to Create the DaRT 8.0 Recovery Image


Use the information in this section when you are planning to create the Microsoft Diagnostics and Recovery Toolset (DaRT) 8.0 recovery image.

## Planning to create the DaRT 8.0 recovery image


When you create the DaRT recovery image, you have to decide which tools to include on the image. To make the decision, consider that end users may have access to those tools. If support engineers will take the recovery image media to end users’ computers to diagnose issues, you may want to install all of the tools on the recovery image. If you plan to diagnose end user’s computers remotely, you may want to disable some of the tools, such as Disk Wipe and Registry Editor, and then enable other tools, including Remote Connection.

When you create the DaRT recovery image, you will also specify whether you want to include additional drivers or files. Determine the locations of any additional drivers or files that you want to include on the DaRT recovery image.

For more information about the DaRT tools, see [Overview of the Tools in DaRT 8.0](overview-of-the-tools-in-dart-80-dart-8.md). For more information about how to help create a secure recovery image, see [Security Considerations for DaRT 8.0](security-considerations-for-dart-80--dart-8.md).

## Prerequisites for the recovery image


The following items are required or recommended for creating the DaRT recovery image:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Prerequisite</strong></p></td>
<td align="left"><p><strong>Details</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8 source files</p></td>
<td align="left"><p>Required to create the DaRT recovery image. Provide the path of a Windows 8 DVD or of Windows 8 source files.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Debugging Tools for your platform</p></td>
<td align="left"><p>Required when you run the <strong>Crash Analyzer</strong> to determine the cause of a computer failure. We recommend that you specify the path of the Windows Debugging Tools at the time that you create the DaRT recovery image. You can download the Windows Debugging Tools here: [Download and Install Debugging Tools for Windows](https://go.microsoft.com/fwlink/?LinkId=99934).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Optional: <strong>Defender</strong> definitions</p></td>
<td align="left"><p>The latest definitions for <strong>Defender</strong> are required when you run <strong>Defender</strong>. Although you can download the definitions when you run <strong>Defender</strong>, we recommend that you download the latest definitions at the time you create the DaRT recovery image so that you can still run the tool with the latest definitions even if the problem computer does not have network connectivity.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Optional: Windows symbols files for use with <strong>Crash Analyzer</strong></p></td>
<td align="left"><p>Typically, debugging information is stored in a symbol file that is separate from the program. You must have access to the symbol information when you debug an application that has stopped responding, for example, if it stopped working. For more information, see [Diagnosing System Failures with Crash Analyzer](diagnosing-system-failures-with-crash-analyzer--dart-8.md).</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Planning to Deploy DaRT 8.0](planning-to-deploy-dart-80-dart-8.md)

 

 





