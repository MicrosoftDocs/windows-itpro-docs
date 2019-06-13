---
title: Planning to Deploy App-V 5.1 with an Electronic Software Distribution System
description: Planning to Deploy App-V 5.1 with an Electronic Software Distribution System
author: msfttracyp
ms.assetid: c26602c2-5e8d-44e6-90df-adacc593607e
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning to Deploy App-V 5.1 with an Electronic Software Distribution System


If you are using an electronic software distribution system to deploy App-V packages, review the following planning considerations. For information about using System Center Configuration Manager to deploy App-V, see [Introduction to Application Management in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=281816).

Review the following component and architecture requirements options that apply when you use an ESD to deploy App-V packages:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Deployment requirement or option</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>The App-V Management server, Management database, and Publishing server are not required.</p></td>
<td align="left"><p>These functions are handled by the implemented ESD solution.</p></td>
</tr>
<tr class="even">
<td align="left"><p>You can deploy the App-V Reporting server and Reporting database side by side with the ESD.</p></td>
<td align="left"><p>The side-by-side deployment lets you to collect data and generate reports.</p>
<p>If you enable the App-V client to send report information, and you are not using the App-V Reporting server, the reporting data is stored in associated .xml files.</p></td>
</tr>
</tbody>
</table>

 






## Related topics


[Planning to Deploy App-V](planning-to-deploy-app-v51.md)

 

 





