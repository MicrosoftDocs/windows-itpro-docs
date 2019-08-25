---
title: Audit Kerberos Service Ticket Operations (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Kerberos Service Ticket Operations, which determines whether the operating system generates security audit events for Kerberos service ticket requests.
ms.assetid: ddc0abef-ac7f-4849-b90d-66700470ccd6
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# Audit Kerberos Service Ticket Operations

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Kerberos Service Ticket Operations determines whether the operating system generates security audit events for Kerberos service ticket requests.

Events are generated every time Kerberos is used to authenticate a user who wants to access a protected network resource. Kerberos service ticket operation audit events can be used to track user activity.

**Event volume**: Very High on Kerberos Key Distribution Center servers.

This subcategory contains events about issued TGSs and failed TGS requests.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|-------------------|-----------------|-----------------|------------------|------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | Yes             | Yes              | Yes              | Expected volume is very high on domain controllers.<br><br>IF - We recommend Success auditing, because you will see all Kerberos Service Ticket requests (TGS requests), which are part of service use and access requests by specific accounts. Also, you can see the IP address from which this account requested TGS, when TGS was requested, which encryption type was used, and so on. For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>We recommend Failure auditing, because you will see all failed requests and be able to investigate the reason for failure. You will also be able to detect Kerberos issues or possible attack attempts. |
| Member Server     | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| Workstation       | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |

**Events List:**

-   [4769](event-4769.md)(S, F): A Kerberos service ticket was requested.

-   [4770](event-4770.md)(S): A Kerberos service ticket was renewed.

-   [4773](event-4773.md)(F): A Kerberos service ticket request failed.

