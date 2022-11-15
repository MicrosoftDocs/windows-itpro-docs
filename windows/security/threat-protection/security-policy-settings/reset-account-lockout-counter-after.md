---
title: Reset account lockout counter after (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Reset account lockout counter after security policy setting.
ms.assetid: d5ccf6dd-5ba7-44a9-8e0b-c478d8b1442c
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 11/02/2018
ms.technology: itpro-security
---

# Reset account lockout counter after

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Reset account lockout counter after** security policy setting.

## Reference

The **Reset account lockout counter after** policy setting determines the number of minutes that must elapse from the time a user fails to sign in before the failed sign-in attempt counter is reset to 0. If [Account lockout threshold](account-lockout-threshold.md) is set to a number greater than zero, this reset time must be less than or equal to the value of [Account lockout duration](account-lockout-duration.md).

The disadvantage of a high setting is that users lock themselves out for an inconveniently long period if they exceed the account lockout threshold through sign-in errors. Users may make excessive Help Desk calls.

### Possible values

-   A user-defined number of minutes from 1 through 99,999
-   Not defined

### Best practices

Determine the threat level for your organization and balance that against the cost of your Help Desk support for password resets. Each organization will have specific requirements. 

[Windows security baselines](../windows-security-baselines.md) recommend configuring the **Reset account lockout counter after** policy setting to 15, but as with other account lockout settings, this value is more of a guideline than a rule or best practice because there's no "one size fits all." For more information, see [Configuring Account Lockout](/archive/blogs/secguide/configuring-account-lockout).

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Account Lockout Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| Not defined| 
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | Not applicable| 
| Domain controller effective default settings | Not defined| 
| Member server effective default settings | Not defined| 
| Client computer effective default settings | Not applicable| 
 
## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users can accidentally lock themselves out of their accounts if they mistype their password multiple times.

### Countermeasure

[Windows security baselines](../windows-security-baselines.md) recommend configuring the **Reset account lockout counter after** policy setting to 15.

### Potential impact

If you don't configure this policy setting or if the value is configured to an interval that is too long, an attacker could attempt to sign in to each user's account numerous times and lock out their accounts, a denial-of-service (DoS) attack might succeed, or administrators might have to manually unlock all locked-out accounts. If you configure this policy setting to a reasonable value, users can perform new attempts to sign in after a failed sign in within a reasonable time, without making brute force attacks feasible at high speeds. Be sure that you notify users of the values that are used for this policy setting so that they wait for the lockout timer to expire before they call the Help Desk.

## Related topics

- [Account Lockout Policy](account-lockout-policy.md)