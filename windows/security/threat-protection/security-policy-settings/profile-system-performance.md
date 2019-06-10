---
title: Profile system performance (Windows 10)
description: This security policy reference topic for the IT professional describes the best practices, location, values, policy management, and security considerations for the Profile system performance security policy setting.
ms.assetid: ffabc3c5-9206-4105-94ea-84f597a54b2e
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

# Profile system performance

**Applies to**
-   Windows 10

This security policy reference topic for the IT professional describes the best practices, location, values, policy management, and security considerations for the **Profile system performance** security policy setting.

## Reference

This security setting determines which users can use Windows performance monitoring tools to monitor the performance of system processes.

Constant: SeSystemProfilePrivilege

### Possible values

-   User-defined list of accounts
-   Administrators
-   Not defined

### Best practices

-   Ensure that only the local Administrators group is assigned the **Profile system performance** user right.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

By default, this setting is Administrators and NT SERVICE\WdiServiceHost on domain controllers and on stand-alone servers.

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

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

Depending on your version of Windows and your environment, you might need to add this user right to the Local System account or the Local Service account if you encounter access errors when you use the Administrators account.

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

The **Profile system performance** user right poses a moderate vulnerability. Attackers with this user right could monitor a computer's performance to help identify critical processes that they might want to attack directly. Attackers might also be able to determine what processes are active on the computer so that they could identify countermeasures to avoid, such as anti-virus software or an intrusion detection system.

### Countermeasure

Ensure that only the local Administrators group is assigned the **Profile system performance** user right.

### Potential impact

None. Restricting the **Profile system performance** user right to the local Administrators group is the default configuration.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
