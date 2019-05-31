---
title: Minimum password age (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Minimum password age security policy setting.
ms.assetid: 91915cb2-1b3f-4fb7-afa0-d03df95e8161
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 11/13/2018
---

# Minimum password age

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Minimum password age** security policy setting.

## Reference

The **Minimum password age** policy setting determines the period of time (in days) that a password must be used before the user can change it. You can set a value between 1 and 998 days, or you can allow password changes immediately by setting the number of days to 0. The minimum password age must be less than the Maximum password age, unless the maximum password age is set to 0, indicating that passwords will never expire. If the maximum password age is set to 0, the minimum password age can be set to any value between 0 and 998.

### Possible values

-   User-specified number of days between 0 and 998
-   Not defined

### Best practices

[Windows security baselines](https://docs.microsoft.com/windows/security/threat-protection/windows-security-baselines) recommend setting **Minimum password age** to 1 day. 

Setting the number of days to 0 allows immediate password changes, which is not recommended. 
Combining immediate password changes with password history allows someone to change a password repeatedly until the password history requirement is met and re-establish the original password again. 
For example, suppose a password is "Ra1ny day!" and the history requirement is 24. 
If the minimum password age is 0, the password can be changed 24 times in a row until finally changed back to "Ra1ny day!". 
The minimum password age of 1 day prevents that.

If you set a password for a user and you want that user to change the administrator-defined password, you must select the **User must change password at next logon** check box. 
Otherwise, the user will not be able to change the password until the number of days specified by **Minimum password age**.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| 1 day| 
| Default domain controller policy| Not defined| 
| Stand-alone server default settings | 0 days| 
| Domain controller effective default settings | 1 day| 
| Member server effective default settings | 1 day| 
| Effective GPO default settings on client computers| 1 day| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a computer restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Users may have favorite passwords that they like to use because they are easy to remember and they believe that their password choice is secure from compromise. Unfortunately, passwords can be compromised and if an attacker is targeting a specific individual user account, with knowledge of data about that user, reuse of old passwords can cause a security breach.

To address password reuse, you must use a combination of security settings. Using this policy setting with the [Enforce password history](enforce-password-history.md) policy setting prevents the easy reuse of old passwords. For example, if you configure the Enforce password history policy setting to ensure that users cannot reuse any of their last 12 passwords, but you do not configure the **Minimum password age** policy setting to a number that is greater than 0, users could change their password 13 times in a few minutes and reuse their original password. You must configure this policy setting to a number that is greater than 0 for the Enforce password history policy setting to be effective.

### Countermeasure

Configure the **Minimum password age** policy setting to a value of 1 day. Users should know about this limitation and contact the Help Desk to change a password sooner. If you configure the number of days to 0, immediate password changes would be allowed, which we do not recommend.

### Potential impact

If you set a password for a user but want that user to change the password when the user first logs on, the administrator must select the **User must change password at next logon** check box, or the user cannot change the password until the next day.

## Related topics

- [Password Policy](password-policy.md)
