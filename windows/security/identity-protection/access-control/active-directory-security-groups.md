---
title: Active Directory Security Groups (Windows 10)
description: Active Directory Security Groups
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
audience: ITPro
author: dulcemontemayor
ms.author: dolmont
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
ms.localizationpriority: medium
ms.date: 04/19/2017
---

# Active Directory Security Groups

**Applies to**
-   Windows Server 2016

This reference topic for the IT professional describes the default Active Directory security groups.

## <a href="" id="w2k3tr-princ-how-eabp"></a>


There are two forms of common security principals in Active Directory: user accounts and computer accounts. These accounts represent a physical entity (a person or a computer). User accounts can also be used as dedicated service accounts for some applications. Security groups are used to collect user accounts, computer accounts, and other groups into manageable units.

In the Windows Server operating system, there are several built-in accounts and security groups that are preconfigured with the appropriate rights and permissions to perform specific tasks. For Active Directory, there are two types of administrative responsibilities:

-   **Service administrators**   Responsible for maintaining and delivering Active Directory Domain Services (AD DS), including managing domain controllers and configuring the AD DS.

-   **Data administrators**   Responsible for maintaining the data that is stored in AD DS and on domain member servers and workstations.

## About Active Directory groups


Groups are used to collect user accounts, computer accounts, and other groups into manageable units. Working with groups instead of with individual users helps simplify network maintenance and administration.

There are two types of groups in Active Directory:

-   **Distribution groups** Used to create email distribution lists.

-   **Security groups** Used to assign permissions to shared resources.

### Distribution groups

Distribution groups can be used only with email applications (such as Exchange Server) to send email to collections of users. Distribution groups are not security enabled, which means that they cannot be listed in discretionary access control lists (DACLs).

### Security groups

Security groups can provide an efficient way to assign access to resources on your network. By using security groups, you can:

-   Assign user rights to security groups in Active Directory.

    User rights are assigned to a security group to determine what members of that group can do within the scope of a domain or forest. User rights are automatically assigned to some security groups when Active Directory is installed to help administrators define a person’s administrative role in the domain.

    For example, a user who is added to the Backup Operators group in Active Directory has the ability to back up and restore files and directories that are located on each domain controller in the domain. This is possible because, by default, the user rights **Backup files and directories** and **Restore files and directories** are automatically assigned to the Backup Operators group. Therefore, members of this group inherit the user rights that are assigned to that group.

    You can use Group Policy to assign user rights to security groups to delegate specific tasks. For more information about using Group Policy, see [User Rights Assignment](/windows/device-security/security-policy-settings/user-rights-assignment).

-   Assign permissions to security groups for resources.

    Permissions are different than user rights. Permissions are assigned to the security group for the shared resource. Permissions determine who can access the resource and the level of access, such as Full Control. Some permissions that are set on domain objects are automatically assigned to allow various levels of access to default security groups, such as the Account Operators group or the Domain Admins group.

    Security groups are listed in DACLs that define permissions on resources and objects. When assigning permissions for resources (file shares, printers, and so on), administrators should assign those permissions to a security group rather than to individual users. The permissions are assigned once to the group, instead of several times to each individual user. Each account that is added to a group receives the rights that are assigned to that group in Active Directory, and the user receives the permissions that are defined for that group.

Like distribution groups, security groups can be used as an email entity. Sending an email message to the group sends the message to all the members of the group.

### <a href="" id="bkmk-groupscope"></a>Group scope

Groups are characterized by a scope that identifies the extent to which the group is applied in the domain tree or forest. The scope of the group defines where the group can be granted permissions. The following three group scopes are defined by Active Directory:

-   Universal

-   Global

-   Domain Local

**Note**  
In addition to these three scopes, the default groups in the **Builtin** container have a group scope of Builtin Local. This group scope and group type cannot be changed.

 

The following table lists the three group scopes and more information about each scope for a security group.

**Group scopes**

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Scope</th>
<th>Possible Members</th>
<th>Scope Conversion</th>
<th>Can Grant Permissions</th>
<th>Possible Member of</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Universal</p></td>
<td><p>Accounts from any domain in the same forest</p>
<p>Global groups from any domain in the same forest</p>
<p>Other Universal groups from any domain in the same forest</p></td>
<td><p>Can be converted to Domain Local scope</p>
<p>Can be converted to Global scope if the group does not contain any other Universal groups</p></td>
<td><p>On any domain in the same forest or trusting forests</p></td>
<td><p>Other Universal groups in the same forest</p>
<p>Domain Local groups in the same forest or trusting forests</p>
<p>Local groups on computers in the same forest or trusting forests</p></td>
</tr>
<tr class="even">
<td><p>Global</p></td>
<td><p>Accounts from the same domain</p>
<p>Other Global groups from the same domain</p></td>
<td><p>Can be converted to Universal scope if the group is not a member of any other global group</p></td>
<td><p>On any domain in the same forest, or trusting domains or forests</p></td>
<td><p>Universal groups from any domain in the same forest</p>
<p>Other Global groups from the same domain</p>
<p>Domain Local groups from any domain in the same forest, or from any trusting domain</p></td>
</tr>
<tr class="odd">
<td><p>Domain Local</p></td>
<td><p>Accounts from any domain or any trusted domain</p>
<p>Global groups from any domain or any trusted domain</p>
<p>Universal groups from any domain in the same forest</p>
<p>Other Domain Local groups from the same domain</p>
<p>Accounts, Global groups, and Universal groups from other forests and from external domains</p></td>
<td><p>Can be converted to Universal scope if the group does not contain any other Domain Local groups</p></td>
<td><p>Within the same domain</p></td>
<td><p>Other Domain Local groups from the same domain</p>
<p>Local groups on computers in the same domain, excluding built-in groups that have well-known SIDs</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="special-identity-groups-"></a>Special identity groups

Special identities are generally referred to as groups. Special identity groups do not have specific memberships that can be modified, but they can represent different users at different times, depending on the circumstances. Some of these groups include Creator Owner, Batch, and Authenticated User.

For information about all the special identity groups, see [Special Identities](special-identities.md).

## Default security groups


Default groups, such as the Domain Admins group, are security groups that are created automatically when you create an Active Directory domain. You can use these predefined groups to help control access to shared resources and to delegate specific domain-wide administrative roles.

Many default groups are automatically assigned a set of user rights that authorize members of the group to perform specific actions in a domain, such as logging on to a local system or backing up files and folders. For example, a member of the Backup Operators group has the right to perform backup operations for all domain controllers in the domain.

When you add a user to a group, the user receives all the user rights that are assigned to the group and all the permissions that are assigned to the group for any shared resources.

Default groups are located in the **Builtin** container and in the **Users** container in Active Directory Users and Computers. The **Builtin** container includes groups that are defined with the Domain Local scope. The **Users** includes contains groups that are defined with Global scope and groups that are defined with Domain Local scope. You can move groups that are located in these containers to other groups or organizational units (OU) within the domain, but you cannot move them to other domains.

