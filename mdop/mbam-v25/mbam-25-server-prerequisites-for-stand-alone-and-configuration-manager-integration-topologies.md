---
title: MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies
description: MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies
author: jamiejdt
ms.assetid: 76a6047a-5c6e-42ff-af09-a6f382a69537
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# MBAM 2.5 Server Prerequisites for Stand-alone and Configuration Manager Integration Topologies


Before starting the Microsoft BitLocker Administration and Monitoring (MBAM) installation, you must complete the prerequisites listed in this topic. These prerequisites apply to the MBAM Stand-alone topology and System Center Configuration Manager Integration topology.

If you are deploying MBAM with System Center Configuration Manager, you must complete additional prerequisites, which are listed in [MBAM 2.5 Server Prerequisites that Apply Only to the Configuration Manager Integration Topology](mbam-25-server-prerequisites-that-apply-only-to-the-configuration-manager-integration-topology.md).

For a list of the supported hardware and operating systems for MBAM, see [MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md).

**Important**  
If BitLocker was used without MBAM, you must decrypt the drive and then clear TPM using tpm.msc. MBAM cannot take ownership of TPM if the client PC is already encrypted and the TPM owner password created.

 

## Required MBAM roles and accounts


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Groups created in Active Directory Domain Services (AD DS)</p></td>
<td align="left"><p>See [Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md) for a description of these groups and accounts.</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for the Recovery Database


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p></td>
<td align="left"><p>Install Microsoft SQL Server with SQL_Latin1_General_CP1_CI_AS collation.</p>
<p>See [MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md) for supported versions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Required SQL Server permissions</p></td>
<td align="left"><p>Required permissions:</p>
<ul>
<li><p>SQL Server instance login server roles:</p>
<ul>
<li><p>dbcreator</p></li>
<li><p>processadmin</p></li>
</ul></li>
<li><p>SQL Server Reporting Services instance rights:</p>
<ul>
<li><p>Create Folders</p></li>
<li><p>Publish Reports</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Optional - Install the Transparent Data Encryption (TDE) feature available in SQL Server</p></td>
<td align="left"><p>The TDE SQL Server feature performs real-time I/O encryption and decryption of the data and log files, which can help you to comply with laws, regulations, and guidelines that apply to various industries.</p>
<div class="alert">
<strong>Note</strong>  
<p>TDE performs real-time decryption of database information. This means that, if you are viewing recovery key information in the SQL Server database and you are logged on under an account that has permissions to the database, the recovery key information is visible. To read more about TDE, see [MBAM 2.5 Security Considerations](mbam-25-security-considerations.md).</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>SQL Server Database Engine Services</p></td>
<td align="left"><p>SQL Server Database Engine Services must be installed and running during MBAM Server installation.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows PowerShell 3.0 or later</p></td>
<td align="left"><p>Windows PowerShell does not have to be installed on the Recovery Database server if you are using Windows PowerShell to configure the database from a remote computer.</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for the Compliance and Audit Database


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p></td>
<td align="left"><p>Install SQL Server with SQL_Latin1_General_CP1_CI_AS collation.</p>
<p>See [MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md) for supported versions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Required SQL Server permissions</p></td>
<td align="left"><p>Required permissions:</p>
<ul>
<li><p>SQL Server instance login server roles:</p>
<ul>
<li><p>dbcreator</p></li>
<li><p>processadmin</p></li>
</ul></li>
<li><p>SQL Server Reporting Services instance rights:</p>
<ul>
<li><p>Create Folders</p></li>
<li><p>Publish Reports</p></li>
</ul></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Optional - Install the Transparent Data Encryption (TDE) feature in SQL Server</p></td>
<td align="left"><p>The TDE SQL Server feature performs real-time I/O encryption and decryption of the data and log files, which can help you to comply with laws, regulations, and guidelines that apply to various industries.</p>
<p>TDE performs real-time decryption of database information. This means that, if you are viewing recovery key information in the SQL Server database and you are logged on under an account that has permissions to the database, the recovery key information is visible. To read more about TDE, see [MBAM 2.5 Security Considerations](mbam-25-security-considerations.md).</p></td>
</tr>
<tr class="even">
<td align="left"><p>SQL Server Database Engine Services</p></td>
<td align="left"><p>SQL Server Database Engine Services must be installed and running during MBAM Server installation. However, SQL Server can be running remotely; it doesn’t have to be on the same server on which you are installing the MBAM Server software.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows PowerShell 3.0 or later</p></td>
<td align="left"><p>Windows PowerShell does not have to be installed on the Compliance and Audit Database server if you are using Windows PowerShell to configure the database from a remote computer.</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for the Reports


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of SQL Server</p></td>
<td align="left"><p>Install SQL Server with SQL_Latin1_General_CP1_CI_AS collation.</p>
<p>See [MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md) for supported versions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>SQL Server Reporting Services (SSRS)</p></td>
<td align="left"><p>SSRS must be installed and running during the MBAM Server installation.</p>
<p>Configure SSRS in &quot;native&quot; mode and not in unconfigured or &quot;SharePoint&quot; mode.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>SSRS instance rights – required for configuring Reports only if you are installing databases on a separate server from the server where Reports are configured.</p></td>
<td align="left"><p>Required instance rights:</p>
<ul>
<li><p>Create Folders</p></li>
<li><p>Publish Reports</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>Windows PowerShell 3.0 or later</p></td>
<td align="left"><p>Windows PowerShell does not have to be installed on this Database server if you are using Windows PowerShell to configure the database from a remote computer.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-prereqsams"></a>Prerequisites for the Administration and Monitoring Server


