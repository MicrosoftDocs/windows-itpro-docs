---
title: Document your application control management processes (Windows 10)
description: This planning topic describes the WDAC policy maintenance information to record for your design document.
ms.assetid: 6397f789-0e36-4933-9f86-f3f6489cf1fb
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# Document your application control management processes

**Applies to**
- Windows 10
- Windows Server

This planning topic describes the Windows Defender Application Control (WDAC) policy maintenance information to record for your design document.

## Record your findings

To complete this planning document, you should first complete the following steps:

3. [Select the types of rules to create](select-types-of-rules-to-create.md)
4. [Plan for WDAC policy management](plan-windows-defender-application-control-management.md)

The three key areas to determine for WDAC policy management are:

1.  Support policy

    Document the process that you will use for handling calls from users who have attempted to run a blocked app, and ensure that support personnel know recommended troubleshooting steps and escalation points for your policy.

2.  Event processing

    Document whether events will be collected in a central location, how that store will be archived, and whether the events will be processed for analysis.

3.  Policy maintenance

    Detail how rules will be added to the policy, in which Group Policy Object (GPO) the rules should be defined, and how to modify rules when apps are retired, updated, or added.

The following table contains the added sample data that was collected when determining how to maintain and manage WDAC policies.

<table style="width:100%;">
<colgroup>
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
<col width="11%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">Organizational unit</th>
<th align="left">Implement WDAC?</th>
<th align="left">Apps</th>
<th align="left">Installation path</th>
<th align="left">Use default rule or define new rule condition</th>
<th align="left">Allow or deny</th>
<th align="left">GPO name</th>
<th align="left">Support policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Teller-East and Teller-West</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Teller Software</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\Teller.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p>Tellers-WDACTellerRules</p></td>
<td align="left"><p>Web help</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p>
<p></p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Create a path exception to the default rule to exclude \Windows\Temp</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Help desk</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>HR-All</p></td>
<td align="left"><p>Yes</p></td>
<td align="left"><p>Check Payout</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Checkcut.exe</p></td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p>HR-WDACHRRules</p></td>
<td align="left"><p>Web help</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Time Sheet Organizer</p></td>
<td align="left"><p>C:\Program Files\Woodgrove\HR\Timesheet.exe</p></td>
<td align="left"><p>File is not signed; create a file hash condition</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Web help</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Internet Explorer 7</p></td>
<td align="left"><p>C:\Program Files\Internet Explorer&lt;/p&gt;</td>
<td align="left"><p>File is signed; create a publisher condition</p></td>
<td align="left"><p>Deny</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Web help</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Windows files</p></td>
<td align="left"><p>C:\Windows</p></td>
<td align="left"><p>Use the default rule for the Windows path</p></td>
<td align="left"><p>Allow</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Help desk</p></td>
</tr>
</tbody>
</table>
 
The following two tables illustrate examples of documenting considerations to maintain and manage WDAC policies.

**Event processing policy**

One discovery method for app usage is to use Audit mode. This will write events to the CodeIntegrity log, which can be managed and analyzed like other Windows logs. 

The following table is an example of what to consider and record.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">WDAC event collection location</th>
<th align="left">Archival policy</th>
<th align="left">Analyzed?</th>
<th align="left">Security policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Forwarded to: CodeIntegrity Event Repository on srvBT093</p></td>
<td align="left"><p>Standard</p></td>
<td align="left"><p>None</p></td>
<td align="left"><p>Standard</p></td>
</tr>
<tr class="even">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>DO NOT FORWARD. srvHR004</p></td>
<td align="left"><p>60 months</p></td>
<td align="left"><p>Yes, summary reports monthly to managers</p></td>
<td align="left"><p>Standard</p></td>
</tr>
</tbody>
</table>
 
<strong>Policy maintenance policy</strong>
When applications are identified and policies are created for application control, then you can begin documenting how you intend to update those policies.
The following table is an example of what to consider and record.
<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Business group</th>
<th align="left">Rule update policy</th>
<th align="left">Application decommission policy</th>
<th align="left">Application version policy</th>
<th align="left">Application deployment policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Bank Tellers</p></td>
<td align="left"><p>Planned: Monthly through business office triage</p>
<p>Emergency: Request through help desk</p></td>
<td align="left"><p>Through business office triage</p>
<p>30-day notice required</p></td>
<td align="left"><p>General policy: Keep past versions for 12 months</p>
<p>List policies for each application</p></td>
<td align="left"><p>Coordinated through business office</p>
<p>30-day notice required</p></td>
</tr>
<tr class="even">
<td align="left"><p>Human Resources</p></td>
<td align="left"><p>Planned: Monthly through HR triage</p>
<p>Emergency: Request through help desk</p></td>
<td align="left"><p>Through HR triage</p>
<p>30-day notice required</p></td>
<td align="left"><p>General policy: Keep past versions for 60 months</p>
<p>List policies for each application</p></td>
<td align="left"><p>Coordinated through HR</p>
<p>30-day notice required</p></td>
</tr>
</tbody>
</table>
 
## Next steps

After you determine your application control management strategy for each business group, [create your WDAC planning document](create-your-windows-defender-application-control-planning-document.md).
