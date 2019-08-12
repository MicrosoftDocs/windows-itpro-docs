---
title: Understanding MBAM Reports
description: Understanding MBAM Reports
author: dansimp
ms.assetid: 8778f333-760e-4f26-acb4-4e73b6fbb536
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Understanding MBAM Reports


If you chose the Stand-alone topology when you installed Microsoft BitLocker Administration and Monitoring (MBAM), you can run different reports in MBAM to monitor BitLocker usage and compliance. MBAM reports compliance and other information about all of the computers and devices it manages. The information in this topic can be used to help you understand the Microsoft BitLocker Administration and Monitoring reports for enterprise and individual computer compliance and for key recovery activity.

**Note**  
If you chose the Configuration Manager topology when you installed Microsoft BitLocker Administration and Monitoring (MBAM), reports are generated from Configuration Manager rather than from MBAM. For more information about reports that are run from Configuration Manager, see [Understanding MBAM Reports in Configuration Manager](understanding-mbam-reports-in-configuration-manager.md).

 

## Understanding Reports


To access the Reports feature of Microsoft BitLocker Administration and Monitoring, open a web browser and open the Administration and Monitoring website. Select **Reports** in the left menu bar and then select from the top menu bar the kind of report that you want to generate.

### Enterprise Compliance Report

Use this report type to collect information on overall BitLocker compliance in your organization. You can use different filters to narrow your search results to Compliance state and Error status. The report information is updated every six hours.

**Enterprise Compliance Report Fields**

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
<td align="left"><p>User-specified DNS name that is being managed by MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Name</p></td>
<td align="left"><p>Fully qualified domain name where the client computer resides and is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>State of compliance for the computer, according to the policy specified for the computer. The states are Noncompliant and Compliant. See the Enterprise Compliance Report Compliance States table for more information about how to interpret compliance states.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages of the compliance state of the computer in accordance to the policy specified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time when the computer last contacted the server to report compliance status. The contact frequency is configurable (see MBAM policy settings).</p></td>
</tr>
</tbody>
</table>

 

**Enterprise Compliance Report Compliance States**

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Compliance Status</th>
<th align="left">Exemption</th>
<th align="left">Description</th>
<th align="left">User Action</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Noncompliant</p></td>
<td align="left"><p>Not Exempt</p></td>
<td align="left"><p>The computer is noncompliant, according to the specified policy.</p></td>
<td align="left"><p>Expand the Computer Compliance Report details by clicking <strong>Computer Name</strong>, and determine whether the state of each drive complies with the specified policy. If the encryption state indicates that the computer is not encrypted, encryption may be in process, or there is an error on the computer. If there is no error, the likely cause is that the computer is still in the process of connecting or establishing the encryption status. Check back later to determine if the state changes.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Not Exempt</p></td>
<td align="left"><p>The computer is compliant, according to the specified policy.</p></td>
<td align="left"><p>No action needed; the state of the computer can be confirmed by viewing the Computer Compliance Report.</p></td>
</tr>
</tbody>
</table>

 

### Computer Compliance Report

Use this report type to collect information that is specific to a computer or user.

This report can be viewed by clicking the computer name in the Enterprise Compliance Report, or by typing the computer name in the Computer Compliance Report. The Computer Compliance Report provides detailed encryption information about each drive (operating system and fixed data drives) on a computer, and also an indication of the policy that is applied to each drive type on the computer. To view the details of each drive, expand the Computer Name entry.

**Note**  
Removable Data Volume encryption status will not be shown in the report.

 

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
<td align="left"><p>User-specified DNS computer name that is being managed by MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Name</p></td>
<td align="left"><p>Fully qualified domain name, where the client computer resides and is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Computer Type</p></td>
<td align="left"><p>Type of computer. Valid types are non-Portable and Portable.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System</p></td>
<td align="left"><p>Operating system type found on the MBAM-managed client computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>Overall compliance status of the computer managed by MBAM. Valid states are Compliant and Noncompliant. Notice that the compliance status per drive (see the following table) may indicate different compliance states. However, this field represents that compliance state, according to the specified policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy Cipher Strength</p></td>
<td align="left"><p>Cipher strength selected by the administrator during MBAM policy specification (for example, 128-bit with Diffuser).</p></td>
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
<td align="left"><p>Known users on the computer that is being managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Manufacturer</p></td>
<td align="left"><p>Computer manufacturer name, as it appears in the computer BIOS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Model</p></td>
<td align="left"><p>Computer manufacturer model name, as it appears in the computer BIOS.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages of the compliance state of the computer, in accordance with the specified policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time that the computer last contacted the server to report compliance status. The contact frequency is configurable (see MBAM policy settings).</p></td>
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
<td align="left"><p>Type of protector selected via the policy used to encrypt an operating system or fixed data volume.</p></td>
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

 

### Recovery Audit Report

Use this report type to audit users who have requested access to recovery keys. The report offers several filters based on the desired filtering criteria. Users can filter on a specific type of user, either a Help Desk user or an end user, whether the request failed or was successful, the specific type of key requested, and a date range during which the retrieval occurred. The administrator can produce contextual reports based on need.

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
<td align="left"><p>Request Status</p></td>
<td align="left"><p>Status of the request. Valid statuses are either Successful (the key was retrieved), or Failed (the key was not retrieved).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Helpdesk User</p></td>
<td align="left"><p>Help Desk user that initiated the request for key retrieval. Note: If the Help Desk user retrieves the key on behalf on an end-user, the End User field will be blank.</p></td>
</tr>
<tr class="even">
<td align="left"><p>User</p></td>
<td align="left"><p>End user who initiated the request for key retrieval.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Key Type</p></td>
<td align="left"><p>Type of key that was requested by either the Help Desk user or the end user. The three types of keys that MBAM collects are: Recovery Key Password (used to recovery a computer in recovery mode), Recovery Key ID (used to recover a computer in recovery mode on behalf of another user), and TPM Password Hash (used to recover a computer with a locked TPM).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Reason Description</p></td>
<td align="left"><p>Reason the specified Key Type was requested by the Help Desk user or the end user. The reasons are specified in the Drive Recovery and Manage TPM features of the Administration and Monitoring website. The valid entries are either user-entered text, or one of the following reason codes:</p>
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
Report results can be saved to a file by clicking the **Export** button on the reports menu bar. For more information about how to run MBAM reports, see [How to Generate MBAM Reports](how-to-generate-mbam-reports-mbam-2.md).

 

## Related topics


[Monitoring and Reporting BitLocker Compliance with MBAM 2.0](monitoring-and-reporting-bitlocker-compliance-with-mbam-20-mbam-2.md)

 

 





