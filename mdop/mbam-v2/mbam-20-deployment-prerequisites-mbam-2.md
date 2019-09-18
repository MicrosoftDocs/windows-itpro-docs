---
title: MBAM 2.0 Deployment Prerequisites
description: MBAM 2.0 Deployment Prerequisites
author: dansimp
ms.assetid: 57d1c2bb-5ea3-457e-badd-dd9206ff0f20
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# MBAM 2.0 Deployment Prerequisites


Before you start Microsoft BitLocker Administration and Monitoring (MBAM) Setup, you should ensure that you have met the prerequisites to install the product. This section contains information to help you successfully plan your computing environment before you deploy Microsoft BitLocker Administration and Monitoring Server features and Clients. If you are installing MBAM with Configuration Manager, see [Planning to Deploy MBAM with Configuration Manager](planning-to-deploy-mbam-with-configuration-manager-2.md) for additional prerequisites.

## Installation Prerequisites for MBAM Server Features


Each of the MBAM Server features has specific prerequisites that must be met before the MBAM features can be successfully installed. MBAM Setup checks that all prerequisites are met before the installation starts.

### Prerequisites for Administration and Monitoring Server

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Windows Server Web Server Role</strong></p></td>
<td align="left"><p>This role must be added to a server operating system that is supported for the Administration and Monitoring Server feature.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Web Server (IIS) Management Tools</strong></p></td>
<td align="left"><p>Select <strong>IIS Management Scripts and Tools</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>SSL Certificate</strong></p></td>
<td align="left"><p>Optional. To secure communication between the clients and the web services, you have to obtain and install a certificate that a trusted security authority signed.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Web Server Role Services</strong></p></td>
<td align="left"><p><strong>Common HTTP Features:</strong></p>
<ul>
<li><p>Static Content</p></li>
<li><p>Default Document</p></li>
</ul>
<p><strong>Application Development:</strong></p>
<ul>
<li><p>ASP.NET</p></li>
<li><p>.NET Extensibility</p></li>
<li><p>ISAPI Extensions</p></li>
<li><p>ISAPI Filters</p></li>
</ul>
<p><strong>Security:</strong></p>
<ul>
<li><p>Windows Authentication</p></li>
<li><p>Request Filtering</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Windows Server Features</strong></p></td>
<td align="left"><p><strong>.NET Framework 3.5.1 features:</strong></p>
<ul>
<li><p>.NET Framework 3.5.1</p></li>
<li><p>WCF Activation</p>
<ul>
<li><p>HTTP Activation</p></li>
<li><p>Non-HTTP Activation</p></li>
</ul></li>
</ul>
<p><strong>Windows Process Activation Service:</strong></p>
<ul>
<li><p>Process Model</p></li>
<li><p>.NET Environment</p></li>
<li><p>Configuration APIs</p></li>
</ul></td>
</tr>
</tbody>
</table>



**Note**  
For a list of supported operating systems, see [MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md).



### Prerequisites for the Compliance and Audit Reports

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p>
<p>See <a href="mbam-20-supported-configurations-mbam-2.md" data-raw-source="[MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md)">MBAM 2.0 Supported Configurations</a> for supported versions.</p></td>
<td align="left"><p>Install SQL Server with:</p>
<ul>
<li><p>SQL_Latin1_General_CP1_CI_AS collation</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>SQL Server Reporting Services (SSRS)</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>SSRS instance rights – required for installing reports only if you are installing databases on a separate server from the reports.</p></td>
<td align="left"><p>Required instance rights:</p>
<ul>
<li><p>Create Folders</p></li>
<li><p>Publish Reports</p></li>
</ul>
<p>SSRS must be installed and running during the MBAM Server installation. Configure SSRS in “native” mode and not in unconfigured or “SharePoint” mode.</p></td>
</tr>
</tbody>
</table>



### Prerequisites for the Recovery Database

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p>
<p>See <a href="mbam-20-supported-configurations-mbam-2.md" data-raw-source="[MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md)">MBAM 2.0 Supported Configurations</a> for supported versions.</p></td>
<td align="left"><p>Install SQL Server with:</p>
<ul>
<li><p>SQL_Latin1_General_CP1_CI_AS collation</p></li>
<li><p>SQL Server Management Tools</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Required SQL Server permissions</p></td>
<td align="left"><p>Required permissions:</p>
<ul>
<li><p>SQL instance Login Server roles:</p>
<ul>
<li><p>dbcreator</p></li>
<li><p>processadmin</p></li>
</ul></li>
<li><p>SQL Server Reporting Services instance rights:</p>
<ul>
<li><p>Create Folders</p></li>
<li><p>Publish Reports</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Optional - Install Transparent Data Encryption (TDE) feature available in SQL Server</p></td>
<td align="left"><p>The TDE SQL Server feature performs real-time I/O encryption and decryption of the data and log files, which can help you to comply with many laws, regulations, and guidelines established in various industries.</p>
<div class="alert">
<strong>Note</strong><br/><p>TDE performs real-time decryption of database information, which means that, if the account under which you are logged on has permissions to the database while you are viewing the recovery key information in the SQL Server tables, the recovery key information is visible.</p>
</div>
<div>

