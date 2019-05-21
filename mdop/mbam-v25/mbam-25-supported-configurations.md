---
title: MBAM 2.5 Supported Configurations
description: MBAM 2.5 Supported Configurations
author: shortpatti
ms.assetid: ce689aff-9a55-4ae7-a968-23c7bda9b4d6
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 10/24/2018
---


# MBAM 2.5 Supported Configurations


You can run Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 in a Stand-alone topology or in a Configuration Manager Integration topology that integrates MBAM with System Center Configuration Manager. If you use the recommended configuration for either topology in a production environment, MBAM supports up to 500,000 MBAM clients. For information about the recommended architecture and features that are configured on each server for each topology, see [High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md).

For additional configurations that are specific to the Configuration Manager Integration topology, see [Versions of Configuration Manager that MBAM supports](#bkmk-cm-ramreqs).

**Note**  
Microsoft provides support for the current service pack and, in some cases, the immediately preceding service pack. To find the support timelines for your product, see the [Lifecycle Supported Service Packs](https://go.microsoft.com/fwlink/p/?LinkId=31975). For additional information about Microsoft Support Lifecycle Policy, see [Microsoft Support Lifecycle Support Policy FAQ](https://go.microsoft.com/fwlink/p/?LinkId=31976).

 

## MBAM Supported Languages


The following tables show the languages that are supported for the MBAM Client (including the Self-Service Portal) and the MBAM Server in MBAM 2.5 and MBAM 2.5 SP1.

**Supported Languages in MBAM 2.5 SP1:**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Client Languages</th>
<th align="left">Server Languages</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Czech (Czech Republic) cs-CZ</p>
<p>Danish (Denmark) da-DK</p>
<p>Dutch (Netherlands) nl-NL</p>
<p>English (United States) en-US</p>
<p>Finnish (Finland) fi-FI</p>
<p>French (France) fr-FR</p>
<p>German (Germany) de-DE</p>
<p>Greek (Greece) el-GR</p>
<p>Hungarian (Hungary) hu-HU</p>
<p>Italian (Italy) it-IT</p>
<p>Japanese (Japan) ja-JP</p>
<p>Korean (Korea) ko-KR</p>
<p>Norwegian, Bokmål (Norway) nb-NO</p>
<p>Polish (Poland) pl-PL</p>
<p>Portuguese (Brazil) pt-BR</p>
<p>Portuguese (Portugal) pt-PT</p>
<p>Russian (Russia) ru-RU</p>
<p>Slovak (Slovakia) sk-SK</p>
<p>Spanish (Spain) es-ES</p>
<p>Swedish (Sweden) sv-SE</p>
<p>Turkish (Turkey) tr-TR</p>
<p>Slovenian (Slovenia) sl-SI</p>
<p>Simplified Chinese (PRC) zh-CN</p>
<p>Traditional Chinese (Taiwan) zh-TW</p></td>
<td align="left"><ul>
<li><p>English (United States) en-US</p></li>
<li><p>French (France) fr-FR</p></li>
<li><p>German (Germany) de-DE</p></li>
<li><p>Italian (Italy) it-IT</p></li>
<li><p>Japanese (Japan) ja-JP</p></li>
<li><p>Korean (Korea) ko-KR</p></li>
<li><p>Portuguese (Brazil) pt-BR</p></li>
<li><p>Russian (Russia) ru-RU</p></li>
<li><p>Spanish (Spain) es-ES</p></li>
<li><p>Simplified Chinese (PRC) zh-CN</p></li>
<li><p>Traditional Chinese (Taiwan) zh-TW</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

**Supported Languages in MBAM 2.5:**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Client Languages</th>
<th align="left">Server Languages</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><ul>
<li><p>English (United States) en-US</p></li>
<li><p>French (France) fr-FR</p></li>
<li><p>German (Germany) de-DE</p></li>
<li><p>Italian (Italy) it-IT</p></li>
<li><p>Japanese (Japan) ja-JP</p></li>
<li><p>Korean (Korea) ko-KR</p></li>
<li><p>Portuguese (Brazil) pt-BR</p></li>
<li><p>Russian (Russia) ru-RU</p></li>
<li><p>Spanish (Spain) es-ES</p></li>
<li><p>Simplified Chinese (PRC) zh-CN</p></li>
<li><p>Traditional Chinese (Taiwan) zh-TW</p></li>
</ul></td>
<td align="left"><ul>
<li><p>English (United States) en-US</p></li>
<li><p>French (France) fr-FR</p></li>
<li><p>German (Germany) de-DE</p></li>
<li><p>Italian (Italy) it-IT</p></li>
<li><p>Japanese (Japan) ja-JP</p></li>
<li><p>Korean (Korea) ko-KR</p></li>
<li><p>Portuguese (Brazil) pt-BR</p></li>
<li><p>Russian (Russia) ru-RU</p></li>
<li><p>Spanish (Spain) es-ES</p></li>
<li><p>Simplified Chinese (PRC) zh-CN</p></li>
<li><p>Traditional Chinese (Taiwan) zh-TW</p></li>
</ul></td>
</tr>
</tbody>
</table>

 

## <a href="" id="---------mbam-server-system-requirements"></a> MBAM Server system requirements


### MBAM Server operating system requirements

We strongly recommend that you run the MBAM Client and MBAM Server on the same line of operating systems. For example, Windows 10 with Windows Server 2016, Windows 8.1 with Windows Server 2012 R2, and so on.

The following table lists the operating systems that are supported for the MBAM Server installation.

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
<td align="left"><p>Windows Server 2016</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

 

The enterprise domain must contain at least one Windows Server 2008 (or later) domain controller.

### <a href="" id="bkmk-stand-alone-ramreqs"></a>MBAM Server processor, RAM, and disk space requirements – Stand-alone topology

These requirements are for the MBAM Stand-alone topology. For the requirements for the Configuration Manager Integration topology, see [MBAM Server Processor, RAM, and Disk Space Requirements - Configuration Manager Integration Topology](#bkmk-cm-ramreqs).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware item</th>
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

 

### <a href="" id="bkmk-cm-ramreqs"></a>MBAM Server processor, RAM, and disk space requirements - Configuration Manager Integration topology

The following table lists the server processor, RAM, and disk space requirements for MBAM servers when you are using the Configuration Manager Integration topology. For the requirements for the Stand-alone topology, see [MBAM Server Processor, RAM, and Disk Space Requirements – Stand-alone Topology](#bkmk-stand-alone-ramreqs).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware item</th>
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

 

### <a href="" id="bkmk-cmversions"></a>Versions of Configuration Manager that MBAM supports

MBAM supports the following versions of Configuration Manager.

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
<tr class="even">
<td align="left"><p>Microsoft System Center Configuration Manager (Current Branch), versions up to 1902</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>

<tr class="odd">
<td align="left"><p>Microsoft System Center Configuration Manager 1806</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft System Center Configuration Manager (LTSB - version 1606)</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Microsoft System Center 2012 Configuration Manager</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Microsoft System Center Configuration Manager 2007 R2 or later</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p>

>**Note** Although Configuration Manager 2007 R2 is 32 bit, you must install it and SQL Server on a 64-bit operating system in order to match the 64-bit MBAM software.
</td>
</tr>
</tbody>
</table>

 

For a list of supported configurations for the Configuration Manager Server, see the appropriate TechNet documentation for the version of Configuration Manager that you are using. MBAM has no additional system requirements for the Configuration Manager Server.

### <a href="" id="sql-server-database-requirements-"></a>SQL Server database requirements

The following table lists the Microsoft SQL Server versions that are supported for the MBAM Server features, which include the Recovery Database, Compliance and Audit Database, and the Reports feature. The required versions apply to the Stand-alone or the Configuration Manager Integration topologies.

You must install SQL Server with the **SQL\_Latin1\_General\_CP1\_CI\_AS** collation.

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
<td align="left"><p>Microsoft SQL Server 2017</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>    
<tr class="even">
<td align="left"><p>Microsoft SQL Server 2016</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter</p></td>
<td align="left"><p>SP1</p></td>
https://www.microsoft.com/en-us/download/details.aspx?id=54967<td align="left"><p>64-bit</p></td>
<tr class="odd">
<td align="left"><p>Microsoft SQL Server 2014</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter</p></td>
<td align="left"><p>SP1, SP2</p></td>
<td align="left"><p>64-bit</p></td>
<tr class="odd">
<td align="left"><p>Microsoft SQL Server 2012</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter</p></td>
<td align="left"><p>SP3</p></td>
<td align="left"><p>64-bit</p></td>
<tr class="even">
<td align="left"><p>Microsoft SQL Server 2008 R2</p></td>
<td align="left"><p>Standard or Enterprise</p></td>
<td align="left"><p>SP3</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

**Note**  
In order to support SQL 2016 you must install the March 2017 Servicing Release for MDOP https://www.microsoft.com/en-us/download/details.aspx?id=54967  and to support SQL 2017 you must install the July 2018 Servicing Release for MDOP https://www.microsoft.com/en-us/download/details.aspx?id=57157. In general stay current by always using the most recent servicing update as it also includes all bugfixes and new features.
 

### <a href="" id="bkmk-sql-stand-alone-ramreqs"></a>SQL Server processor, RAM, and disk space requirements – Stand-alone topology

The following table lists the recommended server processor, RAM, and disk space requirements for the SQL Server computer when you are using the Stand-alone topology. Use these requirements as a guide. Your specific requirements will vary based on the number of client computers you are supporting in your enterprise. To view the requirements for the Configuration Manager Integration topology, see [SQL Server Processor, RAM, and Disk Space Requirements - Configuration Manager Integration Topology](#bkmk-cm-sql-ramreqs).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware item</th>
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

 

### <a href="" id="bkmk-cm-sql-ramreqs"></a>SQL Server processor, RAM, and disk space requirements - Configuration Manager Integration topology

The following table lists the server processor, RAM, and disk space requirements for the Microsoft SQL Server computer when you are using the Configuration Manager Integration topology, see [SQL Server Processor, RAM, and Disk Space Requirements – Stand-alone Topology](#bkmk-sql-stand-alone-ramreqs).

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Hardware item</th>
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
<td align="left"><p>4 GB</p></td>
<td align="left"><p>8 GB</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Free disk space</p></td>
<td align="left"><p>5 GB</p></td>
<td align="left"><p>5 GB</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="---------mbam-client-system-requirements"></a> MBAM Client system requirements


### Client operating system requirements

We strongly recommend that you run the MBAM Client and MBAM Server on the same line of operating systems. For example, Windows 10 with Windows Server 2016, Windows 8.1 with Windows Server 2012 R2, and so on.

The following table lists the operating systems that are supported for MBAM Client installation. The same requirements apply to the Stand-alone and the Configuration Manager Integration topologies.

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
<tr class="even">
    <td align="left"><p>Windows 10 IoT</p></td>
    <td align="left"><p>Enterprise</p></td>
    <td align="left"><p></p></td>
    <td align="left"><p>32-bit or 64-bit</p></td>
</tr>  
<tr class="odd">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>Enterprise</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8.1</p></td>
<td align="left"><p>Enterprise</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Enterprise or Ultimate</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows To Go</p></td>
<td align="left"><p>Windows 8.1 and Windows 10 Enterprise</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="client-ram-requirements-"></a>Client RAM requirements

There are no RAM requirements that are specific to the MBAM Client installation.

## <a href="" id="---------mbam-group-policy-system-requirements"></a> MBAM Group Policy system requirements


The following table lists the operating systems that are supported for MBAM Group Policy Templates installation.

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
 <tr class="even">
      <td align="left"><p>Windows 10 IoT</p></td>
      <td align="left"><p>Enterprise</p></td>
      <td align="left"><p></p></td>
      <td align="left"><p>32-bit or 64-bit</p></td>
 </tr>
<tr class="odd">
<td align="left"><p>Windows 10</p></td>
<td align="left"><p>Enterprise</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows 8.1</p></td>
<td align="left"><p>Enterprise</p></td>
<td align="left"><p></p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows 7</p></td>
<td align="left"><p>Enterprise, or Ultimate</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>32-bit or 64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2012 R2</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server 2012</p></td>
<td align="left"><p>Standard or Datacenter</p></td>
<td align="left"><p></p></td>
<td align="left"><p>64-bit</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Server 2008 R2</p></td>
<td align="left"><p>Standard, Enterprise, or Datacenter</p></td>
<td align="left"><p>SP1</p></td>
<td align="left"><p>64-bit</p></td>
</tr>
</tbody>
</table>

## MBAM In Azure IaaS

The MBAM server can be deployed in Azure Infrastructure as a Service (IaaS) on any of the supported OS versions listed above, connecting to an Active Directory hosted on premises or an Active Directory also hosted in Azure IaaS.  Documentation for setting up and configuring Active Directory on Azure IaaS is [here](https://msdn.microsoft.com/library/azure/jj156090.aspx).

The MBAM client is not supported on virtual machines and is also not supported on Azure IaaS.


## Service releases 

- [April 2016 hotfix](https://support.microsoft.com/help/3144445/april-2016-hotfix-rollup-for-microsoft-desktop-optimization-pack)
- [September 2016](https://support.microsoft.com/ms-my/help/3168628/september-2016-servicing-release-for-microsoft-desktop-optimization-pa)
- [December 2016](https://support.microsoft.com/help/3198158/december-2016-servicing-release-for-microsoft-desktop-optimization-pac)
- [March 2017](https://support.microsoft.com/en-ie/help/4014009/march-2017-servicing-release-for-microsoft-desktop-optimization-pack) 
- [June 2017](https://support.microsoft.com/af-za/help/4018510/june-2017-servicing-release-for-microsoft-desktop-optimization-pack)
- [September 2017](https://support.microsoft.com/en-ie/help/4041137/september-2017-servicing-release-for-microsoft-desktop-optimization)
- [March 2018](https://support.microsoft.com/help/4074878/march-2018-servicing-release-for-microsoft-desktop-optimization-pack)
- [July 2018](https://support.microsoft.com/help/4340040/july-2018-servicing-release-for-microsoft-desktop-optimization-pack)

## Related topics


[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)

[Preparing your Environment for MBAM 2.5](preparing-your-environment-for-mbam-25.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




