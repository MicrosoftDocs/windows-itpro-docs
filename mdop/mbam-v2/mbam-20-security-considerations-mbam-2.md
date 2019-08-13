---
title: MBAM 2.0 Security Considerations
description: MBAM 2.0 Security Considerations
author: msfttracyp
ms.assetid: 0aa5c6e2-d92c-4e30-9f6a-b48abb667ae5
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# MBAM 2.0 Security Considerations


This topic contains a brief overview about the accounts and groups, log files, and other security-related considerations for Microsoft BitLocker Administration and Monitoring (MBAM). For more information, follow the links within this article.

## General Security Considerations


**Understand the security risks.** The most serious risk from Microsoft BitLocker Administration and Monitoring is that its functionality could be hijacked by an unauthorized user who could then reconfigure BitLocker encryption and gain BitLocker encryption key data on MBAM Clients. However, the loss of MBAM functionality for a short period of time, due to a denial-of-service attack, does not generally have a catastrophic impact, unlike, for example, e-mail, network communications, light, and power.

**Physically secure your computers**. There is no security without physical security. An attacker who gets physical access to an MBAM Server could potentially use it to attack the entire client base. All potential physical attacks must be considered high risk and mitigated appropriately. MBAM servers should be stored in a secure server room with controlled access. Secure these computers when administrators are not physically present by having the operating system lock the computer, or by using a secured screen saver.

