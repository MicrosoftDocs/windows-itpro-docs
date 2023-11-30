---
title: Domain controller LDAP server channel binding token requirements
description: Describes the best practices, location, values, and security considerations for the Domain controller LDAP server channel binding token requirements security policy setting.
ms.reviewer: waynmc
ms.author: waynmc
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
ms.topic: reference
ms.date: 04/26/2023
ms.technology: itpro-security
---

# Domain controller: LDAP server channel binding token requirements

**Applies to**:

- Windows Server

This article describes the best practices, location, values, and security considerations for the **Domain controller: LDAP server channel binding token requirements** security policy setting.

## Reference

This policy setting determines whether the Lightweight Directory Access Protocol (LDAP) server requires LDAP clients to negotiate channel bindings (EPA).

Unsigned/Unprotected network traffic is susceptible to man-in-the-middle attacks, where an intruder captures packets between the server and the client device and modifies them before forwarding them to the client device. In the example of an LDAP server, a malicious user can cause a client device to make decisions based on false records from the LDAP directory. You can lower this risk in a corporate network by implementing strong physical security measures to protect the network infrastructure. Furthermore, implementing Internet Protocol security (IPsec) Authentication Header mode, which provides mutual authentication and packet integrity for IP traffic, can make all types of man-in-the-middle attacks difficult.

- If channel binding is set to Always, LDAP clients who don't support channel bindings will be rejected.
- If channel binding is set to when supported, only incorrect channel bindings will be blocked, and clients who don't support channel binding can continue to connect via LDAP over TLS.

CBT or EPA is used with TLS sessions when a SASL authentication method is used to authenticate the user. SASL means you use NTLM or Kerberos for user authentication. LDAP Simple Bind over TLS doesn't offer channel binding token protection and is therefore not recommended.

### Possible values

- **Never**: No channel binding validation is performed. This is the behavior of all servers that haven't been updated.
- **When Supported**: Clients that advertise support for Channel Binding Tokens must provide the correct token when authenticating over TLS/SSL connections; clients that don't advertise such support and/or don't use TLS/SSL connections aren't impacted. This is an intermediate option that allows for application compatibility.
- **Always**: All clients must provide channel binding information over LDAPS. The server rejects LDAPS authentication requests from clients that don't do so.

### Best practices

We recommend that you set **Domain controller: LDAP server channel binding token requirements** to **Always**. Clients that don't support LDAP channel binding will be unable to execute LDAP queries against the domain controllers.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy's property page.

| Server type or GPO                         | Default value |
|--------------------------------------------|---------------|
| Default Domain Policy                      | Not defined   |
| Default Domain Controller Policy           | Not defined   |
| Stand-Alone Server Default Settings        | Not defined   |
| DC Effective Default Settings              | None          |
| Member Server Effective Default Settings   | None          |
| Client Computer Effective Default Settings | None          |

## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they're saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Unsigned/Unprotected network traffic is susceptible to man-in-the-middle attacks. In such attacks, an intruder captures packets between the server and the client device, modifies them, and then forwards them to the client device. Regarding LDAP servers, an attacker could cause a client device to make decisions that are based on false records from the LDAP directory. To lower the risk of such an intrusion in an organization's network, you can implement strong physical security measures to protect the network infrastructure. You could also implement Internet Protocol security (IPsec) Authentication Header mode, which performs mutual authentication and packet integrity for IP traffic to make all types of man-in-the-middle attacks difficult.

### Countermeasure

Configure the **Domain controller: LDAP server channel binding token requirements** setting to **Always**.

### Potential impact

Client devices that don't support LDAP channel binding can't run LDAP queries against the domain controllers.

## Related articles

- [Security Options](security-options.md)
- [LDAP session security settings and requirements after ADV190023 is installed](/troubleshoot/windows-server/identity/ldap-session-security-settings-requirements-adv190023)
- [2020 LDAP channel binding and LDAP signing requirements for Windows (KB4520412)](https://support.microsoft.com/topic/2020-ldap-channel-binding-and-ldap-signing-requirements-for-windows-kb4520412-ef185fb8-00f7-167d-744c-f299a66fc00a)
- [KB4034879: Use the LdapEnforceChannelBinding registry entry to make LDAP authentication over SSL/TLS more secure](https://support.microsoft.com/topic/kb4034879-use-the-ldapenforcechannelbinding-registry-entry-to-make-ldap-authentication-over-ssl-tls-more-secure-e9ecfa27-5e57-8519-6ba3-d2c06b21812e)
