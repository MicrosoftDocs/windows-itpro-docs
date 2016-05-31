---
title: Audit Other Policy Change Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other Policy Change Events, which determines whether the operating system generates audit events for security policy changes that are not otherwise audited in the Policy Change category.
ms.assetid: 8618502e-c21c-41cc-8a49-3dc1eb359e60
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Other Policy Change Events

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other Policy Change Events**, which determines whether the operating system generates audit events for security policy changes that are not otherwise audited in the Policy Change category.

These other activities in the Policy Change category that can be audited include:

-   Trusted Platform Module (TPM) configuration changes.
-   Kernel-mode cryptographic self tests.
-   Cryptographic provider operations.
-   Cryptographic context operations or modifications.

Event volume: Low

Default: Not configured

| Event ID | Event message |
| - | - |
| 4670 | Permissions on an object were changed. | 
| 4909 | The local policy settings for the TBS were changed. | 
| 4910 | The group policy settings for the TBS were changed. |
| 5063 | A cryptographic provider operation was attempted. |
| 5064 | A cryptographic context operation was attempted. |
| 5065 | A cryptographic context modification was attempted. | 
| 5066 | A cryptographic function operation was attempted. |
| 5067 | A cryptographic function modification was attempted. | 
| 5068 | A cryptographic function provider operation was attempted. | 
| 5069 | A cryptographic function property operation was attempted. |
| 5070 | A cryptographic function property modification was attempted. | 
| 5447 | A Windows Filtering Platform filter has been changed. |
| 6144 | Security policy in the group policy objects has been applied successfully. | 
| 6145 | One or more errors occurred while processing security policy in the group policy objects. | 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
