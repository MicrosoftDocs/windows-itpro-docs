---
title: Kerberos Policy (Windows 10)
description: Describes the Kerberos Policy settings and provides links to policy setting descriptions.
ms.assetid: 94017dd9-b1a3-4624-af9f-b29161b4bf38
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

# Kerberos Policy

**Applies to**
-   Windows 10

Describes the Kerberos Policy settings and provides links to policy setting descriptions.

The Kerberos version 5 authentication protocol provides the default mechanism for authentication services and the authorization data necessary for a user to access a resource and perform a task on that resource. By reducing the lifetime of Kerberos tickets, you reduce the risk of a legitimate user's credentials being stolen and successfully used by an attacker. However, this also increases the authorization overhead. In most environments, these settings should not need to be changed.

These policy settings are located in **\\Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy**.

The following topics provide a discussion of implementation and best practices considerations, policy location, default values for the server type or GPO, relevant differences in operating system versions, security considerations (including the possible settings vulnerabilities of each setting), 
countermeasures you can take, and the potential impact for each setting.

## In this section

|                                                      Topic                                                      |                                                                                 Description                                                                                  |
|-----------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|                      [Enforce user logon restrictions](enforce-user-logon-restrictions.md)                      |     Describes the best practices, location, values, policy management, and security considerations for the **Enforce user logon restrictions** security policy setting.      |
|                  [Maximum lifetime for service ticket](maximum-lifetime-for-service-ticket.md)                  |   Describes the best practices, location, values, policy management, and security considerations for the **Maximum lifetime for service ticket** security policy setting.    |
|                     [Maximum lifetime for user ticket](maximum-lifetime-for-user-ticket.md)                     |         Describes the best practices, location, values, policy management, and security considerations for the **Maximum lifetime for user ticket** policy setting.          |
|             [Maximum lifetime for user ticket renewal](maximum-lifetime-for-user-ticket-renewal.md)             | Describes the best practices, location, values, policy management, and security considerations for the **Maximum lifetime for user ticket renewal** security policy setting. |
| [Maximum tolerance for computer clock synchronization](maximum-tolerance-for-computer-clock-synchronization.md) |   Describes the best practices, location, values, policy management, and security considerations for the **Maximum tolerance for computer clock synchronization** security   |
 
## Related topics

- [Configure security policy settings](how-to-configure-security-policy-settings.md)
