---
title: Understanding MBAM Reports in Configuration Manager
description: Understanding MBAM Reports in Configuration Manager
author: dansimp
ms.assetid: b2582190-c9de-4e64-bd5a-f31ac1916f53
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Understanding MBAM Reports in Configuration Manager


When Microsoft BitLocker Administration and Monitoring (MBAM) is installed with the Configuration Manager Integrated topology, the hardware compliance and reporting features are moved into the Configuration Manager infrastructure and out of MBAM. When you use the Configuration Manager topology, you run reports from Configuration Manager rather than from MBAM, except for the Recovery Audit Report, which you continue to access by using the Administration and Monitoring Website.

The reports for the Configuration Manager Integrated topology show BitLocker compliance for the enterprise and for individual computers and devices that MBAM manages. The reports provide both tabular information and charts, and enable you to filter reports to view data from different perspectives.

The information in this topic describes the MBAM reports that you run from Configuration Manager. For information about MBAM reports for the Stand-alone topology, see [Understanding MBAM Reports](understanding-mbam-reports-mbam-2.md).

## Accessing Reports in Configuration Manager


To access the Reports feature in Configuration Manager, open the **Configuration Manager console**. To display the list of available reports:

-   In Configuration Manager 2007, expand the **Computer Management** node, and then expand the **Reporting** node.

-   In System Center 2012 Configuration Manager, in the Monitoring workspace under **Overview**, expand the **Reporting** node and then click **Reports**.

### BitLocker Enterprise Compliance Dashboard

The BitLocker Enterprise Compliance Dashboard provides the following graphs, which show BitLocker compliance status across the enterprise:

-   Compliance Status Distribution

-   Non Compliant Errors Distribution

-   Compliance Status Distribution by Drive Type

**Compliance Status Distribution**

This pie chart shows computer compliance statuses within the enterprise, and shows the percentage of computers, compared to the total number of computers in the selected collection, that have that compliance status. The actual number of computers with each status is also shown. The pie chart shows the following compliance statuses:

-   Compliant

-   Non Compliant

-   User Exempt

-   Temporary User Exempt

-   Policy Not Enforced

-   Unknown -computers whose status was reported as an error, or devices that are part of the collection but have never reported their compliance status, for example, if they are disconnected from the organization

**Non Compliant Errors Distribution**

This pie chart shows the categories of computers in the enterprise that are not compliant with the BitLocker drive encryption policy, and shows the number of computers in each category. Each category percentage is calculated from the total number of non-compliant computers in the collection.

-   User postponed encryption

-   Unable to find compatible TPM

-   System Partition not available or large enough

-   Policy conflict

-   Waiting for TPM auto provisioning

-   An unknown error has occurred

-   No information – computers that do not have the MBAM Client installed, or that have the MBAM Client installed but not activated, for example, the service is not working

**Compliance Status Distribution by Drive Type**

This bar chart shows the current BitLocker compliance status by drive type. The statuses are “Compliant” and “Non Compliant.” Bars are shown for fixed data drives and operating system drives. Computers that do not have a fixed data drive are included and show a value only in the Operating System Drive bar. The chart does not include users who have been granted an exemption from the BitLocker drive encryption policy or the “No Policy” category.

### BitLocker Enterprise Compliance Details Report

This report shows information about the overall BitLocker compliance across your enterprise for the collection of computers that is targeted for BitLocker use.

**BitLocker Enterprise Compliance Details Report Fields**

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
<td align="left"><p>Percentage of computers whose compliance state is not known.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>% Exempt</p></td>
<td align="left"><p>Percentage of computers exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="even">
<td align="left"><p>% Non-Exempt</p></td>
<td align="left"><p>Percentage of computers exempt from the BitLocker encryption requirement.</p></td>
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
<td align="left"><p>Percentage of computers whose compliance state is not known.</p></td>
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

 

**BitLocker Enterprise Compliance Details Report - Compliance States**

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
<td align="left"><p>Not Exempt</p></td>
<td align="left"><p>The computer is noncompliant, according to the specified policy.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliant</p></td>
<td align="left"><p>Not Exempt</p></td>
<td align="left"><p>The computer is compliant in accordance with the specified policy.</p></td>
</tr>
</tbody>
</table>

 

