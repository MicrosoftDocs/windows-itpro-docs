---
title: Allow log on through Remote Desktop Services (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Allow log on through Remote Desktop Services security policy setting.
ms.assetid: 6267c376-8199-4f2b-ae56-9c5424e76798
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

# Allow log on through Remote Desktop Services

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Allow log on through Remote Desktop Services** security policy setting.

## Reference

This policy setting determines which users or groups can access the logon screen of a remote device through a Remote Desktop Services connection. It is possible for a user to establish a Remote Desktop Services connection to a particular server but not be able to log on to the console of that same server.

Constant: SeRemoteInteractiveLogonRight

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

-   To control who can open a Remote Desktop Services connection and log on to the device, add users to or remove users from the Remote Desktop Users group.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, members of the Administrators group have this right on domain controllers, workstations, and servers. The Remote Desktops Users group also has this right on workstations and servers.
The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.


| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not Defined |
| Default Domain Controller Policy | Administrators |
| Stand-Alone Server Default Settings | Administrators<br>Remote Desktop Users | 
| Domain Controller Effective Default Settings | Administrators | 
| Member Server Effective Default Settings | Administrators<br>Remote Desktop Users |
| Client Computer Effective Default Settings | Administrators<br>Remote Desktop Users |
 
## Policy management

This section describes different features and tools available to help you manage this policy.

### Group Policy

To use Remote Desktop Services to successfully log on to a remote device, the user or group must be a member of the Remote Desktop Users or Administrators group and be granted the **Allow log on through Remote Desktop Services** right. It is possible for a user to establish an Remote Desktop Services session to a particular server, but not be able to log on to the console of that same server.

To exclude users or groups, you can assign the **Deny log on through Remote Desktop Services** user right to those users or groups. However, be careful when you use this method because you could create conflicts for legitimate users or groups that have been allowed access through the **Allow log on through Remote Desktop Services** user right.

For more information, see [Deny log on through Remote Desktop Services](deny-log-on-through-remote-desktop-services.md).

A restart of the device is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

Group Policy settings are applied through GPOs in the following order, which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Any account with the **Allow log on through Remote Desktop Services** user right can log on to the remote console of the device. If you do not restrict this user right to legitimate users who must log on to the console of the computer, unauthorized users could download and run malicious software to elevate their privileges.

### Countermeasure

For domain controllers, assign the **Allow log on through Remote Desktop Services** user right only to the Administrators group. For other server roles and devices, add the Remote Desktop Users group. For servers that have the Remote Desktop (RD) Session Host role service enabled and do not run in Application Server mode, ensure that only authorized IT personnel who must manage the computers remotely belong to these groups.

> **Caution:**  For RD Session Host servers that run in Application Server mode, ensure that only users who require access to the server have accounts that belong to the Remote Desktop Users group because this built-in group has this logon right by default.
 
Alternatively, you can assign the **Deny log on through Remote Desktop Services** user right to groups such as Account Operators, Server Operators, and Guests. However, be careful when you use this method because you could block access to legitimate administrators who also belong to a group that has the **Deny log on through Remote Desktop Services** user right.

### Potential impact

Removal of the **Allow log on through Remote Desktop Services** user right from other groups (or membership changes in these default groups) could limit the abilities of users who perform specific administrative roles in your environment. You should confirm that delegated activities are not adversely affected.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
 
 
