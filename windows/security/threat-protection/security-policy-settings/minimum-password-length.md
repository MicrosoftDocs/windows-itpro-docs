---
title: Minimum password length (Windows 10)
description: Describes the best practices, location, values, policy management, and security considerations for the Minimum password length security policy setting.
ms.assetid: 3d22eb9a-859a-4b6f-82f5-c270c427e17e
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

# Minimum password length

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management, and security considerations for the **Minimum password length** security policy setting.

## Reference

The **Minimum password length** policy setting determines the least number of characters that can make up a password for a user account. You can set a value of between 1 and 14 characters, or you can establish that no password is required by setting the number of characters to 0.

### Possible values

-   User-specified number of characters between 0 and 14
-   Not defined

### Best practices

Set Minimum password length to at least a value of 8. If the number of characters is set to 0, no password is required. In most environments, an eight-character password is recommended because it is long enough to provide adequate security and still short enough for users to easily remember. This value will help provide adequate defense against a brute force attack. Adding complexity requirements will help reduce the possibility of a dictionary attack. For more info, see [Password must meet complexity requirements](password-must-meet-complexity-requirements.md).

Permitting short passwords reduces security because short passwords can be easily broken with tools that perform dictionary or brute force attacks against the passwords. Requiring very long passwords can result in mistyped passwords that might cause an account lockout and subsequently increase the volume of Help Desk calls.

In addition, requiring extremely long passwords can actually decrease the security of an organization because users might be more likely to write down their passwords to avoid forgetting them. However, if users are taught that they can use passphrases (sentences such as "I want to drink a $5 milkshake"), they should be much more likely to remember.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| 7 characters| 
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | 0 characters| 
| Domain controller effective default settings | 7 characters| 
| Member server effective default settings | 7 characters| 
| Effective GPO default settings on client computers | 0 characters| 
 
## Policy management

This section describes features, tools, and guidance to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Types of password attacks include dictionary attacks (which attempt to use common words and phrases) and brute force attacks (which try every possible combination of characters). Also, attackers sometimes try to obtain the account database so they can use tools to discover the accounts and passwords.

### Countermeasure

Configure the **** policy setting to a value of 8 or more. If the number of characters is set to 0, no password will be required.

In most environments, we recommend an eight-character password because it is long enough to provide adequate security, but not too difficult for users to easily remember. This configuration provides adequate defense against a brute force attack. Using the [Password must meet complexity requirements](password-must-meet-complexity-requirements.md) policy setting in addition to the **Minimum password length** setting helps reduce the possibility of a dictionary attack.

>**Note:**  Some jurisdictions have established legal requirements for password length as part of establishing security regulations.
 
### Potential impact

Requirements for extremely long passwords can actually decrease the security of an organization because users might leave the information in an unsecured location or lose it. If very long passwords are required, mistyped passwords could cause account lockouts and increase the volume of Help Desk calls. If your organization has issues with forgotten passwords due to password length requirements, consider teaching your users about passphrases, which are often easier to remember and, due to the larger number of character combinations, much harder to discover.

## Related topics

- [Password Policy](password-policy.md)
