---
title: Profile single process (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Profile single process security policy setting.
ms.assetid: c0963de4-4f5e-430e-bfcd-dfd68e66a075
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

# Profile single process

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Profile single process** security policy setting.

## Reference

This policy setting determines which users can view a sample performance of an application process. Typically, you do not need this user right to use the performance reporting tools included in the operating system. However, you do need this user right if the system’s monitor components are configured to collect data through Windows Management Instrumentation (WMI).

Constant: SeProfileSingleProcessPrivilege

### Possible values

-   User-defined list of accounts
-   Administrators
-   Not Defined

### Best practices

-   This right should not be granted to individual users. It should be granted only for trusted applications that monitor other programs.

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
| Client Computer Effective Default Settings| Administrators| 
 
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

The **Profile single process** user right presents a moderate vulnerability. Attackers with this user right could monitor a computer's performance to help identify critical processes that they might want to attack directly. Attackers may be able to determine what processes run on the computer so that they could identify countermeasures that they may need to avoid, such as anti-virus software or an intrusion-detection system. They could also identify other users who are logged on to a computer.

### Countermeasure

Ensure that only the local Administrators group is assigned the **Profile single process** user right.

### Potential impact

If you remove the **Profile single process** user right from the Power Users group or other accounts, you could limit the abilities of users who are assigned to specific administrative roles in your environment. You should ensure that delegated tasks are not negatively affected.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