### BitLocker Enterprise Compliance Summary Report

Use this report type to show information about the overall BitLocker compliance across your enterprise and to show the compliance for individual computers that are in the collection of computers that is targeted for BitLocker use.

**BitLocker Enterprise Compliance Summary Report Fields**

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
<td align="left"><p>Percentage of computers whose compliance state is not known.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>% Exempt</p></td>
<td align="left"><p>Percentage of computers exempt from the BitLocker encryption requirement.</p></td>
</tr>
<tr class="even">
<td align="left"><p>% Non-Exempt</p></td>
<td align="left"><p>Percentage of computers exempt from the BitLocker encryption requirement.</p></td>
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
<td align="left"><p>Percentage of computers whose compliance state is not known.</p></td>
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

 

**BitLocker Enterprise Compliance Summary Report - Computer Details**

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
<td align="left"><p>Overall Compliance Status of the computer managed by MBAM. Valid states are Compliant and Noncompliant. Notice that the compliance status per drive (see table that follows) may indicate different compliance states. However, this field represents that compliance state, in accordance with the policy specified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>Status that indicates whether the user is exempt or non-exemption from the BitLocker policy.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Device Users</p></td>
<td align="left"><p>User of the device.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance Status Details</p></td>
<td align="left"><p>Error and status messages of the compliance state of the computer in accordance to the policy specified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Last Contact</p></td>
<td align="left"><p>Date and time that the computer last contacted the server to report compliance status. The contact frequency is configurable (see MBAM policy settings).</p></td>
</tr>
</tbody>
</table>

 

### BitLocker Computer Compliance Report

Use this report type to collect information that is specific to a computer. The Computer Compliance Report provides detailed encryption information about each drive (Operating System and Fixed data drives) on a computer, and also an indication of the policy that is applied to each drive type on the computer. To view the details of each drive, expand the Computer Name entry.

**Note**  
Removable Data Volume encryption status is not shown in the report.

 

**BitLocker Computer Compliance Report – Computer Details Fields**

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
<td align="left"><p>Operating System type found on the MBAM managed client computer.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Overall Compliance</p></td>
<td align="left"><p>Overall Compliance Status of the computer managed by MBAM. Valid states are Compliant and Noncompliant. Notice that the compliance status per drive (see table that follows) may indicate different compliance states. However, this field represents that compliance state, in accordance with the policy specified.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Operating System Compliance</p></td>
<td align="left"><p>Compliance status of the operating system that is managed by MBAM. Valid states are Compliant and Noncompliant.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Fixed Data Drive Compliance</p></td>
<td align="left"><p>Compliance status of the Fixed Data Drive that is managed by MBAM. Valid states are Compliant and Noncompliant.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Last Update Date</p></td>
<td align="left"><p>Date and time that the computer last contacted the server to report compliance status. The contact frequency is configurable (see MBAM policy settings).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Exemption</p></td>
<td align="left"><p>Status that indicates whether the user is exempt or non-exemption from the BitLocker policy.</p></td>
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
<td align="left"><p>Error and status messages of the compliance state of the computer in accordance to the policy specified.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy Cipher Strength</p></td>
<td align="left"><p>Cipher Strength selected by the Administrator during MBAM policy specification. (for example, 128-bit with Diffuser).</p></td>
</tr>
<tr class="even">
<td align="left"><p>Policy: Operating System Drive</p></td>
<td align="left"><p>Indicates if encryption is required for the O/S and the appropriate protector type.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Policy:Fixed Data Drive</p></td>
<td align="left"><p>Indicates if encryption is required for the Fixed Drive.</p></td>
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

 

**BitLocker Computer Compliance Report – Computer Volume Fields**

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
<td align="left"><p>Cipher Strength selected by the Administrator during MBAM policy specification.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Protector Types</p></td>
<td align="left"><p>Type of protector selected via policy used to encrypt an operating system or Fixed volume. The valid protector types on an operating system are TPM or TPM+PIN and for a Fixed Data Volume is Password.</p></td>
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


[Using MBAM with Configuration Manager](using-mbam-with-configuration-manager.md)

 

 





