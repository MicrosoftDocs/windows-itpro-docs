---
title: Configuring the MBAM 2.5 Server Features
description: Configuring the MBAM 2.5 Server Features
author: dansimp
ms.assetid: 894d1080-5f13-48f7-8fde-82f8d440a4ed
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Configuring the MBAM 2.5 Server Features


Use this information as a starting place for configuring Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 Server features after [Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md). There are two methods you can use to configure MBAM:

-   MBAM Server Configuration wizard

-   Windows PowerShell cmdlets

## Before you start configuring MBAM Server features


Review and complete the following steps before you start configuring the MBAM Server features:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Step</th>
<th align="left">Where to get instructions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Review the recommended architecture for MBAM.</p></td>
<td align="left"><p>[High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Review the supported configurations for MBAM.</p></td>
<td align="left"><p>[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Complete the required prerequisites on each server.</p></td>
<td align="left"><ul>
<li><p>[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)</p></li>
<li><p>[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Install the MBAM Server software on each server where you will configure an MBAM Server feature.</p></td>
<td align="left"><p>[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Review the prerequisites for using Windows PowerShell to configure MBAM Server features (if you are using this method to configure MBAM Server features).</p></td>
<td align="left"><p>[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)</p></td>
</tr>
</tbody>
</table>

 

## Steps for configuring MBAM Server features


Each row in the following table describes the features that you will configure on a separate server, according to the recommended [High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Features to install</th>
<th align="left">Where to get instructions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configure the databases.</p></td>
<td align="left"><p>[How to Configure the MBAM 2.5 Databases](how-to-configure-the-mbam-25-databases.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure the reports.</p></td>
<td align="left"><p>[How to Configure the MBAM 2.5 Reports](how-to-configure-the-mbam-25-reports.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configure the web applications.</p></td>
<td align="left"><p>[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure the System Center Configuration Manager Integration (if applicable).</p></td>
<td align="left"><p>[How to Configure the MBAM 2.5 System Center Configuration Manager Integration](how-to-configure-the-mbam-25-system-center-configuration-manager-integration.md)</p></td>
</tr>
</tbody>
</table>

 

For a list of events about MBAM Server feature configuration, see [Server Event Logs](server-event-logs.md).



## Related topics


Configuring the MBAM 2.5 Server Features
 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




