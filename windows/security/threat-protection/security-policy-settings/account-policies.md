---
title: Account Policies (Windows 10)
description: An overview of account policies in Windows and provides links to policy descriptions.
ms.assetid: 711b3797-b87a-4cd9-a2e3-1f8ef18688fb
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

# Account Policies

**Applies to**
-   Windows 10

An overview of account policies in Windows and provides links to policy descriptions.

All account policies settings applied by using Group Policy are applied at the domain level. Default values are present in the built-in default domain controller policy for Password Policy settings, Account Lockout Policy settings, and Kerberos Policy settings. The domain account policy becomes the default local account policy of any device that is a member of the domain. If these policies are set at any level below the domain level in Active Directory Domain Services (AD DS), they affect only local accounts on member servers.
> **Note:**  Each domain can have only one account policy. The account policy must be defined in the default domain policy or in a new policy that is linked to the root of the domain and given precedence over the default domain policy, which is enforced by the domain controllers in the domain. These domain-wide account policy settings (Password Policy, Account Lockout Policy, and Kerberos Policy) are enforced by the domain controllers in the domain; therefore, domain controllers always retrieve the values of these account policy settings from the default domain policy Group Policy Object (GPO).
 
The only exception is when another account policy is defined for an organizational unit (OU). The account policy settings for the OU affect the local policy on any computers that are contained in the OU. For example, if an OU policy defines a maximum password age that differs from the domain-level account policy, the OU policy will be applied and enforced only when users log on to the local computer. The default local computer policies apply only to computers that are in a workgroup or in a domain where neither an OU account policy nor a domain policy applies.

## In this section

| Topic | Description |
| - | - |
| [Password Policy](password-policy.md) | An overview of password policies for Windows and links to information for each policy setting. |
| [Account Lockout Policy](account-lockout-policy.md) | Describes the Account Lockout Policy settings and links to information about each policy setting. |
| [Kerberos Policy](kerberos-policy.md) | Describes the Kerberos Policy settings and provides links to policy setting descriptions. |
 
## Related topics

[Configure security policy settings](how-to-configure-security-policy-settings.md)
