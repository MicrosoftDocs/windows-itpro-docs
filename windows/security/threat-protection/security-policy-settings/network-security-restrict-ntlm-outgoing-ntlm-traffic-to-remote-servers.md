---
title: Network security Restrict NTLM Outgoing NTLM traffic to remote servers (Windows 10)
description: Describes the best practices, location, values, management aspects, and security considerations for the Network Security Restrict NTLM Outgoing NTLM traffic to remote servers security policy setting.
ms.assetid: 63437a90-764b-4f06-aed8-a4a26cf81bd1
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

# Network security: Restrict NTLM: Outgoing NTLM traffic to remote servers

**Applies to**
-   Windows 10

Describes the best practices, location, values, management aspects, and security considerations for the **Network Security: Restrict NTLM: Outgoing NTLM traffic to remote servers** security policy setting.

## Reference

The **Network Security: Restrict NTLM: Outgoing NTLM traffic to remote servers** policy setting allows you to deny or audit outgoing NTLM traffic from a computer running Windows 7, Windows Server 2008, or later to any remote server running the Windows operating system.

>**Warning:**  Modifying this policy setting may affect compatibility with client computers, services, and applications.
 
### <a href="" id="bkmk-resoutntlm-possvals"></a>Possible values

-   **Allow all**

    The device can authenticate identities to a remote server by using NTLM authentication because no restrictions exist.

-   **Audit all**

    The device that sends the NTLM authentication request to a remote server logs an event for each request. This allows you to identify those servers that receive NTLM authentication requests from the client device

-   **Deny all**

    The device cannot authenticate any identities to a remote server by using NTLM authentication. You can use the [Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication](network-security-restrict-ntlm-add-remote-server-exceptions-for-ntlm-authentication.md) policy setting to define a list of remote servers to which client devices are allowed to use NTLM authentication while denying others. This setting will also log an event on the device that is making the authentication request.

-   Not defined

    This is the same as **Allow all**, and the device will allow all NTLM authentication requests when the policy is deployed.

### Best practices

If you select **Deny all**, the client device cannot authenticate identities to a remote server by using NTLM authentication. First, select **Audit all** and then review the operational event log to understand which servers are involved in these authentication attempts. You can then add those server names to a server exception list by using the [Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication](network-security-restrict-ntlm-add-remote-server-exceptions-for-ntlm-authentication.md) policy setting.

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
| Client computer effective default settings | Not defined| 
 
## Policy management

This section describes different features and tools available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a restart when saved locally or distributed through Group Policy.

### Group Policy

Setting and deploying this policy using Group Policy takes precedence over the setting on the local device. If the Group Policy is set to **Not Configured**, local settings will apply.

### Auditing

View the operational event log to see if this policy is functioning as intended. Audit and block events are recorded on this computer in the operational event log located in **Applications and Services Log\\Microsoft\\Windows\\NTLM**.

There are no security audit event policies that can be configured to view event output from this policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

NTLM and NTLMv2 authentication is vulnerable to a variety of malicious attacks, including SMB replay, man-in-the-middle attacks, and brute force attacks. Reducing and eliminating NTLM authentication from your environment forces the Windows operating system to use more secure protocols, such as the Kerberos version 5 protocol, or different authentication mechanisms, such as smart cards.

### Vulnerability

Malicious attacks on NTLM authentication traffic that result in a compromised server or domain controller can occur only if the server or domain controller handles NTLM requests. If those requests are denied, this attack vector is eliminated.

### Countermeasure

When it has been determined that the NTLM authentication protocol should not be used within a network because you are required to use a more secure protocol such as Kerberos, then you can select from several options to restrict NTLM usage to servers.

### Potential impact

If you configure this policy setting to deny all requests, numerous NTLM authentication requests to remote servers could fail, which could degrade productivity. Before implementing this restriction through this policy setting, select **Audit all** so that you can review the log for the potential impact, perform an analysis of servers, and create an exception list of servers to exclude from this policy setting by using [Network security: Restrict NTLM: Add remote server exceptions for NTLM authentication](network-security-restrict-ntlm-add-remote-server-exceptions-for-ntlm-authentication.md)
.

## Related topics

- [Security Options](security-options.md)
