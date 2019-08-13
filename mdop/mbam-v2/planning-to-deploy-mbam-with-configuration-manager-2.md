---
title: Planning to Deploy MBAM with Configuration Manager
description: Planning to Deploy MBAM with Configuration Manager
author: msfttracyp
ms.assetid: fb768306-48c2-40b4-ac4e-c279db987391
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Planning to Deploy MBAM with Configuration Manager


To deploy MBAM with the Configuration Manager topology, a three-server architecture, which supports 200,000 clients, is recommended. Use a separate server to run Configuration Manager, and install the basic Administration and Monitoring features on two servers, as shown in the architecture image in [Getting Started - Using MBAM with Configuration Manager](getting-started---using-mbam-with-configuration-manager.md).

**Important**  
Windows To Go is not supported when you install the integrated topology of MBAM with Configuration Manager 2007.



## Deployment Prerequisites for Installing MBAM with Configuration Manager


Ensure that you have met the following prerequisites before you install MBAM with Configuration Manager:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Additional Information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Ensure that the Configuration Manager Server is a primary site in the Configuration Manager system.</p></td>
<td align="left"><p>N/A</p></td>
</tr>
<tr class="even">
<td align="left"><p>Enable the Hardware Inventory Client Agent on the Configuration Manager Server.</p></td>
<td align="left"><p>For Configuration Manager 2007, see <a href="https://go.microsoft.com/fwlink/?LinkId=301656" data-raw-source="[How to Configure Hardware Inventory for a Site](https://go.microsoft.com/fwlink/?LinkId=301656)">How to Configure Hardware Inventory for a Site</a>.</p>
<p>For System Center 2012 Configuration Manager, see <a href="https://go.microsoft.com/fwlink/?LinkId=301685" data-raw-source="[How to Configure Hardware Inventory in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=301685)">How to Configure Hardware Inventory in Configuration Manager</a>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Enable the Desired Configuration Management (DCM) agent or the compliance settings, depending on the version of Configuration Manager that you are using.</p></td>
<td align="left"><p>For Configuration Manager 2007, enable the see <a href="https://go.microsoft.com/fwlink/?LinkId=301686" data-raw-source="[Desired Configuration Management Client Agent Properties](https://go.microsoft.com/fwlink/?LinkId=301686)">Desired Configuration Management Client Agent Properties</a>.</p>
<p>For System Center 2012 Configuration Manager, see <a href="https://go.microsoft.com/fwlink/?LinkId=301687" data-raw-source="[Configuring Compliance Settings in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=301687)">Configuring Compliance Settings in Configuration Manager</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Define a reporting services point in Configuration Manager. Required for SQL Reporting Services.</p></td>
<td align="left"><p>For Configuration Manager 2007, see <a href="https://go.microsoft.com/fwlink/?LinkId=301688" data-raw-source="[How to Create a Reporting Services Point for SQL Reporting Services](https://go.microsoft.com/fwlink/?LinkId=301688)">How to Create a Reporting Services Point for SQL Reporting Services</a>.</p>
<p>For System Center 2012 Configuration Manager, see <a href="https://go.microsoft.com/fwlink/?LinkId=301689" data-raw-source="[Prerequisites for Reporting in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=301689)">Prerequisites for Reporting in Configuration Manager</a>.</p></td>
</tr>
</tbody>
</table>



## <a href="" id="---------configuration-manager-supported-versions"></a> Configuration Manager Supported Versions


MBAM supports the following versions of Configuration Manager:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Supported version</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft System Center Configuration Manager 2007 R2</p></td>
<td align="left"><p>SP1 or later</p></td>
<td align="left"><p>64-bit</p>
<div class="alert">
<strong>Note</strong><br/><p>Although Configuration Manager 2007 is 32 bit, you must install it and SQL Server on a 64-bit operating system in order to match the 64-bit MBAM software.</p>
</div>
<div>

</div></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft System Center 2012 Configuration Manager</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>



For a list of supported configurations for the Configuration Manager Server, see the appropriate webpage for the version of Configuration Manager that you are using. MBAM has no additional system requirements for the Configuration Manager Server.

## <a href="" id="---------mbam-and-sql-server-system-requirements"></a> MBAM and SQL Server System Requirements


The supported configurations and system requirements for the MBAM servers and SQL Server for the Configuration Manager topology are the same as those for the Stand-alone topology. For the Stand-alone system requirements, see [MBAM 2.0 Supported Configurations](mbam-20-supported-configurations-mbam-2.md). For the MBAM Server and SQL Server processor, RAM, and disk space requirements for the Configuration Manager topology, see the following sections.

## MBAM Server Processor, RAM, and Disk Space Requirements for MBAM


The following table lists the server processor, RAM, and disk space requirements for MBAM servers when you are using the Configuration Manager Integration topology.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware Component</th>
<th align="left">Minimum Requirement</th>
<th align="left">Recommended Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Processor</p></td>
<td align="left"><p>2.33 GHz</p></td>
<td align="left"><p>2.33 GHz or greater</p></td>
</tr>
<tr class="even">
<td align="left"><p>RAM</p></td>
<td align="left"><p>4 GB</p></td>
<td align="left"><p>8 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Free disk space</p></td>
<td align="left"><p>1 GB</p></td>
<td align="left"><p>2 GB</p></td>
</tr>
</tbody>
</table>



