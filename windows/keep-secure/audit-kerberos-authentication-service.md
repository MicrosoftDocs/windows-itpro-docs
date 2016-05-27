---
title: Audit Kerberos Authentication Service (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Kerberos Authentication Service, which determines whether to generate audit events for Kerberos authentication ticket-granting ticket (TGT) requests.
ms.assetid: 990dd6d9-1a1f-4cce-97ba-5d7e0a7db859
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Kerberos Authentication Service

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Kerberos Authentication Service**, which determines whether to generate audit events for Kerberos authentication ticket-granting ticket (TGT) requests.

If you configure this policy setting, an audit event is generated after a Kerberos authentication TGT request. Success audits record successful attempts and Failure audits record unsuccessful attempts.

Event volume: High on Kerberos Key Distribution Center servers

Default: Not configured

| Event ID | Event message |
| - | - |
| 4768 | A Kerberos authentication ticket (TGT) was requested. | 
| 4771 | Kerberos preauthentication failed. |
| 4772 | A Kerberos authentication ticket request failed. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
