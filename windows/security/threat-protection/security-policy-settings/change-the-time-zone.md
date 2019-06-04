---
title: Change the time zone - security policy setting (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Change the time zone security policy setting.
ms.assetid: 3b1afae4-68bb-472f-a43e-49e300d73e50
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

# Change the time zone - security policy setting

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Change the time zone** security policy setting.

## Reference

This policy setting determines which users can adjust the time zone that is used by the device for displaying the local time, which includes the device's system time plus the time zone offset.

Constant: SeTimeZonePrivilege

### Possible values

-   User-defined list of accounts
-   Not Defined

### Best practices

None.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment

### Default values

The following table lists the actual and effective default policy values for the most recent supported versions of Windows. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| Not Defined| 
| Default Domain Controller Policy | Administrators<br/>Users| 
| Stand-Alone Server Default Settings | Administrators<br/>Users| 
| Domain Controller Effective Default Settings | Administrators<br/>Users| 
| Member Server Effective Default Settings | Administrators<br/>Users| 
| Client Computer Effective Default Settings | Administrators<br/>Users| 
 
## Policy management

A restart of the device is not required for this policy setting to be effective.

Any change to the account for this user right assignment becomes effective the next time the account logs on.

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

Changing the time zone represents little vulnerability because the system time is not affected. This setting merely enables users to display their preferred time zone while being synchronized with domain controllers in different time zones.

### Countermeasure

Countermeasures are not required because system time is not affected by this setting.

### Potential impact

None.

## Related topics

- [User Rights Assignment](user-rights-assignment.md)
