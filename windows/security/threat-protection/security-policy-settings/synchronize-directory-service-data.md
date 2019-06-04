---
title: Synchronize directory service data (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Synchronize directory service data security policy setting.
ms.assetid: 97b0aaa4-674f-40f4-8974-b4bfb12c232c
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

# Synchronize directory service data

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Synchronize directory service data** security policy setting.

## Reference

This policy setting determines which users and groups have authority to synchronize all directory service data, regardless of the protection for objects and properties. This privilege is required to use LDAP directory synchronization (dirsync) services. Domain controllers have this user right inherently because the synchronization process runs in the context of the **System** account on domain controllers.

Constant: SeSyncAgentPrivilege

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

-   Ensure that no accounts are assigned the **Synchronize directory service data** user right. Only domain controllers need this privilege, which they inherently have.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default this setting is not defined on domain controllers and on stand-alone servers.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| Domain Controller Effective Default Settings | Enabled| 
| Member Server Effective Default Settings | Disabled| 
| Client Computer Effective Default Settings | Disabled| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The **Synchronize directory service data** user right affects domain controllers (only domain controllers should be able to synchronize directory service data). Domain controllers have this user right inherently because the synchronization process runs in the context of the **System** account on domain controllers. Attackers who have this user right can view all information that is stored within the directory. They could then use some of that information to facilitate additional attacks or expose sensitive data, such as direct telephone numbers or physical addresses.

### Countermeasure

Ensure that no accounts are assigned the **Synchronize directory service data** user right.

### Potential impact

None. Not defined is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
