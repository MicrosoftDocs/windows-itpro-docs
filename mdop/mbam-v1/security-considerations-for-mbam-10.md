---
title: Security Considerations for MBAM 1.0
description: Security Considerations for MBAM 1.0
author: msfttracyp
ms.assetid: 5e1c8b8c-235b-4a92-8b0b-da50dca17353
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 08/30/2016
---


# Security Considerations for MBAM 1.0


This topic contains a brief overview of the accounts and groups, log files, and other security-related considerations for Microsoft BitLocker Administration and Monitoring (MBAM). For more information, follow the links in this article.

## General security considerations


**Understand the security risks.** The most serious risk to MBAM is that its functionality could be hijacked by an unauthorized user who could then reconfigure BitLocker encryption and gain BitLocker encryption key data on MBAM Clients. However, the loss of MBAM functionality for a short period of time due to a denial-of-service attack would not generally have a catastrophic impact.

**Physically secure your computers**. Security is incomplete without physical security. Anyone with physical access to an MBAM Server could potentially attack the entire client base. Any potential physical attacks must be considered high risk and mitigated appropriately. MBAM servers should be stored in a physically secure server room with controlled access. Secure these computers when administrators are not physically present by having the operating system lock the computer, or by using a secured screen saver.

**Apply the most recent security updates to all computers**. Stay informed about new updates for operating systems, Microsoft SQL Server, and MBAM by subscribing to the Security Notification service (<https://go.microsoft.com/fwlink/p/?LinkId=28819>).

**Use strong passwords or pass phrases**. Always use strong passwords with 15 or more characters for all MBAM and MBAM administrator accounts. Never use blank passwords. For more information about password concepts, see the “Account Passwords and Policies” white paper on TechNet (<https://go.microsoft.com/fwlink/p/?LinkId=30009>).

## Accounts and Groups in MBAM


A best practice for user account management is to create domain global groups and add user accounts to them. Then, add the domain global accounts to the necessary MBAM local groups on the MBAM Servers.

### Active Directory Domain Services Groups

No groups are created automatically during MBAM Setup. However, you should create the following Active Directory Domain Services global groups to manage MBAM operations.

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
<td align="left"><p>Create this group to manage members of the MBAM Advanced Helpdesk Users local group that was created during MBAM Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Compliance Auditing DB Access</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Compliance Auditing DB Access local group that was created during MBAM Setup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Hardware Users</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Hardware Users local group that was created during MBAM Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Helpdesk Users</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Helpdesk Users local group that was created during MBAM Setup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Recovery and Hardware DB Access</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Recovery and Hardware DB Access local group that was created during MBAM Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Report Users</p></td>
<td align="left"><p>Create this group to manage members of the MBAM Report Users local group that was created during MBAM Setup.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM System Administrators</p></td>
<td align="left"><p>Create this group to manage members of the MBAM System Administrators local group that was created during MBAM Setup.</p></td>
</tr>
<tr class="even">
<td align="left"><p>BitLocker Encryption Exemptions</p></td>
<td align="left"><p>Create this group to manage user accounts that should be exempted from BitLocker encryption starting on computers that they log on to.</p></td>
</tr>
</tbody>
</table>

 

### MBAM Server Local Groups

MBAM Setup creates local groups to support MBAM operations. You should add the Active Directory Domain Services Global Groups to the appropriate MBAM local groups to configure MBAM security and data access permissions.

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
<td align="left"><p>Members of this group have expanded access to the Helpdesk features of Microsoft BitLocker Administration and Monitoring.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Compliance Auditing DB Access</p></td>
<td align="left"><p>This group contains the machines that have access to the MBAM Compliance Auditing Database.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Hardware Users</p></td>
<td align="left"><p>Members of this group have access to some of the Hardware Capability features from Microsoft BitLocker Administration and Monitoring.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Helpdesk Users</p></td>
<td align="left"><p>Members of this group have access to some of the Helpdesk features from Microsoft BitLocker Administration and Monitoring.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM Recovery and Hardware DB Access</p></td>
<td align="left"><p>This group contains the computers that have access to the MBAM Recovery and Hardware Database.</p></td>
</tr>
<tr class="even">
<td align="left"><p>MBAM Report Users</p></td>
<td align="left"><p>Members of this group have access to the Compliance and Audit reports from Microsoft BitLocker Administration and Monitoring.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>MBAM System Administrators</p></td>
<td align="left"><p>Members of this group have access to all the features of Microsoft BitLocker Administration and Monitoring.</p></td>
</tr>
</tbody>
</table>

 

### SSRS Reports Access Account

The SQL Server Reporting Services (SSRS) Reports Service Account provides the security context to run the MBAM reports available through SSRS. This account is configured during MBAM Setup.

## MBAM Log Files


During MBAM Setup, the following MBAM Setup log files are created in the %temp% folder of the user who installs the

**MBAM Server Setup log files**

<a href="" id="msi-five-random-characters--log"></a>MSI<em>&lt;five random characters&gt;</em>.log  
Logs the actions taken during MBAM Setup and MBAM Server Feature installation.

<a href="" id="installcompliancedatabase-log"></a>InstallComplianceDatabase.log  
Logs the actions taken to create the MBAM Compliance Status database setup.

<a href="" id="installkeycompliancedatabase-log"></a>InstallKeyComplianceDatabase.log  
Logs the actions taken to create the MBAM Recovery and Hardware database.

<a href="" id="addhelpdeskdbauditusers-log"></a>AddHelpDeskDbAuditUsers.log  
Logs the actions taken to create the SQL Server logins on the MBAM Compliance Status database and authorize helpdesk web service to the database for reports.

<a href="" id="addhelpdeskdbusers-log"></a>AddHelpDeskDbUsers.log  
Logs the actions taken to authorize web services to database for key recovery and create logins to the MBAM Recovery and Hardware database.

<a href="" id="addkeycompliancedbusers-log"></a>AddKeyComplianceDbUsers.log  
Logs the actions taken to authorize web services to MBAM Compliance Status database for compliance reporting.

<a href="" id="addrecoveryandhardwaredbusers-log"></a>AddRecoveryAndHardwareDbUsers.log  
Logs the actions taken to authorize web services to MBAM Recovery and Hardware database for key recovery.

**Note**  
In order to obtain additional MBAM Setup log files, you must install Microsoft BitLocker Administration and Monitoring by using the **msiexec** package and the **/l** &lt;location&gt; option. Log files are created in the location specified.

 

**MBAM Client Setup log files**

<a href="" id="msi-five-random-characters--log"></a>MSI<em>&lt;five random characters&gt;</em>.log  
Logs the actions taken during MBAM Client installation.

## MBAM Database TDE considerations


The Transparent Data Encryption (TDE) feature available in SQL Server 2008 is a required installation prerequisite for the database instances that will host MBAM database features.

With TDE, you can perform real-time, full database-level encryption. TDE is a well-suited choice for bulk encryption to meet regulatory compliance or corporate data security standards. TDE works at the file level, which is similar to two Windows features: the Encrypting File System (EFS) and BitLocker Drive Encryption, both of which also encrypt data on the hard drive. TDE does not replace cell-level encryption, EFS, or BitLocker.

When TDE is enabled on a database, all backups are encrypted. Thus, special care must be taken to ensure that the certificate that was used to protect the Database Encryption Key (DEK) is backed up and maintained with the database backup. Without a certificate, the data will be unreadable. Back up the certificate along with the database. Each certificate backup should have two files; both of these files should be archived .It is best to archive them separately from the database backup file for security.

For an example of how to enable TDE for MBAM database instances, see [Evaluating MBAM 1.0](evaluating-mbam-10.md).

For more information about TDE in SQL Server 2008, see [Database Encryption in SQL Server 2008 Enterprise Edition](https://go.microsoft.com/fwlink/?LinkId=269703).

## Related topics


[Security and Privacy for MBAM 1.0](security-and-privacy-for-mbam-10.md)

 

 





