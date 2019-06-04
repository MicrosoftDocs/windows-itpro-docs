---
title: How to Configure the MBAM 2.5 Databases
description: How to Configure the MBAM 2.5 Databases
author: dansimp
ms.assetid: 66e1c81b-f785-4398-9175-bb5f112c2a35
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Configure the MBAM 2.5 Databases


This topic explains how to configure the Microsoft BitLocker Administration and Monitoring (MBAM) 2.5 Compliance and Audit Database and the Recovery Database by using:

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
<li><p>[MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md) (if applicable)</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Install the MBAM Server software on each server where you plan to configure an MBAM Server feature.</p>
<div class="alert">
<strong>Note</strong>  
<p>You can install the databases to a remote SQL Server computer by using Windows PowerShell or an exported data-tier application (DAC) package. For more information about DAC packages, see [Data-tier Applications](https://technet.microsoft.com/library/ee210546.aspx).</p>
</div>
<div>
 
</div></td>
<td align="left"><p>[Installing the MBAM 2.5 Server Software](installing-the-mbam-25-server-software.md)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Review the prerequisites for using Windows PowerShell if you plan to use Windows PowerShell cmdlets to configure MBAM Server features.</p></td>
<td align="left"><p>[Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md)</p></td>
</tr>
</tbody>
</table>

 

**To configure the databases by using Windows PowerShell**

1.  Before you start the configuration, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md) to review the prerequisites for using Windows PowerShell.

2.  Use the **Enable-MbamDatabase** Windows PowerShell cmdlet to configure the databases. To get information about this Windows PowerShell cmdlet, type **Get-Help Enable-MbamDatabase**.

**To configure the Compliance and Audit Database by using the wizard**

1.  On the server where you want to configure the databases, start the **MBAM Server Configuration** wizard. You can select **MBAM Server Configuration** from the **Start** menu to open the wizard.

2.  Click **Add New Features**, select **Compliance and Audit Database** and **Recovery Database**, and then click **Next**. The wizard checks that all prerequisites for the databases have been met.

3.  If the prerequisite check is successful, click **Next** to continue. Otherwise, resolve any missing prerequisites, and then click **Check prerequisites again**.

4.  Using the following descriptions, enter the field values in the wizard:

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
    <td align="left"><p><strong>SQL Server name</strong></p></td>
    <td align="left"><p>Name of the server where you are configuring the Compliance and Audit Database.</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>You must add an exception on the Compliance and Audit Database computer to enable inbound traffic on the Microsoft SQL Server port. The default port number is 1433.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>SQL Server database instance</strong></p></td>
    <td align="left"><p>Name of the database instance where the compliance and audit data will be stored. You must also specify where the database information will be located.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Database name</strong></p></td>
    <td align="left"><p>Name of the database that will store the compliance data.</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>If you are upgrading from a previous version of MBAM, you must use the same database name as the name that was used in your previous deployment.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Read/write access domain user or group</strong></p></td>
    <td align="left"><p>Domain user or group that has read/write permission to this database to enable the web applications to access the data and reports in this database.</p>
    <p>If you enter a user in this field, it must be the same value as the value in the <strong>Web service application pool domain account</strong> field on the <strong>Configure Web Applications</strong> page.</p>
    <p>If you enter a group in this field, the value in the <strong>Web service application pool domain account</strong> field on the <strong>Configure Web Applications</strong> page must be a member of the group you enter in this field.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Read-only access domain user or group</strong></p></td>
    <td align="left"><p>Name of the user or group that will have read-only permission to this database to enable the reports to access the compliance data in this database.</p>
    <p>If you enter a user in this field, it must be the same user as the one you specify in the <strong>Compliance and Audit Database domain account</strong> field on the <strong>Configure Reports</strong> page.</p>
    <p>If you enter a group in this field, the value that you specify in the <strong>Compliance and Audit Database domain account</strong> field on the <strong>Configure Reports</strong> page must be a member of the group that you specify in this field.</p></td>
    </tr>
    </tbody>
    </table>

     

5.  Continue to the next section to configure the Recovery Database.

**To configure the Recovery Database by using the wizard**

1.  Using the following descriptions, enter the field values in the wizard:

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
    <td align="left"><p><strong>SQL Server name</strong></p></td>
    <td align="left"><p>Name of the server where you are configuring the Recovery Database.</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>You must add an exception on the Recovery Database computer to enable inbound traffic on the Microsoft SQL Server port. The default port number is 1433.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>SQL Server database instance</strong></p></td>
    <td align="left"><p>Name of the database instance where the recovery data will be stored. You must also specify where the database information will be located.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Database name</strong></p></td>
    <td align="left"><p>Name of the database that will store the recovery data.</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>If you are upgrading from a previous version of MBAM, you must use the same database name as the name that was used in your previous deployment.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Read/write access domain user or group</strong></p></td>
    <td align="left"><p>Domain user or group that has read/write permission to this database to enable the web applications to access the data and reports in this database.</p>
    <p>If you enter a user in this field, it must be the same value as the value in the <strong>Web service application pool domain account</strong> field on the <strong>Configure Web Applications</strong> page.</p>
    <p>If you enter a group in this field, the value in the <strong>Web service application pool domain account</strong> field on the <strong>Configure Web Applications</strong> page must be a member of the group you enter in this field.</p></td>
    </tr>
    </tbody>
    </table>

     

2.  When you finish your entries, click **Next**.

    The wizard checks that all prerequisites for the databases have been met.

3.  If the prerequisite check is successful, click **Next** to continue. Otherwise, resolve any missing prerequisites, and then click **Next** again.

4.  On the **Summary** page, review the features that will be added.

    **Note**  
    To create a Windows PowerShell script of the entries that you just made, click **Export PowerShell Script**, and then save the script.

     

5.  Click **Add** to add the MBAM databases on the server, and then click **Close**.



## Related topics


[Server Event Logs](server-event-logs.md)

[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)

[How to Configure the MBAM 2.5 Reports](how-to-configure-the-mbam-25-reports.md)

[How to Configure the MBAM 2.5 Web Applications](how-to-configure-the-mbam-25-web-applications.md)

[Validating the MBAM 2.5 Server Feature Configuration](validating-the-mbam-25-server-feature-configuration.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





