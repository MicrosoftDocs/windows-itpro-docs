---
title: Network security Minimum session security for NTLM SSP based (including secure RPC) servers (Windows 10)
description: Describes the best practices, location, values, policy management and security considerations for the Network security Minimum session security for NTLM SSP based (including secure RPC) servers security policy setting.
ms.assetid: c6a60c1b-bc8d-4d02-9481-f847a411b4fc
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

# Network security: Minimum session security for NTLM SSP based (including secure RPC) servers

**Applies to**
-   Windows 10

Describes the best practices, location, values, policy management and security considerations for the **Network security: Minimum session security for NTLM SSP based (including secure RPC) servers** security policy setting.

## Reference

This policy setting allows a client device to require the negotiation of 128-bit encryption or NTLMv2 session security. These values are dependent on the [Network security: LAN Manager authentication level](network-security-lan-manager-authentication-level.md) policy setting value.

Setting all of these values for this policy setting will help protect network traffic that uses the NTLM Security Support Provider (NTLM SSP) from being exposed or tampered with by a malicious user who has gained access to the same network. That is, these settings help protect against man-in-the-middle attacks.

### Possible values

-   Require 128-bit encryption. The connection fails if strong encryption (128-bit) is not negotiated.
-   Require NTLMv2 session security. The connection fails if the NTLMv2 protocol is not negotiated.
-   Not Defined.

### Best practices

-   Enable all values that are available for this security policy. Legacy client devices that do not support these policy settings will be unable to communicate with the server.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

The following table lists the actual and effective default values for this policy. Default values are also listed on the policy’s property page.

| Server type or GPO | Default value |
| - | - |
| Default Domain Policy | Not defined| 
| Default Domain Controller Policy| Not defined| 
| Stand-Alone Server Default Settings | Require 128-bit encryption| 
| DC Effective Default Settings | Require 128-bit encryption| 
| Member Server Effective Default Settings | Require 128-bit encryption| 
| Client Computer Effective Default Settings | Require 128-bit encryption| 
 
## Policy management

This section describes features and tools that are available to help you manage this policy.

### Restart requirement

None. Changes to this policy become effective without a device restart when they are saved locally or distributed through Group Policy.

###  Policy dependencies

The settings for this security policy are dependent on the [Network security: LAN Manager authentication level](network-security-lan-manager-authentication-level.md) setting value.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Network traffic that uses the NTLM Security Support Provider (NTLM SSP) could be exposed such that an attacker who has gained access to the network can create man-in-the-middle attacks.

### Countermeasure

Enable all options that are available for the **Network security: Minimum session security for NTLM SSP based (including secure RPC) servers** policy setting.

### Potential impact

Older client devices that do not support these security settings cannot communicate with the computer on which this policy is set.

## Related topics

- [Security Options](security-options.md)
