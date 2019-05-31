---
title: Understanding MBAM Reports
description: Understanding MBAM Reports
author: msfttracyp
ms.assetid: 34e4aaeb-7f89-41a1-b816-c6fe8397b060
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# Understanding MBAM Reports


Microsoft BitLocker Administration and Monitoring (MBAM) generates various reports to monitor BitLocker usage and compliance. This topic describes the MBAM reports for enterprise compliance, individual computers, hardware compatibility, and key recovery activity.

## Understanding Reports


To access the Reports feature of MBAM, open the MBAM administration website. Select **Reports** in the navigation pane. Then, in the main content pane, click the tab for your report type: **Enterprise Compliance Report**, **Computer Compliance Report**, **Hardware Audit Report**, or **Recovery Audit Report**.

### Enterprise Compliance Report

An Enterprise Compliance Report provides information on overall BitLocker compliance in your organization. The available filters for this report allow you to narrow your search results according to Compliance state and Error status. This report runs every six hours.

**Enterprise Compliance Report fields**

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
<td align="left"><p>The user-specified DNS name that is being managed by MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Name</p></td>
<td align="left"><p>The fully qualified domain name where the client computer resides and is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>The state of compliance for the computer, according to the policy specified for the computer. The possible states are Noncompliant and Compliant. For more information, see Enterprise Compliance Report Compliance States in this topic.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>The state of the computer hardware for determining the identification of the hardware type and whether the computer is exempt from policy. There are three possible states: Hardware Unknown (the hardware type has not been identified by MBAM), Hardware Exempt (the hardware type was identified and was marked as exempt from MBAM policy), and Not Exempt (the hardware was identified and is not exempt from policy).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Device Users</p></td>
<td align="left"><p>Known users on the computer that is being managed by MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages about the compliance state of the computer in accordance to the specified policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time when the computer last contacted the server to report compliance status. This time is configurable. See MBAM policy settings.</p></td>
</tr>
</tbody>
</table>

 

**Enterprise Compliance Report Compliance states**

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
<td align="left"><p>The computer is noncompliant according to the specified policy, and the hardware type has not been indicated as exempt from policy.</p></td>
<td align="left"><p>Click <strong>Computer Name</strong> to expand the Computer Compliance Report and determine whether the state of each drive complies with the specified policy. If the encryption state indicates that the computer is not encrypted, encryption might still be in process, or there might be an error on the computer. If there is no error, the likely cause is that the computer is still in the process of connecting or establishing the encryption status. Check back later to determine if the state changes.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Not Exempt</p></td>
<td align="left"><p>The computer is compliant in accordance with the specified policy.</p></td>
<td align="left"><p>No Action needed. Optionally, you can view the Computer Compliance Report to confirm the state of the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Hardware Exempt</p></td>
<td align="left"><p>If the Hardware type is exempt. Regardless of how the policy is set or the individual status of each hard-drive, the overall state is considered to be compliant.</p></td>
<td align="left"><p>No action needed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Hardware Unknown</p></td>
<td align="left"><p>MBAM recognizes the hardware type, but MBAM does not know whether it is exempt or not exempt. This occurs if the administrator has not set the Compatible status for the hardware. Therefore, MBAM reverts to Compliant status by default.</p></td>
<td align="left"><p>This is the initial state of a newly deployed MBAM client. It is typically only a transient state. Even if the administrator has marked the Hardware as Compatible, there can be a significant delay or configurable wait time before the client computer reports back in. Make note of the time of Last Contact, and check in again after the specified interval to see if the state has changed. If the state has not changed, there may be an error for this computer or hardware type.</p></td>
</tr>
</tbody>
</table>

 

### Computer Compliance Report

The Computer Compliance Report displays information that is specific to a computer or user.

The Computer Compliance Report provides detailed encryption information and applicable policies for each drive on a computer, including operating system drives and fixed data drives. To view this report type, click the computer name in the Enterprise Compliance Report or type the computer name in the Computer Compliance Report. To view the details of each drive, expand the Computer Name entry.

**Note**  
This report does not provide encryption status for Removable Data Volumes.

 

**Computer Compliance Report fields**

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
<td align="left"><p>The user-specified DNS computer name that is being managed by MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain Name</p></td>
<td align="left"><p>The fully qualified domain name where the client computer resides and is managed by MBAM.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Computer Type</p></td>
<td align="left"><p>The portability type of computer. Valid types are non-Portable and Portable.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System</p></td>
<td align="left"><p>Operating System type installed on the MBAM managed client computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>The overall Compliance Status of the computer managed by MBAM. Valid states are Compliant and Noncompliant. While it is possible to have Compliant and Noncompliant drives in the same computer, this field indicates the overall computer compliance per specified policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy Cypher Strength</p></td>
<td align="left"><p>The Cipher Strength selected by the Administrator during MBAM policy specification. For example, 128-bit with Diffuser</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy Operating System Drive</p></td>
<td align="left"><p>Indicates whether encryption is required for the O/S and the protector type as applicable.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy Fixed Data Drive</p></td>
<td align="left"><p>Indicates whether encryption is required for the Fixed Drive.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy Removable Data Drive</p></td>
<td align="left"><p>Indicates whether encryption is required for the Removable Drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Device Users</p></td>
<td align="left"><p>Provides the identity of known users on the computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>Indicates whether the computer hardware type is recognized by MBAM and, if known, whether the computer has been indicated as exempt from policy. There are three states: Hardware Unknown (the hardware type has not been identified by MBAM); Hardware Exempt (the hardware type was identified and was marked as exempt from MBAM policy); and Not Exempt (the hardware was identified and is not exempt from policy).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Manufacturer</p></td>
<td align="left"><p>The computer manufacturer name as it appears in the computer BIOS.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Model</p></td>
<td align="left"><p>The computer manufacturer model name as it appears in the computer BIOS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages of the compliance state of the computer in accordance with the specified policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time that the computer last contacted the server to report compliance status. T</p></td>
</tr>
</tbody>
</table>

 