The following table lists the installation prerequisites for the MBAM Administration and Monitoring Server.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Windows Server Web Server Role</p></td>
<td align="left"><p>This role must be added to a server operating system that is supported for the Administration and Monitoring Server feature.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Web Server (IIS) Management Tools</p></td>
<td align="left"><p>Click <strong>IIS Management Scripts and Tools</strong>.</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>SSL Certificate</strong></p></td>
<td align="left"><p>Optional. To secure communication between the client computers and the web services, you must obtain and install a certificate that a trusted security authority signed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Web Server Role Services</p></td>
<td align="left"><p><strong>Common HTTP Features:</strong></p>
<ul>
<li><p>Static Content</p></li>
<li><p>Default Document</p></li>
</ul>
<p><strong>Application Development:</strong></p>
<ul>
<li><p>ASP.NET</p></li>
<li><p>.NET Extensibility</p></li>
<li><p>ISAPI Extensions</p></li>
<li><p>ISAPI Filters</p></li>
</ul>
<p><strong>Security:</strong></p>
<ul>
<li><p>Windows Authentication</p></li>
<li><p>Request Filtering</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Windows Server Features</p></td>
<td align="left"><p><strong>.NET Framework 4.5 features:</strong></p>
<ul>
<li><p><strong>.NET Framework 4.5 or 4.6</strong></p>
<ul>
<li><p><strong>Windows Server 2016</strong> - .NET Framework 4.6 is already installed for these versions of Windows Server, but you must enable it.</p></li>  
<li><p><strong>Windows Server 2012 or Windows Server 2012 R2</strong> - .NET Framework 4.5 is already installed for these versions of Windows Server, but you must enable it.</p></li>
<li><p><strong>Windows Server 2008 R2</strong> - .NET Framework 4.5 is not included with Windows Server 2008 R2, so you must [download Microsoft .NET Framework 4.5](https://go.microsoft.com/fwlink/?LinkId=392318) and install it separately.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you are upgrading from MBAM 2.0 or MBAM 2.0 SP1 and need to install .NET Framework 4.5, see [Release Notes for MBAM 2.5](release-notes-for-mbam-25.md) for an additional required step to make the websites work.</p>
</div>
<div>
 
</div></li>
</ul></li>
<li><p><strong>WCF Activation</strong></p>
<ul>
<li><p>HTTP Activation</p></li>
<li><p>Non-HTTP Activation (Only for Windows Server 2008, 2012 or 2012 R2)</p>
<p></p></li>
</ul></li>
<li><p><strong>TCP Activation</strong></p></li>
</ul>
<p><strong>Windows Process Activation Service:</strong></p>
<ul>
<li><p>Process Model</p></li>
<li><p>.NET Framework Environment</p></li>
<li><p>Configuration APIs</p></li>
</ul></td>
</tr>
<tr class="even">
<td align="left"><p>ASP.NET MVC 4.0</p></td>
<td align="left"><p>[ASP.NET MVC 4 download](https://go.microsoft.com/fwlink/?LinkId=392271)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Service Principal Name (SPN)</p></td>
<td align="left"><p>The web applications require an SPN for the virtual host name under the domain account that you use for the web application pools.</p>
<p>If your administrative rights permit you to create SPNs in Active Directory Domain Services, MBAM creates the SPN for you. See [Setspn](https://technet.microsoft.com/library/cc731241.aspx) for information about the rights required to create SPNs.</p>
<p>If you do not have administrative rights to create SPNs, you must ask the Active Directory administrators in your organization to create the SPN for you by using the following command.</p>
<pre class="syntax" space="preserve"><code>Setspn -s http/mbamvirtual contoso\mbamapppooluser
Setspn -s http/mbamvirtual.contoso.com contoso\mbamapppooluser</code></pre>
<p>In the code example, the virtual host name is mbamvirtual.contoso.com, and the domain account used for the web application pools is contoso\mbamapppooluser.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you are setting up Load Balancing, use the same application pool account on all servers.</p>
</div>
<div>
 
</div>
<p>For more information about registering SPNs for fully qualified, NetBIOS, and custom host names, see [Planning How to Secure the MBAM Websites](planning-how-to-secure-the-mbam-websites.md).</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for the Self-Service Portal


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Supported version of Windows Server</p></td>
<td align="left"><p>See [MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md) for supported versions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>ASP.NET MVC 4.0</p></td>
<td align="left"><p>[ASP.NET MVC 4 download](https://go.microsoft.com/fwlink/?LinkId=392271)</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Web Service IIS Management Tools</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Service Principal Name (SPN)</p></td>
<td align="left"><p>The web applications require an SPN for the virtual host name under the domain account that you use for the web application pools.</p>
<p>If your administrative rights permit you to create SPNs in Active Directory Domain Services, MBAM creates the SPN for you. See [Setspn](https://technet.microsoft.com/library/cc731241.aspx) for information about the rights required to create SPNs.</p>
<p>If you do not have administrative rights to create SPNs, you must ask the Active Directory administrators in your organization administrators in your organization to create the SPN for you by using the following command.</p>
<pre class="syntax" space="preserve"><code>Setspn -s http/mbamvirtual contoso\mbamapppooluser
Setspn -s http/mbamvirtual.contoso.com contoso\mbamapppooluser</code></pre>
<p>In the code example, the virtual host name is mbamvirtual.contoso.com, and the domain account used for the web application pools is contoso\mbamapppooluser.</p>
<div class="alert">
<strong>Note</strong>  
<p>If you are setting up Load Balancing, use the same application pool account on all servers.</p>
</div>
<div>
 
</div>
<p>For more information about registering SPNs for fully qualified, NetBIOS, and custom host names, see [Planning How to Secure the MBAM Websites](planning-how-to-secure-the-mbam-websites.md).</p></td>
</tr>
</tbody>
</table>

 

## Prerequisites for the Management Workstation


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Before installing the MBAM Client, download the MBAM Group Policy Templates from [How to Get MDOP Group Policy (.admx) Templates](https://go.microsoft.com/fwlink/p/?LinkId=393941) and configure them with the settings that you want to implement in your enterprise for BitLocker Drive Encryption.</p></td>
<td align="left"><p>Before installing the MBAM Client, do the following:</p>
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">What to do</th>
<th align="left">Where to get instructions</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Copy the MBAM Group Policy Templates</p></td>
<td align="left"><p>[Copying the MBAM 2.5 Group Policy Templates](copying-the-mbam-25-group-policy-templates.md)</p></td>
</tr>
<tr class="even">
<td align="left"><p>Edit the Group Policy settings</p></td>
<td align="left"><p>[Editing the MBAM 2.5 Group Policy Settings](editing-the-mbam-25-group-policy-settings.md)</p></td>
</tr>
</tbody>
</table>
<p> </p></td>
</tr>
</tbody>
</table>

 



## Related topics


[Preparing your Environment for MBAM 2.5](preparing-your-environment-for-mbam-25.md)

[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)

[MBAM 2.5 Supported Configurations](mbam-25-supported-configurations.md)

 

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).




