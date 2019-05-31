---
title: Planning for MBAM 2.5 Groups and Accounts
description: Planning for MBAM 2.5 Groups and Accounts
author: dansimp
ms.assetid: 73bb9fe5-5900-4b6f-b271-ade62991fca1
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 11/02/2016
---


# Planning for MBAM 2.5 Groups and Accounts


This topic lists the roles and accounts that you must create in Active Directory Domain Services (AD DS) to provide security and access rights for the Microsoft BitLocker Administration and Monitoring (MBAM) databases, reports, and web applications. For each role and account, the corresponding field in the MBAM Server Configuration wizard is provided. For a list of Windows PowerShell cmdlets and parameters that correspond to these accounts, see [Configuring MBAM 2.5 Server Features by Using Windows PowerShell](configuring-mbam-25-server-features-by-using-windows-powershell.md#bkmk-reqd-posh-accts).

**Note**  
MBAM does not support the use of managed service accounts.

 

## Database accounts


Create the following accounts for the Compliance and Audit Database and the Recovery Database.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Account name and purpose</th>
<th align="left">Account type</th>
<th align="left">MBAM Server Configuration wizard field that corresponds to this account</th>
<th align="left">Description of the MBAM Server Configuration wizard field that corresponds to this account</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Compliance and Audit Database and Recovery Database read/write user or group for reports</p></td>
<td align="left"><p>User or Group</p></td>
<td align="left"><p>Read/write access domain user or group</p></td>
<td align="left"><p>Domain user or group that has read/write access to the Compliance and Audit Database and the Recovery Database to enable the web applications to access the data and reports in these databases.</p>
<p>If you enter a user name in this field, it must be the same value as the value in the <strong>Web service application pool domain account</strong> field on the <strong>Configure Web Applications</strong> page.</p>
<p>If you enter a group name in this field, the value in the <strong>Web service application pool domain account</strong> field on the <strong>Configure Web Applications</strong> page must be a member of the group you enter in this field.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance and Audit Database read-only user or group for reports</p></td>
<td align="left"><p>User or Group</p></td>
<td align="left"><p>Read-only access domain user or group</p></td>
<td align="left"><p>Name of the user or group that will have read-only access to the Compliance and Audit Database to enable the reports to access the compliance and audit data in this database.</p>
<p>If you enter a user name in this field, it must be the same user as the one you specify in the <strong>Compliance and Audit Database domain account</strong> field on the <strong>Configure Reports</strong> page.</p>
<p>If you enter a group name in this field, the value that you specify in the <strong>Compliance and Audit Database domain account</strong> field on the <strong>Configure Reports</strong> page must be a member of the group that you specify in this field.</p></td>
</tr>
</tbody>
</table>

 

## Reporting accounts


Create the following accounts for the Reports feature.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Account name/purpose</th>
<th align="left">Account type</th>
<th align="left">MBAM Server Configuration wizard field that corresponds to this account</th>
<th align="left">Description of the MBAM Server Configuration wizard field that corresponds to this account</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Reports read-only domain access group</p></td>
<td align="left"><p>Group</p></td>
<td align="left"><p>Reporting role domain group</p></td>
<td align="left"><p>Specifies the domain user group that has read-only access to the reports in the Administration and Monitoring Website. The group you specify must be the same group you specified for the Reports Read Only Access Group parameter when the web apps are enabled.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Compliance and Audit Database domain user account</p></td>
<td align="left"><p>User</p></td>
<td align="left"><p>Compliance and Audit Database domain account</p></td>
<td align="left"><p>Domain user account and password that the local SQL Server Reporting Services instance uses to access the Compliance and Audit Database. This account requires <strong>Log On as Batch</strong> rights to the SQL Server Reporting Services server.</p>
<p>If the value you enter in the <strong>Read-only access domain user or group</strong> field on the <strong>Configure Databases</strong> page is a user name, you must enter that same value in this field.</p>
<p>If the value you enter in the <strong>Read-only access domain user or group</strong> field on the <strong>Configure Databases</strong> page is a group name, the value that you enter in this field must be a member of that group.</p>
<p>Configure the password for this account to never expire. The user account should be able to access all data that is available to the MBAM Reports Users group.</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-helpdesk-roles"></a>Administration and Monitoring Website (Help Desk) accounts


Create the following accounts for the Administration and Monitoring Website.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Account name/purpose</th>
<th align="left">Account type</th>
<th align="left">MBAM Server Configuration wizard field that corresponds to this account</th>
<th align="left">Description of the MBAM Server Configuration wizard field that corresponds to this account</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Web service application pool domain account</p></td>
<td align="left"><p>User</p></td>
<td align="left"><p>Web service application pool domain account</p></td>
<td align="left"><p>Domain user account to be used by the application pool for the web applications.</p>
<p>If you enter a user name in the <strong>Read/write access domain user or group</strong> field on the <strong>Configure Databases</strong> page, you must enter that same value in this field.</p>
<p>If you enter a group name in the <strong>Read/write access domain user or group</strong> field on the <strong>Configure Databases</strong> page, the value you enter in this field must be a member of that group.</p>
<p>If you do not specify credentials, the credentials that were specified for any previously enabled web application will be used. All web applications must use the same application pool credentials. If you specify different credentials for different web applications, the most recently specified value will be used.</p>
<div class="alert">
<strong>Important</strong>  
<p>For improved security, set the account that is specified in the credentials to have limited user rights.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Advanced Helpdesk Users access group</p></td>
<td align="left"><p>Group</p></td>
<td align="left"><p>MBAM Advanced Helpdesk Users</p></td>
<td align="left"><p>Domain user group whose members have access to all recovery areas of the Administration and Monitoring Website. Users who have this role have to enter only the recovery key, and not the end user’s domain and user name, when helping end users recover their drives. If a user is a member of both the MBAM Helpdesk Users group and the MBAM Advanced Helpdesk Users group, the MBAM Advanced Helpdesk Users group permissions override the MBAM Helpdesk Group permissions.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Helpdesk Users access group</p></td>
<td align="left"><p>Group</p></td>
<td align="left"><p>MBAM Helpdesk Users</p></td>
<td align="left"><p>Domain user group whose members have access to the Manage TPM and Drive Recovery areas of the MBAM Administration and Monitoring Website. Individuals who have this role must fill-in all fields, including the end-user’s domain and account name, when they use either option.</p>
<p>If a user is a member of both the MBAM Helpdesk Users group and the MBAM Advanced Helpdesk Users group, the MBAM Advanced Helpdesk Users group permissions override the MBAM Helpdesk Group permissions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Report Users access group</p></td>
<td align="left"><p>Group</p></td>
<td align="left"><p>MBAM Report Users</p></td>
<td align="left"><p>Domain user group whose members have read-only access to the reports in the Reports area of the Administration and Monitoring Website.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Data Migration User Group</p></td>
<td align="left"><p>Group</p></td>
<td align="left"><p>MBAM Data Migration Users</p></td>
<td align="left"><p>Optional domain user group whose members have permissions to write data to MBAM by using the MBAM Recovery and Hardware Service running on the MBAM server. This account is generally used with the Write-Mbam* cmdlets to write recovery and TPM data from Active Directory into the MBAM database.</p>
<p>For more information, see [MBAM 2.5 Security Considerations](mbam-25-security-considerations.md).</p></td>
</tr>
</tbody>
</table>

 


## Related topics


[Preparing your Environment for MBAM 2.5](preparing-your-environment-for-mbam-25.md)

[MBAM 2.5 Deployment Prerequisites](mbam-25-deployment-prerequisites.md)

 

## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring). 
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam). 





