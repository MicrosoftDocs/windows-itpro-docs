---
title: Audit IPsec Quick Mode (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit IPsec Quick Mode, which determines whether the operating system generates audit events for the results of the Internet Key Exchange (IKE) protocol and Authenticated Internet Protocol (AuthIP) during Quick Mode negotiations.
ms.assetid: 7be67a15-c2ce-496a-9719-e25ac7699114
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit IPsec Quick Mode

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit IPsec Quick Mode**, which determines whether the operating system generates audit events for the results of the Internet Key Exchange (IKE) protocol and Authenticated Internet Protocol (AuthIP) during Quick Mode negotiations.

IKE is an Internet standard, defined in RFC 2409, that defines a mechanism to establish IPsec security associations (SAs). An SA is a combination of a mutually agreeable policy and keys that define the security services and mechanisms that help protect communication between IPsec peers.
AuthIP is an enhanced version of IKE that offers additional flexibility with support for user-based authentication, authentication with multiple credentials, improved authentication method negotiation, and asymmetric authentication. Like IKE, AuthIP supports Main Mode and Quick Mode negotiation.
Quick Mode (also known as Phase 2) IKE negotiation establishes a secure channel between two computers to protect data. Because this phase involves the establishment of security associations (SAs) that are negotiated on behalf of the IPsec service, the SAs that are created during Quick Mode are called the IPsec SAs. During Quick Mode, keying material is refreshed or, if necessary, new keys are generated. A protection suite that protects specified IP traffic is also selected. A protection suite is a defined set of data integrity or data encryption settings. Quick Mode is not considered a complete exchange because it is dependent on a Main Mode exchange.

Event volume: High

Default: Not configured

| Event ID | Event message |
|- |- |
| 4977 | During Quick Mode negotiation, IPsec received an invalid negotiation packet. If this problem persists, it could indicate a network issue or an attempt to modify or replay this negotiation.| 
| 5451 | An IPsec Quick Mode security association was established.| 
| 5452 | An IPsec Quick Mode security association ended.| 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
