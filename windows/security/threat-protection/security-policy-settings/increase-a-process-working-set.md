---
title: Increase a process working set (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Increase a process working set security policy setting.
ms.assetid: b742ad96-37f3-4686-b8f7-f2b48367105b
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

# Increase a process working set

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Increase a process working set** security policy setting.

## Reference

This policy setting determines which users can increase or decrease the size of the working set of a process. The working set of a process is the set of memory pages currently visible to the process in physical RAM. These pages are resident, and they are available for an application to use without triggering a page fault. The minimum and maximum working set sizes affect the virtual memory paging behavior of a process.

Constant: SeIncreaseWorkingSetPrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

-   You should make users aware that adverse performance issues may occur if they modify this security setting.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, standard users have this right.

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not Defined|
| Default Domain Controller Policy | Users|
| Stand-Alone Server Default Settings| Users| 
| Domain Controller Effective Default Settings| Users| 
| Member Server Effective Default Settings | Users| 
| Client Computer Effective Default Settings | Users| 
 
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

Increasing the working set size for a process decreases the amount of physical memory that is available to the rest of the system.

### Countermeasure

Increase user’s awareness about the impact of increasing the working set of a process and how to recognize that their system is adversely affected if they change this setting.

### Potential impact
None. Allowing standard users to increase the working set of a process is the default configuration.
## Related topics

- [User Rights Assignment](user-rights-assignment.md)
