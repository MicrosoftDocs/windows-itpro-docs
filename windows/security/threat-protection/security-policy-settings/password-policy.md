---
title: Password Policy (Windows 10)
description: An overview of password policies for Windows and links to information for each policy setting.
ms.assetid: aec1220d-a875-4575-9050-f02f9c54a3b6
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

# Password Policy

**Applies to**
-   Windows 10

An overview of password policies for Windows and links to information for each policy setting.

In many operating systems, the most common method to authenticate a user's identity is to use a secret passphrase or password. A secure network environment requires all users to use strong passwords, which have at least eight characters and include a combination of letters, numbers, and symbols. These passwords help prevent the compromise of user accounts and administrative accounts by unauthorized users who use manual methods or automated tools to guess weak passwords. Strong passwords that are changed regularly reduce the likelihood of a successful password attack.

Introduced in Windows Server 2008 R2 and Windows Server 2008, Windows supports fine-grained password policies. This feature provides organizations with a way to define different password and account lockout policies for different sets of users in a domain. Fine-grained password policies apply only to user objects (or inetOrgPerson objects if they are used instead of user objects) and global security groups.

To apply a fine-grained password policy to users of an OU, you can use a shadow group. A shadow group is a global security group that is logically mapped to an OU to enforce a fine-grained password policy. You add users of the OU as members of the newly created shadow group and then apply the fine-grained password policy to this shadow group. You can create additional shadow groups for other OUs as needed. If you move a user from one OU to another, you must update the membership of the corresponding shadow groups.

Fine-grained password policies include attributes for all the settings that can be defined in the default domain policy (except Kerberos settings) in addition to account lockout settings. When you specify a fine-grained password policy, you must specify all of these settings. By default, only members of the Domain Admins group can set fine-grained password policies. However, you can also delegate the ability to set these policies to other users. The domain must be running at least Windows Server 2008 R2 or Windows Server 2008 to use fine-grained password policies. Fine-grained password policies cannot be applied to an organizational unit (OU) directly.

You can enforce the use of strong passwords through an appropriate password policy. There are password policy settings that control the complexity and lifetime of passwords, such as the **Passwords must meet complexity requirements** policy setting.

You can configure the password policy settings in the following location by using the Group Policy Management Console:

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

If individual groups require distinct password policies, these groups should be separated into another domain or forest, based on additional requirements.

The following topics provide a discussion of password policy implementation and best practices considerations, policy location, default values for the server type or GPO, relevant differences in operating system versions, security considerations (including the possible vulnerabilities of each setting), countermeasures that you can take, and the potential impact for each setting.

## In this section

| Topic | Description |
| - | - |
| [Enforce password history](enforce-password-history.md)| Describes the best practices, location, values, policy management, and security considerations for the **Enforce password history** security policy setting.| 
| [Maximum password age](maximum-password-age.md) | Describes the best practices, location, values, policy management, and security considerations for the **Maximum password age** security policy setting.| 
| [Minimum password age](minimum-password-age.md) | Describes the best practices, location, values, policy management, and security considerations for the **Minimum password age** security policy setting.| 
| [Minimum password length](minimum-password-length.md) | Describes the best practices, location, values, policy management, and security considerations for the **Minimum password length** security policy setting.| 
| [Password must meet complexity requirements](password-must-meet-complexity-requirements.md) | Describes the best practices, location, values, and security considerations for the **Password must meet complexity requirements** security policy setting.|
| [Store passwords using reversible encryption](store-passwords-using-reversible-encryption.md) | Describes the best practices, location, values, and security considerations for the **Store passwords using reversible encryption** security policy setting.| 
 
## Related topics

- [Configure security policy settings](how-to-configure-security-policy-settings.md)
 
 
