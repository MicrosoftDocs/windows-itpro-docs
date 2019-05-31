---
title: Access Credential Manager as a trusted caller (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Access Credential Manager as a trusted caller security policy setting.
ms.assetid: a51820d2-ca5b-47dd-8e9b-d7008603db88
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

# Access Credential Manager as a trusted caller

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Access Credential Manager as a trusted caller** security policy setting.

## Reference

The **Access Credential Manager as a trusted caller** policy setting is used by Credential Manager during backup and restore. No accounts should have this privilege because it is assigned only to the Winlogon service. Saved credentials of users may be compromised if this privilege is given to other entities.

Constant: SeTrustedCredManAccessPrivilege

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

-   Do not modify this policy setting from the default.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

| Server type or GPO | Default value |
| - | - |
| Default domain policy | Not defined |
| Default domain controller policy | Not defined |
| Stand-alone server default settings | Not defined |
| Domain controller effective default settings | Not defined |
| Member server effective default settings | Not defined |
| Client computer effective default settings | Not defined |
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

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

If an account is given this user right, the user of the account may create an application that calls into Credential Manager and is returned the credentials for another user.

### Countermeasure

Do not define the **Access Credential Manager as a trusted caller** policy setting for any accounts besides Credential Manager.

### Potential impact

None. Not defined is the default configuration.

## Related topics
[User Rights Assignment](user-rights-assignment.md)
 
