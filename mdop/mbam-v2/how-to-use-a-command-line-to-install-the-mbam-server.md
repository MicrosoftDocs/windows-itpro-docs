---
title: How to Use a Command Line to Install the MBAM Server
description: How to Use a Command Line to Install the MBAM Server
author: msfttracyp
ms.assetid: 6ffc6d41-a793-42c2-b997-95ba47550648
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Use a Command Line to Install the MBAM Server


You can use a command line to install the MBAM Server with either the Stand-alone or Configuration Manager topology. The following command line example is for deploying MBAM on a single server, which is an architecture that should be used only in a test environment. You will need to change the command line accordingly when you deploy MBAM to a production environment, which should have multiple servers.

## Command Line for Deploying the MBAM 2.0 Server with the Stand-alone Topology


You can use a command line that is similar to the following to install the MBAM Server with the Stand-alone topology.

``` syntax
MbamSetup.exe /qb /l*v MaltaServerInstall.log TOPOLOGY=0 I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 ADDLOCAL=KeyDatabase,ReportsDatabase,Reports,AdministrationMonitoringServer,SelfServiceServer,PolicyTemplate,REPORTS_USERACCOUNT=[UserDomain]\[UserName1] REPORTS_USERACCOUNTPW=[UserPwd1] COMPLIDB_SQLINSTANCE=%computername% RECOVERYANDHWDB_SQLINSTANCE=%computername% SRS_INSTANCENAME=%computername% ADMINANDMON_WEBSITE_PORT=83 WEBSITE_PORT=83
```

The following table describes the command line parameters for deploying the MBAM Server with the Stand-alone topology.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Parameter Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>TOPOLOGY</p></td>
<td align="left"><p>0</p></td>
<td align="left"><p>0 – Stand-alone topology</p></td>
</tr>
<tr class="even">
<td align="left"><p>I_ACCEPT_ENDUSER_LICENSE_AGREEMENT</p></td>
<td align="left"><p>01</p></td>
<td align="left"><p>0 – do not accept the license agreement1 – accept the license agreement</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ADDLOCAL</p></td>
<td align="left"><p></p></td>
<td align="left"><p>Features to be installed on the Server</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>KeyDatabase</p></td>
<td align="left"><p>Recovery Database</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p>ReportsDatabase</p></td>
<td align="left"><p>Compliance and Audit Reports Database</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>Reports</p></td>
<td align="left"><p>Compliance and Audit Reports</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p>AdministrationMonitoringServer</p></td>
<td align="left"><p>Administration and Monitoring website</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>SelfServiceServer</p></td>
<td align="left"><p>Self-Service Portal</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p>PolicyTemplate</p></td>
<td align="left"><p>MBAM Group Policy template</p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTS_USERACCOUNT</p></td>
<td align="left"><p>[UserDomain][UserName1]</p></td>
<td align="left"><p>Domain and user account of the Reporting Services service account that will access the Compliance and Audit database</p></td>
</tr>
<tr class="odd">
<td align="left"><p>REPORTS_USERACCOUNTPW</p></td>
<td align="left"><p>[UserPwd1]</p></td>
<td align="left"><p>Password of the Reporting Services service account that will access the Compliance and Audit database</p></td>
</tr>
<tr class="even">
<td align="left"><p>COMPLIDB_SQLINSTANCE</p></td>
<td align="left"><p>%computername%</p></td>
<td align="left"><p>SQL Server instance name for the Compliance and Audit Database – replace <strong>%computername%</strong> with the computer name</p></td>
</tr>
<tr class="odd">
<td align="left"><p>RECOVERYANDHWDB_SQLINSTANCE</p></td>
<td align="left"><p>%computername%</p></td>
<td align="left"><p>SQL Server instance name for the Recovery Database – replace <strong>%computername%</strong> with the computer name</p></td>
</tr>
<tr class="even">
<td align="left"><p>SRS_INSTANCENAME</p></td>
<td align="left"><p>%computername%</p></td>
<td align="left"><p>SQL Server Reporting Server instance where the Compliance and Audit reports will be installed – replace <strong>%computername%</strong> with the computer name</p></td>
</tr>
<tr class="odd">
<td align="left"><p>ADMINANDMON_WEBSITE_PORT</p></td>
<td align="left"><p>83</p></td>
<td align="left"><p>Port for the Administration and Monitoring website; “83” is only an example</p></td>
</tr>
<tr class="even">
<td align="left"><p>WEBSITE_PORT</p></td>
<td align="left"><p>83</p></td>
<td align="left"><p>Port for the Self-Service Portal website; “83” is only an example</p></td>
</tr>
</tbody>
</table>

 

