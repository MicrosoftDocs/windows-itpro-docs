---
title: Viewing MBAM 2.5 Reports for the Configuration Manager Integration Topology
description: Viewing MBAM 2.5 Reports for the Configuration Manager Integration Topology
author: dansimp
ms.assetid: 60d11b2f-3a76-4023-8da4-f89e9f35b790
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Viewing MBAM 2.5 Reports for the Configuration Manager Integration Topology


This topic describes the reports that are available when you configure Microsoft BitLocker Administration and Monitoring (MBAM) with the Configuration Manager Integration topology. The reports show BitLocker compliance for the enterprise and for individual computers and devices that MBAM manages. The reports provide tabular information and charts, and they have filters that let you view data from different perspectives.

In the Configuration Manager Integration topology, you view reports from Configuration Manager rather than from the Administration and Monitoring Website, with the exception of the **Recovery Audit Report**, which you continue to view from the Administration and Monitoring Website.

For information about MBAM reports for the Stand-alone topology, see [Viewing MBAM 2.5 Reports for the Stand-alone Topology](viewing-mbam-25-reports-for-the-stand-alone-topology.md).

## Accessing reports in Configuration Manager


To access the Reports feature in Configuration Manager:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Version of Configuration Manager</th>
<th align="left">How to view the reports</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>System Center 2012 Configuration Manager</p></td>
<td align="left"><ol>
<li><p>In the left pane, select the <strong>Monitoring</strong> workspace.</p></li>
<li><p>In the tree, expand <strong>Overview</strong> &gt; <strong>Reporting</strong> &gt; <strong>Reports</strong> &gt; <strong>MBAM</strong>.</p></li>
<li><p>Select the folder that represents the language in which you want to view reports, and then select the report from the right pane.</p></li>
</ol></td>
</tr>
<tr class="even">
<td align="left"><p>Configuration Manager 2007</p></td>
<td align="left"><ol>
<li><p>In the left pane, expand <strong>Computer Management</strong> &gt; <strong>Reporting</strong> &gt; <strong>Reporting Services</strong> &gt; <strong>&lt;server name&gt;</strong> &gt; <strong>Report folders</strong> &gt; <strong>MBAM</strong>.</p></li>
<li><p>Select the folder that represents the language in which you want to view reports, and then select the report from the right pane.</p></li>
</ol></td>
</tr>
</tbody>
</table>

 

## Description of reports in Configuration Manager


There are a few minor differences in the reports for the Configuration Manager Integration topology and the Stand-alone topology. The following sections describe the data in the MBAM reports for the Configuration Manager Integration topology:

