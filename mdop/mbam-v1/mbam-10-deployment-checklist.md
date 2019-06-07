---
title: MBAM 1.0 Deployment Checklist
description: MBAM 1.0 Deployment Checklist
author: msfttracyp
ms.assetid: 7e00be23-36a0-4b0f-8663-3c4f2c71546d
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# MBAM 1.0 Deployment Checklist


This checklist is designed to facilitate your deployment of Microsoft BitLocker Administration and Monitoring (MBAM).

**Note**  
This checklist outlines the recommended steps and provides a high-level list of items to consider when you deploy the MBAM features. We recommend that you copy this checklist into a spreadsheet program and customize it for your specific needs.



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left"></th>
<th align="left">Task</th>
<th align="left">References</th>
<th align="left">Notes</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Complete the planning phase to prepare the computing environment for MBAM deployment.</p></td>
<td align="left"><p><a href="mbam-10-planning-checklist.md" data-raw-source="[MBAM 1.0 Planning Checklist](mbam-10-planning-checklist.md)">MBAM 1.0 Planning Checklist</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the information on MBAM supported configurations to make sure that your selected client and server computers are supported for MBAM feature installation.</p></td>
<td align="left"><p><a href="mbam-10-supported-configurations.md" data-raw-source="[MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md)">MBAM 1.0 Supported Configurations</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Run MBAM Setup to deploy MBAM Server features in the following order:</p>
<ol>
<li><p>Recovery and Hardware Database</p></li>
<li><p>Compliance Status Database</p></li>
<li><p>Compliance Audit and Reports</p></li>
<li><p>Administration and Monitoring Server</p></li>
<li><p>MBAM Group Policy Template</p></li>
</ol>
<div class="alert">
<strong>Note</strong><br/><p>Keep track of the names of the servers each feature is installed on. You will use this information throughout the installation process.</p>
</div>
<div>

</div></td>
<td align="left"><p><a href="deploying-the-mbam-10-server-infrastructure.md" data-raw-source="[Deploying the MBAM 1.0 Server Infrastructure](deploying-the-mbam-10-server-infrastructure.md)">Deploying the MBAM 1.0 Server Infrastructure</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Add Active Directory Domain Services security groups created during the planning phase to the appropriate local MBAM Server feature administrators groups on the appropriate servers.</p></td>
<td align="left"><p><a href="planning-for-mbam-10-administrator-roles.md" data-raw-source="[Planning for MBAM 1.0 Administrator Roles](planning-for-mbam-10-administrator-roles.md)">Planning for MBAM 1.0 Administrator Roles</a> and <a href="how-to-manage-mbam-administrator-roles-mbam-1.md" data-raw-source="[How to Manage MBAM Administrator Roles](how-to-manage-mbam-administrator-roles-mbam-1.md)">How to Manage MBAM Administrator Roles</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Create and deploy the required MBAM Group Policy Objects.</p></td>
<td align="left"><p><a href="deploying-mbam-10-group-policy-objects.md" data-raw-source="[Deploying MBAM 1.0 Group Policy Objects](deploying-mbam-10-group-policy-objects.md)">Deploying MBAM 1.0 Group Policy Objects</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Deploy the MBAM Client software.</p></td>
<td align="left"><p><a href="deploying-the-mbam-10-client.md" data-raw-source="[Deploying the MBAM 1.0 Client](deploying-the-mbam-10-client.md)">Deploying the MBAM 1.0 Client</a></p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>



## Related topics


[Deploying MBAM 1.0](deploying-mbam-10.md)









