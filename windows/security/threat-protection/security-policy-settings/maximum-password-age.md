---
title: Maximum password age (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Maximum password age security policy setting.
ms.assetid: 2d6e70e7-c8b0-44fb-8113-870c6120871d
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

# Maximum password age

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Maximum password age** security policy setting.

## Reference

The **Maximum password age** policy setting determines the period of time (in days) that a password can be used before the system requires the user to change it. You can set passwords to expire after a number of days between 1 and 999, or you can specify that passwords never expire by setting the number of days to 0. If **Maximum password age** is between 1 and 999 days, the minimum password age must be less than the maximum password age. If **Maximum password age** is set to 0, [Minimum password age](minimum-password-age.md) can be any value between 0 and 998 days.

>**Note:**  Setting **Maximum password age** to -1 is equivalent to 0, which means it never expires. Setting it to any other negative number is equivalent to setting it to **Not Defined**.
 
### Possible values

-   User-specified number of days between 0 and 999
-   Not defined

### Best practices

Set **Maximum password age** to a value between 30 and 90 days, depending on your environment. This way, an attacker has a limited amount of time in which to compromise a user's password and have access to your network resources.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| 42 days| 
| Default domain controller policy| Not defined| 
| Stand-alone server default settings | 42 days| 
| Domain controller effective default settings | 42 days| 
| Member server effective default settings | 42 days| 
| Effective GPO default settings on client computers| 42 days| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of implementation.

### Vulnerability

The longer a password exists, the higher the likelihood that it will be compromised by a brute force attack, by an attacker gaining general knowledge about the user, or by the user sharing the password. Configuring the **Maximum password age** policy setting to 0 so that users are never required to change their passwords allows a compromised password to be used by the malicious user for as long as the valid user is authorized access. 

### Considerations

Mandated password changes are a long-standing security practice, but current research strongly indicates that password expiration has a negative effect. See [Microsoft Password Guidance](https://www.microsoft.com/en-us/research/publication/password-guidance/) for further information.

Configure the **Maximum password age** policy setting to a value that is suitable for your organization's business requirements. For example, many organisations have compliance or insurance mandates requiring a short lifespan on passwords. Where such a requirement exists, the **Maximum password age** policy setting can be used to meet business requirements.

### Potential impact

If the **Maximum password age** policy setting is too low, users are required to change their passwords very often. Such a configuration can reduce security in the organization because users might keep their passwords in an unsecured location or lose them. If the value for this policy setting is too high, the level of security within an organization is reduced because it allows potential attackers more time in which to discover user passwords or to use compromised accounts.

## Related topics

- [Password Policy](password-policy.md)
