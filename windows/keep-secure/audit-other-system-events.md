---
title: Audit Other System Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other System Events, which determines whether the operating system audits various system events.
ms.assetid: 2401e4cc-d94e-41ec-82a7-e10914295f8b
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Audit Other System Events

**Applies to**
-   Windows 10

This topic for the IT professional describes the Advanced Security Audit policy setting, **Audit Other System Events**, which determines whether the operating system audits various system events.

The system events in this category include:

-   Startup and shutdown of the Windows Firewall service and driver.
-   Security policy processing by the Windows Firewall service.
-   Cryptography key file and migration operations.

> **Important:**  Failure to start the Windows Firewall service may result in a computer that is not fully protected against network threats.
 
Event volume: Low

Default: Success and failure

| Event ID | Event message |
| - | - |
| 5024 | The Windows Firewall Service has started successfully. | 
| 5025 | The Windows Firewall Service has been stopped. |
| 5027 | The Windows Firewall Service was unable to retrieve the security policy from the local storage. The service will continue enforcing the current policy. | 
| 5028 | The Windows Firewall Service was unable to parse the new security policy. The service will continue with currently enforced policy. |
| 5029 | The Windows Firewall Service failed to initialize the driver. The service will continue to enforce the current policy. |
| 5030 | The Windows Firewall Service failed to start. |
| 5032 | Windows Firewall was unable to notify the user that it blocked an application from accepting incoming connections on the network.| 
| 5033 | The Windows Firewall Driver has started successfully. |
| 5034 | The Windows Firewall Driver has been stopped. |
| 5035 | The Windows Firewall Driver failed to start. |
| 5037 | The Windows Firewall Driver detected critical runtime error. Terminating.| 
| 5058 | Key file operation. |
| 5059 | Key migration operation.| 
| 6400 | BranchCache: Received an incorrectly formatted response while discovering availability of content.| 
| 6401 | BranchCache: Received invalid data from a peer. Data discarded. |
| 6402 | BranchCache: The message to the hosted cache offering it data is incorrectly formatted.| 
| 6403 | BranchCache: The hosted cache sent an incorrectly formatted response to the client. |
| 6404 | BranchCache: Hosted cache could not be authenticated using the provisioned SSL certificate.| 
| 6405 | BranchCache: %2 instance(s) of event id %1 occurred. |
| 6406 | %1 registered to Windows Firewall to control filtering for the following: %2| 
| 6407 | 1% |
| 6408 | Registered product %1 failed and Windows Firewall is now controlling the filtering for %2 |
 
## Related topics

- [Advanced security audit policy settings](advanced-security-audit-policy-settings.md)
 
 
