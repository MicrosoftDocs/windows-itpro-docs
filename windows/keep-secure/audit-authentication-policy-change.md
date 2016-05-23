---
title: Audit Authentication Policy Change (Windows 10)
description: This topic for the IT professional describes this Advanced Security Audit policy setting, Audit Authentication Policy Change, which determines whether the operating system generates audit events when changes are made to authentication policy.
ms.assetid: aa9cea7a-aadf-47b7-b704-ac253b8e79be
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Authentication Policy Change

**Applies to**
-   Windows 10

This topic for the IT professional describes this Advanced Security Audit policy setting, **Audit Authentication Policy Change**, which determines whether the operating system generates audit events when changes are made to authentication policy.

Changes made to authentication policy include:

-   Creation, modification, and removal of forest and domain trusts.
-   Changes to Kerberos policy under **Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Kerberos Policy**.

    > **Note:**  The audit event is logged when the policy is applied, not when settings are modified by the administrator.
     
-   When any of the following user rights is granted to a user or group:
    -   **Access this computer from the network**
    -   **Allow logon locally**
    -   **Allow logon through Remote Desktop**
    -   **Logon as a batch job**
    -   **Logon as a service**
-   Namespace collision, such as when an added trust collides with an existing namespace name.

This setting is useful for tracking changes in domain-level and forest-level trust and privileges that are granted to user accounts or groups.

Event volume: Low

Default: Success

| Event ID | Event message |
| - | - |
| 4713 | Kerberos policy was changed. | 
| 4716 | Trusted domain information was modified. | 
| 4717 | System security access was granted to an account. | 
| 4718 | System security access was removed from an account. | 
| 4739 | Domain Policy was changed. | 
| 4864 | A namespace collision was detected. | 
| 4865 | A trusted forest information entry was added. | 
| 4866 | A trusted forest information entry was removed. | 
| 4867 | A trusted forest information entry was modified. | 
 
## Related topics
 
 - [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
