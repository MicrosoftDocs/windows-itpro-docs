---
title: MBAM 2.0 Supported Configurations
description: MBAM 2.0 Supported Configurations
author: dansimp
ms.assetid: dca63391-39fe-4273-a570-76d0a2f8a0fd
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# MBAM 2.0 Supported Configurations


This topic specifies the requirements to install and run Microsoft BitLocker Administration and Monitoring (MBAM) 2.0 in your environment by using the Stand-alone topology. For supported configurations that apply to later releases, see the documentation for the applicable release.

If you plan to install MBAM 2.0 by using the Configuration Manager topology and want to review a list of the system requirements, see [Planning to Deploy MBAM with Configuration Manager](planning-to-deploy-mbam-with-configuration-manager-2.md).

The recommended configuration for running MBAM in a production environment is with two servers, depending on your scalability requirements. This configuration supports up to 200,000 MBAM clients. For an image and descriptions of the Stand-alone MBAM server infrastructure, see [High-Level Architecture for MBAM 2.0](high-level-architecture-for-mbam-20-mbam-2.md).

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).

 

## <a href="" id="---------mbam-server-system-requirements"></a> MBAM Server System Requirements


### Server Operating System Requirements

The following table lists the operating systems that are supported for the Microsoft BitLocker Administration and Monitoring Server installation.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Standard or Datacenter Edition</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

**Note**  
There is no support for installing MBAM services, reports, or databases on a domain controller computer.

 

### <a href="" id="server-processor--ram--and-disk-space-requirements-"></a>Server Processor, RAM, and Disk Space Requirements

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware component</th>
<th align="left">Minimum requirement</th>
<th align="left">Recommended requirement</th>
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
<td align="left"><p>8 GB</p></td>
<td align="left"><p>12 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Free disk space</p></td>
<td align="left"><p>1 GB</p></td>
<td align="left"><p>2 GB</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="sql-server-database-requirements-"></a>SQL Server Database Requirements

The following table lists the SQL Server versions that are supported for the Administration and Monitoring Server feature installation, which includes the Recovery Database, Compliance and Audit Database, and Compliance and Audit Reports. The databases additionally require the installation of SQL Server Management Tools.

**Note**  
MBAM does not natively support SQL clustering, mirroring, or Availability Groups. To install the databases, you must run the MBAM Server installation on a stand-alone SQL server.

 

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">SQL Server version</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Microsoft SQL Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft SQL Server 2012</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware component</th>
<th align="left">Minimum requirement</th>
<th align="left">Recommended requirement</th>
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
<td align="left"><p>8 GB</p></td>
<td align="left"><p>12 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Free disk space</p></td>
<td align="left"><p>5 GB</p></td>
<td align="left"><p>5 GB or greater</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="---------mbam-client-system-requirements"></a> MBAM Client System Requirements


### Client Operating System Requirements

The following table lists the operating systems that are supported for Microsoft BitLocker Administration and Monitoring Client installation.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Enterprise or Ultimate Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>Enterprise Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows To Go</p></td>
<td align="left"><p>Windows 8 Enterprise Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="client-ram-requirements-"></a>Client RAM Requirements

There are no RAM requirements that are specific to the Microsoft BitLocker Administration and Monitoring Client installation.

## <a href="" id="---------mbam-group-policy-system-requirements"></a> MBAM Group Policy System Requirements


The following table lists the operating systems that are supported for Microsoft BitLocker Administration and Monitoring Group Policy template installation.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Edition</th>
<th align="left">Service pack</th>
<th align="left">System architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Enterprise, or Ultimate Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8</p></td>
<td align="left"><p>Enterprise Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter Edition</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Standard or Datacenter Edition</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Planning to Deploy MBAM 2.0](planning-to-deploy-mbam-20-mbam-2.md)

[MBAM 2.0 Deployment Prerequisites](mbam-20-deployment-prerequisites-mbam-2.md)

 

 





