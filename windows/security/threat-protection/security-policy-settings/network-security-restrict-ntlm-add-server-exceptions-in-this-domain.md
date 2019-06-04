---
title: Network security Restrict NTLM Add server exceptions in this domain (Windows 10)
description: Describes the best practices, location, values, management aspects, and security considerations for the Network security Restrict NTLM Add server exceptions in this domain security policy setting.
ms.assetid: 2f981b68-6aa7-4dd9-b53d-d88551277cc0
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

# Network security: Restrict NTLM: Add server exceptions in this domain

**Applies to**
-   Windows 10

Describes the best practices, location, values, management aspects, and security considerations for the **Network security: Restrict NTLM: Add server exceptions in this domain** security policy setting.

## Reference

The **Network security: Restrict NTLM: Add server exceptions in this domain** policy setting allows you to create an exception list of servers in this domain to which client device are allowed to use NTLM pass-through authentication if any of the deny options are set in the [Network Security: Restrict NTLM: NTLM authentication in this domain](network-security-restrict-ntlm-ntlm-authentication-in-this-domain.md) policy setting.

If you configure this policy setting, you can define a list of servers in this domain to which client devices are allowed to use NTLM authentication.

If you do not configure this policy setting, no exceptions will be applied, and if **Network Security: Restrict NTLM: NTLM authentication in this domain** is enabled, all NTLM authentication attempts in the domain will fail.

List the NetBIOS server names as the naming format, one per line. A single asterisk (\*) can be used anywhere in the string as a wildcard character.

### Possible values

-   User-defined list of servers

    When you enter a list of servers in this domain to which clients are allowed to use NTLM authentication, the policy is defined and enabled.

-   Not defined

    If you do not configure this policy setting by defining a list of servers, the policy is undefined and no exceptions will be applied.

### Best practices

1.  First enforce the **Network Security: Restrict NTLM: Audit NTLM authentication in this domain** policy setting, and then review the operational event log to understand what domain controllers are involved in these authentication attempts so you can decide which servers to exempt.
2.  After you have set the server exception list, enforce the **Network Security: Restrict NTLM: Audit NTLM authentication in this domain** policy setting, and then review the operational event log again before setting the policies to block NTLM traffic.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or GPO | Default value |
| - | - |
| Default domain policy| Not defined |
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | Not defined| 
| Domain controller effective default settings | Not defined| 
| Member server effective default settings | Not defined| 
| Client computer effective default settings | Not defined| 
 
## Policy management

This section describes different features and tools available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a restart when saved locally or distributed through Group Policy.

### Group Policy

Setting and deploying this policy via Group Policy takes precedence over the setting on the local device. If the Group Policy is set to **Not Configured**, local settings will apply.

### Auditing

View the operational event log to see if your server exception list is functioning as intended. Audit and block events are recorded on this computer in the operational event log located in **Applications and Services Log\\Microsoft\\Windows\\NTLM**.

There are no security audit policies that can be configured to view output from this policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When it has been determined that the NTLM authentication protocol should not be used within a domain because you are required to use a more secure protocol such as Kerberos, there might be some NTLM authentication traffic that is still present in the domain. If so, and you set Network Security: 
[Network Security: Restrict NTLM: NTLM authentication in this domain](network-security-restrict-ntlm-ntlm-authentication-in-this-domain.md) to any of the deny options, any NTLM authentication request will fail because the pass-through member server will block the NTLM request.

If you define an exception list of servers in this domain to which client computers are allowed to use NTLM pass-through authentication, then NTLM authentication traffic will continue to flow between those servers, which make them vulnerable to any malicious attack that takes advantage of security 
weaknesses in NTLM.

### Countermeasure

When you use **Network Security: Restrict NTLM: NTLM authentication in this domain** in audit-only mode, you can determine by reviewing which client applications are making NTLM authentication requests to the pass-through authentication servers. When assessed, you will have to determine on a 
case-by-case basis if NTLM authentication still minimally meets your security requirements.

### Potential impact

Defining a list of servers for this policy setting will enable NTLM authentication traffic between those servers might result in a security vulnerability.

If this list is not defined and **Network Security: Restrict NTLM: NTLM authentication in this domain** is enabled, then NTLM authentication will fail on those pass-through servers in the domain that they have previously used

## Related topics

- [Security Options](security-options.md)
