---
title: Planning for MBAM 2.5 Server Deployment
description: Planning for MBAM 2.5 Server Deployment
author: dansimp
ms.assetid: 88774c89-31c8-4eb8-a845-a00bbec8c870
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Planning for MBAM 2.5 Server Deployment


This topic lists the features that you deploy for the MBAM Stand-alone and Configuration Manager topologies and lists the order in which you need to deploy them. There is a recommended configuration for each topology. However, you can configure MBAM server databases and features in different configurations and across multiple servers, depending on your scalability requirements.

## Important planning considerations for both topologies


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Considerations</th>
<th align="left">Details or purpose</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Review the following before you start the deployment:</p>
<ul>
<li><p><a href="mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md" data-raw-source="[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)">MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies</a></p></li>
<li><p><a href="mbam-25-supported-configurations.md" data-raw-source="[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)">MBAM 2.5 Supported Configurations</a></p></li>
</ul></td>
<td align="left"><p>Each MBAM feature has specific prerequisites that must be met before you start the MBAM installation.</p></td>
</tr>
<tr class="even">
<td align="left"><p>BitLocker recovery keys in MBAM expire after a single use.</p></td>
<td align="left"><p>A single use means that the recovery key has been retrieved through the Administration and Monitoring Website (also known as Help Desk), Self-Service Portal, or by using the Get-<strong>MbamBitLockerRecoveryKey</strong> Windows PowerShell cmdlet.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Keep track of the names of the computers on which you configure each feature. You will use this information throughout the configuration process.</p></td>
<td align="left"><p>You may want to use the <a href="mbam-25-deployment-checklist.md" data-raw-source="[MBAM 2.5 Deployment Checklist](mbam-25-deployment-checklist.md)">MBAM 2.5 Deployment Checklist</a> for this purpose.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure only the Group Policy settings in the MDOP MBAM (BitLocker Management) node. Do not change the Group Policy settings in the BitLocker Drive Encryption node.</p></td>
<td align="left"><p>If you change the Group Policy settings in the BitLocker Drive Encryption node, MBAM will not work.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="planning-for-mbam-server-deployment---stand-alone-topology"></a>Planning for MBAM Server deployment – Stand-alone topology


For the Stand-alone topology, a two-server configuration is recommended for production environments, although configurations of three to four servers can be used.

The Server infrastructure for the MBAM Stand-alone topology contains the following features, which must be configured in the order listed:

1.  Databases (Compliance and Audit Database and Recovery Database)

2.  Reports

3.  Web applications (and their corresponding web services)

    -   Administration and Monitoring Website

    -   Self-Service Portal

For a description of these features, see [High-Level Architecture of MBAM 2.5 with Stand-alone Topology](high-level-architecture-of-mbam-25-with-stand-alone-topology.md).

## <a href="" id="planning-for-mbam-server-deployment---configuration-manager-topology"></a>Planning for MBAM Server deployment – Configuration Manager topology


For the Configuration Manager Integration topology, a three-server configuration is recommended for production environments, although configurations of additional servers can be used.

The Server infrastructure for the MBAM Configuration Manager topology contains the following features, which must be configured or performed in the order listed:

1.  Databases (Compliance and Audit Database and Recovery Database)

2.  Reports

3.  Web applications (and their corresponding web services)

    -   Administration and Monitoring Website

    -   Self-Service Portal

4.  System Center Configuration Manager Integration

For a description of these features, see [High-Level Architecture of MBAM 2.5 with Configuration Manager Integration Topology](high-level-architecture-of-mbam-25-with-configuration-manager-integration-topology.md).



## Related topics


[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)

[Deploying the MBAM 2.5 Server Infrastructure](deploying-the-mbam-25-server-infrastructure.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





