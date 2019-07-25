---
title: Audit system events (Windows 10)
description: Determines whether to audit when a user restarts or shuts down the computer or when an event occurs that affects either the system security or the security log.
ms.assetid: BF27588C-2AA7-4365-A4BF-3BB377916447
ms.reviewer: 
ms.author: dolmont
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: Mir0sh
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Audit system events

**Applies to**
-   Windows 10

Determines whether to audit when a user restarts or shuts down the computer or when an event occurs that affects either the system security or the security log.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when a logon attempt succeeds. Failure audits generate an audit entry when a logon attempt fails.

To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the **Define these policy settings** check box and clear the **Success** and **Failure** check boxes.

**Default:**

-   Success on domain controllers.
-   No auditing on member servers.

## Configure this audit setting

You can configure this security setting by opening the appropriate policy under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

| Logon events | Description |
| - | - |
| 512 | Windows is starting up. | 
| 513 | Windows is shutting down. |
| 514 | An authentication package was loaded by the Local Security Authority.| 
| 515 | A trusted logon process has registered with the Local Security Authority.| 
| 516 | Internal resources allocated for the queuing of security event messages have been exhausted, leading to the loss of some security event messages.| 
| 517 | The audit log was cleared. |
| 518 | A notification package was loaded by the Security Accounts Manager.| 
| 519 | A process is using an invalid local procedure call (LPC) port in an attempt to impersonate a client and reply or read from or write to a client address space.| 
| 520 | The system time was changed.<br>**Note:**  This audit normally appears twice.|

## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)
 
 
