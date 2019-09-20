---
title: Enforce password history (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Enforce password history security policy setting.
ms.assetid: 8b2ab871-3e52-4dd1-9776-68bb1e935442
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

# Enforce password history

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Enforce password history** security policy setting.

## Reference

The **Enforce password history** policy setting determines the number of unique new passwords that must be associated with a user account before an old password can be reused.
Password reuse is an important concern in any organization. Many users want to reuse the same password for their account over a long period of time. The longer the same password is used for a particular account, the greater the chance that an attacker will be able to determine the password through brute force attacks. If users are required to change their password, but they can reuse an old password, the effectiveness of a good password policy is greatly reduced.

Specifying a low number for **Enforce password history** allows users to continually use the same small number of passwords repeatedly. If you do not also set [Minimum password age](minimum-password-age.md), users can change their password as many times in a row as necessary to reuse their original password.

### Possible values

-   User-specified number from 0 through 24
-   Not defined

### Best practices

-   Set **Enforce password history** to 24. This will help mitigate vulnerabilities that are caused by password reuse.
-   Set [Maximum password age](maximum-password-age.md) to expire passwords between 60 and 90 days. Try to expire the passwords between major business cycles to prevent work loss.
-   Configure [Minimum password age](minimum-password-age.md) so that you do not allow passwords to be changed immediately.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default domain policy | 24 passwords remembered| 
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | 0 passwords remembered| 
| Domain controller effective default settings | 24 passwords remembered| 
| Member server effective default settings | 24 passwords remembered| 
| Effective GPO default settings on client computers | 24 passwords remembered| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

The longer a user uses the same password, the greater the chance that an attacker can determine the password through brute force attacks. Also, any accounts that may have been compromised remain exploitable for as long as the password is left unchanged. If password changes are required but password reuse is not prevented, or if users continually reuse a small number of passwords, the effectiveness of a good password policy is greatly reduced.

If you specify a low number for this policy setting, users can use the same small number of passwords repeatedly. If you do not also configure the [Minimum password age](minimum-password-age.md) policy setting, users might repeatedly change their passwords until they can reuse their original password.

>**Note:**  After an account has been compromised, a simple password reset might not be enough to restrict a malicious user because the malicious user might have modified the user's environment so that the password is changed back to a known value automatically at a certain time. If an account has been compromised, it is best to delete the account and assign the user a new account after all affected systems have been restored to normal operations and verified that they are no longer compromised.
 
### Countermeasure

Configure the **Enforce password history** policy setting to 24 (the maximum setting) to help minimize the number of vulnerabilities that are caused by password reuse.

For this policy setting to be effective, you should also configure effective values for the [Minimum password age](minimum-password-age.md) and [Maximum password age](maximum-password-age.md) policy settings.

### Potential impact

The major impact of configuring the **Enforce password history** setting to 24 is that users must create a new password every time they are required to change their old one. If users are required to change their passwords to new unique values, there is an increased risk of users who write their passwords somewhere so that they do not forget them. Another risk is that users may create passwords that change incrementally (for example, password01, password02, and so on) to facilitate memorization, but this makes them easier for an attacker to guess. Also, an excessively low value for the [Maximum password age](maximum-password-age.md) policy setting is likely to increase administrative overhead because users who forget their passwords might ask the Help Desk to reset them frequently.

## Related topics

- [Password Policy](password-policy.md)
