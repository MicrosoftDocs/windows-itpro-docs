---
title: How to Allow Only Administrators to Enable Connection Groups
description: How to Allow Only Administrators to Enable Connection Groups
author: dansimp
ms.assetid: 42ca3157-5d85-467b-a148-09404f8f737a
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Allow Only Administrators to Enable Connection Groups


You can configure the App-V client so that only administrators (not end users) can enable or disable connection groups. In earlier versions of App-V, you could not prevent end users from performing these tasks.

**Note**  
**This feature is supported starting in App-V 5.0 SP3.**

 

Use one of the following methods to allow only administrators to enable or disable connection groups.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Method</th>
<th align="left">Steps</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Group Policy setting</p></td>
<td align="left"><p>Enable the “Require publish as administrator” Group Policy setting, which is located in the following Group Policy Object node:</p>
<p><strong>Computer Configuration &gt; Policies &gt; Administrative Templates &gt; System &gt; App-V &gt; Publishing</strong></p></td>
</tr>
<tr class="even">
<td align="left"><p>PowerShell cmdlet</p></td>
<td align="left"><p>Run the <strong>Set-AppvClientConfiguration</strong> cmdlet with the <strong>–RequirePublishAsAdmin</strong> parameter.</p>
<p>Parameter values:</p>
<ul>
<li><p>0 - False</p></li>
<li><p>1 - True</p></li>
</ul>
<p><strong>Example:</strong>: Set-AppvClientConfiguration –RequirePublishAsAdmin1</p></td>
</tr>
</tbody>
</table>

 

**Got a suggestion for App-V**? Add or vote on suggestions [here](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization). **Got an App-V issue?** Use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopappv).

## Related topics


[Managing Connection Groups](managing-connection-groups51.md)

 

 





