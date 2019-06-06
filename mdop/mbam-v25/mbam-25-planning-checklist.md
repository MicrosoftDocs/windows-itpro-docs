---
title: MBAM 2.5 Planning Checklist
description: MBAM 2.5 Planning Checklist
author: dansimp
ms.assetid: ffe11eb8-44db-4886-8300-6dffec8bcfa4
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# MBAM 2.5 Planning Checklist


You can use the following checklists to help you prepare your computing environment for the Microsoft BitLocker Administration and Monitoring (MBAM) deployment. The checklists provide a high-level list of items to consider when planning the deployment. There are separate checklists for the Stand-alone topology and the Configuration Manager Integration topology. You might want to copy the desired checklist into a spreadsheet and customize it for your use.

**Planning checklist for an MBAM deployment**

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
<td align="left"><p>Review the &quot;Getting started&quot; information to understand the product before you start deployment planning.</p></td>
<td align="left"><p>[Getting Started with MBAM 2.5](getting-started-with-mbam-25.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the recommended high-level architecture for an MBAM deployment. You might also want to review an illustration and description of the individual parts (databases, websites, Reports) of an MBAM deployment.</p></td>
<td align="left"><p>[High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md)</p>
<p>[Illustrated Features of an MBAM 2.5 Deployment](illustrated-features-of-an-mbam-25-deployment.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review and complete the prerequisites for the MBAM Stand-alone and Configuration Manager Integration topologies.</p></td>
<td align="left"><p>[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>If you plan to use the Configuration Manager Integration topology, complete the additional prerequisites that apply only to this topology.</p></td>
<td align="left"><p>[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review and meet the MBAM 2.5 prerequisites for the MBAM Client.</p></td>
<td align="left"><p>[Prerequisites for MBAM 2.5 Clients](prerequisites-for-mbam-25-clients.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Plan for and configure MBAM Group Policy requirements.</p></td>
<td align="left"><p>[Planning for MBAM 2.5 Group Policy Requirements](planning-for-mbam-25-group-policy-requirements.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Plan for and create the necessary Active Directory Domain Services security groups.</p></td>
<td align="left"><p>[Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Plan how you will secure the MBAM websites.</p></td>
<td align="left"><p>[Planning How to Secure the MBAM Websites](planning-how-to-secure-the-mbam-websites.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the MBAM Supported Configurations to ensure that your hardware meets the installation system requirements.</p></td>
<td align="left"><p>[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the considerations for deploying the MBAM Server features.</p></td>
<td align="left"><p>[Planning for MBAM 2.5 Server Deployment](planning-for-mbam-25-server-deployment.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the considerations for deploying the MBAM Client.</p></td>
<td align="left"><p>[Planning for MBAM 2.5 Client Deployment](planning-for-mbam-25-client-deployment.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the requirements and steps to deploy MBAM in a highly available configuration.</p></td>
<td align="left"><p>[Planning for MBAM 2.5 High Availability](planning-for-mbam-25-high-availability.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the MBAM security considerations that pertain to the Trusted Platform Module, log files, and transparent data encryption.</p></td>
<td align="left"><p>[MBAM 2.5 Security Considerations](mbam-25-security-considerations.md)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Optionally, review the steps to evaluate MBAM in a test environment.</p></td>
<td align="left"><p>[Evaluating MBAM 2.5 in a Test Environment](evaluating-mbam-25-in-a-test-environment.md)</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 


## Related topics


[Planning for MBAM 2.5](planning-for-mbam-25.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




