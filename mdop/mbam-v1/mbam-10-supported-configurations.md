---
title: MBAM 1.0 Supported Configurations
description: MBAM 1.0 Supported Configurations
author: dansimp
ms.assetid: 1f5ac58e-6a3f-47df-8a9b-4b57631ab9ee
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# MBAM 1.0 Supported Configurations


This topic specifies the necessary requirements to install and run Microsoft BitLocker Administration and Monitoring (MBAM) in your environment.

## <a href="" id="---------mbam-server-system-requirements"></a> MBAM server system Requirements


### Server operating system requirements

The following table lists the operating systems that are supported for the Microsoft BitLocker Administration and Monitoring Server installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server 2008</p></td>
<td align="left"><p>Standard, Enterprise, Datacenter, or Web Server</p></td>
<td align="left"><p>SP2 only</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, Datacenter, or Web Server</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>



**Warning**  
There is no support for installing MBAM services, reports, or databases on a domain controller computer.



### <a href="" id="server-random-access-memory--ram--requirements-"></a>Server random access memory (RAM) requirements

There are no RAM requirements that are specific to MBAM Server installation.

### <a href="" id="sql-server-database-requirements-"></a>SQL Server Database requirements

The following table lists the SQL Server versions that are supported for the MBAM Server feature installation.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">MBAM Server Feature</th>
<th align="left">SQL Server Version</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Compliance and Audit Reports</p></td>
<td align="left"><p>Microsoft SQL Server 2008 </p></td>
<td align="left"><p>R2, Standard, Enterprise, Datacenter, or Developer Edition</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Recovery and Hardware Database</p></td>
<td align="left"><p>Microsoft SQL Server 2008 </p></td>
<td align="left"><p>R2, Enterprise, Datacenter, or Developer Edition</p>
<div class="alert">
<strong>Important</strong><br/><p>SQL Server Standard Editions are not supported for MBAM Recovery and Hardware Database Server feature installation.</p>
</div>
<div>

</div></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Compliance and Audit Database</p></td>
<td align="left"><p>Microsoft SQL Server 2008 </p></td>
<td align="left"><p>R2, Standard, Enterprise, Datacenter, or Developer Edition</p></td>
<td align="left"><p>SP2</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>



## <a href="" id="---------mbam-client-system-requirements"></a> MBAM Client system requirements


### Client operating system requirements

The following table lists the operating systems that are supported for MBAM Client installation.

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).



<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Operating System</th>
<th align="left">Edition</th>
<th align="left">Service Pack</th>
<th align="left">System Architecture</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Enterprise Edition</p></td>
<td align="left"><p>None, SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Ultimate Edition</p></td>
<td align="left"><p>None, SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>



### <a href="" id="client-ram-requirements-"></a>Client RAM requirements

There are no RAM requirements that are specific to the MBAM Client installation.

## Related topics


[Planning to Deploy MBAM 1.0](planning-to-deploy-mbam-10.md)

[MBAM 1.0 Deployment Prerequisites](mbam-10-deployment-prerequisites.md)









