---
title: Audit process tracking (Windows 10)
description: Determines whether to audit detailed tracking information for events such as program activation, process exit, handle duplication, and indirect object access.
ms.assetid: 91AC5C1E-F4DA-4B16-BEE2-C92D66E4CEEA
ms.reviewer: 
ms.author: dolmont
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: dulcemontemayor
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Audit process tracking

**Applies to**
-   Windows 10

Determines whether to audit detailed tracking information for events such as program activation, process exit, handle duplication, and indirect object access.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when the process being tracked succeeds. Failure audits generate an audit entry when the process being tracked fails.

To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the Define these policy settings check box and clear the **Success** and **Failure** check boxes.

**Default:** No auditing.

## Configure this security setting

You can configure this security setting under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

| Process tracking events | Description |
| - | - |
| 592 | A new process was created.| 
| 593 | A process exited. |
| 594 | A handle to an object was duplicated.| 
| 595 | Indirect access to an object was obtained.| 
| 596 | A data protection master key was backed up.<br>**Note:**  The master key is used by the CryptProtectData and CryptUnprotectData routines, and Encrypting File System (EFS). The master key is backed up each time a new one is created. (The default setting is 90 days.) The key is usually backed up to a domain controller.|
| 597 | A data protection master key was recovered from a recovery server.| 
| 598 | Auditable data was protected. |
| 599 | Auditable data was unprotected.| 
| 600 | A process was assigned a primary token.| 
| 601 | A user attempted to install a service. |
| 602 | A scheduler job was created. |
 
## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