-   [BitLocker Enterprise Compliance Dashboard](#bkmk-dashboard)

-   [BitLocker Enterprise Compliance Details](#bkmk-compliancedetails)

-   [BitLocker Enterprise Compliance Summary](#bkmk-compliancesummary)

-   [BitLocker Computer Compliance Report](#bkmk-compliancereport)

### <a href="" id="bkmk-dashboard"></a>BitLocker Enterprise Compliance Dashboard

The BitLocker Enterprise Compliance Dashboard provides the following graphs, which show BitLocker compliance status across the enterprise:

-   Compliance Status Distribution

-   Non Compliant Errors Distribution

-   Compliance Status Distribution by Drive Type

**Compliance Status Distribution**

This pie chart shows compliance status for computers within the enterprise. It also shows the percentage of computers, compared to the total number of computers in the selected collection, that has that compliance status. The actual number of computers with each status is also shown. The pie chart shows the following compliance statuses:

-   Compliant

-   Non Compliant

-   User Exempt

-   Temporary User Exempt

-   Policy Not Enforced

-   Unknown. These computers reported a status error, or they are part of the collection, but have never reported their compliance status. The lack of a compliance status could occur if the computer is disconnected from the organization.

**Non Compliant Errors Distribution**

This pie chart shows the categories of computers in the enterprise that are not compliant with the BitLocker Drive Encryption policy, and shows the number of computers in each category. Each category percentage is calculated from the total number of non-compliant computers in the collection.

-   User postponed encryption

-   Unable to find compatible TPM

-   System partition not available or large enough

-   Policy conflict

-   Waiting for TPM auto provisioning

-   An unknown error has occurred

-   No information. These computers do not have the MBAM Client installed, or they have the MBAM Client installed but not activated (for example, the service is not working).

**Compliance Status Distribution by Drive Type**

This bar chart shows the current BitLocker compliance status by drive type. The statuses are **Compliant** and **Non Compliant**. Bars are shown for fixed data drives and operating system drives. Computers that do not have a fixed data drive are included and show a value only in the **Operating System Drive** bar. The chart does not include users who have been granted an exemption from the BitLocker Drive Encryption policy or the No Policy category.

### <a href="" id="bkmk-compliancedetails"></a>BitLocker Enterprise Compliance Details

This report shows information about the overall BitLocker compliance across your enterprise for the collection of computers that is targeted for BitLocker use.

**BitLocker Enterprise Compliance Details Fields**

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
<td align="left"><p>% Unknown Compliance</p></td>
<td align="left"><p>Percentage of computers with a compliance state that is not known.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>% Exempt</p></td>
<td align="left"><p>Percentage of computers exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="even">
<td align="left"><p>% Non-Exempt</p></td>
<td align="left"><p>Percentage of computers not exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Percentage of compliant computers in the enterprise.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Non-Compliant</p></td>
<td align="left"><p>Percentage of non-compliant computers in the enterprise.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Unknown Compliance</p></td>
<td align="left"><p>Percentage of computers with a compliance state that is not known.</p></td>
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

 

**BitLocker Enterprise Compliance Details States**

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Compliance Status</th>
<th align="left">Exemption</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Noncompliant</p></td>
<td align="left"><p>Not exempt</p></td>
<td align="left"><p>The computer is noncompliant, according to the specified policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Not exempt</p></td>
<td align="left"><p>The computer is compliant in accordance with the specified policy.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-compliancesummary"></a>BitLocker Enterprise Compliance Summary

Use this report type to show information about the overall BitLocker compliance across your enterprise and to show the compliance for individual computers that are in the collection of computers that is targeted for BitLocker use.

**BitLocker Enterprise Compliance Summary Fields**

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
<td align="left"><p>% Unknown Compliance</p></td>
<td align="left"><p>Percentage of computers with a compliance state that is not known.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>% Exempt</p></td>
<td align="left"><p>Percentage of computers exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="even">
<td align="left"><p>% Non-Exempt</p></td>
<td align="left"><p>Percentage of computers not exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Percentage of compliant computers in the enterprise.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Non-Compliant</p></td>
<td align="left"><p>Percentage of non-compliant computers in the enterprise.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Unknown Compliance</p></td>
<td align="left"><p>Percentage of computers with a compliance state that is not known.</p></td>
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

 

**BitLocker Enterprise Compliance Summary Computer Details**

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
<td align="left"><p>Compliance Status</p></td>
<td align="left"><p>Overall compliance status of the computer managed by MBAM. Valid states are Compliant and Noncompliant. Notice that the compliance status per drive (see the table that follows) may indicate different compliance states. However, this field represents that compliance state, in accordance with the policy specified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>Status that indicates whether the user is exempt or non-exempt from the BitLocker policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Device Users</p></td>
<td align="left"><p>User of the device.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages about the compliance state of the computer in accordance with the policy specified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time that the computer last contacted the server to report compliance status. The contact frequency is configurable through the Group Policy settings.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-compliancereport"></a>BitLocker Computer Compliance Report

Use this report type to collect information that is specific to a computer. The BitLocker Computer Compliance Report provides detailed encryption information about each drive on a computer (operating system and fixed data drives). It also provides an indication of the policy that is applied to each drive type on the computer. To view the details of each drive, expand the Computer Name entry.

**Note**  
The Removable Data Volume encryption status is not shown in this report.

 

**BitLocker Computer Compliance Report: Computer Details Fields**

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
<td align="left"><p>Type of computer. Valid types are Non-Portable and Portable.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System</p></td>
<td align="left"><p>Operating System type found on the MBAM managed client computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Overall Compliance</p></td>
<td align="left"><p>Overall compliance status of the computer managed by MBAM. Valid states are Compliant and Noncompliant. Notice that the compliance status per drive (see the table that follows) may indicate different compliance states. However, this field represents that compliance state in accordance with the policy specified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System Compliance</p></td>
<td align="left"><p>Compliance status of the operating system that is managed by MBAM. Valid states are Compliant and Noncompliant.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Fixed Data Drive Compliance</p></td>
<td align="left"><p>Compliance status of the fixed data drive that is managed by MBAM. Valid states are Compliant and Noncompliant.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Last Update Date</p></td>
<td align="left"><p>Date and time that the computer last contacted the server to report compliance status. The contact frequency is configurable through the Group Policy settings.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>Status that indicates whether the user is exempt or non-exempt from the BitLocker policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Exempted User</p></td>
<td align="left"><p>User who is exempt from the BitLocker policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exemption Date</p></td>
<td align="left"><p>Date on which the exemption was granted.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages about the compliance state of the computer in accordance with the policy specified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy Cipher Strength</p></td>
<td align="left"><p>Cipher strength selected by the Administrator during the MBAM policy specification (for example, 128-bit with diffuser).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy: Operating System Drive</p></td>
<td align="left"><p>Indicates if encryption is required for the operating system and the appropriate protector type.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy: Fixed Data Drive</p></td>
<td align="left"><p>Indicates if encryption is required for the fixed data drive.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Manufacturer</p></td>
<td align="left"><p>Computer manufacturer name as it appears in the computer BIOS.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Model</p></td>
<td align="left"><p>Computer manufacturer model name as it appears in the computer BIOS.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Device Users</p></td>
<td align="left"><p>Known users on the computer that is being managed by MBAM.</p></td>
</tr>
</tbody>
</table>

 

**BitLocker Computer Compliance Report: Computer Volume Fields**

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
<td align="left"><p>Cipher strength selected by the Administrator during MBAM policy specification.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Protector Types</p></td>
<td align="left"><p>Type of protector selected through the policy used to encrypt an operating system or fixed data drive. The valid protector types for an operating system are TPM or TPM+PIN. The valid protector type for a fixed data drive is a password.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Protector State</p></td>
<td align="left"><p>Indicates that the computer being managed by MBAM has enabled the protector type specified in the policy. The valid states are ON or OFF.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Encryption State</p></td>
<td align="left"><p>Encryption state of the drive. Valid states are Encrypted, Not Encrypted, and Encrypting.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Monitoring and Reporting BitLocker Compliance with MBAM 2.5](monitoring-and-reporting-bitlocker-compliance-with-mbam-25.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





