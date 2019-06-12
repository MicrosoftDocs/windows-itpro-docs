---
title: Domain controller LDAP server signing requirements (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Domain controller LDAP server signing requirements security policy setting.
ms.assetid: fe122179-7571-465b-98d0-b8ce0f224390
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

# Domain controller: LDAP server signing requirements

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Domain controller: LDAP server signing requirements** security policy setting.

## Reference

This policy setting determines whether the Lightweight Directory Access Protocol (LDAP) server requires LDAP clients to negotiate data signing.

Unsigned network traffic is susceptible to man-in-the-middle attacks, where an intruder captures packets between the server and the client device and modifies them before forwarding them to the client device. In the case of an LDAP server, this means that a malicious user can cause a client device to make decisions based on false records from the LDAP directory. You can lower the risk of a malicious user accomplishing this in a corporate network by implementing strong physical security measures to protect the network infrastructure. Furthermore, implementing Internet Protocol security (IPsec) Authentication Header mode, which provides mutual authentication and packet integrity for IP traffic, can make all types of man-in-the-middle attacks extremely difficult.

This setting does not have any impact on LDAP simple bind through SSL (LDAP TCP/636).

If signing is required, then LDAP simple binds not using SSL are rejected (LDAP TCP/389).

>**Caution:**  If you set the server to Require signature, you must also set the client device. Not setting the client device results in loss of connection with the server.
 
### Possible values

-   None. Data signatures are not required to bind with the server. If the client computer requests data signing, the server supports it.
-   Require signature. The LDAP data-signing option must be negotiated unless Transport Layer Security/Secure Sockets Layer (TLS/SSL) is in use.
-   Not defined.

### Best practices

-   It is advisable to set **Domain controller: LDAP server signing requirements** to **Require signature**. Clients that do not support LDAP signing will be unable to execute LDAP queries against the domain controllers.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy | Not defined| 
| Stand-Alone Server Default Settings | Not defined| 
| DC Effective Default Settings | None| 
| Member Server Effective Default Settings | None| 
| Client Computer Effective Default Settings | None| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Unsigned network traffic is susceptible to man-in-the-middle attacks. In such attacks, an intruder captures packets between the server and the client device, modifies them, and then forwards them to the client device. Where LDAP servers are concerned, an attacker could cause a client device to make decisions that are based on false records from the LDAP directory. To lower the risk of such an intrusion in an organization's network, you can implement strong physical security measures to protect the network infrastructure. You could also implement Internet Protocol security (IPsec) Authentication Header mode, which performs mutual authentication and packet integrity for IP traffic to make all types of man-in-the-middle attacks extremely difficult.

### Countermeasure

Configure the **Domain controller: LDAP server signing requirements** setting to **Require signature**.

### Potential impact

Client device that do not support LDAP signing cannot run LDAP queries against the domain controllers.

## Related topics

- [Security Options](security-options.md)
