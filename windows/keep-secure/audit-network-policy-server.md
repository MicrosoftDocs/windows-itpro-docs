---
title: Audit Network Policy Server (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Network Policy Server, which determines whether the operating system generates audit events for RADIUS (IAS) and Network Access Protection (NAP) activity on user access requests (Grant, Deny, Discard, Quarantine, Lock, and Unlock).
ms.assetid: 43b2aea4-26df-46da-b761-2b30f51a80f7
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Network Policy Server

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Network Policy Server**, which determines whether the operating system generates audit events for RADIUS (IAS) and Network Access Protection (NAP) activity on user access requests (Grant, Deny, Discard, Quarantine, Lock, and Unlock).

NAP events can be used to help understand the overall health of the network.

Event volume: Medium to high on servers that are running Network Policy Server (NPS); moderate on other servers or on client computers

Default: Success and failure

| Event ID | Event message |
| - | - |
| 6272 | Network Policy Server granted access to a user. | 
| 6273 | Network Policy Server denied access to a user. |
| 6274 | Network Policy Server discarded the request for a user. | 
| 6275 | Network Policy Server discarded the accounting request for a user. | 
| 6276 | Network Policy Server quarantined a user. |
| 6277 | Network Policy Server granted access to a user but put it on probation because the host did not meet the defined health policy. | 
| 6278 | Network Policy Server granted full access to a user because the host met the defined health policy. |
| 6279 | Network Policy Server locked the user account due to repeated failed authentication attempts. |
| 6280 | Network Policy Server unlocked the user account. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
