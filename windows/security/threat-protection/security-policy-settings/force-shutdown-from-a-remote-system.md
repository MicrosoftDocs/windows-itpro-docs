---
title: Force shutdown from a remote system (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Force shutdown from a remote system security policy setting.
ms.assetid: 63129243-31ea-42a4-a598-c7064f48a3df
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

# Force shutdown from a remote system

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Force shutdown from a remote system** security policy setting.

## Reference

This security setting determines which users are allowed to shut down a device from a remote location on the network. This allows members of the Administrators group or specific users to manage computers (for tasks such as a restart) from a remote location.

Constant: SeRemoteShutdownPrivilege

### Possible values

-   User-defined list of accounts
-   Administrators

### Best practices

-   Explicitly restrict this user right to members of the Administrators group or other specifically assigned roles that require this capability, such as non-administrative operations staff.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default this setting is Administrators and Server Operators on domain controllers and Administrators on stand-alone servers.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Administrators<br/>Server Operators| 
| Stand-Alone Server Default Settings | Administrators| 
| Domain Controller Effective Default Settings | Administrators<br/>Server Operators| 
| Member Server Effective Default Settings | Administrators| 
| Client Computer Effective Default Settings | Administrators| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

This policy setting must be applied on the computer that is being accessed remotely.

### Group Policy

This user right is defined in the Default Domain Controller Group Policy Object (GPO) and in the local security policy of workstations and servers.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Any user who can shut down a device could cause a denial-of-service condition to occur. Therefore, this user right should be tightly restricted.

### Countermeasure

Restrict the **Force shutdown from a remote system** user right to members of the Administrators group or other specifically assigned roles that require this capability, such as non-administrative operations staff.

### Potential impact

On a domain controller, if you remove the **Force shutdown from a remote system** user right from the Server Operator group, you could limit the abilities of users who are assigned to specific administrative roles in your environment. You should confirm that delegated activities are not adversely affected.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
