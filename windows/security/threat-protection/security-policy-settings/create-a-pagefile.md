---
title: Create a pagefile - security policy setting (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Create a pagefile security policy setting.
ms.assetid: dc087897-459d-414b-abe0-cd86c8dccdea
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

# Create a pagefile - security policy setting

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Create a pagefile** security policy setting.

## Reference

Windows designates a section of the hard drive as virtual memory known as the page file, or more specifically, as pagefile.sys. It is used to supplement the computer’s Random Access Memory (RAM) to improve performance for programs and data that are used frequently. Although the file is hidden from browsing, you can manage it using the system settings.

This policy setting determines which users can create and change the size of a page file. It determines whether users can specify a page file size for a particular drive in the **Performance Options** box located on the **Advanced** tab of the **System Properties** dialog box or through using internal application interfaces (APIs).

Constant: SeCreatePagefilePrivilege

### Possible values

-   User-defined list of accounts
-   Administrators

### Best practices

-   Restrict the **Create a pagefile** user right to Administrators, which is the default.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, members of the Administrators group have this right.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Administrators | 
| Default Domain Controller Policy | Administrators | 
| Stand-Alone Server Default Settings | Administrators | 
| Domain Controller Effective Default Settings | Administrators | 
| Member Server Effective Default Settings | Administrators | 
| Client Computer Effective Default Settings | Administrators | 
 
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

Users who can change the page file size could make it extremely small or move the file to a highly fragmented storage volume, which could cause reduced device performance.

### Countermeasure

Restrict the **Create a pagefile** user right to members of the Administrators group.

### Potential impact

None. Restricting this right to members of the Administrators group is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
