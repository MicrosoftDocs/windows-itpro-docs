---
title: Audit System Integrity (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit System Integrity, which determines whether the operating system audits events that violate the integrity of the security subsystem.
ms.assetid: 942a9a7f-fa31-4067-88c7-f73978bf2034
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit System Integrity

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit System Integrity**, which determines whether the operating system audits events that violate the integrity of the security subsystem.

Activities that violate the integrity of the security subsystem include the following:

-   Audited events are lost due to a failure of the auditing system.
-   A process uses an invalid local procedure call (LPC) port in an attempt to impersonate a client, reply to a client address space, read to a client address space, or write from a client address space.
-   A remote procedure call (RPC) integrity violation is detected.
-   A code integrity violation with an invalid hash value of an executable file is detected.
-   Cryptographic tasks are performed.

> **Important:**  Violations of security subsystem integrity are critical and could indicate a potential security attack.
 
Event volume: Low

Default: Success and failure

| Event ID | Event message |
| - | - |
| 4612 | Internal resources allocated for the queuing of audit messages have been exhausted, leading to the loss of some audits. | 
| 4615 | Invalid use of LPC port. |
| 4618 | A monitored security event pattern has occurred.| 
| 4816 | RPC detected an integrity violation while decrypting an incoming message.| 
| 5038 | Code integrity determined that the image hash of a file is not valid. The file could be corrupt due to unauthorized modification or the invalid hash could indicate a potential disk device error.| 
| 5056 | A cryptographic self-test was performed. |
| 5057 | A cryptographic primitive operation failed.| 
| 5060 | Verification operation failed. |
| 5061 | Cryptographic operation. |
| 5062 | A kernel-mode cryptographic self-test was performed.| 
| 6281 | Code Integrity determined that the page hashes of an image file are not valid. The file could be improperly signed without page hashes or corrupt due to unauthorized modification. The invalid hashes could indicate a potential disk device error.| 
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