## Command Line for Deploying the MBAM 2.0 Server with the Configuration Manager Topology


You can use a command line that is similar to the following to install the MBAM Server with the Configuration Manager topology.

``` syntax
MbamSetup.exe /qn /l*v MaltaServerInstall.log I_ACCEPT_ENDUSER_LICENSE_AGREEMENT=1 TOPOLOGY=1 COMPLIDB_SQLINSTANCE=%computername% RECOVERYANDHWDB_SQLINSTANCE=%computername% SRS_INSTANCENAME=%computername% REPORTS_USERACCOUNT=[UserDomain]\[UserName] REPORTS_USERACCOUNTPW=[UserPwd] ADMINANDMON_WEBSITE_PORT=83 WEBSITE_PORT=83
```

The following table describes the command line parameters for installing the MBAM 2.0 Server with the Configuration Manager topology.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Parameter Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>TOPOLOGY</p></td>
<td align="left"><p>1</p></td>
<td align="left"><p>1 – Configuration Manager topology</p></td>
</tr>
<tr class="even">
<td align="left"><p>I_ACCEPT_ENDUSER_LICENSE_AGREEMENT</p></td>
<td align="left"><p>01</p></td>
<td align="left"><p>0 – do not accept the license agreement1 – accept the license agreement</p></td>
</tr>
<tr class="odd">
<td align="left"><p>COMPLIDB_SQLINSTANCE</p></td>
<td align="left"><p>%computername%</p></td>
<td align="left"><p>SQL Server instance name for the Audit Database – replace <strong>%computername%</strong> with the computer name</p></td>
</tr>
<tr class="even">
<td align="left"><p>RECOVERYANDHWDB_SQLINSTANCE</p></td>
<td align="left"><p>%computername%</p></td>
<td align="left"><p>SQL Server instance name for the Recovery Database - replace <strong>%computername%</strong> with the computer name</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SRS_INSTANCENAME</p></td>
<td align="left"><p>%computername%</p></td>
<td align="left"><p>SQL Server Reporting Server instance where the Audit reports will be installed – replace %computername% with the computer name</p></td>
</tr>
<tr class="even">
<td align="left"><p>REPORTS_USERACCOUNT</p></td>
<td align="left"><p>[UserDomain][UserName1]</p></td>
<td align="left"><p>Domain and user account of the Reporting Services service account that will access the Compliance and Audit database</p></td>
</tr>
<tr class="odd">
<td align="left"><p>REPORTS_USERACCOUNTPW</p></td>
<td align="left"><p>[UserPwd1]</p></td>
<td align="left"><p>Password of the Reporting Services service account that will access the Compliance and Audit database</p></td>
</tr>
<tr class="even">
<td align="left"><p>ADMINANDMON_WEBSITE_PORT</p></td>
<td align="left"><p>83</p></td>
<td align="left"><p>Port for the Administration and Monitoring website; “83” is only an example</p></td>
</tr>
<tr class="odd">
<td align="left"><p>WEBSITE_PORT</p></td>
<td align="left"><p>83</p></td>
<td align="left"><p>Port for the Self-Service Portal website; “83” is only an example</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Deploying the MBAM 2.0 Server Infrastructure](deploying-the-mbam-20-server-infrastructure-mbam-2.md)

 

 