## SQL Server Processor, RAM, and Disk Space Requirements


The following table lists the server processor, RAM, and disk space requirements for the SQL Server computer when you are using the Configuration Manager Integration topology.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware Component</th>
<th align="left">Minimum Requirement</th>
<th align="left">Recommended Requirement</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Processor</p></td>
<td align="left"><p>2.33 GHz</p></td>
<td align="left"><p>2.33 GHz or greater</p></td>
</tr>
<tr class="even">
<td align="left"><p>RAM</p></td>
<td align="left"><p>4 GB</p></td>
<td align="left"><p>8 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Free disk space</p></td>
<td align="left"><p>5 GB</p></td>
<td align="left"><p>5 GB or greater</p></td>
</tr>
</tbody>
</table>



## Required permissions to install the MBAM Server


To install MBAM with Configuration Manager, you must have an administrative user in Configuration Manager who has a security role with the minimum permissions listed in the following table. The table also shows the rights that you must have, beyond basic computer administrator rights, to install the MBAM Server.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Permissions</th>
<th align="left">MBAM Server Feature</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>SQL instance Login Server Roles: - dbcreator- processadmin</p></td>
<td align="left"><p>- Recovery Database- Audit Database</p></td>
</tr>
<tr class="even">
<td align="left"><p>SQL Server Reporting Services instance rights: - Create Folders- Publish Reports</p></td>
<td align="left"><p>- System Center Configuration Manager Integration</p></td>
</tr>
</tbody>
</table>



**System Center 2012 Configuration Manager**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Permissions</th>
<th align="left">Configuration Manager Server Feature</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configuration Manager site rights:- Read</p></td>
<td align="left"><p>System Center Configuration Manager integration</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configuration Manager collection rights: - Create- Delete- Read- Modify- Deploy Configuration Items</p></td>
<td align="left"><p>System Center Configuration Manager integration</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configuration Manager configuration item rights: - Create- Delete- Read</p></td>
<td align="left"><p>System Center Configuration Manager integration</p></td>
</tr>
</tbody>
</table>



**Configuration Manager 2007**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Permissions</th>
<th align="left">Configuration Manager Server Feature</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configuration Manager site rights:- Read</p></td>
<td align="left"><p>System Center Configuration Manager integration</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configuration Manager collection rights: - Create- Delete- Read- ReadResource</p></td>
<td align="left"><p>System Center Configuration Manager integration</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configuration Manager configuration item rights: - Create- Delete- Read- Distribute</p></td>
<td align="left"><p>System Center Configuration Manager integration</p></td>
</tr>
</tbody>
</table>



## Order of Deployment of MBAM Features for the Configuration Manager Topology


When deploying MBAM on the Configuration Manager Server, you must complete the deployment tasks in the following order:

1.  Edit the configuration.mof file on the Configuration Manager Server.

2.  Create or edit the sms\_def.mof file Configuration Manager Server.

3.  Install MBAM on the Configuration Manager Server.

4.  Install the Recovery Database and the Audit Database on the Database server.

5.  Install the MBAM features on the Administration and Monitoring Server.

## Planning Checklist for Installing MBAM with Configuration Manager


This checklist outlines the recommended steps and a high-level list of items to consider when planning for an Microsoft BitLocker Administration and Monitoring deployment with Configuration Manager. It is recommended that you copy this checklist into a spreadsheet program and customize it for your use.

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
<td align="left"><p>Review the getting started information, which describes how Configuration Manager works with MBAM and shows the recommended high-level architecture.</p></td>
<td align="left"><p><a href="getting-started---using-mbam-with-configuration-manager.md" data-raw-source="[Getting Started - Using MBAM with Configuration Manager](getting-started---using-mbam-with-configuration-manager.md)">Getting Started - Using MBAM with Configuration Manager</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Review the planning information, which describes the deployment prerequisites, supported configurations, required permissions, and deployment order for each feature.</p></td>
<td align="left"><p>Planning to Deploy MBAM with Configuration Manager</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Plan for and configure MBAM Group Policy requirements.</p></td>
<td align="left"><p><a href="planning-for-mbam-20-group-policy-requirements-mbam-2.md" data-raw-source="[Planning for MBAM 2.0 Group Policy Requirements](planning-for-mbam-20-group-policy-requirements-mbam-2.md)">Planning for MBAM 2.0 Group Policy Requirements</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Plan for and create necessary Active Directory Domain Services security groups and plan for MBAM local security group membership requirements.</p></td>
<td align="left"><p><a href="planning-for-mbam-20-administrator-roles-mbam-2.md" data-raw-source="[Planning for MBAM 2.0 Administrator Roles](planning-for-mbam-20-administrator-roles-mbam-2.md)">Planning for MBAM 2.0 Administrator Roles</a></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><img src="images/checklistbox.gif" alt="Checklist box" /></td>
<td align="left"><p>Plan for deploying MBAM Client deployment.</p></td>
<td align="left"><p><a href="planning-for-mbam-20-client-deployment-mbam-2.md" data-raw-source="[Planning for MBAM 2.0 Client Deployment](planning-for-mbam-20-client-deployment-mbam-2.md)">Planning for MBAM 2.0 Client Deployment</a></p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>



## Related topics


[Using MBAM with Configuration Manager](using-mbam-with-configuration-manager.md)









