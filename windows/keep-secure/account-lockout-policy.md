---
title: Account Lockout Policy (Windows 10)
description: Describes the Account Lockout Policy settings and links to information about each policy setting.
ms.assetid: eb968c28-17c5-405f-b413-50728cb7b724
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Account Lockout Policy

**Applies to**
-   Windows 10

Describes the Account Lockout Policy settings and links to information about each policy setting.

Someone who attempts to use more than a few unsuccessful passwords while trying to log on to your system might be a malicious user who is attempting to determine an account password by trial and error. Windows domain controllers keep track of logon attempts, and domain controllers can be configured to respond to this type of potential attack by disabling the account for a preset period of time. Account Lockout Policy settings control the threshold for this response and the actions to be taken after the threshold is reached. The Account Lockout Policy settings can be configured in the following location in the Group Policy Management Console: **Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Account Lockout Policy**.

The following topics provide a discussion of each policy setting's implementation and best practices considerations, policy location, default values for the server type or Group Policy Object (GPO), relevant differences in operating system versions, and security considerations (including the possible vulnerabilities of each policy setting), countermeasures that you can implement, and the potential impact of implementing the countermeasures.

## In this section

| Topic | Description |
| - | - |
| [Account lockout duration](account-lockout-duration.md) | Describes the best practices, location, values, and security considerations for the **Account lockout duration** security policy setting. |
| [Account lockout threshold](account-lockout-threshold.md) | Describes the best practices, location, values, and security considerations for the **Account lockout threshold** security policy setting. |
| [Reset account lockout counter after](reset-account-lockout-counter-after.md) | Describes the best practices, location, values, and security considerations for the **Reset account lockout counter after** security policy setting. |
 
## Related topics

[Configure security policy settings](how-to-configure-security-policy-settings.md)
 
 
