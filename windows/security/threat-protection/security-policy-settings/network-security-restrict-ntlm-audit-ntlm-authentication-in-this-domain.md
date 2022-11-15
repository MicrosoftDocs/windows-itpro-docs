---
title: Network security Restrict NTLM Audit NTLM authentication in this domain (Windows 10)
description: Best practices, security considerations, and more for the security policy setting, Network Security Restrict NTLM Audit NTLM authentication in this domain.
ms.assetid: 33183ef9-53b5-4258-8605-73dc46335e6e
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
ms.technology: itpro-security
---

# Network security: Restrict NTLM: Audit NTLM authentication in this domain

**Applies to**
-   Windows 10

Describes the best practices, location, values, management aspects, and security considerations for the **Network Security: Restrict NTLM: Audit NTLM authentication in this domain** security policy setting.

## Reference

The **Network Security: Restrict NTLM: Audit NTLM authentication in this domain** policy setting allows you to audit on the domain controller NTLM authentication in that domain.

When you enable this policy setting on the domain controller, only authentication traffic to that domain controller will be logged.

When you enable this audit policy, it functions in the same way as the **Network Security: Restrict NTLM: NTLM authentication in this domain** policy setting, but it doesn't actually block any traffic. Therefore, you can use it effectively to understand the authentication traffic to your domain controllers and when you're ready to block that traffic, you can enable the **Network Security: Restrict NTLM: NTLM authentication in this domain** policy setting and select **Deny for domain accounts to domain servers**, **Deny for domain servers**, or **Deny for domain accounts**.

### Possible values

-   **Disable**

    The domain controller on which this policy is set won't log events for incoming NTLM traffic.

-   **Enable for domain accounts to domain servers**

    The domain controller on which this policy is set will log events for NTLM authentication sign-in attempts for accounts in the domain to domain servers when NTLM authentication would be denied because the **Network security: Restrict NTLM: NTLM authentication in this domain** policy setting is set to **Deny for domain accounts to domain servers**.

-   **Enable for domain accounts**

    The domain controller will log events for NTLM authentication sign-in attempts that use domain accounts when NTLM authentication would be denied because the **Network security: Restrict NTLM: NTLM authentication in this domain** policy setting is set to **Deny for domain accounts**.

- **Enable for domain servers**

    The domain controller will log events for NTLM authentication requests to all servers in the domain when NTLM authentication would be denied because the **Network security: Restrict NTLM: NTLM authentication in this domain** policy setting is set to **Deny for domain servers**.

- **Enable all**
    
    The domain controller on which this policy is set will log all events for incoming NTLM traffic.

### Best practices

Depending on your environment and the duration of your testing, monitor the operational event log size regularly.

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

View the operational event log to see if this policy is functioning as intended. Audit and block events are recorded on this computer in the operational event log located in **Applications and Services Log\\Microsoft\\Windows\\NTLM**. Using an audit event collection system can help you collect the events for analysis more efficiently.

There are no security audit event policies that can be configured to view output from this policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

NTLM and NTLMv2 authentication is vulnerable to various malicious attacks, including SMB replay, man-in-the-middle attacks, and brute force attacks. Reducing and eliminating NTLM authentication from your environment forces the Windows operating system to use more secure protocols, such as the 
Kerberos version 5 protocol, or different authentication mechanisms, such as smart cards.

### Vulnerability

Enabling this policy setting will reveal through logging which devices within your network or domain handle NTLM traffic. The identity of these devices can be used in malicious ways if NTLM authentication traffic is compromised. The policy setting doesn't prevent or mitigate any vulnerability because it is for audit purposes only.
### Countermeasure

Restrict access to the log files when this policy setting is enabled in your production environment.

### Potential impact

If you don't enable or configure this policy setting, no NTLM authentication traffic information will be logged. If you do enable this policy setting, only auditing functions will occur; no security enhancements will be implemented.

## Related topics

- [Security Options](security-options.md)
