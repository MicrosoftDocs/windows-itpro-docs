---
title: Restore files and directories - security policy setting (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Restore files and directories security policy setting.
ms.assetid: c673c0fa-6f49-4edd-8c1f-c5e8513f701d
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

# Restore files and directories - security policy setting

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Restore files and directories** security policy setting.

## Reference

This security setting determines which users can bypass file, directory, registry, and other persistent object permissions when they restore backed up files and directories, and it determines which users can set valid security principals as the owner of an object.

Granting this user right to an account is similar to granting the account the following permissions to all files and folders on the system:

-   **Traverse folder / execute file**
-   **Write**

Constant: SeRestorePrivilege

### Possible values

-   User-defined list of accounts
-   Defaults
-   Not Defined

### Best practices

-   Users with this user right can overwrite registry settings, hide data, and gain ownership of system objects, so only assign this user right to trusted users.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, this right is granted to the Administrators, Backup Operators, and Server Operators groups on domain controllers, and to the Administrators and Backup Operators groups on stand-alone servers.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
|Default Domain Policy | |  
| Default Domain Controller Policy| Administrators<br/>Backup Operators<br/>Server Operators| 
| Stand-Alone Server Default Settings | Administrators<br/>Backup Operators| 
| Domain Controller Effective Default Settings | Administrators<br/>Backup Operators<br/>Server Operators| 
| Member Server Effective Default Settings | Administrators<br/>Backup Operators| 
| Client Computer Effective Default Settings | Administrators<br/>Backup Operators| 
 
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

An attacker with the **Restore files and directories** user right could restore sensitive data to a computer and overwrite data that is more recent, which could lead to loss of important data, data corruption, or a denial-of-service condition. Attackers could overwrite executable files that are used by legitimate administrators or system services with versions that include malicious software to grant themselves elevated privileges, compromise data, or install programs that provide continued access to the device

>**Note:**  Even if the following countermeasure is configured, an attacker could restore data to a computer in a domain that is controlled by the attacker. Therefore, it is critical that organizations carefully protect the media that are used to back up data.
 
### Countermeasure

Ensure that only the local Administrators group is assigned the **Restore files and directories** user right unless your organization has clearly defined roles for backup and for restore personnel.

### Potential impact

If you remove the **Restore files and directories** user right from the Backup Operators group and other accounts, users who are not members of the local Administrators group cannot load data backups. If restoring backups is delegated to a subset of IT staff in your organization, you should verify that this change does not negatively affect the ability of your organization's personnel to do their jobs.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
