---
title: Bypass traverse checking (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Bypass traverse checking security policy setting.
ms.assetid: 1c828655-68d3-4140-aa0f-caa903a7087e
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

# Bypass traverse checking

**Applies to**
-   Windows 10

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/en-us/WindowsForBusiness/Compare).

Describes the best practices, location, values, policy management, and security considerations for the **Bypass traverse checking** security policy setting.

## Reference

This policy setting determines which users (or a process that acts on behalf of the user’s account) have permission to navigate an object path in the NTFS file system or in the registry without being checked for the Traverse Folder special access permission. This user right does not allow the user to list the contents of a folder. It only allows the user to traverse folders to access permitted files or subfolders.

Constant: SeChangeNotifyPrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

1.  Use access–based enumeration when you want to prevent users from seeing any folder or file to which they do not have access.
2.  Use the default settings of this policy in most cases. If you change the settings, verify your intent through testing.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not Defined | 
| Default Domain Controller Policy | Administrators<br/>Authenticated Users<br/>Everyone<br/>Local Service<br/>Network Service<br/>Pre-Windows 2000 Compatible Access| 
| Stand-Alone Server Default Settings | Administrators<br/>Backup Operators<br/>Users<br/>Everyone<br/>Local Service<br/>Network Service| 
| Domain Controller Effective Default Settings | Administrators<br/>Authenticated Users<br/>Everyone<br/>Local Service<br/>Network Service<br/>Pre-Windows 2000 Compatible Access| 
| Member Server Effective Default Settings | Administrators<br/>Backup Operators<br/>Users<br/>Everyone<br/>Local Service<br/>Network Service| 
| Client Computer Effective Default Settings | Administrators<br/>Backup Operators<br/>Users<br/>Everyone<br/>Local Service<br/>Network Service| 
 
## Policy management

Permissions to files and folders are controlled though the appropriate configuration of file system access control lists (ACLs).The ability to traverse the folder does not provide any Read or Write permissions to the user.

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

The default configuration for the **Bypass traverse checking** setting is to allow all users to bypass traverse checking. Permissions to files and folders are controlled though the appropriate configuration of file system access control lists (ACLs) because the ability to traverse the folder does not provide any Read or Write permissions to the user. The only scenario in which the default configuration could lead to a mishap would be if the administrator who configures permissions does not understand how this policy setting works. For example, the administrator might expect that users who are unable to access a folder are unable to access the contents of any child folders. Such a situation is unlikely, and, therefore, this vulnerability presents little risk.

### Countermeasure

Organizations that are extremely concerned about security may want to remove the Everyone group, and perhaps the Users group, from the list of groups that have the **Bypass traverse checking** user right. Taking explicit control over traversal assignments can be an effective way to limit access to sensitive information. Access–based enumeration can also be used. If you use access–based enumeration, users cannot see any folder or file to which they do not have access. For more info about this feature, see [Access-based Enumeration](https://go.microsoft.com/fwlink/p/?LinkId=100745).

### Potential impact

The Windows operating systems and many applications were designed with the expectation that anyone who can legitimately access the computer will have this user right. Therefore, we recommend that you thoroughly test any changes to assignments of the **Bypass traverse checking** user right before you make such changes to production systems. In particular, IIS requires this user right to be assigned to the Network Service, Local Service, IIS\_WPG, IUSR\_*&lt;ComputerName&gt;*, and IWAM\_*&lt;ComputerName&gt;* accounts. (It must also be assigned to the ASPNET account through its membership in the Users group.) We recommend that you leave this policy setting at its default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
 
 
