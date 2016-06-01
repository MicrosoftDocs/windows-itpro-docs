---
title: Audit User Account Management (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit User Account Management, which determines whether the operating system generates audit events when specific user account management tasks are performed.
ms.assetid: f7e72998-3858-4197-a443-19586ecc4bfb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit User Account Management

**Applies to**
-   Windows 10

This topic for the IT professional describes the advanced security audit policy setting, **Audit User Account Management**, which determines whether the operating system generates audit events when specific user account management tasks are performed.

Tasks that are audited for user account management include:

-   A user account is created, changed, deleted, renamed, disabled, enabled, locked out, or unlocked.
-   A user account password is set or changed.
-   Security identifier (SID) history is added to a user account.
-   The Directory Services Restore Mode password is set.
-   Permissions are changed on accounts that are members of administrator groups.
-   Credential Manager credentials are backed up or restored.

This policy setting is essential for tracking events that involve provisioning and managing user accounts.

Event volume: Low

Default: Success

| Event ID | Event message |
| - | - |
| 4720 | A user account was created. | 
| 4722 | A user account was enabled. |
| 4723 | An attempt was made to change an account's password.| 
| 4724 | An attempt was made to reset an account's password. |
| 4725 | A user account was disabled. |
| 4726 | A user account was deleted. |
| 4738 | A user account was changed. |
| 4740 | A user account was locked out.| 
| 4765 | SID History was added to an account.| 
| 4766 | An attempt to add SID History to an account failed.| 
| 4767 | A user account was unlocked. |
| 4780 | The ACL was set on accounts which are members of administrators groups.| 
| 4781 | The name of an account was changed: |
| 4794 | An attempt was made to set the Directory Services Restore Mode.| 
| 5376 | Credential Manager credentials were backed up. |
| 5377 | Credential Manager credentials were restored from a backup.|
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
