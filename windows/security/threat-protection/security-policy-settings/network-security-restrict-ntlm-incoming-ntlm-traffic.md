---
title: Network security Restrict NTLM Incoming NTLM traffic (Windows 10)
description: Describes the best practices, location, values, management aspects, and security considerations for the Network Security Restrict NTLM Incoming NTLM traffic security policy setting.
ms.assetid: c0eff7d3-ed59-4004-908a-2205295fefb8
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

# Network security: Restrict NTLM: Incoming NTLM traffic

**Applies to**
-   Windows 10

Describes the best practices, location, values, management aspects, and security considerations for the **Network Security: Restrict NTLM: Incoming NTLM traffic** security policy setting.

## Reference

The **Network Security: Restrict NTLM: Incoming NTLM traffic** policy setting allows you to deny or allow incoming NTLM traffic from client computers, other member servers, or a domain controller.

### Possible values

-   **Allow all**

    The server will allow all NTLM authentication requests.

-   **Deny all domain accounts**

    The server will deny NTLM authentication requests for domain logon, return an NTLM blocked error message to the client device, and log the error, but the server will allow local account logon.


-   **Deny all accounts**

    The server will deny NTLM authentication requests from all incoming traffic (whether domain account logon or local account logon), return an NTLM blocked error message to the client device, and log the error.

-   Not defined

    This is the same as **Allow all**, and the server will allow all NTLM authentication requests.

### Best practices

If you select **Deny all domain accounts** or **Deny all accounts**, incoming NTLM traffic to the member server will be restricted. It is better to set the **Network Security: Restrict NTLM: Audit Incoming NTLM traffic** policy setting and then review the Operational log to understand what authentication attempts are made to the member servers, and subsequently what client applications are using NTLM.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or GPO | Default value |
| - | - |
| Default domain policy| Not defined| 
| Default domain controller policy | Not defined |
| Stand-alone server default settings | Not defined| 
| Domain controller effective default settings | Not defined| 
| Member server effective default settings | Not defined| 
| Client computer effective default settings | Not defined| 
 
## Policy management

This section describes different features and tools available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a restart when saved locally or distributed through Group Policy.

### <a href="" id="bkmk-grouppolicy"></a>Group Policy

Setting and deploying this policy using Group Policy takes precedence over the setting on the local device. If the Group Policy is set to **Not Configured**, local settings will apply.

### Auditing

View the operational event log to see if this policy is functioning as intended. Audit and block events are recorded on this computer in the operational event log located in **Applications and Services Log\\Microsoft\\Windows\\NTLM**.

There are no Security Audit Event policies that can be configured to view event output from this policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

NTLM and NTLMv2 authentication is vulnerable to a variety of malicious attacks, including SMB replay, man-in-the-middle attacks, and brute force attacks. Reducing and eliminating NTLM authentication from your environment forces the Windows operating system to use more secure protocols, such as the Kerberos version 5 protocol, or different authentication mechanisms, such as smart cards.

### Vulnerability

Malicious attacks on NTLM authentication traffic that result in a compromised server can occur only if the server handles NTLM requests. If those requests are denied, brute force attacks on NTLM are eliminated.

### Countermeasure

When it has been determined that the NTLM authentication protocol should not be used within a network because you are required to use a more secure protocol such as Kerberos, you can select one of several options that this security policy setting offers to restrict NTLM usage.

### Potential impact

If you configure this policy setting, numerous NTLM authentication requests could fail within your network, which could degrade productivity. Before implementing this change through this policy setting, set **Network security: Restrict NTLM: Audit Incoming NTLM traffic** to the same option so that 
you can review the log for the potential impact, perform an analysis of servers, and create an exception list of servers to exclude from this policy setting [Network security: Restrict NTLM: Add server exceptions in this domain](network-security-restrict-ntlm-add-server-exceptions-in-this-domain.md).

## Related topics

- [Security Options](security-options.md)
