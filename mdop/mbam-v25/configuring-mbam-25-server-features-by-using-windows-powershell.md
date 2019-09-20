---
title: Configuring MBAM 2.5 Server Features by Using Windows PowerShell
description: Configuring MBAM 2.5 Server Features by Using Windows PowerShell
author: dansimp
ms.assetid: 826429fd-29bb-44be-b47e-5f5c7d20dd1d
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# Configuring MBAM 2.5 Server Features by Using Windows PowerShell


After you install the MBAM 2.5 Server software, you can use configure MBAM 2.5 Server features by using Windows PowerShell cmdlets or the MBAM Server Configuration wizard. This topic describes how to configure MBAM 2.5 by using the Windows PowerShell cmdlets. To use the wizard instead, see [Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md).

## In this topic


This topic includes the following information about using Windows PowerShell to configure MBAM:

-   [How to load Windows PowerShell Help for MBAM 2.5](#bkmk-load-posh-help)

-   [How to get Help about an MBAM Windows PowerShell cmdlet](#bkmk-help-specific-cmdlet)

-   [Configurations that you can do only with Windows PowerShell but not with the MBAM Server Configuration wizard](#bkmk-config-only-posh)

-   [Prerequisites and requirements for using Windows PowerShell to configure MBAM Server features](#bkmk-prereqs-posh-mbamsvr)

-   [Using Windows PowerShell to configure MBAM on a remote computer](#bkmk-remote-config)

-   [Required accounts and corresponding Windows PowerShell cmdlet parameters](#bkmk-reqd-posh-accts)

For information about the **Get-MbamBitLockerRecoveryKey** and **Get-MbamTPMOwnerPassword** Windows PowerShell cmdlets, which are used to administer MBAM, see [Using Windows PowerShell to Administer MBAM 2.5](using-windows-powershell-to-administer-mbam-25.md).

## <a href="" id="bkmk-load-posh-help"></a>How to load Windows PowerShell Help for MBAM 2.5


For a list of the Windows PowerShell cmdlets on TechNet, see [Microsoft Desktop Optimization Pack Automation with Windows PowerShell](https://go.microsoft.com/fwlink/?LinkId=392816).

**To load the MBAM 2.5 Help for Windows PowerShell cmdlets after installing the MBAM Server software**

1.  Open Windows PowerShell or Windows PowerShell Integrated Scripting Environment (ISE).

2.  Type **Update-Help –Module Microsoft.MBAM**.

## <a href="" id="bkmk-help-specific-cmdlet"></a>How to get Help about an MBAM Windows PowerShell cmdlet


Windows PowerShell Help for MBAM is available in the following formats:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Windows PowerShell Help format</th>
<th align="left">More information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>At a Windows PowerShell command prompt, type <strong>Get-Help</strong> &lt;<em>cmdlet</em>&gt;</p></td>
<td align="left"><p>To upload the latest Windows PowerShell cmdlets, follow the instructions in the previous section on how to load Windows PowerShell Help for MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>On TechNet as webpages</p></td>
<td align="left"><p><a href="https://go.microsoft.com/fwlink/?LinkId=393498" data-raw-source="https://go.microsoft.com/fwlink/?LinkId=393498">https://go.microsoft.com/fwlink/?LinkId=393498</a></p></td>
</tr>
<tr class="odd">
<td align="left"><p>On the Download Center as a Word .docx file</p></td>
<td align="left"><p><a href="https://go.microsoft.com/fwlink/?LinkId=393497" data-raw-source="https://go.microsoft.com/fwlink/?LinkId=393497">https://go.microsoft.com/fwlink/?LinkId=393497</a></p></td>
</tr>
<tr class="even">
<td align="left"><p>On the Download Center as a .pdf file</p></td>
<td align="left"><p><a href="https://go.microsoft.com/fwlink/?LinkId=393499" data-raw-source="https://go.microsoft.com/fwlink/?LinkId=393499">https://go.microsoft.com/fwlink/?LinkId=393499</a></p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-config-only-posh"></a>Configurations that you can do only with Windows PowerShell but not with the MBAM Server Configuration wizard


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Configurations that you can do only by using Windows PowerShell</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Install the web services on a separate computer from the web applications.</p></td>
<td align="left"><p>Using the wizard, you must install the web services and web applications on the same computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Enable reports on a separate reporting services point without installing all of the Configuration Manager objects.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Delete all of the objects from Configuration Manager.</p></td>
<td align="left"><p>Deleting the objects in turn deletes all of the compliance data from Configuration Manager.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Enter a custom connection string for the databases.</p></td>
<td align="left"><p>Example: To configure the web applications to work with mirroring, you must use the <strong>Enable-MbamWebApplication</strong> cmdlet to specify the appropriate failover partner syntax in the connection string.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Skip validation and configure a feature even though the prerequisite check failed.</p></td>
<td align="left"></td>
</tr>
</tbody>
</table>

 

**Note**  
You cannot disable the MBAM databases with a Windows PowerShell cmdlet or the MBAM Server Configuration wizard. To prevent the accidental removal of your compliance and audit data, database administrators must remove databases manually.

 

## <a href="" id="bkmk-prereqs-posh-mbamsvr"></a>Prerequisites and requirements for using Windows PowerShell to configure MBAM Server features


Before starting the configuration, complete the following prerequisites.

**Account-related prerequisites**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details or additional information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Create the required accounts.</p></td>
<td align="left"><p>See section <strong>Required accounts and corresponding Windows PowerShell cmdlet parameters</strong> later in this topic.</p></td>
</tr>
<tr class="even">
<td align="left"><p>User accounts and groups that you pass as parameters to the Windows PowerShell cmdlets must be valid accounts in the domain.</p></td>
<td align="left"><p>You cannot use local accounts.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Specify accounts in the down-level format.</p></td>
<td align="left"><p>Examples:</p>
<p>domainNetBiosName\userdomainNetBiosName\group</p></td>
</tr>
</tbody>
</table>

 

**Permission-related prerequisites**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Prerequisite</th>
<th align="left">Details or additional information</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>You must be an administrator on the local computer where you are configuring the MBAM feature.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>Use an elevated Windows PowerShell command prompt to run all Windows PowerShell cmdlets.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>For the <strong>Enable-MbamDatabase</strong> cmdlet only:</p>
<p>You must have &quot;create any database&quot; permissions on the instance of the target Microsoft SQL Server database.</p>
<p>This user account must be a part of the local administrators group or the Backup Operators group to register the MBAM Volume Shadow Copy Service (VSS) Writer.</p></td>
<td align="left"><p>By default, the database administrator or system administrator has the required &quot;create any database&quot; permissions.</p>
<p></p>
<p>For more information about VSS Writer, see <a href="https://go.microsoft.com/fwlink/?LinkId=392814" data-raw-source="[Volume Shadow Copy Service](https://go.microsoft.com/fwlink/?LinkId=392814)">Volume Shadow Copy Service</a>.</p></td>
</tr>
<tr class="even">
<td align="left"><p>For the <strong>System Center Configuration Manager Integration</strong> feature only:</p>
<p>The user who enables this feature must have these rights in Configuration Manager:</p></td>
<td align="left"><table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Type of rights in Configuration Manager</th>
<th align="left">Required rights</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Configuration Manager Site rights:</p></td>
<td align="left"><p>- Read</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configuration Manager Collection rights:</p></td>
<td align="left"><p>- Create- Delete- Read- Modify- Deploy Configuration Items</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Configuration Manager Configuration item rights:</p></td>
<td align="left"><p>- Create- Delete- Read</p></td>
</tr>
</tbody>
</table>
<p> </p>
<p></p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-remote-config"></a>Using Windows PowerShell to configure MBAM on a remote computer


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>When to use this capability</strong></p></td>
<td align="left"><p>When you want to configure the MBAM 2.5 Server features on a remote computer. The Windows PowerShell cmdlets are running on one computer, and you are configuring the features on a different, remote computer.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>What you have to do</strong></p></td>
<td align="left"><p>To use Windows PowerShell to configure MBAM 2.5 Server features on a remote computer, you must:</p>
<ul>
<li><p>Ensure that the MBAM 2.5 Server software has been installed on the remote computer.</p></li>
<li><p>Use the Credential Security Support Provider (CredSSP) Protocol to open the Windows PowerShell session.</p></li>
<li><p>Enable Windows Remote Management (WinRM). If you fail to enable WinRM and to configure it correctly, the <strong>New-PSSession</strong> cmdlet that is described in this table displays an error and describes how to fix the issue. For more information about WinRM, see <a href="https://go.microsoft.com/fwlink/?LinkId=393064" data-raw-source="[Using Windows Remote Management](https://go.microsoft.com/fwlink/?LinkId=393064)">Using Windows Remote Management</a>.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Why you have to do it</strong></p></td>
<td align="left"><p>This protocol enables the Windows PowerShell cmdlets to connect to Active Directory Domain Services by using the user’s administrative credentials. You might get a validation error if you start the Windows PowerShell session without this protocol.</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>How to start a Windows PowerShell session with the CredSSP protocol</strong></p></td>
<td align="left"><p>Type the following code at the Windows PowerShell prompt:</p>
<p><code>$s = New-PSSession -ComputerName xxx -Authentication Credssp -Credential xxx</code></p>
<p>The following code shows an example.</p>
<p><code>$session = New-PSSession -ComputerName &lt;MBAM_server_name&gt; -Authentication Credssp -Credential (Get-Credential)</code></p>
<p><code>Enter-PSSession $session</code></p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-reqd-posh-accts"></a>Required accounts and corresponding Windows PowerShell cmdlet parameters


The following table describes the accounts that are required to configure MBAM 2.5 Server features. It also lists the corresponding Windows PowerShell cmdlet and parameter for which you have to specify the account during configuration.

Cmdlet
Parameter
Type (User or Group)
Description
Enable-MBAMDatabase

AccessAccount

User or Group

Specify a domain user or group that has read/write permission to this database to give the web applications access to data and reports in this database. If the value is a domain user, then the **WebServiceApplicationPoolCredential** parameter that is used when running the **Enable-MbamWebApplication** cmdlet must use the same user account. If the value is a domain Users group, then the domain account that is used by the **WebServiceApplicationPoolCredential** parameter must be a member of this group.

ReportAccount

User or Group

Specify a domain user or Users group that has read-only permission to this database to provide the MBAM reports access to the compliance and audit data. If the value is a domain user, then the **ComplianceAndAuditDBCredential** parameter of the **Enable-MbamReport** cmdlet must use the same user account. If the value is a domain Users group, then the domain account that is used by the **ComplianceAndAuditDBCredential** parameter must be a member of this group.

Enable-MbamReport

ComplianceAndAuditDBCredential

User

Specifies the administrative credential that the local SSRS instance uses to connect to the MBAM Compliance and Audit Database. The domain user in the administrative credential must be the same as the user account that is used for the **ReportAccount** parameter, which is used while running the **Enable-MbamDatabase** cmdlet. If a domain Users group was used with the **ReportAccount** parameter, this account should be a member of that group.

**Important**  
The account specified in the administrative credentials should have limited user rights for improved security. Also, the password of the account should be set to not expire.

 

ReportsReadOnlyAccessGroup

Group

Specifies the domain user group that has read permissions to the reports. The specified group must be the same group that is used for the **ReportsReadOnlyAccessGroup** parameter in the **Enable-MbamWebApplication** cmdlet.

Enable-MBAMWebApplication

AdvancedHelpdeskAccessGroup

Group

Specifies the domain Users group that has access to all areas of the Administration and Monitoring Website except the Reports area.

HelpdeskAccessGroup

Group

Specifies the domain Users group that has access to the **Manage TPM** and **Drive Recovery** areas of the Administration and Monitoring Website.

ReportsReadOnlyAccessGroup

Group

Specifies the domain Users group that has read permission to the **Reports** area of the Administration and Monitoring Website. The specified group must be the same group that is used for the **ReportsReadOnlyAccessGroup** parameter in the **Enable-MbamReport** cmdlet.

WebServiceApplicationPoolCredential

User

Specifies the domain user to be used by the application pool for the MBAM web applications. It must be the same domain user account that is specified in the **AccessAccount** parameter of the **Enable-MbamDatabase** cmdlet. If a domain Users group was used by the **AccessAccount** parameter when running the **Enable-MbamDatabase** cmdlet, the domain user that is specified here must be a member of that group. If you do not specify the administrative credentials, the administrative credentials that were specified by any previously enabled web application are used. All of the web applications use the same application pool identity. If it is specified multiple times, the most recently specified value is used.

**Important**  
For improved security, set the account that is specified in the administrative credentials to limited user rights. Also, set the password of the account to never expire. Ensure that either the built-in IIS\_IUSRS account or the account that is used for the **WebServiceApplicationPoolCredential** parameter has been added to the **Impersonate a client after authentication** local security setting.

To view the local security setting, open the **Local Security Policy editor**, expand the **Local Policies** node, select the **User Rights Assignment** node, and then double-click the **Impersonate a client after authentication** and **Log on as a batch job** Group Policy settings in the details pane.

 

 




## Related topics


[Configuring the MBAM 2.5 Server Features](configuring-the-mbam-25-server-features.md)

[Validating the MBAM 2.5 Server Feature Configuration](validating-the-mbam-25-server-feature-configuration.md)

[Using Windows PowerShell to Administer MBAM 2.5](using-windows-powershell-to-administer-mbam-25.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





