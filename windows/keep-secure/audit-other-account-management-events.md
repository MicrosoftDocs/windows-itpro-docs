---
title: Audit Other Account Management Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Account Management Events, which determines whether the operating system generates user account management audit events.
ms.assetid: 4ce22eeb-a96f-4cf9-a46d-6642961a31d5
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Other Account Management Events

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other Account Management Events**, which determines whether the operating system generates user account management audit events.

Events can be generated for user account management auditing when:

-   The password hash of an account is accessed. This typically happens when the Active Directory Migration Tool (ADMT) is moving password data.
-   The Password Policy Checking application programming interface (API) is called. Calls to this function could be part of an attack from a malicious application that is testing whether password complexity policy settings are being applied.
-   Changes are made to domain policy under **Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy** or **Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Account Lockout Policy**.
> **Note:**  These events are logged when the domain policy is applied (on refresh or restart), not when settings are modified by an administrator.
 
Event volume: Low

Default: Not configured

| Event ID | Event message |
| - | - |
| 4782 | The password hash for an account was accessed. | 
| 4793 | The Password Policy Checking API was called. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
