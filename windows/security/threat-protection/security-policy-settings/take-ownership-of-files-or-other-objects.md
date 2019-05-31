---
title: Take ownership of files or other objects (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Take ownership of files or other objects security policy setting.
ms.assetid: cb8595d1-74cc-4176-bb15-d97663eebb2d
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

# Take ownership of files or other objects

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Take ownership of files or other objects** security policy setting.

## Reference

This policy setting determines which users can take ownership of any securable object in the device, including Active Directory objects, NTFS files and folders, printers, registry keys, services, processes, and threads.

Every object has an owner, whether the object resides in an NTFS volume or Active Directory database. The owner controls how permissions are set on the object and to whom permissions are granted.

By default, the owner is the person who or the process which created the object. Owners can always change permissions to objects, even when they are denied all access to the object.

Constant: SeTakeOwnershipPrivilege

### Possible values

-   User-defined list of accounts
-   Not defined

### Best practices

-   Assigning this user right can be a security risk. Because owners of objects have full control of them, only assign this user right to trusted users.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default this setting is Administrators on domain controllers and on stand-alone servers.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Administrators| 
| Stand-Alone Server Default Settings | Administrators| 
| Domain Controller Effective Default Settings | Administrators| 
| Member Server Effective Default Settings | Administrators| 
| Client Computer Effective Default Settings | Administrators| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

Ownership can be taken by:

-   An administrator. By default, the Administrators group is given the **Take ownership of files or other objects** user right.
-   Anyone or any group who has the **Take ownership** user right on the object.
-   A user who has the **Restore files and directories** user right.

Ownership can be transferred in the following ways:

-   The current owner can grant the **Take ownership** user right to another user if that user is a member of a group defined in the current owner's access token. The user must take ownership to complete the transfer.
-   An administrator can take ownership.
-   A user who has the **Restore files and directories** user right can double-click **Other users and groups** and choose any user or group to assign ownership to.

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

Any users with the **Take ownership of files or other objects user right** can take control of any object, regardless of the permissions on that object, and then make any changes that they want to make to that object. Such changes could result in exposure of data, corruption of data, or a 
denial-of-service condition.

### Countermeasure

Ensure that only the local Administrators group has the **Take ownership of files or other objects** user right.

### Potential impact

None. Restricting the **Take ownership of files or other objects** user right to the local Administrators group is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
