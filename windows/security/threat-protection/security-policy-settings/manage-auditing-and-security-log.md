---
title: Manage auditing and security log (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Manage auditing and security log security policy setting.
ms.assetid: 4b946c0d-f904-43db-b2d5-7f0917575347
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

# Manage auditing and security log

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Manage auditing and security log** security policy setting.

## Reference

This policy setting determines which users can specify object access audit options for individual resources such as files, Active Directory objects, and registry keys. These objects specify their system access control lists (SACL). A user who is assigned this user right can also view and clear the 
Security log in Event Viewer. For more info about the Object Access audit policy, see [Audit object access](../auditing/basic-audit-object-access.md).

Constant: SeSecurityPrivilege

### Possible values
-   User-defined list of accounts
-   Administrators
-   Not Defined

### Best practices

1.  Before removing this right from a group, investigate whether applications are dependent on this right.
2.  Generally, assigning this user right to groups other than Administrators is not necessary.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default this setting is Administrators on domain controllers and on stand-alone servers.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not defined| 
| Default Domain Controller Policy | Administrators| 
| Stand-Alone Server Default Settings | Administrators| 
| Domain Controller Effective Default Settings | Administrators| 
| Member Server Effective Default Settings | Administrators| 
| Client Computer Effective Default Settings| Administrators| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the computer is not required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

Audits for object access are not performed unless you enable them by using the Local Group Policy Editor, the Group Policy Management Console (GPMC), or the Auditpol command-line tool.

For more information about the Object Access audit policy, see [Audit object access](../auditing/basic-audit-object-access.md).

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

Anyone with the **Manage auditing and security log** user right can clear the Security log to erase important evidence of unauthorized activity.

### Countermeasure

Ensure that only the local Administrators group has the **Manage auditing and security log** user right.

### Potential impact

Restricting the **Manage auditing and security log** user right to the local Administrators group is the default configuration.

>**Warning:**  If groups other than the local Administrators group have been assigned this user right, removing this user right might cause performance issues with other applications. Before removing this right from a group, investigate whether applications are dependent on this right.
 
## Related topics

- [User Rights Assignment](user-rights-assignment.md)