**Computer Compliance Report Drive fields**

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
<td align="left"><p>Computer drive letter that was assigned to this particular drive by the user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Drive Type</p></td>
<td align="left"><p>Type of drive. Valid values are Operating System Drive and Fixed Data Drive. These are physical drives rather than logical volumes.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Cypher Strength</p></td>
<td align="left"><p>Cipher Strength selected by the Administrator during MBAM policy specification.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Protector Type</p></td>
<td align="left"><p>Type of protector selected via policy used to encrypt an operating system or Fixed volume. The valid protector types on an operating system drive are TPM or TPM+PIN. The only valid protector type for a Fixed Data Volume is Password.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Protector State</p></td>
<td align="left"><p>This field indicates whether the computer has enabled the protector type specified in the policy. The valid states are ON or OFF.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Encryption State</p></td>
<td align="left"><p>This is the current encryption state of the drive. Valid states are Encrypted, Not Encrypted, and Encrypting.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>Indicates whether the drive is in accordance with the policy. States are Noncompliant and Compliant.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Contains error and status messages regarding the compliance state of the computer.</p></td>
</tr>
</tbody>
</table>

 

### Hardware Audit Report

This report can help you audit changes to the Hardware Compatibility status of specific computer makes and models. To help you narrow your search results, this report includes filtering on criteria such as type of change and time of occurrence. Each state change is tracked by user and date and time. The Hardware Type is automatically populated by the MBAM agent that runs on the client computer. This report tracks user changes to the information collected directly from the MBAM managed computer. A typical administrative change is changing from Compatible to incompatible. However, the administrator can also revise any field.

**Hardware Audit Report fields**

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
<td align="left"><p>Date and Time</p></td>
<td align="left"><p>Date and time that a change was made to the Hardware Type. Note that every unique hardware type is assigned to at least one entry.</p></td>
</tr>
<tr class="even">
<td align="left"><p>User</p></td>
<td align="left"><p>Administrative user that has made the change for the particular entry.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Change Type</p></td>
<td align="left"><p>Type of change that was made to the hardware type information. Valid values are Addition (new entry), Update (change existing entry), or Deletion (remove existing entry).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Original Value</p></td>
<td align="left"><p>Value of the hardware type specification before the change was made.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Current Value</p></td>
<td align="left"><p>Value of the hardware type specification after the change was made.</p></td>
</tr>
</tbody>
</table>

 

### Recovery Audit Report

The Recovery Audit Report can help you audit users who have requested access to recovery keys. The filter criteria for this report includes type of user making the request, type of key requested, time of occurrence, success or fail, time of occurrence, and type of user requesting (help desk, end user). This report enables administrators to produce contextual reports based on need.

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
<td align="left"><p>The date and time that a key retrieval request was made by an end user or help desk user.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Request Status</p></td>
<td align="left"><p>Status of the request. Valid statuses are either Successful (the key was retrieved) or Failed (the key was not retrieved).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Helpdesk User</p></td>
<td align="left"><p>The help desk user who initiated the request for key retrieval. If the help desk user retrieves the key on behalf of an end user, the End User field will be blank.</p></td>
</tr>
<tr class="even">
<td align="left"><p>User</p></td>
<td align="left"><p>The end user who initiated the request for key retrieval.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Key Type</p></td>
<td align="left"><p>The type of key that was requested. MBAM collects three key types: Recovery Key Password (to recovery a computer in recovery mode); Recovery Key ID (to recover a computer in recovery mode on behalf of another user); and Trusted Platform Module (TPM) Password Hash (to recover a computer with a locked TPM).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Reason Description</p></td>
<td align="left"><p>The reason that the specified Key Type was requested. The reasons are specified in the Drive Recovery and Manage TPM features of the Administrative web site. Valid entries include user-entered text or one of the following reason codes:</p>
<ul>
<li><p>Operating System Boot Order changed</p></li>
<li><p>BIOS changed</p></li>
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
</ul>
<p></p></td>
</tr>
</tbody>
</table>

 

**Note**  
To save report results to a file, click the **Export** button on the reports menu bar.

 

## Related topics


[Monitoring and Reporting BitLocker Compliance with MBAM 1.0](monitoring-and-reporting-bitlocker-compliance-with-mbam-10.md)

 

 