Some of the administrative groups that are listed in this topic and all members of these groups are protected by a background process that periodically checks for and applies a specific security descriptor. This descriptor is a data structure that contains security information associated with a protected object. This process ensures that any successful unauthorized attempt to modify the security descriptor on one of the administrative accounts or groups will be overwritten with the protected settings.

The security descriptor is present on the **AdminSDHolder** object. This means that if you want to modify the permissions on one of the service administrator groups or on any of its member accounts, you must modify the security descriptor on the **AdminSDHolder** object so that it will be applied consistently. Be careful when you make these modifications because you are also changing the default settings that will be applied to all of your protected administrative accounts.

### <a href="" id="bkmk-groupstable"></a>Active Directory default security groups by operating system version

The following tables provide descriptions of the default groups that are located in the **Builtin** and **Users** containers in each operating system.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>Default Security Group</th>
<th>Windows Server 2016</th>
<th>Windows Server 2012 R2</th>
<th>Windows Server 2012</th>
<th>Windows Server 2008 R2</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>[Access Control Assistance Operators](#bkmk-acasstops)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>[Account Operators](#bkmk-accountoperators)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Administrators](#bkmk-admins)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Allowed RODC Password Replication Group](#bkmk-allowedrodcpwdrepl)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Backup Operators](#bkmk-backupoperators)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Certificate Service DCOM Access](#bkmk-certificateservicedcomaccess)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Cert Publishers](#bkmk-certpublishers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Cloneable Domain Controllers](#bkmk-cloneabledomaincontrollers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>[Cryptographic Operators](#bkmk-cryptographicoperators)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Device Owners](#bkmk-device-owners)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Distributed COM Users](#bkmk-distributedcomusers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[DnsUpdateProxy](#bkmk-dnsupdateproxy)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[DnsAdmins](#bkmk-dnsadmins)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Domain Admins](#bkmk-domainadmins)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Domain Computers](#bkmk-domaincomputers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Domain Controllers](#bkmk-domaincontrollers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Domain Guests](#bkmk-domainguests)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Domain Users](#bkmk-domainusers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Enterprise Admins](#bkmk-entadmins)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Enterprise Key Admins](#enterprise-key-admins)</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>[Enterprise Read-only Domain Controllers](#bkmk-entrodc)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Event Log Readers](#bkmk-eventlogreaders)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Group Policy Creator Owners](#bkmk-gpcreatorsowners)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Guests](#bkmk-guests)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Hyper-V Administrators](#bkmk-hypervadministrators)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>[IIS_IUSRS](#bkmk-iis-iusrs)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Incoming Forest Trust Builders](#bkmk-inforesttrustbldrs)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Key Admins](#key-admins)</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>[Network Configuration Operators](#bkmk-networkcfgoperators)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Performance Log Users](#bkmk-perflogusers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Performance Monitor Users](#bkmk-perfmonitorusers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Pre–Windows 2000 Compatible Access](#bkmk-pre-ws2kcompataccess)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Print Operators](#bkmk-printoperators)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Protected Users](#bkmk-protectedusers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>[RAS and IAS Servers](#bkmk-rasandias)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[RDS Endpoint Servers](#bkmk-rdsendpointservers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>[RDS Management Servers](#bkmk-rdsmanagementservers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>[RDS Remote Access Servers](#bkmk-rdsremoteaccessservers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>[Read-only Domain Controllers](#bkmk-rodc)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Remote Desktop Users](#bkmk-remotedesktopusers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Remote Management Users](#bkmk-remotemanagementusers)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>[Replicator](#bkmk-replicator)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Schema Admins](#bkmk-schemaadmins)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Server Operators](#bkmk-serveroperators)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Storage Replica Administrators](#storage-replica-administrators)</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>[System Managed Accounts Group](#system-managed-accounts-group)</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
<td><p></p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>[Terminal Server License Servers](#bkmk-terminalserverlic)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[Users](#bkmk-users)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>[Windows Authorization Access Group](#bkmk-winauthaccess)</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>[WinRMRemoteWMIUsers_](#bkmk-winrmremotewmiusers-)</p></td>
<td><p></p></td>
<td><p>Yes</p></td>
<td><p>Yes</p></td>
<td><p></p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-acasstops"></a>Access Control Assistance Operators

Members of this group can remotely query authorization attributes and permissions for resources on the computer.

The Access Control Assistance Operators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-579</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>BuiltIn Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p>
<p></p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-accountoperators"></a>Account Operators

The Account Operators group grants limited account creation privileges to a user. Members of this group can create and modify most types of accounts, including those of users, local groups, and global groups, and members can log in locally to domain controllers.

Members of the Account Operators group cannot manage the Administrator user account, the user accounts of administrators, or the [Administrators](#bkmk-admins), [Server Operators](#bkmk-serveroperators), [Account Operators](#bkmk-accountoperators), [Backup Operators](#bkmk-backupoperators), or [Print Operators](#bkmk-printoperators) groups. Members of this group cannot modify user rights.

The Account Operators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

**Note**  
By default, this built-in group has no members, and it can create and manage users and groups in the domain, including its own membership and that of the Server Operators group. This group is considered a service administrator group because it can modify Server Operators, which in turn can modify domain controller settings. As a best practice, leave the membership of this group empty, and do not use it for any delegated administration. This group cannot be renamed, deleted, or moved.

 

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-548</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>BuiltIn Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Allow log on locally](/windows/device-security/security-policy-settings/allow-log-on-locally): SeInteractiveLogonRight</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-admins"></a>Administrators

Members of the Administrators group have complete and unrestricted access to the computer, or if the computer is promoted to a domain controller, members have unrestricted access to the domain.

The Administrators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

**Note**  
The Administrators group has built-in capabilities that give its members full control over the system. This group cannot be renamed, deleted, or moved. This built-in group controls access to all the domain controllers in its domain, and it can change the membership of all administrative groups.

Membership can be modified by members of the following groups: the default service Administrators, Domain Admins in the domain, or Enterprise Admins. This group has the special privilege to take ownership of any object in the directory or any resource on a domain controller. This account is considered a service administrator group because its members have full access to the domain controllers in the domain.

 

This security group includes the following changes since Windows Server 2008:

-   Default user rights changes: **Allow log on through Terminal Services** existed in Windows Server 2008, and it was replaced by [Allow log on through Remote Desktop Services](/windows/device-security/security-policy-settings/allow-log-on-through-remote-desktop-services).

-   [Remove computer from docking station](/windows/device-security/security-policy-settings/remove-computer-from-docking-station) was removed in Windows Server 2012 R2.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-544</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>BuiltIn Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Administrator, Domain Admins, Enterprise Admins</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Adjust memory quotas for a process](/windows/device-security/security-policy-settings/adjust-memory-quotas-for-a-process): SeIncreaseQuotaPrivilege</p>
<p>[Access this computer from the network](/windows/device-security/security-policy-settings/access-this-computer-from-the-network): SeNetworkLogonRight</p>
<p>[Allow log on locally](/windows/device-security/security-policy-settings/allow-log-on-locally): SeInteractiveLogonRight</p>
<p>[Allow log on through Remote Desktop Services](/windows/device-security/security-policy-settings/allow-log-on-through-remote-desktop-services): SeRemoteInteractiveLogonRight</p>
<p>[Back up files and directories](/windows/device-security/security-policy-settings/back-up-files-and-directories): SeBackupPrivilege</p>
<p>[Bypass traverse checking](/windows/device-security/security-policy-settings/bypass-traverse-checking): SeChangeNotifyPrivilege</p>
<p>[Change the system time](/windows/device-security/security-policy-settings/change-the-system-time): SeSystemTimePrivilege</p>
<p>[Change the time zone](/windows/device-security/security-policy-settings/change-the-time-zone): SeTimeZonePrivilege</p>
<p>[Create a pagefile](/windows/device-security/security-policy-settings/create-a-pagefile): SeCreatePagefilePrivilege</p>
<p>[Create global objects](/windows/device-security/security-policy-settings/create-global-objects): SeCreateGlobalPrivilege</p>
<p>[Create symbolic links](/windows/device-security/security-policy-settings/create-symbolic-links): SeCreateSymbolicLinkPrivilege</p>
<p>[Debug programs](/windows/device-security/security-policy-settings/debug-programs): SeDebugPrivilege</p>
<p>[Enable computer and user accounts to be trusted for delegation](/windows/device-security/security-policy-settings/enable-computer-and-user-accounts-to-be-trusted-for-delegation): SeEnableDelegationPrivilege</p>
<p>[Force shutdown from a remote system](/windows/device-security/security-policy-settings/force-shutdown-from-a-remote-system): SeRemoteShutdownPrivilege</p>
<p>[Impersonate a client after authentication](/windows/device-security/security-policy-settings/impersonate-a-client-after-authentication): SeImpersonatePrivilege</p>
<p>[Increase scheduling priority](/windows/device-security/security-policy-settings/increase-scheduling-priority): SeIncreaseBasePriorityPrivilege</p>
<p>[Load and unload device drivers](/windows/device-security/security-policy-settings/load-and-unload-device-drivers): SeLoadDriverPrivilege</p>
<p>[Log on as a batch job](/windows/device-security/security-policy-settings/log-on-as-a-batch-job): SeBatchLogonRight</p>
<p>[Manage auditing and security log](/windows/device-security/security-policy-settings/manage-auditing-and-security-log): SeSecurityPrivilege</p>
<p>[Modify firmware environment values](/windows/device-security/security-policy-settings/modify-firmware-environment-values): SeSystemEnvironmentPrivilege</p>
<p>[Perform volume maintenance tasks](/windows/device-security/security-policy-settings/perform-volume-maintenance-tasks): SeManageVolumePrivilege</p>
<p>[Profile system performance](/windows/device-security/security-policy-settings/profile-system-performance): SeSystemProfilePrivilege</p>
<p>[Profile single process](/windows/device-security/security-policy-settings/profile-single-process): SeProfileSingleProcessPrivilege</p>
<p>[Remove computer from docking station](/windows/device-security/security-policy-settings/remove-computer-from-docking-station): SeUndockPrivilege</p>
<p>[Restore files and directories](/windows/device-security/security-policy-settings/restore-files-and-directories): SeRestorePrivilege</p>
<p>[Shut down the system](/windows/device-security/security-policy-settings/shut-down-the-system): SeShutdownPrivilege</p>
<p>[Take ownership of files or other objects](/windows/device-security/security-policy-settings/take-ownership-of-files-or-other-objects): SeTakeOwnershipPrivilege</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-allowedrodcpwdrepl"></a>Allowed RODC Password Replication Group

The purpose of this security group is to manage a RODC password replication policy. This group has no members by default, and it results in the condition that new Read-only domain controllers do not cache user credentials. The [Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl) group contains a variety of high-privilege accounts and security groups. The Denied RODC Password Replication group supersedes the Allowed RODC Password Replication group.

The Allowed RODC Password Replication group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-571</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-backupoperators"></a>Backup Operators

Members of the Backup Operators group can back up and restore all files on a computer, regardless of the permissions that protect those files. Backup Operators also can log on to and shut down the computer. This group cannot be renamed, deleted, or moved. By default, this built-in group has no members, and it can perform backup and restore operations on domain controllers. Its membership can be modified by the following groups: default service Administrators, Domain Admins in the domain, or Enterprise Admins. It cannot modify the membership of any administrative groups. While members of this group cannot change server settings or modify the configuration of the directory, they do have the permissions needed to replace files (including operating system files) on domain controllers. Because of this, members of this group are considered service administrators.

The Backup Operators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-551</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Allow log on locally](/windows/device-security/security-policy-settings/allow-log-on-locally): SeInteractiveLogonRight</p>
<p>[Back up files and directories](/windows/device-security/security-policy-settings/back-up-files-and-directories): SeBackupPrivilege</p>
<p>[Log on as a batch job](/windows/device-security/security-policy-settings/log-on-as-a-batch-job): SeBatchLogonRight</p>
<p>[Restore files and directories](/windows/device-security/security-policy-settings/restore-files-and-directories): SeRestorePrivilege</p>
<p>[Shut down the system](/windows/device-security/security-policy-settings/shut-down-the-system): SeShutdownPrivilege</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-certificateservicedcomaccess"></a>Certificate Service DCOM Access

