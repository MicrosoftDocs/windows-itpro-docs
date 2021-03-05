---
title: Back up files and directories - security policy setting (Windows 10)
description: Describes the recommended practices, location, values, policy management, and security considerations for the Back up files and directories security policy setting.
ms.assetid: 1cd6bdd5-1501-41f4-98b9-acf29ac173ae
ms.reviewer: 
ms.author: dansimp
ms.prod: m365-security
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
ms.technology: mde
---

# Back up files and directories - security policy setting

**Applies to**
-   Windows 10

This article describes the recommended practices, location, values, policy management, and security considerations for the **Back up files and directories** security policy setting.

## Reference

This user right determines which users can bypass file and directory, registry, and other persistent object permissions for the purposes of backing up the system. This user right is effective only when an application attempts access through the NTFS backup application programming interface (API) through a tool such as NTBACKUP.EXE. Otherwise, standard file and directory permissions apply.

This user right is similar to granting the following permissions to the user or group you selected on all files and folders on the system:

-   Traverse Folder/Execute File
-   List Folder/Read Data
-   Read Attributes
-   Read Extended Attributes
-   Read Permissions

Default on workstations and servers:

-   Administrators
-   Backup Operators

Default on domain controllers:

-   Administrators
-   Backup Operators
-   Server Operators

Constant: SeBackupPrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

1.  Restrict the **Back up files and directories** user right to members of the IT team who must back up organizational data as part of their daily job responsibilities. Because there's no way to be sure that a user is backing up data, stealing data, or copying data to be distributed, only assign this user right to trusted users.
2.  If your backup software runs under specific service accounts, only these accounts (and not the IT staff) should have the user right to back up files and directories.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, this right is granted to Administrators and Backup Operators on workstations and servers. On domain controllers, Administrators, Backup Operators, and Server Operators have this right.

The following table lists the actual and effective default policy values for the server type or Group Policy Object (GPO). Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not Defined |
| Default Domain Controller Policy | Administrators<br>Backup Operators<br>Server Operators|
| Stand-Alone Server Default Settings | Administrators<br>Backup Operators|
| Domain Controller Effective Default Settings | Administrators<br>Backup Operators<br>Server Operators|
| Member Server Effective Default Settings | Administrators<br>Backup Operators|
| Client Computer Effective Default Settings | Administrators<br>Backup Operators|
 
## Policy management

A restart of the device isn't required for this policy setting to be effective.

Any change to the user rights assignment for an account becomes effective the next time the owner of the account logs on.

### Group Policy

Settings are applied in the following order through a GPO, which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users who can back up data from a device to separate media could take the media to a non-domain computer on which they have administrative privileges, and then restore the data. They could take ownership of the files and view any unencrypted data that is contained within the data set.

### Countermeasure

Restrict the **Back up files and directories** user right to members of the IT team who must back up organizational data as part of their daily job responsibilities. If you use software that backs up data under specific service accounts, only these accounts (and not the IT staff) should have the right to back up files and directories.

### Potential impact

Changes in the membership of the groups that have the user right to back up files and directories could limit the abilities of users who are assigned to specific administrative roles in your environment. Confirm that authorized administrators can still back up files and directories.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
 
 
