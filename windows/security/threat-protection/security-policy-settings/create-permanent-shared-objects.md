---
title: Create permanent shared objects (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Create permanent shared objects security policy setting.
ms.assetid: 6a58438d-65ca-4c4a-a584-450eed976649
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

# Create permanent shared objects

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Create permanent shared objects** security policy setting.

## Reference

This user right determines which accounts can be used by processes to create a directory object by using the object manager. Directory objects include Active Directory objects, files and folders, printers, registry keys, processes, and threads. Users who have this capability can create permanent shared objects, including devices, semaphores, and mutexes. This user right is useful to kernel-mode components that extend the object namespace. Because components that are running in kernel-mode inherently have this user right assigned to them, it is not necessary to specifically assign it.

Constant: SeCreatePermanentPrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

-   Users who have the **Create permanent shared objects** user right could create new shared objects and expose sensitive data to the network. Therefore, do not assign this right to any users.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, **LocalSystem** is the only account that has this right.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not Defined| 
| Default Domain Controller Policy | Not Defined | 
| Stand-Alone Server Default Settings | Not Defined| 
| Domain Controller Effective Default Settings | **LocalSystem**| 
| Member Server Effective Default Settings | **LocalSystem**| 
| Client Computer Effective Default Settings | **LocalSystem**| 
 
## Policy management

This section describes different features and tools available to help you manage this policy.

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

Users who have the **Create permanent shared objects** user right could create new shared objects and expose sensitive data to the network.

### Countermeasure

Do not assign the **Create permanent shared objects** user right to any users. Processes that require this user right should use the System account, which already includes this user right, instead of a separate user account.

### Potential impact

None. Not Defined is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