Members of this group are allowed to connect to certification authorities in the enterprise.

The Certificate Service DCOM Access group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-&lt;domain&gt;-574</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-certpublishers"></a>Cert Publishers

Members of the Cert Publishers group are authorized to publish certificates for User objects in Active Directory.

The Cert Publishers group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;domain&gt;-517</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-cloneabledomaincontrollers"></a>Cloneable Domain Controllers

Members of the Cloneable Domain Controllers group that are domain controllers may be cloned. In Windows Server 2012 R2 and Windows Server 2012, you can deploy domain controllers by copying an existing virtual domain controller. In a virtual environment, you no longer have to repeatedly deploy a server image that is prepared by using sysprep.exe, promote the server to a domain controller, and then complete additional configuration requirements for deploying each domain controller (including adding the virtual domain controller to this security group).

For more information, see [Introduction to Active Directory Domain Services (AD DS) Virtualization (Level 100)](https://technet.microsoft.com/library/hh831734.aspx).

This security group was introduced in Windows Server 2012, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-522</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-cryptographicoperators"></a>Cryptographic Operators

Members of this group are authorized to perform cryptographic operations. This security group was added in Windows Vista Service Pack 1 (SP1) to configure Windows Firewall for IPsec in Common Criteria mode.

The Cryptographic Operators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group was introduced in Windows Vista Service Pack 1, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-569</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-deniedrodcpwdrepl"></a>Denied RODC Password Replication Group

Members of the Denied RODC Password Replication group cannot have their passwords replicated to any Read-only domain controller.

The purpose of this security group is to manage a RODC password replication policy. This group contains a variety of high-privilege accounts and security groups. The Denied RODC Password Replication Group supersedes the [Allowed RODC Password Replication Group](#bkmk-allowedrodcpwdrepl).

This security group includes the following changes since Windows Server 2008:

-   Windows Server 2012 changed the default members to include [Cert Publishers](#bkmk-certpublishers).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-572</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>[Cert Publishers](#bkmk-certpublishers)</p>
<p>[Domain Admins](#bkmk-domainadmins)</p>
<p>[Domain Controllers](#bkmk-domaincontrollers)</p>
<p>[Enterprise Admins](#bkmk-entadmins)</p>
<p>Group Policy Creator Owners</p>
<p>krbtgt</p>
<p>[Read-only Domain Controllers](#bkmk-rodc)</p>
<p>[Schema Admins](#bkmk-schemaadmins)</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

### <a href="" id="bkmk-device-owners"></a>Device Owners
This group is not currently used in Windows. 

Microsoft does not recommend changing the default configuration where this security group has zero members. Changing the default configuration could hinder future scenarios that rely on this group.

The Device Owners group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-583</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>BuiltIn Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Can be moved out but it is not recommended</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Allow log on locally](/windows/device-security/security-policy-settings/allow-log-on-locally): SeInteractiveLogonRight</p>
<p>[Access this computer from the network](/windows/device-security/security-policy-settings/access-this-computer-from-the-network): SeNetworkLogonRight</p>
<p>[Bypass traverse checking](/windows/device-security/security-policy-settings/bypass-traverse-checking): SeChangeNotifyPrivilege</p>
<p>[Change the time zone](/windows/device-security/security-policy-settings/change-the-time-zone): SeTimeZonePrivilege</p>
</td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-distributedcomusers"></a>Distributed COM Users

Members of the Distributed COM Users group are allowed to launch, activate, and use Distributed COM objects on the computer. Microsoft Component Object Model (COM) is a platform-independent, distributed, object-oriented system for creating binary software components that can interact. Distributed Component Object Model (DCOM) allows applications to be distributed across locations that make the most sense to you and to the application. This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

The Distributed COM Users group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-562</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-dnsupdateproxy"></a>DnsUpdateProxy

Members of the DnsUpdateProxy group are DNS clients. They are permitted to perform dynamic updates on behalf of other clients (such as DHCP servers). A DNS server can develop stale resource records when a DHCP server is configured to dynamically register host (A) and pointer (PTR) resource records on behalf of DHCP clients by using dynamic update. Adding clients to this security group mitigates this scenario.

However, to protect against unsecured records or to permit members of the DnsUpdateProxy group to register records in zones that allow only secured dynamic updates, you must create a dedicated user account and configure DHCP servers to perform DNS dynamic updates by using the credentials of this account (user name, password, and domain). Multiple DHCP servers can use the credentials of one dedicated user account.

For information, see [DNS Record Ownership and the DnsUpdateProxy Group](https://technet.microsoft.com/library/dd334715.aspx).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-1103</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-dnsadmins"></a>DnsAdmins

Members of DNSAdmins group have access to network DNS information. The default permissions are as follows: Allow: Read, Write, Create All Child objects, Delete Child objects, Special Permissions.

For more information about security and DNS, see [DNSSEC in Windows Server 2012](https://technet.microsoft.com/library/dn593694(v=ws.11).aspx).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-1102</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-domainadmins"></a>Domain Admins

Members of the Domain Admins security group are authorized to administer the domain. By default, the Domain Admins group is a member of the Administrators group on all computers that have joined a domain, including the domain controllers. The Domain Admins group is the default owner of any object that is created in Active Directory for the domain by any member of the group. If members of the group create other objects, such as files, the default owner is the Administrators group.

The Domain Admins group controls access to all domain controllers in a domain, and it can modify the membership of all administrative accounts in the domain. Membership can be modified by members of the service administrator groups in its domain (Administrators and Domain Admins), and by members of the Enterprise Admins group. This is considered a service administrator account because its members have full access to the domain controllers in a domain.

The Domain Admins group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;domain&gt;-512</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Administrator</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Administrators](#bkmk-admins)</p>
<p>[Denied RODC Password ReplicationGroup](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>See [Administrators](#bkmk-admins)</p>
<p>See [Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-domaincomputers"></a>Domain Computers

This group can include all computers and servers that have joined the domain, excluding domain controllers. By default, any computer account that is created automatically becomes a member of this group.

The Domain Computers group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;domain&gt;-515</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>All computers joined to the domain, excluding domain controllers</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes (but not required)</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-domaincontrollers"></a>Domain Controllers

The Domain Controllers group can include all domain controllers in the domain. New domain controllers are automatically added to this group.

The Domain Controllers group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;domain&gt;-516</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Computer accounts for all domain controllers of the domain</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-domainguests"></a>Domain Guests

The Domain Guests group includes the domain’s built-in Guest account. When members of this group sign in as local guests on a domain-joined computer, a domain profile is created on the local computer.

The Domain Guests group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;domain&gt;-514</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Guest</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Guests](#bkmk-guests)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Can be moved out but it is not recommended</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>See [Guests](#bkmk-guests)</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-domainusers"></a>Domain Users

The Domain Users group includes all user accounts in a domain. When you create a user account in a domain, it is automatically added to this group.

By default, any user account that is created in the domain automatically becomes a member of this group. This group can be used to represent all users in the domain. For example, if you want all domain users to have access to a printer, you can assign permissions for the printer to this group (or add the Domain Users group to a local group on the print server that has permissions for the printer).

The Domain Users group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;domain&gt;-513</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Administrator</p>
<p>krbtgt</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Users](#bkmk-users)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>See [Users](#bkmk-users)</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-entadmins"></a>Enterprise Admins

The Enterprise Admins group exists only in the root domain of an Active Directory forest of domains. It is a Universal group if the domain is in native mode; it is a Global group if the domain is in mixed mode. Members of this group are authorized to make forest-wide changes in Active Directory, such as adding child domains.

By default, the only member of the group is the Administrator account for the forest root domain. This group is automatically added to the Administrators group in every domain in the forest, and it provides complete access for configuring all domain controllers. Members in this group can modify the membership of all administrative groups. Membership can be modified only by the default service administrator groups in the root domain. This is considered a service administrator account.

The Enterprise Admins group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;root domain&gt;-519</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Universal (if Domain is in Native-Mode) else Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Administrator</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Administrators](#bkmk-admins)</p>
<p>[Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>See [Administrators](#bkmk-admins)</p>
<p>See [Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
</tbody>
</table>

### Enterprise Key Admins

Members of this group can perform administrative actions on key objects within the forest.

The Enterprise Key Admins group was introduced in Windows Server 2016.

| Attribute | Value |
|-----------|-------|
| Well-Known SID/RID | S-1-5-21-&lt;domain&gt;-527 |
| Type | Global |
| Default container | CN=Users, DC=&lt;domain&gt;, DC= |
| Default members | None |
| Default member of | None |
| Protected by ADMINSDHOLDER? | No |
| Safe to move out of default container? | Yes |
| Safe to delegate management of this group to non-Service admins? | No |
| Default User Rights | None |

 
### <a href="" id="bkmk-entrodc"></a>Enterprise Read-Only Domain Controllers

Members of this group are Read-Only Domain Controllers in the enterprise. Except for account passwords, a Read-only domain controller holds all the Active Directory objects and attributes that a writable domain controller holds. However, changes cannot be made to the database that is stored on the Read-only domain controller. Changes must be made on a writable domain controller and then replicated to the Read-only domain controller.

Read-only domain controllers address some of the issues that are commonly found in branch offices. These locations might not have a domain controller. Or, they might have a writable domain controller, but not the physical security, network bandwidth, or local expertise to support it.

For more information, see [What Is an RODC?](https://technet.microsoft.com/library/cc771030.aspx).

The Enterprise Read-Only Domain Controllers group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-498</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Universal</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-eventlogreaders"></a>Event Log Readers

Members of this group can read event logs from local computers. The group is created when the server is promoted to a domain controller.

The Event Log Readers group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-573</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-gpcreatorsowners"></a>Group Policy Creators Owners

This group is authorized to create, edit, or delete Group Policy Objects in the domain. By default, the only member of the group is Administrator.

For information about other features you can use with this security group, see [Group Policy Overview](https://technet.microsoft.com/library/hh831791.aspx).

The Group Policy Creators Owners group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;domain&gt;-520</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Administrator</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>See [Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-guests"></a>Guests

Members of the Guests group have the same access as members of the Users group by default, except that the Guest account has further restrictions. By default, the only member is the Guest account. The Guests group allows occasional or one-time users to sign in with limited privileges to a computer’s built-in Guest account.

When a member of the Guests group signs out, the entire profile is deleted. This includes everything that is stored in the **%userprofile%** directory, including the user's registry hive information, custom desktop icons, and other user-specific settings. This implies that a guest must use a temporary profile to sign in to the system. This security group interacts with the Group Policy setting **Do not logon users with temporary profiles** when it is enabled. This setting is located under the following path:

Computer Configuration\\Administrative Templates\\System\\User Profiles

**Note**  
A Guest account is a default member of the Guests security group. People who do not have an actual account in the domain can use the Guest account. A user whose account is disabled (but not deleted) can also use the Guest account.

The Guest account does not require a password. You can set rights and permissions for the Guest account as in any user account. By default, the Guest account is a member of the built-in Guests group and the Domain Guests global group, which allows a user to sign in to a domain. The Guest account is disabled by default, and we recommend that it stay disabled.

 

The Guests group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-546</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Guest</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Domain Guests](#bkmk-domainguests)</p>
<p>Guest</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-hypervadministrators"></a>Hyper-V Administrators

Members of the Hyper-V Administrators group have complete and unrestricted access to all the features in Hyper-V. Adding members to this group helps reduce the number of members required in the Administrators group, and further separates access.

**Note**  
Prior to Windows Server 2012, access to features in Hyper-V was controlled in part by membership in the Administrators group.

 

This security group was introduced in Windows Server 2012, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-578</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-iis-iusrs"></a>IIS\_IUSRS

IIS\_IUSRS is a built-in group that is used by Internet Information Services beginning with IIS 7.0. A built-in account and group are guaranteed by the operating system to always have a unique SID. IIS 7.0 replaces the IUSR\_MachineName account and the IIS\_WPG group with the IIS\_IUSRS group to ensure that the actual names that are used by the new account and group will never be localized. For example, regardless of the language of the Windows operating system that you install, the IIS account name will always be IUSR, and the group name will be IIS\_IUSRS.

For more information, see [Understanding Built-In User and Group Accounts in IIS 7](http://www.iis.net/learn/get-started/planning-for-security/understanding-built-in-user-and-group-accounts-in-iis).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-568</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>BuiltIn Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=BuiltIn, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>IUSR</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p></p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-inforesttrustbldrs"></a>Incoming Forest Trust Builders

Members of the Incoming Forest Trust Builders group can create incoming, one-way trusts to this forest. Active Directory provides security across multiple domains or forests through domain and forest trust relationships. Before authentication can occur across trusts, Windows must determine whether the domain being requested by a user, computer, or service has a trust relationship with the logon domain of the requesting account.

To make this determination, the Windows security system computes a trust path between the domain controller for the server that receives the request and a domain controller in the domain of the requesting account. A secured channel extends to other Active Directory domains through interdomain trust relationships. This secured channel is used to obtain and verify security information, including security identifiers (SIDs) for users and groups.

**Note**  
This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

 

For more information, see [How Domain and Forest Trusts Work: Domain and Forest Trusts](https://technet.microsoft.com/library/f5c70774-25cd-4481-8b7a-3d65c86e69b1).

The Incoming Forest Trust Builders group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

**Note**  
This group cannot be renamed, deleted, or moved.

 

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-557</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>BuiltIn local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

### Key Admins

Members of this group can perform administrative actions on key objects within the domain.

The Key Admins group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

| Attribute | Value |
|-----------|-------|
| Well-Known SID/RID | S-1-5-21-&lt;domain&gt;-526 |
| Type | Global |
| Default container | CN=Users, DC=&lt;domain&gt;, DC= |
| Default members | None |
| Default member of | None |
| Protected by ADMINSDHOLDER? | No |
| Safe to move out of default container? | Yes |
| Safe to delegate management of this group to non-Service admins? | No |
| Default User Rights | None |

<!-- WHEN MORE INFO IS AVAILABLE, ADD LINES to the above table -- a line under the ADMINSDHOLDER line, "Safe to move out of default container?" -->

### <a href="" id="bkmk-networkcfgoperators"></a>Network Configuration Operators

Members of the Network Configuration Operators group can have the following administrative privileges to manage configuration of networking features:

-   Modify the Transmission Control Protocol/Internet Protocol (TCP/IP) properties for a local area network (LAN) connection, which includes the IP address, the subnet mask, the default gateway, and the name servers.

-   Rename the LAN connections or remote access connections that are available to all the users.

-   Enable or disable a LAN connection.

-   Modify the properties of all of remote access connections of users.

-   Delete all the remote access connections of users.

-   Rename all the remote access connections of users.

-   Issue **ipconfig**, **ipconfig /release**, or **ipconfig /renew** commands.

-   Enter the PIN unblock key (PUK) for mobile broadband devices that support a SIM card.

**Note**  
This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

 

The Network Configuration Operators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

**Note**  
This group cannot be renamed, deleted, or moved.

 

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-556</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>BuiltIn local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-perflogusers"></a>Performance Log Users

Members of the Performance Log Users group can manage performance counters, logs, and alerts locally on the server and from remote clients without being a member of the Administrators group. Specifically, members of this security group:

-   Can use all the features that are available to the Performance Monitor Users group.

-   Can create and modify Data Collector Sets after the group is assigned the [Log on as a batch job](/windows/device-security/security-policy-settings/log-on-as-a-batch-job) user right.

    **Warning**  
    If you are a member of the Performance Log Users group, you must configure Data Collector Sets that you create to run under your credentials.

     

-   Cannot use the Windows Kernel Trace event provider in Data Collector Sets.

For members of the Performance Log Users group to initiate data logging or modify Data Collector Sets, the group must first be assigned the [Log on as a batch job](/windows/device-security/security-policy-settings/log-on-as-a-batch-job) user right. To assign this user right, use the Local Security Policy snap-in in Microsoft Management Console.

**Note**  
This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

 

The Performance Log Users group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

**Note**  
This account cannot be renamed, deleted, or moved.

 

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-559</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Log on as a batch job](/windows/device-security/security-policy-settings/log-on-as-a-batch-job): SeBatchLogonRight</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-perfmonitorusers"></a>Performance Monitor Users

Members of this group can monitor performance counters on domain controllers in the domain, locally and from remote clients, without being a member of the Administrators or Performance Log Users groups. The Windows Performance Monitor is a Microsoft Management Console (MMC) snap-in that provides tools for analyzing system performance. From a single console, you can monitor application and hardware performance, customize what data you want to collect in logs, define thresholds for alerts and automatic actions, generate reports, and view past performance data in a variety of ways.

Specifically, members of this security group:

-   Can use all the features that are available to the Users group.

-   Can view real-time performance data in Performance Monitor.

    Can change the Performance Monitor display properties while viewing data.

-   Cannot create or modify Data Collector Sets.

    **Warning**  
    You cannot configure a Data Collector Set to run as a member of the Performance Monitor Users group.

     

**Note**  
This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO). This group cannot be renamed, deleted, or moved.

 

The Performance Monitor Users group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-558</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-pre-ws2kcompataccess"></a>Pre–Windows 2000 Compatible Access

Members of the Pre–Windows 2000 Compatible Access group have Read access for all users and groups in the domain. This group is provided for backward compatibility for computers running Windows NT 4.0 and earlier. By default, the special identity group, Everyone, is a member of this group. Add users to this group only if they are running Windows NT 4.0 or earlier.

**Warning**  
This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

 

The Pre–Windows 2000 Compatible Access group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-554</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>If you choose the Pre–Windows 2000 Compatible Permissions mode, Everyone and Anonymous are members, and if you choose the Windows 2000-only permissions mode, Authenticated Users are members.</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Access this computer from the network](/windows/device-security/security-policy-settings/access-this-computer-from-the-network): SeNetworkLogonRight</p>
<p>[Bypass traverse checking](/windows/device-security/security-policy-settings/bypass-traverse-checking): SeChangeNotifyPrivilege</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-printoperators"></a>Print Operators

Members of this group can manage, create, share, and delete printers that are connected to domain controllers in the domain. They can also manage Active Directory printer objects in the domain. Members of this group can locally sign in to and shut down domain controllers in the domain.

This group has no default members. Because members of this group can load and unload device drivers on all domain controllers in the domain, add users with caution. This group cannot be renamed, deleted, or moved.

The Print Operators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008. However, in Windows Server 2008 R2, functionality was added to manage print administration. For more information, see [Assign Delegated Print Administrator and Printer Permission Settings in Windows Server 2012](https://technet.microsoft.com/library/jj190062(v=ws.11).aspx).

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-550</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Allow log on locally](/windows/device-security/security-policy-settings/allow-log-on-locally): SeInteractiveLogonRight</p>
<p>[Load and unload device drivers](/windows/device-security/security-policy-settings/load-and-unload-device-drivers): SeLoadDriverPrivilege</p>
<p>[Shut down the system](/windows/device-security/security-policy-settings/shut-down-the-system): SeShutdownPrivilege</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-protectedusers"></a>Protected Users

Members of the Protected Users group are afforded additional protection against the compromise of credentials during authentication processes.

This security group is designed as part of a strategy to effectively protect and manage credentials within the enterprise. Members of this group automatically have non-configurable protection applied to their accounts. Membership in the Protected Users group is meant to be restrictive and proactively secure by default. The only method to modify the protection for an account is to remove the account from the security group.

This domain-related, global group triggers non-configurable protection on devices and host computers, starting with the Windows Server 2012 R2 and Windows 8.1 operating systems. It also triggers non-configurable protection on domain controllers in domains with a primary domain controller running Windows Server 2012 R2 or Windows Server 2016. This greatly reduces the memory footprint of credentials when users sign in to computers on the network from a non-compromised computer.

Depending on the account’s domain functional level, members of the Protected Users group are further protected due to behavior changes in the authentication methods that are supported in Windows.

-   Members of the Protected Users group cannot authenticate by using the following Security Support Providers (SSPs): NTLM, Digest Authentication, or CredSSP. Passwords are not cached on a device running Windows 8.1 or Windows 10, so the device fails to authenticate to a domain when the account is a member of the Protected User group.

-   The Kerberos protocol will not use the weaker DES or RC4 encryption types in the preauthentication process. This means that the domain must be configured to support at least the AES cipher suite.

-   The user’s account cannot be delegated with Kerberos constrained or unconstrained delegation. This means that former connections to other systems may fail if the user is a member of the Protected Users group.

-   The default Kerberos ticket-granting tickets (TGTs) lifetime setting of four hours is configurable by using Authentication Policies and Silos, which can be accessed through the Active Directory Administrative Center. This means that when four hours has passed, the user must authenticate again.

The Protected Users group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This group was introduced in Windows Server 2012 R2. For more information about how this group works, see [Protected Users Security Group](https://technet.microsoft.com/library/dn466518.aspx).

The following table specifies the properties of the Protected Users group.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-525</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default user rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-rasandias"></a>RAS and IAS Servers

Computers that are members of the RAS and IAS Servers group, when properly configured, are allowed to use remote access services. By default, this group has no members. Computers that are running the Routing and Remote Access service are added to the group automatically, such as IAS servers and Network Policy Servers. Members of this group have access to certain properties of User objects, such as Read Account Restrictions, Read Logon Information, and Read Remote Access Information.

The RAS and IAS Servers group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-553</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-rdsendpointservers"></a>RDS Endpoint Servers

Servers that are members in the RDS Endpoint Servers group can run virtual machines and host sessions where user RemoteApp programs and personal virtual desktops run. This group needs to be populated on servers running RD Connection Broker. Session Host servers and RD Virtualization Host servers used in the deployment need to be in this group.

For information about Remote Desktop Services, see [Host desktops and apps in Remote Desktop Services](https://technet.microsoft.com/library/mt718499.aspx).

This security group was introduced in Windows Server 2012, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-553</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-rdsmanagementservers"></a>RDS Management Servers

Servers that are members in the RDS Management Servers group can be used to perform routine administrative actions on servers running Remote Desktop Services. This group needs to be populated on all servers in a Remote Desktop Services deployment. The servers running the RDS Central Management service must be included in this group.

This security group was introduced in Windows Server 2012, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-577</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-rdsremoteaccessservers"></a>RDS Remote Access Servers

Servers in the RDS Remote Access Servers group provide users with access to RemoteApp programs and personal virtual desktops. In Internet facing deployments, these servers are typically deployed in an edge network. This group needs to be populated on servers running RD Connection Broker. RD Gateway servers and RD Web Access servers that are used in the deployment need to be in this group.

For more information, see [Host desktops and apps in Remote Desktop Services](https://technet.microsoft.com/library/mt718499.aspx).

This security group was introduced in Windows Server 2012, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-575</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-remotedesktopusers"></a>Remote Desktop Users

The Remote Desktop Users group on an RD Session Host server is used to grant users and groups permissions to remotely connect to an RD Session Host server. This group cannot be renamed, deleted, or moved. It appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

The Remote Desktop Users group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-555</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin Local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-rodc"></a>Read-Only Domain Controllers

This group is comprised of the Read-only domain controllers in the domain. A Read-only domain controller makes it possible for organizations to easily deploy a domain controller in scenarios where physical security cannot be guaranteed, such as branch office locations, or in scenarios where local storage of all domain passwords is considered a primary threat, such as in an extranet or in an application-facing role.

Because administration of a Read-only domain controller can be delegated to a domain user or security group, an Read-only domain controller is well suited for a site that should not have a user who is a member of the Domain Admins group. A Read-only domain controller encompasses the following functionality:

-   Read-only AD DS database

-   Unidirectional replication

-   Credential caching

-   Administrator role separation

-   Read-only Domain Name System (DNS)

For information about deploying a Read-only domain controller, see [Understanding Planning and Deployment for Read-Only Domain Controllers](https://technet.microsoft.com/library/cc754719(v=ws.10).aspx).

This security group was introduced in Windows Server 2008, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-521</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>See [Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-remotemanagementusers"></a>Remote Management Users

Members of the Remote Management Users group can access WMI resources over management protocols (such as WS-Management via the Windows Remote Management service). This applies only to WMI namespaces that grant access to the user.

The Remote Management Users group is generally used to allow users to manage servers through the Server Manager console, whereas the [WinRMRemoteWMIUsers\_](#bkmk-winrmremotewmiusers-) group is allows remotely running Windows PowerShell commands.

For more information, see [What's New in MI?](https://msdn.microsoft.com/library/jj819828(v=vs.85).aspx) and [About WMI](https://msdn.microsoft.com/library/aa384642.aspx).

This security group was introduced in Windows Server 2012, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-580</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-replicator"></a>Replicator

Computers that are members of the Replicator group support file replication in a domain. Windows Server operating systems use the File Replication service (FRS) to replicate system policies and logon scripts stored in the System Volume (SYSVOL). Each domain controller keeps a copy of SYSVOL for network clients to access. FRS can also replicate data for the Distributed File System (DFS), synchronizing the content of each member in a replica set as defined by DFS. FRS can copy and maintain shared files and folders on multiple servers simultaneously. When changes occur, content is synchronized immediately within sites and by a schedule between sites.

**Important**  
In Windows Server 2008 R2, FRS cannot be used for replicating DFS folders or custom (non-SYSVOL) data. A Windows Server 2008 R2 domain controller can still use FRS to replicate the contents of a SYSVOL shared resource in a domain that uses FRS for replicating the SYSVOL shared resource between domain controllers.

However, Windows Server 2008 R2 servers cannot use FRS to replicate the contents of any replica set apart from the SYSVOL shared resource. The DFS Replication service is a replacement for FRS, and it can be used to replicate the contents of a SYSVOL shared resource, DFS folders, and other custom (non-SYSVOL) data. You should migrate all non-SYSVOL FRS replica sets to DFS Replication. For more information, see:

- [File Replication Service (FRS) Is Deprecated in Windows Server 2008 R2 (Windows)](https://msdn.microsoft.com/library/windows/desktop/ff384840.aspx)
- [DFS Namespaces and DFS Replication Overview](https://technet.microsoft.com/library/jj127250(v=ws.11).aspx)

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-552</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-schemaadmins"></a>Schema Admins

Members of the Schema Admins group can modify the Active Directory schema. This group exists only in the root domain of an Active Directory forest of domains. It is a Universal group if the domain is in native mode; it is a Global group if the domain is in mixed mode.

The group is authorized to make schema changes in Active Directory. By default, the only member of the group is the Administrator account for the forest root domain. This group has full administrative access to the schema.

The membership of this group can be modified by any of the service administrator groups in the root domain. This is considered a service administrator account because its members can modify the schema, which governs the structure and content of the entire directory.

For more information, see [What Is the Active Directory Schema?: Active Directory](https://technet.microsoft.com/library/cc784826.aspx).

The Schema Admins group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-&lt;root domain&gt;-518</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Universal (if Domain is in Native-Mode) else Global</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Administrator</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>[Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>See [Denied RODC Password Replication Group](#bkmk-deniedrodcpwdrepl)</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-serveroperators"></a>Server Operators

Members in the Server Operators group can administer domain servers. This group exists only on domain controllers. By default, the group has no members. Memebers of the Server Operators group can sign in to a server interactively, create and delete network shared resources, start and stop services, back up and restore files, format the hard disk drive of the computer, and shut down the computer. This group cannot be renamed, deleted, or moved.

By default, this built-in group has no members, and it has access to server configuration options on domain controllers. Its membership is controlled by the service administrator groups, Administrators and Domain Admins, in the domain, and the Enterprise Admins group. Members in this group cannot change any administrative group memberships. This is considered a service administrator account because its members have physical access to domain controllers, they can perform maintenance tasks (such as backup and restore), and they have the ability to change binaries that are installed on the domain controllers. Note the default user rights in the following table.

The Server Operators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-549</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>[Allow log on locally](/windows/device-security/security-policy-settings/allow-log-on-locally): SeInteractiveLogonRight</p>
<p>[Back up files and directories](/windows/device-security/security-policy-settings/back-up-files-and-directories): SeBackupPrivilege</p>
<p>[Change the system time](/windows/device-security/security-policy-settings/change-the-system-time): SeSystemTimePrivilege</p>
<p>[Change the time zone](/windows/device-security/security-policy-settings/change-the-time-zone): SeTimeZonePrivilege</p>
<p>[Force shutdown from a remote system](/windows/device-security/security-policy-settings/force-shutdown-from-a-remote-system): SeRemoteShutdownPrivilege</p>
<p>[Restore files and directories](/windows/device-security/security-policy-settings/restore-files-and-directories): Restore files and directories SeRestorePrivilege</p>
<p>[Shut down the system](/windows/device-security/security-policy-settings/shut-down-the-system): SeShutdownPrivilege</p></td>
</tr>
</tbody>
</table>

### Storage Replica Administrators

Members of this group have complete and unrestricted access to all features of Storage Replica.

The Storage Replica Administrators group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

| Attribute | Value |
|-----------|-------|
| Well-Known SID/RID | S-1-5-32-582 |
| Type | BuiltIn Local |
| Default container | CN=BuiltIn, DC=&lt;domain&gt;, DC= |
| Default members | None |
| Default member of | None |
| Protected by ADMINSDHOLDER? | No |
| Safe to move out of default container? | Yes |
| Safe to delegate management of this group to non-Service admins? | No |
| Default User Rights | None |

<!-- WHEN MORE INFO IS AVAILABLE, ADD LINES to the above table -- a line under the ADMINSDHOLDER line, "Safe to move out of default container?" -->

### System Managed Accounts Group

Members of this group are managed by the system.

The System Managed Accounts group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).


| Attribute | Value |
|-----------|-------|
| Well-Known SID/RID | S-1-5-32-581 |
| Type | BuiltIn Local |
| Default container | CN=BuiltIn, DC=&lt;domain&gt;, DC= |
| Default members | Users |
| Default member of | None |
| Protected by ADMINSDHOLDER? | No |
| Safe to move out of default container? | Yes |
| Safe to delegate management of this group to non-Service admins? | No |
| Default User Rights | None |

<!-- WHEN MORE INFO IS AVAILABLE, ADD LINES to the above table -- a line under the ADMINSDHOLDER line, "Safe to move out of default container?" -->

### <a href="" id="bkmk-terminalserverlic"></a>Terminal Server License Servers

Members of the Terminal Server License Servers group can update user accounts in Active Directory with information about license issuance. This is used to track and report TS Per User CAL usage. A TS Per User CAL gives one user the right to access a Terminal Server from an unlimited number of client computers or devices. This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

For more information about this security group, see [Terminal Services License Server Security Group Configuration](https://technet.microsoft.com/library/cc775331.aspx).

The Terminal Server License Servers group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

**Note**  
This group cannot be renamed, deleted, or moved.

 

This security group only applies to Windows Server 2003 and Windows Server 2008 because Terminal Services was replaced by Remote Desktop Services in Windows Server 2008 R2.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-561</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="odd">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-users"></a>Users

Members of the Users group are prevented from making accidental or intentional system-wide changes, and they can run most applications. After the initial installation of the operating system, the only member is the Authenticated Users group. When a computer joins a domain, the Domain Users group is added to the Users group on the computer.

Users can perform tasks such as running applications, using local and network printers, shutting down the computer, and locking the computer. Users can install applications that only they are allowed to use if the installation program of the application supports per-user installation. This group cannot be renamed, deleted, or moved.

The Users group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

This security group includes the following changes since Windows Server 2008:

-   In Windows Server 2008 R2, INTERACTIVE was added to the default members list.

-   In Windows Server 2012, the default **Member Of** list changed from Domain Users to none.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-545</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Authenticated Users</p>
<p>[Domain Users](#bkmk-domainusers)</p>
<p>INTERACTIVE</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>Domain Users (this membership is due to the fact that the Primary Group ID of all user accounts is Domain Users.)</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-winauthaccess"></a>Windows Authorization Access Group

Members of this group have access to the computed token GroupsGlobalAndUniversal attribute on User objects. Some applications have features that read the token-groups-global-and-universal (TGGAU) attribute on user account objects or on computer account objects in Active Directory Domain Services. Some Win32 functions make it easier to read the TGGAU attribute. Applications that read this attribute or that call an API (referred to as a function) that reads this attribute do not succeed if the calling security context does not have access to the attribute. This group appears as a SID until the domain controller is made the primary domain controller and it holds the operations master role (also known as flexible single master operations or FSMO).

The Windows Authorization Access group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

**Note**  
This group cannot be renamed, deleted, or moved.

 

This security group has not changed since Windows Server 2008.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-32-560</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Builtin local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Builtin, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>Enterprise Domain Controllers</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Cannot be moved</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="odd">
<td><p>Default user rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-winrmremotewmiusers-"></a>WinRMRemoteWMIUsers\_

In Windows 8 and in Windows Server 2012, a **Share** tab was added to the Advanced Security Settings user interface. This tab displays the security properties of a remote file share. To view this information, you must have the following permissions and memberships, as appropriate for the version of Windows Server that the file server is running.

The WinRMRemoteWMIUsers\_ group applies to versions of the Windows Server operating system listed in the [Active Directory Default Security Groups table](#bkmk-groupstable).

-   If the file share is hosted on a server that is running a supported version of the operating system:

    -   You must be a member of the WinRMRemoteWMIUsers\_\_ group or the BUILTIN\\Administrators group.

    -   You must have Read permissions to the file share.

-   If the file share is hosted on a server that is running a version of Windows Server that is earlier than Windows Server 2012:

    -   You must be a member of the BUILTIN\\Administrators group.

    -   You must have Read permissions to the file share.

In Windows Server 2012, the Access Denied Assistance functionality adds the Authenticated Users group to the local WinRMRemoteWMIUsers\_\_ group. Therefore, when the Access Denied Assistance functionality is enabled, all authenticated users who have Read permissions to the file share can view the file share permissions.

**Note**  
The WinRMRemoteWMIUsers\_ group allows running Windows PowerShell commands remotely whereas the [Remote Management Users](#bkmk-remotemanagementusers) group is generally used to allow users to manage servers by using the Server Manager console.

 

This security group was introduced in Windows Server 2012, and it has not changed in subsequent versions.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Attribute</th>
<th>Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Well-Known SID/RID</p></td>
<td><p>S-1-5-21-&lt;domain&gt;-1000</p></td>
</tr>
<tr class="even">
<td><p>Type</p></td>
<td><p>Domain local</p></td>
</tr>
<tr class="odd">
<td><p>Default container</p></td>
<td><p>CN=Users, DC=&lt;domain&gt;, DC=</p></td>
</tr>
<tr class="even">
<td><p>Default members</p></td>
<td><p>None</p></td>
</tr>
<tr class="odd">
<td><p>Default member of</p></td>
<td><p>None</p></td>
</tr>
<tr class="even">
<td><p>Protected by ADMINSDHOLDER?</p></td>
<td><p>No</p></td>
</tr>
<tr class="odd">
<td><p>Safe to move out of default container?</p></td>
<td><p>Yes</p></td>
</tr>
<tr class="even">
<td><p>Safe to delegate management of this group to non-Service admins?</p></td>
<td><p></p></td>
</tr>
<tr class="odd">
<td><p>Default User Rights</p></td>
<td><p>None</p></td>
</tr>
</tbody>
</table>


## See also

- [Security Principals](security-principals.md)

- [Special Identities](special-identities.md)

- [Access Control Overview](access-control.md)
