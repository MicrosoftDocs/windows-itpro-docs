---
title: Network security Restrict NTLM Add remote server exceptions for NTLM authentication (Windows 10)
description: Describes the best practices, location, values, management aspects, and security considerations for the Network security Restrict NTLM Add remote server exceptions for NTLM authentication security policy setting.
ms.assetid: 9b017399-0a54-4580-bfae-614c2beda3a1
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

# Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication

**Applies to**
-   Windows 10

Describes the best practices, location, values, management aspects, and security considerations for the **Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication** security policy setting.

## Reference

The **Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication** policy setting allows you to create an exception list of remote servers to which client devices are allowed to use NTLM authentication if the [Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers](network-security-restrict-ntlm-outgoing-ntlm-traffic-to-remote-servers.md) policy setting is configured.

If you configure this policy setting, you can define a list of remote servers to which client devices are allowed to use NTLM authentication.

If you do not configure this policy setting, no exceptions will be applied, and if [Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers](network-security-restrict-ntlm-outgoing-ntlm-traffic-to-remote-servers.md) is enabled, NTLM authentication attempts from the client devices will fail.

List the NetBIOS server names that are used by the applications as the naming format, one per line. To ensure exceptions, the names that are used by all applications need to be in the list. A single asterisk (\*) can be used anywhere in the string as a wildcard character.

### Possible values

-   User-defined list of remote servers

    When you enter a list of remote servers to which clients are allowed to use NTLM authentication, the policy is defined and enabled.

-   Not defined

    If you do not configure this policy setting by defining a list of servers, the policy is undefined and no exceptions will be applied.

### Best practices

1.  First enforce the [Network Security: Restrict NTLM: Audit incoming NTLM traffic](network-security-restrict-ntlm-audit-incoming-ntlm-traffic.md) or [Network Security: Restrict NTLM: Audit NTLM authentication in this domain](network-security-restrict-ntlm-audit-ntlm-authentication-in-this-domain.md) policy setting and then review the operational event log to understand which servers are involved in these authentication attempts so you can decide which servers to exempt.

2.  After you have set the server exception list, enforce the [Network Security: Restrict NTLM: Audit incoming NTLM traffic](network-security-restrict-ntlm-audit-incoming-ntlm-traffic.md) or [Network Security: Restrict NTLM: Audit NTLM authentication in this domain](network-security-restrict-ntlm-audit-ntlm-authentication-in-this-domain.md) policy setting and then review the operational event log again before setting the policies to block NTLM traffic.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or GPO | Default value |
| - | - |
| Default domain policy| Not defined| 
| Default domain controller policy | Not defined| 
| Stand-alone server default settings | Not defined| 
| Domain controller effective default settings | Not defined| 
| Member server effective default settings | Not defined| 
| Client computer effective default settings| Not defined| 
 
## Policy management

This section describes the features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

### Group Policy

Setting and deploying this policy through Group Policy takes precedence over the setting on the local device. If the Group Policy setting is set to **Not Configured**, local settings will apply.

### Auditing

View the operational event log to see if your server exception list is functioning as intended. Audit and block events are recorded on this device in the operational event log located in **Applications and Services Log\\Microsoft\\Windows\\NTLM**.

There are no security audit policies that can be configured to view output from this policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

When it has been determined that the NTLM authentication protocol should not be used from a client device to any remote servers because you are required to use a more secure protocol such as Kerberos, there might be some client applications that still use NTLM. If so, and you set [Network Security: 
Restrict NTLM: Outgoing NTLM traffic to remote servers](network-security-restrict-ntlm-outgoing-ntlm-traffic-to-remote-servers.md) to any of the deny options, those applications will fail because the outbound NTLM authentication traffic from the client computer will be blocked.

If you define an exception list of servers to which client devices are allowed to use NTLM authentication, then NTLM authentication traffic will continue to flow between those client applications and servers. The servers then are vulnerable to any malicious attack that takes advantage of security weaknesses in NTLM.

### Countermeasure

When you use [Network Security: Restrict NTLM: Outgoing NTLM traffic to remote servers](network-security-restrict-ntlm-outgoing-ntlm-traffic-to-remote-servers.md) in audit-only mode, you can determine by reviewing which client applications are making NTLM authentication requests to the remote 
servers in your environment. When assessed, you will have to determine on a case-by-case basis if NTLM authentication still minimally meets your security requirements. If not, the client application has to be upgraded to use something other than NTLM authentication.

### Potential impact

Defining a list of servers for this policy setting will enable NTLM authentication traffic from the client application that uses those servers, and this might result in a security vulnerability.

If this list is not defined and [Network Security: Restrict NTLM: Outgoing NTLM traffic to remote servers](network-security-restrict-ntlm-outgoing-ntlm-traffic-to-remote-servers.md) is enabled, then client applications that use NTLM will fail to authenticate to those servers that they have previously used.

## Related topics

- [Security Options](security-options.md)