**Apply the most recent security updates to all computers**. Stay informed about new updates for operating systems, Microsoft SQL Server, and MBAM by subscribing to the Security Notification service (<https://go.microsoft.com/fwlink/?LinkId=28819>).

**Use strong passwords or pass phrases**. Always use strong passwords with 15 or more characters for all MBAM and MBAM administrator accounts. Never use blank passwords. For more information about password concepts, see the “Account Passwords and Policies” white paper on TechNet (<https://go.microsoft.com/fwlink/?LinkId=30009>).

## Accounts and Groups in MBAM


The best practice for managing user accounts is to create domain global groups and add user accounts to them. Then, add the domain global accounts to the necessary MBAM local groups on the MBAM Servers.

### Active Directory Domain Services Groups

No Active Directory groups are created automatically during the MBAM setup process. However, it is recommended that you create the following Active Directory Domain Services global groups to manage MBAM operations.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Name</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>MBAM Advanced Helpdesk Users</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Advanced Helpdesk Users local group created during MBAM Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Compliance Auditing DB Access</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Compliance Auditing DB Access local group created during MBAM Setup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Helpdesk Users</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Helpdesk Users local group created during MBAM Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Recovery and Hardware DB Access</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Recovery and Hardware DB Access local group created during MBAM Setup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Report Users</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Report Users local group created during MBAM Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM System Administrators</p></td>
<td align="left"><p>Create this group to manage members of the MBAM System Administrators local group created during MBAM Setup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>BitLocker Encryption Exemptions</p></td>
<td align="left"><p>Create this group to manage user accounts that should be exempted from BitLocker encryption starting on computers that they log on to.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="-------------mbam-server-local-groups"></a> MBAM Server Local Groups

MBAM Setup creates local groups to support MBAM operations. You should add the Active Directory Domain Services global groups to the appropriate MBAM local groups to configure MBAM security and data access permissions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Name</th>
<th align="left">Details</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>MBAM Advanced Helpdesk Users</p></td>
<td align="left"><p>Members of this group have increased access to the Help Desk features from MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Compliance Auditing DB Access</p></td>
<td align="left"><p>Contains the machines that have access to the MBAM Compliance and Auditing Database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Helpdesk Users</p></td>
<td align="left"><p>Members of this group have access to some of the Help Desk features from MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Recovery and Hardware DB Access</p></td>
<td align="left"><p>Contains the machines that have access to the MBAM Recovery Database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Report Users</p></td>
<td align="left"><p>Members of this group have access to the Compliance and Audit reports from MBAM.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM System Administrators</p></td>
<td align="left"><p>Members of this group have access to all MBAM features.</p></td>
</tr>
</tbody>
</table>

 

### SSRS Reports Service Account

The SSRS Reports service account provides the security context to run the MBAM reports available through SSRS. It is configured during MBAM Setup.

When you configure the SSRS Reports service account, specify a domain user account, and configure the password to never expire.

**Note**  
If you change the name of the service account after you deploy MBAM, you must reconfigure the reporting data source to use the new service account credentials. Otherwise, you will not be able to access the Help Desk Portal.

 

## <a href="" id="---------mbam-log-files"></a> MBAM Log Files


The following MBAM Setup log files are created in the installing user’s %temp% folder during MBAM Setup:

**MBAM Server Setup log files**

<a href="" id="msi-five-random-characters--log"></a>MSI<em>&lt;five random characters&gt;</em>.log  
Logs the actions taken during MBAM Setup and MBAM Server Feature installation.

<a href="" id="installcompliancedatabase-log"></a>InstallComplianceDatabase.log  
Logs actions taken to create the MBAM Compliance and Audit Database setup.

<a href="" id="installkeycompliancedatabase-log"></a>InstallKeyComplianceDatabase.log  
Logs actions taken to create the MBAM Recovery Database.

<a href="" id="addhelpdeskdbauditusers-log"></a>AddHelpDeskDbAuditUsers.log  
Logs actions taken to create the SQL Server logins on the MBAM Compliance and Audit database and authorize the HelpDesk web service to the database for reports.

<a href="" id="addhelpdeskdbusers-log"></a>AddHelpDeskDbUsers.log  
Logs actions taken to authorize web services to database for key recovery and create logins to the MBAM Recovery Database.

<a href="" id="addkeycompliancedbusers-log"></a>AddKeyComplianceDbUsers.log  
Logs actions taken to authorize web services to MBAM Compliance and Audit Database for compliance reporting.

<a href="" id="addrecoveryandhardwaredbusers-log"></a>AddRecoveryAndHardwareDbUsers.log  
Logs actions taken to authorize web services to the MBAM Recovery database for key recovery.

**Note**  
In order to obtain additional MBAM Setup log files, you have to install MBAM by using the msiexec package and the /L &lt;location&gt; option. Log files are created in the location specified.

 

**MBAM Client Setup log files**

<a href="" id="msi-five-random-characters--log"></a>MSI<em>&lt;five random characters&gt;</em>.log  
Logs the actions taken during MBAM Client installation.

## <a href="" id="---------mbam-database-tde-considerations"></a> MBAM Database TDE Considerations


The transparent data encryption (TDE) feature that is available in SQL Server is an optional installation for the database instances that will host MBAM database features.

With TDE, you can perform real-time, full database-level encryption. TDE is the optimal choice for bulk encryption to meet regulatory compliance or corporate data security standards. TDE works at the file level, which is similar to two Windows features: the Encrypting File System (EFS) and BitLocker Drive Encryption, both of which also encrypt data on the hard drive. TDE does not replace cell-level encryption, EFS, or BitLocker.

When TDE is enabled on a database, all backups are encrypted. Thus, special care must be taken to ensure that the certificate that was used to protect the database encryption key is backed up and maintained with the database backup. If this certificate (or certificates) is lost, the data will be unreadable. Back up the certificate along with the database. Each certificate backup should have two files. Both of these files should be archived (ideally separately from the database backup file for security). You can alternatively consider using the extensible key management (EKM) feature (see Extensible Key Management) for storage and maintenance of keys used for TDE.

For an example of how to enable TDE for MBAM database instances, see [Evaluating MBAM 2.0](evaluating-mbam-20-mbam-2.md).

For more information about TDE in SQL Server 2008, see [SQL Server Encryption]( https://go.microsoft.com/fwlink/?LinkId=299883).

## Related topics


[Security and Privacy for MBAM 2.0](security-and-privacy-for-mbam-20-mbam-2.md)

 

 





