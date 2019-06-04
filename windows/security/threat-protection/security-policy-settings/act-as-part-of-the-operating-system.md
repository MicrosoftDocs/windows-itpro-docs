---
title: Act as part of the operating system (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Act as part of the operating system security policy setting.
ms.assetid: c1b7e084-a9f7-4377-b678-07cc913c8b0c
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

# Act as part of the operating system

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Act as part of the operating system** security policy setting.

## Reference

The **Act as part of the operating system** policy setting determines whether a process can assume the identity of any user and thereby gain access to the resources that the user is authorized to access. Typically, only low-level authentication services require this user right. Potential access is not limited to what is associated with the user by default. The calling process may request that arbitrary additional privileges be added to the access token. The calling process may also build an access token that does not provide a primary identity for auditing in the system event logs.
Constant: SeTcbPrivilege

### Possible values
-   User-defined list of accounts
-   Not defined

### Best practices
-   Do not assign this right to any user accounts. Only assign this user right to trusted users.
-   If a service requires this user right, configure the service to log on by using the local System account, which inherently includes this user right. Do not create a separate account and assign this user right to it.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default domain policy | Not defined |
| Default domain controller policy| Not defined |
| Stand-alone server default settings | Not defined | 
| Domain controller effective default settings | Not defined |
| Member server effective default settings | Not defined |
| Client computer effective default settings | Not defined |
 
## Policy management

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

The **Act as part of the operating system** user right is extremely powerful. Users with this user right can take complete control of the device and erase evidence of their activities.

### Countermeasure

Restrict the **Act as part of the operating system** user right to as few accounts as possible—it should not even be assigned to the Administrators group under typical circumstances. When a service requires this user right, configure the service to log on with the Local System account, which inherently includes this privilege. Do not create a separate account and assign this user right to it.

### Potential impact

There should be little or no impact because the **Act as part of the operating system** user right is rarely needed by any accounts other than the Local System account.

## Related topics
[User Rights Assignment](user-rights-assignment.md)
 
