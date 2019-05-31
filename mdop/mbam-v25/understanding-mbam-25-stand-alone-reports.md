---
title: Understanding MBAM 2.5 Stand-alone Reports
description: Understanding MBAM 2.5 Stand-alone Reports
author: dansimp
ms.assetid: 78b5aaf4-8257-4722-8eb9-e0de48db6a11
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Understanding MBAM 2.5 Stand-alone Reports


This topic describes the reports that are available when you are running Microsoft BitLocker Administration and Monitoring (MBAM) in the Stand-alone topology.

**Note**  
If you are running MBAM with the Configuration Manager Integration topology, you generate reports from Configuration Manager rather than from MBAM. See [Viewing MBAM 2.5 Reports for the Configuration Manager Integration Topology](viewing-mbam-25-reports-for-the-configuration-manager-integration-topology.md) for more information about these reports.

 

## Understanding the MBAM Stand-alone topology reports


MBAM provides three report types that you can use to monitor your organization for BitLocker compliance:

-   [Enterprise Compliance Report](#bkmk-enterprisecompliance)

-   [Computer Compliance Report](#bkmk-compliance)

-   [Recovery Audit Report](#bkmk-recovery)

To access MBAM reports when you are running MBAM in the Stand-alone topology, open a web browser, and then open the Administration and Monitoring Website. Select **Reports** in the left menu bar. From the top menu bar, select the kind of report that you want to generate. For more information about generating these reports, see [Generating MBAM 2.5 Stand-alone Reports](generating-mbam-25-stand-alone-reports.md).

### <a href="" id="bkmk-enterprisecompliance"></a>Enterprise Compliance Report

Use this report type to collect information about overall BitLocker compliance in your organization. You can use filters to narrow your search results to learn more about the compliance state and error status of computers in your organization.

**Enterprise Compliance Overview**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Column Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Managed Computers</p></td>
<td align="left"><p>Number of computers that MBAM manages.</p></td>
</tr>
<tr class="even">
<td align="left"><p>% Compliant</p></td>
<td align="left"><p>Percentage of compliant computers in the enterprise.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>% Non-Compliant</p></td>
<td align="left"><p>Percentage of non-compliant computers in the enterprise.</p></td>
</tr>
<tr class="even">
<td align="left"><p>% Exempt</p></td>
<td align="left"><p>Percentage of computers exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>% Non-Exempt</p></td>
<td align="left"><p>Percentage of computers not exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Percentage of compliant computers in the enterprise.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Non-Compliant</p></td>
<td align="left"><p>Percentage of non-compliant computers in the enterprise.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Exempt</p></td>
<td align="left"><p>Total computers that are exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Non-Exempt</p></td>
<td align="left"><p>Total computers that are not exempt from the BitLocker encryption requirement.</p></td>
</tr>
</tbody>
</table>

 

**Enterprise Compliance Computer Details**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Column Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Computer Name</p></td>
<td align="left"><p>User-specified DNS name that is managed by MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Name</p></td>
<td align="left"><p>Fully qualified domain name where the client computer resides and is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>State of compliance for the computer, according to the policy specified for the computer. The states are Noncompliant and Compliant. See the following Enterprise Compliance Report Compliance States table for more information about how to interpret compliance states.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>Status that indicates whether this computer is exempt from the BitLocker policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages about the compliance state of the computer in accordance to the policy specified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time when the computer last contacted the server to report compliance status. The contact frequency is configurable. For more information, see the MBAM Group Policy settings.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-compliance"></a>Computer Compliance Report

Use this report type to collect information that is specific to a computer or user.

View this report by clicking the computer name in the Enterprise Compliance Report, or by typing the computer name in the Computer Compliance Report. This report shows detailed encryption information about each drive (operating system and fixed data drives) on a computer. It also indicates the policy that is applied to each drive type on the computer. To view the details of each drive, expand the Computer Name entry.

**Note**  
Removable Data Volume encryption status is not shown in this report.

 

**Computer Compliance Report Fields**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Column Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Computer Name</p></td>
<td align="left"><p>User-specified DNS computer name that is managed by MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Name</p></td>
<td align="left"><p>Fully qualified domain name where the client computer resides and is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Computer Type</p></td>
<td align="left"><p>Type of computer. Valid types are Non-Portable and Portable.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System</p></td>
<td align="left"><p>Operating system type found on the client computer that is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>Overall compliance status of the computer that is managed by MBAM. Valid states are Compliant and Noncompliant.</p>
<p>Notice that the compliance status per drive (see the following table) may indicate different compliance states. However, this field represents that compliance state, according to the specified policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy Cipher Strength</p></td>
<td align="left"><p>Cipher strength selected by the administrator during MBAM policy specification (for example, 128-bit with diffuser).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy Operating System Drive</p></td>
<td align="left"><p>Indicates if encryption is required for the operating system and shows the appropriate protector type.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy-Fixed Data Drive</p></td>
<td align="left"><p>Indicates if encryption is required for the fixed data drive.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy Removable Data Drive</p></td>
<td align="left"><p>Indicates if encryption is required for the removable drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Device Users</p></td>
<td align="left"><p>Known users on the computer that is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>Status that indicates whether this computer is exempt from the BitLocker policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Manufacturer</p></td>
<td align="left"><p>Computer manufacturer name, as it appears in the computer BIOS.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Model</p></td>
<td align="left"><p>Computer manufacturer model name, as it appears in the computer BIOS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages about the compliance state of the computer, in accordance with the specified policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time that the computer last contacted the server to report compliance status. The contact frequency is configurable. For more information, see the MBAM Group Policy settings.</p></td>
</tr>
</tbody>
</table>

 

**Computer Compliance Report Drive Fields**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Column Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Drive Letter</p></td>
<td align="left"><p>Computer drive letter that was assigned to the particular drive by the user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Drive Type</p></td>
<td align="left"><p>Type of drive. Valid values are Operating System Drive and Fixed Data Drive. These are physical drives rather than logical volumes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Cipher Strength</p></td>
<td align="left"><p>Cipher strength selected by the administrator during MBAM policy specification.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Protector Type</p></td>
<td align="left"><p>Type of protector selected through the Group Policy setting used to encrypt an operating system or fixed data volume.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Protector State</p></td>
<td align="left"><p>Indicates that the computer being managed by MBAM has enabled the protector type that is specified in the policy. The valid states are ON or OFF.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Encryption State</p></td>
<td align="left"><p>Encryption state of the drive. Valid states are Encrypted, Not Encrypted, and Encrypting.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>State that indicates whether the drive is in accordance with the policy. States are Noncompliant and Compliant.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages of the compliance state of the computer, according to the specified policy.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-recovery"></a>Recovery Audit Report

Use this report type to audit users who have requested access to BitLocker recovery keys. The report offers several filters based on the desired filtering criteria. You can filter on a specific type of user (a Help Desk user or an end user), whether the request failed or was successful, the specific type of key requested, and a date range during which the retrieval occurred.

**Recovery Audit Report Fields**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Column Name</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Request Date and Time</p></td>
<td align="left"><p>Date and time that a key retrieval request was made by an end user or Help Desk user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Audit Request Source</p></td>
<td align="left"><p>The site from which the request was initiated. This entry will have one of two values: <strong>Self-Service Portal</strong> or <strong>Helpdesk</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Request Status</p></td>
<td align="left"><p>Status of the request. Valid statuses are Successful (the key was retrieved), or Failed (the key was not retrieved).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Helpdesk User</p></td>
<td align="left"><p>Help Desk user who initiated the request for key retrieval.</p>
<div class="alert">
<strong>Note</strong>  
<p>If an Advanced Helpdesk User recovers the key without specifying the end user, the <strong>End User</strong> field will be blank. A standard Helpdesk User must specify the end user, and that user will appear in this field.</p>
<p>A recovery via the Self-Service Portal will list the requesting end user both in this field and in the <strong>End User</strong> field.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left"><p>End User</p></td>
<td align="left"><p>End user who initiated the request for key retrieval.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Computer</p></td>
<td align="left"><p>Computer name of the computer that was recovered.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Key Type</p></td>
<td align="left"><p>Type of key that was requested by the Help Desk user or the end user. The three types of keys that MBAM collects are:</p>
<ul>
<li><p>Recovery Key Password (used to recover a computer in recovery mode)</p></li>
<li><p>Recovery Key ID (used to recover a computer in recovery mode on behalf of another user)</p></li>
<li><p>TPM Password Hash (used to recover a computer with a locked TPM)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Reason Description</p></td>
<td align="left"><p>Reason the specified key type was requested by the Help Desk user or the end user. The reasons are specified in the Drive Recovery and Manage TPM features of the Administration and Monitoring Website. The valid entries are user-entered text or one of the following reason codes:</p>
<ul>
<li><p>Operating System Boot Order changed</p></li>
<li><p>BIOS Changed</p></li>
<li><p>Operating System files changed</p></li>
<li><p>Lost Startup key</p></li>
<li><p>Lost PIN</p></li>
<li><p>TPM Reset</p></li>
<li><p>Lost Passphrase</p></li>
<li><p>Lost Smartcard</p></li>
<li><p>Reset PIN lockout</p></li>
<li><p>Turn on TPM</p></li>
<li><p>Turn off TPM</p></li>
<li><p>Change TPM password</p></li>
<li><p>Clear TPM</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**Note**  
Report results can be saved to a file by clicking the **Export** button on the **Reports** menu bar.

 


## Related topics


[Monitoring and Reporting BitLocker Compliance with MBAM 2.5](monitoring-and-reporting-bitlocker-compliance-with-mbam-25.md)

[Generating MBAM 2.5 Stand-alone Reports](generating-mbam-25-stand-alone-reports.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





