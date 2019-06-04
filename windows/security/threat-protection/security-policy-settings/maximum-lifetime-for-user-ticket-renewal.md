---
title: Maximum lifetime for user ticket renewal (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Maximum lifetime for user ticket renewal security policy setting.
ms.assetid: f88cd819-3dd1-4e38-b560-13fe6881b609
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

# Maximum lifetime for user ticket renewal

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Maximum lifetime for user ticket renewal** security policy setting.

## Reference

The **Maximum lifetime for user ticket renewal** policy setting determines the period of time (in days) during which a user’s ticket-granting ticket can be renewed.

The possible values for this Group Policy setting are:

-   A user-defined number of days from 0 through 99,999
-   Not defined

### Best practices

-   If the value for this policy setting is too high, users may be able to renew very old user ticket-granting tickets. If the value is 0, ticket-granting tickets never expire.

    It is advisable to set **Maximum lifetime for user ticket renewal** to **7** days.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy| 7 days| 
| Default Domain Controller Policy| Not defined| 
| Stand-Alone Server Default Settings | Not applicable| 
| Domain Controller Effective Default Settings | 7 days| 
| Member Server Effective Default Settings | Not applicable| 
| Client Computer Effective Default Settings | Not applicable| 
 
### Policy management

This section describes features, tools, and guidance to help you manage this policy.

A restart of the device is not required for this policy setting to be effective.

This policy setting is configured on the domain controller.

### Group Policy

Client devices will get the new setting during the next scheduled and successful Group Policy refresh. But for domain controllers to assign these new settings immediately, a gpupdate.exe /force is required. On the local device, the Security Configuration Engine will refresh this setting in about five minutes.

Settings are applied in the following order through a Group Policy Object (GPO), which will overwrite settings on the local computer at the next Group Policy update:

1.  Local policy settings
2.  Site policy settings
3.  Domain policy settings
4.  OU policy settings

When a local setting is greyed out, it indicates that a GPO currently controls that setting.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

If the value for the **Maximum lifetime for user ticket renewal** setting is too high, users might be able to renew very old user tickets.

### Countermeasure

Configure the **Maximum lifetime for user ticket renewal** setting to 7 days.

### Potential impact

Seven (7) days is the default configuration. Changing the default configuration is a tradeoff between user convenience and security. A shorter time period requires users to authenticate with a DC more often, but remote users who authenticate with a DC infrequently can be locked out of services until they reauthenticate. 

## Related topics

- [Kerberos Policy](kerberos-policy.md)
