---
title: Audit Central Access Policy Staging (Windows 10)
description: This topic for the IT professional describes the Advanced Security Audit policy setting, Audit Central Access Policy Staging, which determines permissions on a Central Access Policy.
ms.assetid: D9BB11CE-949A-4B48-82BF-30DC5E6FC67D
ms.reviewer: 
manager: dansimp
ms.author: dolmont
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: Mir0sh
ms.date: 04/19/2017
---

# Audit Central Access Policy Staging

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Central Access Policy Staging allows you to audit access requests where a permission granted or denied by a proposed policy differs from the current central access policy on an object.

If you configure this policy setting, an audit event is generated each time a user accesses an object and the permission granted by the current central access policy on the object differs from that granted by the proposed policy. The resulting audit event is generated as follows:

-   Success audits, when configured, record access attempts when the current central access policy grants access, but the proposed policy denies access.

-   Failure audits, when configured, record access attempts when:

    -   The current central access policy does not grant access, but the proposed policy grants access.

    -   A principal requests the maximum access rights they are allowed and the access rights granted by the current central access policy are different than the access rights granted by the proposed policy.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                     |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | IF              | No              | IF               | No               | IF - Enable this subcategory if you need to test or troubleshoot Dynamic Access Control Proposed [Central Access Policies](https://technet.microsoft.com/library/hh831425.aspx).<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | IF              | No              | IF               | No               | IF - Enable this subcategory if you need to test or troubleshoot Dynamic Access Control Proposed [Central Access Policies](https://technet.microsoft.com/library/hh831425.aspx).<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | IF              | No              | IF               | No               | IF - Enable this subcategory if you need to test or troubleshoot Dynamic Access Control Proposed [Central Access Policies](https://technet.microsoft.com/library/hh831425.aspx).<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |

**Events List:**

-   [4818](event-4818.md)(S): Proposed Central Access Policy does not grant the same access permissions as the current Central Access Policy.

