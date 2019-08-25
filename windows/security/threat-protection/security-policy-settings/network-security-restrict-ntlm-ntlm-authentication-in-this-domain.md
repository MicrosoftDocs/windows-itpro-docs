---
title: Network security Restrict NTLM NTLM authentication in this domain (Windows 10)
description: Describes the best practices, location, values, management aspects, and security considerations for the Network Security Restrict NTLM NTLM authentication in this domain security policy setting.
ms.assetid: 4c7884e9-cc11-4402-96b6-89c77dc908f8
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

# Network security: Restrict NTLM: NTLM authentication in this domain

**Applies to**
-   Windows 10

Describes the best practices, location, values, management aspects, and security considerations for the **Network Security: Restrict NTLM: NTLM authentication in this domain** security policy setting.

## Reference

The **Network Security: Restrict NTLM: NTLM authentication in this domain** policy setting allows you to deny or allow NTLM authentication within a domain from this domain controller. This policy setting does not affect interactive logon to this domain controller.

### Possible values

-   **Disable**

    The domain controller will allow all NTLM pass-through authentication requests within the domain.

-   **Deny for domain accounts to domain servers**

    The domain controller will deny all NTLM authentication logon attempts using accounts from this domain to all servers in the domain. The NTLM authentication attempts will be blocked and will return an NTLM blocked error unless the server name is on the exception list in the **Network security: Restrict NTLM: Add server exceptions in this domain** policy setting.

    NTLM can be used if the users are connecting to other domains. This depends on if any Restrict NTLM policies have been set on those domains.

-   **Deny for domain accounts**

    Only the domain controller will deny all NTLM authentication logon attempts from domain accounts and will return an NTLM blocked error unless the server name is on the exception list in the **Network security: Restrict NTLM: Add server exceptions in this domain** policy setting.

-   **Deny for domain servers**

    The domain controller will deny NTLM authentication requests to all servers in the domain and will return an NTLM blocked error unless the server name is on the exception list in the **Network security: Restrict NTLM: Add server exceptions in this domain** policy setting. Servers that are not joined to the domain will not be affected if this policy setting is configured.

-   **Deny all**

    The domain controller will deny all NTLM pass-through authentication requests from its servers and for its accounts and return an NTLM blocked error unless the server name is on the exception list in the **Network security: Restrict NTLM: Add server exceptions in this domain** policy setting.

-   Not defined

    The domain controller will allow all NTLM authentication requests in the domain where the policy is deployed.

### Best practices

If you select any of the deny options, incoming NTLM traffic to the domain will be restricted. First, set the **Network Security: Restrict NTLM: Audit NTLM authentication in this domain** policy setting, and then review the Operational log to understand what authentication attempts are made to the member servers. You can then add those member server names to a server exception list by using the [Network security: Restrict NTLM: Add server exceptions in this domain](network-security-restrict-ntlm-add-server-exceptions-in-this-domain.md) policy setting.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or GPO | Default value |
| - | - |
| Default domain policy| Not configured| 
| Default domain controller policy | Not configured| 
| Stand-alone server default settings | Not configured|
| Domain controller effective default settings | Not configured| 
| Member server effective default settings | Not configured | 
| Client computer effective default settings | Not configured| 
 
## Policy management

This section describes different features and tools available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a restart when saved locally or distributed through Group Policy.

### Group Policy

Setting and deploying this policy using Group Policy takes precedence over the setting on the local device. If the Group Policy is set to **Not Configured**, local settings will apply.

### Auditing

View the operational event log to see if this policy is functioning as intended. Audit and block events are recorded on this computer in the operational event log located in **Applications and Services Log\\Microsoft\\Windows\\NTLM**.

There are no security audit event policies that can be configured to view output from this policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

NTLM and NTLMv2 authentication is vulnerable to a variety of malicious attacks, including SMB replay, man-in-the-middle attacks, and brute force attacks. Reducing and eliminating NTLM authentication from your environment forces the Windows operating system to use more secure protocols, such as the Kerberos version 5 protocol, or different authentication mechanisms, such as smart cards.

### Vulnerability

Malicious attacks on NTLM authentication traffic resulting in a compromised server or domain controller can occur only if the server or domain controller handles NTLM requests. If those requests are denied, this attack vector is eliminated.

### Countermeasure

When it has been determined that the NTLM authentication protocol should not be used within a network because you are required to use a more secure protocol such as the Kerberos protocol, then you can select one of several options that this security policy setting offers to restrict NTLM usage 
within the domain.

### Potential impact

If you configure this policy setting, numerous NTLM authentication requests could fail within the domain, which could degrade productivity. Before implementing this change through this policy setting, set **Network security: Restrict NTLM: Audit NTLM authentication in this domain** to the same option so that you can review the log for the potential impact, perform an analysis of servers, and create an exception list of servers to exclude from this policy setting by using [Network security: Restrict NTLM: Add server exceptions in this domain](network-security-restrict-ntlm-add-server-exceptions-in-this-domain.md).

## Related topics

- [Security Options](security-options.md)
