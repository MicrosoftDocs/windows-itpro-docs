---
title: Audit Security System Extension (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Security System Extension, which determines whether the operating system generates audit events related to security system extensions.
ms.assetid: 9f3c6bde-42b2-4a0a-b353-ed3106ebc005
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Security System Extension

**Applies to**
-   Windows 10
-   Windows 10 Mobile

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Security System Extension**, which determines whether the operating system generates audit events related to security system extensions.

Changes to security system extensions in the operating system include the following activities:
-   A security extension code is loaded (such as an authentication, notification, or security package). A security extension code registers with the Local Security Authority and will be used and trusted to authenticate logon attempts, submit logon requests, and be notified of any account or password changes. Examples of this extension code are Security Support Providers, such as Kerberos and NTLM.
-   A service is installed. An audit log is generated when a service is registered with the Service Control Manager. The audit log contains information about the service name, binary, type, start type, and service account.

> **Important:**  Attempts to install or load security system extensions or services are critical system events that could indicate a security breach.
 
Event volume: Low

These events are expected to appear more on a domain controller than on client computers or member servers.

Default: Not configured

| Event ID | Event message |
| - | - |
| 4610 | An authentication package has been loaded by the Local Security Authority. | 
| 4611 | A trusted logon process has been registered with the Local Security Authority.| 
| 4614 | A notification package has been loaded by the Security Account Manager. |
| 4622 | A security package has been loaded by the Local Security Authority. |
| 4697 | A service was installed in the system. |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
