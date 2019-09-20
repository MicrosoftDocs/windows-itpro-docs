---
title: How to Configure the MBAM 2.5 Reports
description: How to Configure the MBAM 2.5 Reports
author: dansimp
ms.assetid: ec462879-0253-4d9c-83c7-a9bcad479725
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure the MBAM 2.5 Reports


This topic explains how to configure the Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 Reports feature by using:

-   A Windows PowerShell cmdlet

-   The MBAM Server Configuration wizard

The instructions are based on the recommended architecture in [High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md).

**Before you start the configuration:**

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
<td align="left"><p><a href="high-level-architecture-for-mbam-25.md" data-raw-source="[High-Level Architecture for MBAM 2.5](high-level-architecture-for-mbam-25.md)">High-Level Architecture for MBAM 2.5</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>Review the supported configurations for MBAM.</p></td>
<td align="left"><p><a href="mbam-25-supported-configurations.md" data-raw-source="[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)">MBAM 2.5 Supported Configurations</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Complete the required prerequisites on each server.</p></td>
<td align="left"><ul>
<li><p><a href="mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md" data-raw-source="[MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies](mbam-25-server-prerequisites-for-stand-alone-and-configuration-manager-integration-topologies.md)">MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies</a></p></li>
<li><p><a href="mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md" data-raw-source="[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md)">MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology</a> (if applicable)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Install the MBAM Server software on each server where you plan to configure an MBAM Server feature.</p></td>
<td align="left"><p><a href="installing-the-mbam-25-server-software.md" data-raw-source="[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)">Installing the MBAM 2.5 Server Software</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Review the prerequisites for using Windows PowerShell if you plan to use Windows PowerShell cmdlets to configure MBAM Server features.</p></td>
<td align="left"><p><a href="configuring-mbam-25-server-features-by-using-windows-powershell.md" data-raw-source="[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)">Configuring MBAM 2.5 Server Features by Using Windows PowerShell</a></p></td>
</tr>
</tbody>
</table>



**To configure the Reports by using Windows PowerShell**

1.  Before you start the configuration, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md) to review the prerequisites for using Windows PowerShell.

2.  Use the **Enable-MbamReport** Windows PowerShell cmdlet to configure the Reports. To get information about this Windows PowerShell cmdlet, type **Get-Help Enable-MbamReport**.

**To configure the Reports by using the wizard**

1. On the server where you want to configure the Reports, start the **MBAM Server Configuration** wizard. You can select **MBAM Server Configuration** from the **Start** menu to open the wizard.

2. Click **Add New Features**, select **Reports**, and then click **Next**. The wizard checks that all prerequisites for the Reports have been met.

3. Click **Next** to continue.

4. Using the following descriptions, enter the field values in the wizard:

   <table>
   <colgroup>
   <col width="50%" />
   <col width="50%" />
   </colgroup>
   <thead>
   <tr class="header">
   <th align="left">Field</th>
   <th align="left">Description</th>
   </tr>
   </thead>
   <tbody>
   <tr class="odd">
   <td align="left"><p><strong>SQL Server Reporting Services instance</strong></p></td>
   <td align="left"><p>Instance of SQL Server Reporting Services where the Reports will be configured.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>Reporting role domain group</strong></p></td>
   <td align="left"><p>Name of the domain Users group whose members have rights to access the reports on the Administration and Monitoring Server.</p></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><strong>SQL Server name</strong></p></td>
   <td align="left"><p>Name of the server where the Compliance and Audit Database is configured.</p></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>SQL Server database instance</strong></p></td>
   <td align="left"><p>Name of the instance of SQL Server (for example, <em>MSSQLSERVER</em>) where the Compliance and Audit Database is configured.</p>
   <div class="alert">
   <strong>Note</strong><br/><p>You must add an exception on the Reports computer to enable inbound traffic on the port of the Reporting Server (the default port is 80).</p>
   </div>
   <div>

   </div></td>
   </tr>
   <tr class="odd">
   <td align="left"><p><strong>Database name</strong></p></td>
   <td align="left"><p>Name of the Compliance and Audit Database. By default, the database name is <strong>MBAM Compliance Status</strong>, although you can change the name when you configure the Compliance and Audit Database.</p>
   <div class="alert">
   <strong>Note</strong><br/><p>If you are upgrading from a previous version of MBAM, you must use the same database name as the name used in your previous deployment.</p>
   </div>
   <div>

   </div></td>
   </tr>
   <tr class="even">
   <td align="left"><p><strong>Compliance and Audit Database domain account</strong></p></td>
   <td align="left"><p>Domain user account and password to access the Compliance and Audit Database.</p>
   <p>If the value you enter in the <strong>Read-only access domain user or group</strong> field on the <strong>Configure Databases</strong> page is a user, you must enter that same value in this field.</p>
   <p>If the value that you enter in the <strong>Read-only access domain user or group</strong> field on the <strong>Configure Databases</strong> page is a group, the value that you enter in this field must be a member of that group.</p>
   <p>Configure the password for this account to never expire. The user account should be able to access all data that is available to the MBAM Reports Users group.</p></td>
   </tr>
   </tbody>
   </table>



5. When you finish your entries, click **Next**.

   The wizard checks that all prerequisites for the Reports feature have been met.

6. Click **Next** to continue.

7. On the **Summary** page, review the features that will be added.

   **Note**  
   To create a Windows PowerShell script of the entries that you just made, click **Export PowerShell Script**, and then save the script.



8. Click **Add** to add the Reports on the server, and then click **Close**.



## Related topics


[Server Event Logs](server-event-logs.md)

[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)

[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)

[Validating the MBAM 2.5 Server Feature Configuration](validating-the-mbam-25-server-feature-configuration.md)


## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).






