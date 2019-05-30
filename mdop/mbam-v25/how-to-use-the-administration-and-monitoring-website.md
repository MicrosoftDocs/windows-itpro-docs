---
title: How to Use the Administration and Monitoring Website
description: How to Use the Administration and Monitoring Website
author: dansimp
ms.assetid: bb96a4e8-d4f4-4e6f-b7db-82d96998bfa6
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Use the Administration and Monitoring Website


The Administration and Monitoring Website, also referred to as the Help Desk, is an administrative interface for BitLocker Drive Encryption. Use the website to review reports, recover end users’ drives, and manage end users’ TPMs, as described in the following sections.

**Note**  
If you are using MBAM in the Stand-alone topology, you view all reports from the Administration and Monitoring Website. If you are using the Configuration Manager Integration topology, you view all reports in Configuration Manager, except the Recovery Audit report, which you continue to view from the Administration and Monitoring Website. For more information about reports, see [Monitoring and Reporting BitLocker Compliance with MBAM 2.5](monitoring-and-reporting-bitlocker-compliance-with-mbam-25.md).

 

## Required roles for using the Administration and Monitoring Website


To access specific areas of the Administration and Monitoring Website, you must have one of the following roles, which are groups that you create in Active Directory. You can use any name for these groups.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Account</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>MBAM Advanced Helpdesk Users</p></td>
<td align="left"><p>Provides access to all areas of the Administration and Monitoring Website. Users who have this role enter only the recovery key, and not the end user’s domain and user name, when helping end users recover their drives. If a user is a member of both the MBAM Helpdesk Users group and the MBAM Advanced Helpdesk Users group, the MBAM Advanced Helpdesk Users group permissions override the MBAM Helpdesk Users Group permissions.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Helpdesk Users</p></td>
<td align="left"><p>Provides access to the Manage TPM and Drive Recovery areas of the Administration and Monitoring Website. Individuals who have this role must fill in all fields, including the end-user’s domain and account name, when they use either area.</p>
<p>If a user is a member of both the MBAM Helpdesk Users group and the MBAM Advanced Helpdesk Users group, the MBAM Advanced Helpdesk Users group permissions override the MBAM Helpdesk Users Group permissions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Report Users</p></td>
<td align="left"><p>Provides access to the reports in the <strong>Reports</strong> area of the Administration and Monitoring Website.</p></td>
</tr>
</tbody>
</table>

 

## Tasks you can perform on the Administration and Monitoring Website


The following table summarizes the tasks you can perform on the Administration and Monitoring Website and provides links to more information about each task.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Task</th>
<th align="left">Area of the Website where you access the task</th>
<th align="left">Description</th>
<th align="left">For more information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>View reports</p></td>
<td align="left"><p>Reports</p></td>
<td align="left"><p>Enables you to run reports to monitor BitLocker usage, compliance, and key recovery activity. Reports provide data about enterprise compliance, individual computers, and who requested recovery keys or the TPM OwnerAuth package for a specific computer.</p></td>
<td align="left"><p>[Viewing MBAM 2.5 Reports for the Stand-alone Topology](viewing-mbam-25-reports-for-the-stand-alone-topology.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Determine the BitLocker encryption status of lost or stolen computers</p></td>
<td align="left"><p>Reports</p></td>
<td align="left"><p>Determine if a volume was encrypted if the computer is lost or stolen.</p></td>
<td align="left"><p>[How to Determine BitLocker Encryption State of Lost Computers](how-to-determine-bitlocker-encryption-state-of-lost-computers-mbam-25.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Recover lost drives</p></td>
<td align="left"><p>Drive Recovery</p></td>
<td align="left"><p>Recover drives that are:</p>
<ul>
<li><p>In recovery mode</p></li>
<li><p>Have been moved</p></li>
<li><p>Are corrupted</p></li>
</ul></td>
<td align="left"><ul>
<li><p>[How to Recover a Drive in Recovery Mode](how-to-recover-a-drive-in-recovery-mode-mbam-25.md)</p></li>
<li><p>[How to Recover a Moved Drive](how-to-recover-a-moved-drive-mbam-25.md)</p></li>
<li><p>[How to Recover a Corrupted Drive](how-to-recover-a-corrupted-drive-mbam-25.md)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Reset a TPM lockout</p></td>
<td align="left"><p>Manage TPM</p></td>
<td align="left"><p>Provides access to TPM data that has been collected by the MBAM Client. In a TPM lockout, use the Administration and Monitoring Website to retrieve the necessary password file to unlock the TPM.</p></td>
<td align="left"><p>[How to Reset a TPM Lockout](how-to-reset-a-tpm-lockout-mbam-25.md)</p></td>
</tr>
</tbody>
</table>

 


## Related topics


[Performing BitLocker Management with MBAM 2.5](performing-bitlocker-management-with-mbam-25.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





