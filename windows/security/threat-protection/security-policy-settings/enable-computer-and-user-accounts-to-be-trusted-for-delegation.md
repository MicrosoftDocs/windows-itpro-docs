---
title: Enable computer and user accounts to be trusted for delegation (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Enable computer and user accounts to be trusted for delegation security policy setting.
ms.assetid: 524062d4-1595-41f3-8ce1-9c85fd21497b
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

# Enable computer and user accounts to be trusted for delegation

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Enable computer and user accounts to be trusted for delegation** security policy setting.

## Reference

This policy setting determines which users can set the **Trusted for Delegation** setting on a user or computer object.
Security account delegation provides the ability to connect to multiple servers, and each server change retains the authentication credentials of the original client. Delegation of authentication is a capability that client and server applications use when they have multiple tiers. It allows a public-facing service to use client credentials to authenticate to an application or database service. For this configuration to be possible, the client and the server must run under accounts that are trusted for delegation.

Only administrators who have the **Enable computer and user accounts to be trusted for delegation** credential can set up delegation. Domain admins and Enterprise admins have this credential. The procedure to allow a user to be trusted for delegation depends on the functionality level of the domain.

The user or machine object that is granted this right must have write access to the account control flags. A server process running on a device (or under a user context) that is trusted for delegation can access resources on another computer by using the delegated credentials of a client. However, the client account must have Write access to the account control flags on the object.

Constant: SeEnableDelegationPrivilege

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

-   There is no reason to assign this user right to anyone on member servers and workstations that belong to a domain because it has no meaning in those contexts. It is only relevant on domain controllers and stand-alone devices.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| Domain Controller Effective Default Settings | Administrators| 
| Member Server Effective Default Settings | Administrators| 
| Client Computer Effective Default Settings | Administrators| 
 
## Policy management

This section describes features, tools and guidance to help you manage this policy.

Modifying this setting might affect compatibility with clients, services, and applications.

A restart of the device is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

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

Misuse of the **Enable computer and user accounts to be trusted for delegation** user right could allow unauthorized users to impersonate other users on the network. An attacker could exploit this privilege to gain access to network resources and make it difficult to determine what has happened 
after a security incident.

### Countermeasure

The **Enable computer and user accounts to be trusted for delegation** user right should be assigned only if there is a clear need for its functionality. When you assign this right, you should investigate the use of constrained delegation to control what the delegated accounts can do. On domain controllers, this right is assigned to the Administrators group by default.

>**Note:**  There is no reason to assign this user right to anyone on member servers and workstations that belong to a domain because it has no meaning in those contexts. It is only relevant on domain controllers and stand-alone computers.
 
### Potential impact

None. Not defined is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