</div>
<p>More about TDE: <a href="mbam-20-security-considerations-mbam-2.md" data-raw-source="[MBAM 2.0 Security Considerations](mbam-20-security-considerations-mbam-2.md)">MBAM 2.0 Security Considerations</a>.</p></td>
</tr>
</tbody>
</table>



### Prerequisites for the Compliance and Audit Database

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p>
<p>See <a href="mbam-20-supported-configurations-mbam-2.md" data-raw-source="[MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md)">MBAM 2.0 Supported Configurations</a> for supported versions.</p></td>
<td align="left"><p>Install SQL Server with:</p>
<ul>
<li><p>SQL_Latin1_General_CP1_CI_AS collation</p></li>
<li><p>SQL Server Management Tools</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Required SQL Server permissions</p></td>
<td align="left"><p>Required permissions:</p>
<ul>
<li><p>SQL instance Login Server roles:</p>
<ul>
<li><p>dbcreator</p></li>
<li><p>processadmin</p></li>
</ul></li>
<li><p>SQL Server Reporting Services instance rights:</p>
<ul>
<li><p>Create Folders</p></li>
<li><p>Publish Reports</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Optional - Install Transparent Data Encryption (TDE) feature in SQL Server.</p></td>
<td align="left"><p>The TDE SQL Server feature performs real-time I/O encryption and decryption of the data and log files, which can help you to comply with many laws, regulations, and guidelines established in various industries.</p>
<div class="alert">
<strong>Note</strong><br/><p>TDE performs real-time decryption of database information, which means that, if the account under which you are logged on has permissions to the database while you are viewing the recovery key information in the SQL Server tables, the recovery key information is visible.</p>
</div>
<div>

</div>
<p>More about TDE: <a href="mbam-20-security-considerations-mbam-2.md" data-raw-source="[MBAM 2.0 Security Considerations](mbam-20-security-considerations-mbam-2.md)">MBAM 2.0 Security Considerations</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>SQL Server must have Database Engine Services installed and running during MBAM Server installation.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>The SQL Server Agent service must be running and set to auto-start on the selected instances of SQL Server.</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>



### Prerequisites for the Self-Service Portal

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of Windows Server</p>
<p>See <a href="mbam-20-supported-configurations-mbam-2.md" data-raw-source="[MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md)">MBAM 2.0 Supported Configurations</a> for supported versions.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>ASP.NET MVC 2.0</p></td>
<td align="left"><p><a href="https://go.microsoft.com/fwlink/?LinkId=392270" data-raw-source="[ASP.NET MVC 2 download](https://go.microsoft.com/fwlink/?LinkId=392270)">ASP.NET MVC 2 download</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web Service IIS Management Tools</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>



## Prerequisites for MBAM Clients


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Windows 7 clients only</strong> - must have Trusted Platform Module (TPM) capability.</p></td>
<td align="left"><p>TPM version must be 1.2 or later.</p></td>
</tr>
<tr class="even">
<td align="left"><p>The TPM chip must be turned on in the BIOS and be resettable from the operating system.</p></td>
<td align="left"><p>For more information, see the BIOS documentation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Windows 8 clients only</strong>: To have MBAM store and manage the TPM recovery keys: TPM auto-provisioning must be turned off, and MBAM must be set as the owner of the TPM before you deploy MBAM. To turn off TPM auto-provisioning, see <a href="https://go.microsoft.com/fwlink/?LinkId=286468" data-raw-source="[Disable-TpmAutoProvisioning](https://go.microsoft.com/fwlink/?LinkId=286468)">Disable-TpmAutoProvisioning</a>.</p>
<ul>
<li><p>TPM auto-provisioning must be turned off.</p></li>
<li><p>MBAM must be set as the owner of the TPM before you deploy MBAM.</p></li>
</ul></td>
<td align="left"><p>To turn off TPM auto-provisioning, see <a href="https://go.microsoft.com/fwlink/?LinkId=286468" data-raw-source="[Disable-TpmAutoProvisioning](https://go.microsoft.com/fwlink/?LinkId=286468)">Disable-TpmAutoProvisioning</a>.</p>
<div class="alert">
<strong>Note</strong><br/><p>Ensure that the keyboard, video, or mouse are directly connected and not managed through a keyboard, video, or mouse (KVM) switch. A KVM switch can interfere with the ability of the computer to detect the physical presence of hardware.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



## Related topics


[Planning to Deploy MBAM 2.0](planning-to-deploy-mbam-20-mbam-2.md)

[MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md)









