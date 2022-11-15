---
title: Audit Kerberos Authentication Service (Windows 10)
description: The policy setting Audit Kerberos Authentication Service decides if audit events are generated for Kerberos authentication ticket-granting ticket (TGT) requests
ms.assetid: 990dd6d9-1a1f-4cce-97ba-5d7e0a7db859
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.prod: windows-client
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.technology: itpro-security
---

# Audit Kerberos Authentication Service


Audit Kerberos Authentication Service determines whether to generate audit events for Kerberos authentication ticket-granting ticket (TGT) requests.

If you configure this policy setting, an audit event is generated after a Kerberos authentication TGT request. Success audits record successful attempts and Failure audits record unsuccessful attempts.

**Event volume**: High on Kerberos Key Distribution Center servers.

This subcategory contains events about issued TGTs and failed TGT requests. It also contains events about failed Pre-Authentications, due to wrong user password or when the user’s password has expired.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
|-------------------|-----------------|-----------------|------------------|------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | Yes             | Yes              | Yes              | We recommend Success auditing, because you will see all Kerberos Authentication requests (TGT requests), which are a part of domain account logons. Also, you can see the IP address from which this account requested a TGT, when TGT was requested, which encryption type was used and so on.<br>We recommend Failure auditing, because you will see all failed requests with wrong password, username, revoked certificate, and so on. You will also be able to detect Kerberos issues or possible attack attempts. <br>Expected volume is high on domain controllers. |
| Member Server     | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |
| Workstation       | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |

**Events List:**

-   [4768](event-4768.md)(S, F): A Kerberos authentication ticket (TGT) was requested.

-   [4771](event-4771.md)(F): Kerberos pre-authentication failed.

-   [4772](event-4772.md)(F): A Kerberos authentication ticket request failed.

