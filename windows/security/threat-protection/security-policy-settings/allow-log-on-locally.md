---
title: Allow log on locally - security policy setting (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Allow log on locally security policy setting.
ms.assetid: d9e5e1f3-3bff-4da7-a9a2-4bb3e0c79055
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Allow log on locally - security policy setting

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Allow log on locally** security policy setting.

## Reference

This policy setting determines which users can start an interactive session on the device. Users must have this user right to log on over a Remote Desktop Services session that is running on a Windows-based member device or domain controller.
> **Note:**  Users who do not have this right are still able to start a remote interactive session on the device if they have the **Allow logon through Remote Desktop Services** right.
 
Constant: SeInteractiveLogonRight

### Possible values

-   User-defined list of accounts
-   Not Defined

By default, the members of the following groups have this right on workstations and servers:

-   Administrators
-   Backup Operators
-   Users

By default, the members of the following groups have this right on domain controllers:

-   Account Operators
-   Administrators
-   Backup Operators
-   Print Operators
-   Server Operators

### Best practices

1.  Restrict this user right to legitimate users who must log on to the console of the device.
2.  If you selectively remove default groups, you can limit the abilities of users who are assigned to specific administrative roles in your organization.

### Location

Computer Configuration\\Policies\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not Defined |
| Default Domain Controller Policy | Account Operators<br>Administrators<br>Backup Operators<br>Print Operators<br>Server Operators |
| Stand-Alone Server Default Settings| Administrators<br>Backup Operators<br>Users |
| Domain Controller Effective Default Settings | Account Operators<br>Administrators<br>Backup Operators<br>Print Operators<br>Server Operators |
| Member Server Effective Default Settings | Administrators<br>Backup Operators<br>Users |
| Client Computer Effective Default Settings | Administrators<br>Backup Operators<br>Users |
 
## Policy management

Restarting the device is not required to implement this change.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

Modifying this setting might affect compatibility with clients, services, and applications. Use caution when removing service accounts that are used by components and by programs on member devices and on domain controllers in the domain from the default domain controller's policy. Also use caution when removing users or security groups that log on to the console of member devices in the domain, or removing service accounts that are defined in the local Security Accounts Manager (SAM) database of member devices or of workgroup devices.
If you want to grant a user account the ability to log on locally to a domain controller, you must make that user a member of a group that already has the **Allowed logon locally** system right or grant the right to that user account.
The domain controllers in the domain share the Default Domain Controllers Group Policy Object (GPO). When you grant an account the **Allow logon locally** right, you are allowing that account to log on locally to all domain controllers in the domain.
If the Users group is listed in the **Allow log on locally** setting for a GPO, all domain users can log on locally. The Users built-in group contains Domain Users as a member.

### Group Policy

Group Policy settings are applied through GPOs in the following order, which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Any account with the **Allow log on locally** user right can log on to the console of the device. If you do not restrict this user right to legitimate users who must log on to the console of the computer, unauthorized users could download and run malicious software to elevate their privileges.

### Countermeasure

For domain controllers, assign the **Allow log on locally** user right only to the Administrators group. For other server roles, you may choose to add Backup Operators in addition to Administrators. For end-user computers, you should also assign this right to the Users group.
Alternatively, you can assign groups such as Account Operators, Server Operators, and Guests to the **Deny log on locally** user right.

### Potential impact

If you remove these default groups, you could limit the abilities of users who are assigned to specific administrative roles in your environment. If you have installed optional components such as ASP.NET or IIS, you may need to assign the **Allow log on locally** user right to additional accounts that are required by those components. IIS requires that this user right be assigned to the IUSR\_*&lt;ComputerName&gt;* account. You should confirm that delegated activities are not adversely affected by any changes that you make to the **Allow log on locally** user rights assignments.

## Related topics
- [User Rights Assignment](user-rights-assignment.md)
 
 
