---
title: Log Files for the Application Virtualization Sequencer
description: Log Files for the Application Virtualization Sequencer
author: dansimp
ms.assetid: 1a296544-eab4-46f9-82ce-3136f8b578af
ms.reviewer: 
manager: dansimp
ms.author: eravena
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Log Files for the Application Virtualization Sequencer


The log files for the Application Virtualization (App-V) Sequencer provide detailed information about sequencing applications, and they can be helpful when you are verifying functionality or when you are troubleshooting issues.

The following table provides information about the log files and their default locations, which are created when using the Sequencer.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Log File Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>sft-seq-log.txt</strong></p></td>
<td align="left"><p>Provides general information about sequencing an application. Use this log as a starting point for troubleshooting Sequencer errors.</p>
<p>Log file location: <em>%windir%\Microsoft Application Virtualization Sequencer\Logs</em></p>
<p>[Template Token Value] App-V 4.6 log file location: <em>%windir%\Program Files\Microsoft Application Virtualization Sequencer\Logs</em>[Template Token Value]</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>sftbt.txt</strong></p></td>
<td align="left"><p>Provides information about computer restart tasks that occur during the Sequencer’s simulated restart.</p>
<p>Log file location: <em>%windir%\Microsoft Application Virtualization Sequencer\Logs</em></p>
<p>[Template Token Value] App-V 4.6 log file location: <em>%windir%\Program Files\Microsoft Application Virtualization Sequencer\Logs</em>[Template Token Value]</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>SftCallBack.txt</strong></p></td>
<td align="left"><p>Provides general information about processes used during sequencing.</p>
<p>Log file location: <em>%windir%\Microsoft Application Virtualization Sequencer\Logs</em></p>
<p>[Template Token Value] App-V 4.6 log file location: <em>%windir%\Program Files\Microsoft Application Virtualization Sequencer\Logs</em>[Template Token Value]</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Application Virtualization Sequencer Reference](application-virtualization-sequencer-reference.md)

 

 





