---
title: Audit Other System Events (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Other System Events, which determines whether the operating system audits various system events.
ms.assetid: 2401e4cc-d94e-41ec-82a7-e10914295f8b
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dulcemontemayor
ms.date: 04/19/2017
---

# Audit Other System Events

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Other System Events contains Windows Firewall Service and Windows Firewall driver start and stop events, failure events for these services and Windows Firewall Service policy processing failures.

Audit Other System Events determines whether the operating system audits various system events.

The system events in this category include:

-   Startup and shutdown of the Windows Firewall service and driver.

-   Security policy processing by the Windows Firewall service.

-   Cryptography key file and migration operations.

-   BranchCache events.

**Event volume**: Low.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                               |
|-------------------|-----------------|-----------------|------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | We recommend enabling Success and Failure auditing because you will be able to get Windows Firewall Service and Windows Firewall Driver status events. |
| Member Server     | Yes             | Yes             | Yes              | Yes              | We recommend enabling Success and Failure auditing because you will be able to get Windows Firewall Service and Windows Firewall Driver status events. |
| Workstation       | Yes             | Yes             | Yes              | Yes              | We recommend enabling Success and Failure auditing because you will be able to get Windows Firewall Service and Windows Firewall Driver status events. |

**Events List:**

-   [5024](event-5024.md)(S): The Windows Firewall Service has started successfully.

-   [5025](event-5025.md)(S): The Windows Firewall Service has been stopped.

-   [5027](event-5027.md)(F): The Windows Firewall Service was unable to retrieve the security policy from the local storage. The service will continue enforcing the current policy.

-   [5028](event-5028.md)(F): The Windows Firewall Service was unable to parse the new security policy. The service will continue with currently enforced policy.

-   [5029](event-5029.md)(F): The Windows Firewall Service failed to initialize the driver. The service will continue to enforce the current policy.

-   [5030](event-5030.md)(F): The Windows Firewall Service failed to start.

-   [5032](event-5032.md)(F): Windows Firewall was unable to notify the user that it blocked an application from accepting incoming connections on the network.

-   [5033](event-5033.md)(S): The Windows Firewall Driver has started successfully.

-   [5034](event-5034.md)(S): The Windows Firewall Driver was stopped.

-   [5035](event-5035.md)(F): The Windows Firewall Driver failed to start.

-   [5037](event-5037.md)(F): The Windows Firewall Driver detected critical runtime error. Terminating.

-   [5058](event-5058.md)(S, F): Key file operation.

-   [5059](event-5059.md)(S, F): Key migration operation.

-   [6400](event-6400.md)(-): BranchCache: Received an incorrectly formatted response while discovering availability of content.

-   [6401](event-6401.md)(-): BranchCache: Received invalid data from a peer. Data discarded.

-   [6402](event-6402.md)(-): BranchCache: The message to the hosted cache offering it data is incorrectly formatted.

-   [6403](event-6403.md)(-): BranchCache: The hosted cache sent an incorrectly formatted response to the client.

-   [6404](event-6404.md)(-): BranchCache: Hosted cache could not be authenticated using the provisioned SSL certificate.

-   [6405](event-6405.md)(-): BranchCache: %2 instance(s) of event id %1 occurred.

-   [6406](event-6406.md)(-): %1 registered to Windows Firewall to control filtering for the following: %2

-   [6407](event-6407.md)(-): 1%

-   [6408](event-6408.md)(-): Registered product %1 failed and Windows Firewall is now controlling the filtering for %2

-   [6409](event-6408.md)(-): BranchCache: A service connection point object could not be parsed.

