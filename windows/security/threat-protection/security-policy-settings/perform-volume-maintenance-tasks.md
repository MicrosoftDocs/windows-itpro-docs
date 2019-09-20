---
title: Perform volume maintenance tasks (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Perform volume maintenance tasks security policy setting.
ms.assetid: b6990813-3898-43e2-8221-c9c06d893244
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

# Perform volume maintenance tasks

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Perform volume maintenance tasks** security policy setting.

## Reference

This policy setting determines which users can perform volume or disk management tasks, such as defragmenting an existing volume, creating or removing volumes, and running the Disk Cleanup tool.

Use caution when assigning this user right. Users with this user right can explore disks and extend files in to memory that contains other data. When the extended files are opened, the user might be able to read and modify the acquired data.

Constant: SeManageVolumePrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

-   Ensure that only the local Administrators group is assigned the **Perform volume maintenance tasks** user right.

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
| DC Effective Default Settings | Administrators| 
| Member Server Effective Default Settings | Administrators| 
| Client Computer Effective Default Settings | Administrators| 
 
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

A user who is assigned the **Perform volume maintenance tasks** user right could delete a volume, which could result in the loss of data or a denial-of- service condition. Also, disk maintenance tasks can be used to modify data on the disk, such as user rights assignments that might lead to escalation of privileges.

### Countermeasure

Ensure that only the local Administrators group is assigned the **Perform volume maintenance tasks** user right.

### Potential impact

None. Restricting the **Perform volume maintenance tasks** user right to the local Administrators group is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
