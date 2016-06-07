---
title: Audit IPsec Main Mode (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit IPsec Main Mode, which determines whether the operating system generates events for the results of the Internet Key Exchange (IKE) protocol and Authenticated Internet Protocol (AuthIP) during Main Mode negotiations.
ms.assetid: 06ed26ec-3620-4ef4-a47a-c70df9c8827b
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit IPsec Main Mode

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit IPsec Main Mode**, which determines whether the operating system generates events for the results of the Internet Key Exchange (IKE) protocol and Authenticated Internet Protocol (AuthIP) during Main Mode negotiations.

IKE is an Internet standard, defined in RFC 2409, that defines a mechanism to establish IPsec security associations (SAs). An SA is a combination of a mutually agreeable policy and keys that define the security services and mechanisms that help protect communication between IPsec peers.
AuthIP is an enhanced version of IKE that offers additional flexibility with support for user-based authentication, authentication with multiple credentials, improved authentication method negotiation, and asymmetric authentication. Like IKE, AuthIP supports Main Mode and Quick Mode negotiation.
Main Mode Internet Key Exchange (IKE) negotiation establishes a secure channel, known as the Internet Security Association and Key Management Protocol (ISAKMP) security association (SA), between two computers. To establish the secure channel, Main Mode negotiation determines a set of cryptographic protection suites, exchanges keying material to establish the shared secret key, and authenticates computer identities.

Event volume: High

Default: Not configured

| Event ID | Event message |
| - | - |
| 4646 | Security ID: %1  |
| 4650 | An IPsec Main Mode security association was established. Extended Mode was not enabled. Certificate authentication was not used. | 
| 4651 | An IPsec Main Mode security association was established. Extended Mode was not enabled. A certificate was used for authentication. | 
| 4652 | An IPsec Main Mode negotiation failed.<br>**Note:**  This audit event returns detailed audit data in the following categories: Local Endpoint, Local Certificate, Remote Endpoint, Remote Certificate, Additional Information, and Failure Information. |
| 4653 | An IPsec Main Mode negotiation failed.<br>**Note:**  This audit event returns detailed audit data in the following categories: Local Endpoint, Remote Endpoint, Additional Information, and Failure Information. |
| 4655 | An IPsec Main Mode security association ended. |
| 4976 | During Main Mode negotiation, IPsec received an invalid negotiation packet. If this problem persists, it could indicate a network issue or an attempt to modify or replay this negotiation. | 
| 5049 | An IPsec Security Association was deleted. |
| 5453 | An IPsec negotiation with a remote computer failed because the IKE and AuthIP IPsec Keying Modules (IKEEXT) service is not started. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
