---
title: MBAM 1.0 Deployment Prerequisites
description: MBAM 1.0 Deployment Prerequisites
author: msfttracyp
ms.assetid: bd9e1010-7d25-43e7-8dc6-b521226a659d
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# MBAM 1.0 Deployment Prerequisites


Before you begin the Microsoft BitLocker Administration and Monitoring (MBAM) Setup, make sure that you meet the necessary prerequisites to install the product. This section contains information to help you successfully prepare your computing environment before you deploy the MBAM Clients and Server features.

## Installation prerequisites for MBAM Server features


Each of the MBAM server features has specific prerequisites that must be met before they can be successfully installed. MBAM Setup verifies if all prerequisites are met before the installation starts.

### Installation prerequisites for Administration and Monitoring Server

The following table contains the installation prerequisites for the MBAM Administration and Monitoring Server:

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
<td align="left"><p><strong>Windows ServerWeb Server Role</strong></p></td>
<td align="left"><p>This role must be added to a server operating system supported for the mbam Administration and Monitoring Server feature.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>Web Server (IIS) Management Tools</strong></p></td>
<td align="left"><p><strong>IIS Management Scripts and Tools</strong></p></td>
</tr>
<tr class="odd">
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
<tr class="even">
<td align="left"><p><strong>Windows Server Features</strong></p></td>
<td align="left"><p><strong>Microsoft .NET Framework 3.5.1 features:</strong></p>
<ul>
<li><p>.NET Framework 3.5.1</p></li>
<li><p>WCF Activation</p>
<ul>
<li><p>HTTP Activation</p></li>
<li><p>Non-HTTP Activation</p></li>
</ul></li>
</ul>
<p><strong>Windows Process Activation Service</strong></p>
<ul>
<li><p>Process Model</p></li>
<li><p>.NET Environment</p></li>
<li><p>Configuration APIs</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**Note**  
For a list of supported operating systems, see [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

 

### Installation prerequisites for the Compliance and Audit Reports

The Compliance and Audit Reports must be installed on a supported version of SQL Server. Installation prerequisites for this feature include SQL Server Reporting Services (SSRS).

SSRS must be installed and running during MBAM server installation. SSRS should also be configured in “native” mode, not in the “unconfigured” or “SharePoint” mode.

**Note**  
For a list of supported operating systems and SQL Server versions, see [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

 

### Installation prerequisites for the Recovery and Hardware Database

The Recovery and Hardware Database must be installed on a supported version of SQL Server.

SQL Server must have Database Engine Services installed and running during the MBAM server installation. The Transparent Data Encryption (TDE) feature must be enabled.

**Note**  
For a list of supported operating systems and SQL Server versions, see [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

 

The TDE SQL Server feature performs real-time input/output (I/O) encryption and decryption of the data and log files. TDE protects data that is "at rest,” which include the data and the log files. It provides the ability to comply with many laws, regulations, and guidelines that are established in various industries.

**Note**  
Because TDE performs real-time decryption of database information, the recovery key information will be visible if the account under which you are logged in has permissions to the database when you view the recovery key information SQL tables.

 

### Installation prerequisites for the Compliance and Audit Database

The Compliance and Audit Database must be installed on a supported version of SQL Server.

SQL Server must have Database Engine Services installed and running during MBAM server installation.

**Note**  
For a list of supported operating systems and SQL Server versions, see [MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md).

 

## Installation prerequisites for MBAM Clients


The necessary prerequisites that you must meet before you begin the MBAM Client installation are the following:

-   Trusted Platform Module (TPM) v1.2 capability

-   The TPM chip must be turned on in the BIOS and it must be resettable from the operating system. For more information, see the BIOS documentation.

**Warning**  
Ensure that the keyboard, mouse, and video are directly connected to the computer, instead of to a keyboard, video, mouse (KVM) switch. A KVM switch can interfere with the ability of the computer to detect the physical presence of hardware.

 

## Related topics


[Planning to Deploy MBAM 1.0](planning-to-deploy-mbam-10.md)

[MBAM 1.0 Supported Configurations](mbam-10-supported-configurations.md)

 

 





