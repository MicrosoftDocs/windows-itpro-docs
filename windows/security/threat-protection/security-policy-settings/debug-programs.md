---
title: Debug programs (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Debug programs security policy setting.
ms.assetid: 594d9f2c-8ffc-444b-9522-75615ec87786
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

# Debug programs

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Debug programs** security policy setting.

## Reference

This policy setting determines which users can attach to or open any process, even those they do not own. Developers who are debugging their own applications do not need to be assigned this user right. Developers who are debugging new system components need this user right. This user right provides access to sensitive and critical operating-system components.

Constant: SeDebugPrivilege

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

-   Assign this user right only to trusted users to reduce security vulnerabilities.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, members of the Administrators group have this right.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Administrators | 
| Stand-Alone Server Default Settings | Administrators | 
| Domain Controller Effective Default Settings | Administrators | 
| Member Server Effective Default Settings | Administrators | 
| Client Computer Effective Default Settings | Administrators | 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

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

The **Debug programs** user right can be exploited to capture sensitive device information from system memory or to access and modify kernel or application structures. Some attack tools exploit this user right to extract hashed passwords and other private security information or to insert malware. 
By default, the **Debug programs** user right is assigned only to administrators, which helps mitigate risk from this vulnerability.

### Countermeasure

Remove the accounts of all users and groups that do not require the **Debug programs** user right.

### Potential impact

If you revoke this user right, no one can debug programs. However, typical circumstances rarely require this capability on production devices. If an issue arises that requires an application to be debugged on a production server, you can move the server to a different organizational unit (OU) 
temporarily and assign the **Debug programs** user right to a separate Group Policy for that OU.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
