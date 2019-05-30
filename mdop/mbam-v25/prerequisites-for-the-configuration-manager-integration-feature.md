---
title: Prerequisites for the Configuration Manager Integration Feature
description: Prerequisites for the Configuration Manager Integration Feature
author: dansimp
ms.assetid: b318cbd3-b009-44b8-991b-f7364c1cae88
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Prerequisites for the Configuration Manager Integration Feature


If you deploy MBAM with the System Center Configuration Manager Integration topology, we recommend a three-server architecture, as described in [High-Level Architecture of MBAM 2.5 with Configuration Manager Integration Topology](high-level-architecture-of-mbam-25-with-configuration-manager-integration-topology.md). This architecture can support 500,000 client computers.

**Important**  
Windows To Go is not supported for the Configuration Manager Integration topology installation when you are using Configuration Manager 2007.

 

## General prerequisites for the Configuration Manager Integration feature


When you install MBAM with Configuration Manager, the following additional prerequisites are required in addition to the prerequisites for the Stand-alone topology.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Additional information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>The Configuration Manager Server is a primary site in the Configuration Manager system.</p></td>
<td align="left"><p>N/A</p></td>
</tr>
<tr class="even">
<td align="left"><p>The Hardware Inventory Client Agent is on the Configuration Manager Server.</p></td>
<td align="left"><p>For System Center 2012 Configuration Manager, see [How to Configure Hardware Inventory in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=301685).</p>
<p>For Configuration Manager 2007, see [How to Configure Hardware Inventory for a Site](https://go.microsoft.com/fwlink/?LinkId=301656).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>One of the following is enabled, depending on the version of Configuration Manager that you are using:</p>
<ul>
<li><p>Compliance Settings - (System Center 2012 Configuration Manager)</p></li>
<li><p>Desired Configuration Management (DCM) Client Agent – (Configuration Manager 2007)</p></li>
</ul></td>
<td align="left"><p>For System Center 2012 Configuration Manager, see [Configuring Compliance Settings in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=301687).</p>
<p>For Configuration Manager 2007, see [Desired Configuration Management Client Agent Properties](https://go.microsoft.com/fwlink/?LinkId=301686).</p></td>
</tr>
<tr class="even">
<td align="left"><p>A reporting services point is defined in Configuration Manager. Required for SQL Server Reporting Services (SSRS).</p></td>
<td align="left"><p>For System Center 2012 Configuration Manager, see [Prerequisites for Reporting in Configuration Manager](https://go.microsoft.com/fwlink/?LinkId=301689).</p>
<p>For Configuration Manager 2007, see [How to Create a Reporting Services Point for SQL Reporting Services](https://go.microsoft.com/fwlink/?LinkId=301688).</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configuration Manager 2007 requires Microsoft .NET Framework 2.0</p></td>
<td align="left"><p>The Desired Configuration Management (DCM) Client Agent in Configuration Manager 2007 requires .NET Framework 2.0 to report compliance.</p>
<div class="alert">
<strong>Note</strong>  
<p>Installing .NET Framework 3.5 automatically installs .NET Framework 2.0.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

## Required permissions to install MBAM with Configuration Manager


To install MBAM with Configuration Manager, you must have an administrative user in Configuration Manager who has a security role with the minimum permissions listed in the following table. The table also shows the rights that you must have, beyond basic computer administrator rights, to install the MBAM Server.

**The permissions in the following table apply to both versions of Configuration Manager.**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Permissions</th>
<th align="left">MBAM Server feature</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>SQL Server instance login server roles: - dbcreator- processadmin</p></td>
<td align="left"><p>- Recovery Database- Audit Database</p></td>
</tr>
<tr class="even">
<td align="left"><p>SSRS instance rights: - Create Folders- Publish Reports</p></td>
<td align="left"><p>- System Center Configuration Manager Integration</p></td>
</tr>
</tbody>
</table>

 

**System Center 2012 Configuration Manager**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Permissions</th>
<th align="left">Configuration Manager Server feature</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configuration Manager site rights:- Read</p></td>
<td align="left"><p>System Center Configuration Manager Integration</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configuration Manager collection rights: - Create- Delete- Read- Modify- Deploy Configuration Items</p></td>
<td align="left"><p>System Center Configuration Manager Integration</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configuration Manager configuration item rights: - Create- Delete- Read</p></td>
<td align="left"><p>System Center Configuration Manager Integration</p></td>
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
<th align="left">Configuration Manager Server feature</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configuration Manager site rights:- Read</p></td>
<td align="left"><p>System Center Configuration Manager Integration</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configuration Manager collection rights: - Create- Delete- Read- ReadResource</p></td>
<td align="left"><p>System Center Configuration Manager Integration</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configuration Manager configuration item rights: - Create- Delete- Read- Distribute</p></td>
<td align="left"><p>System Center Configuration Manager Integration</p></td>
</tr>
</tbody>
</table>

 

## Required changes for the .mof files


To enable the client computers to report BitLocker compliance details through the MBAM Configuration Manager reports, you have to edit the Configuration.mof file and Sms\_def.mof file for System Center 2012 Configuration Manager and Microsoft System Center Configuration Manager 2007. For instructions, see [MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md).



## Related topics


[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)

[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





