---
title: Audit Group Membership (Windows 10)
description: This topic for the IT professional describes the advanced security audit policy setting, Audit Group Membership, which enables you to audit group memberships when they are enumerated on the client PC.
ms.assetid: 1CD7B014-FBD9-44B9-9274-CC5715DE58B9
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

# Audit Group Membership

**Applies to**
-   Windows 10
-   Windows Server 2016


Audit Group Membership enables you to audit group memberships when they are enumerated on the client computer.

This policy allows you to audit the group membership information in the user's logon token. Events in this subcategory are generated on the computer on which a logon session is created.

For an interactive logon, the security audit event is generated on the computer that the user logged on to. For a network logon, such as accessing a shared folder on the network, the security audit event is generated on the computer hosting the resource.

You must also enable the [Audit Logon](audit-logon.md) subcategory.

Multiple events are generated if the group membership information cannot fit in a single security audit event

**Event volume**:

-   Low on a client computer.

-   Medium on a domain controller or network servers.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|-------------------|-----------------|-----------------|------------------|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | Group membership information for logged in user can help to detect that member of specific domain or local group logged in to the machine (for example, member of database administrators, built-in local administrators, domain administrators, service accounts group or other high value groups).<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | Yes             | No              | Yes              | No               | Group membership information for logged in user can help to detect that member of specific domain or local group logged in to the machine (for example, member of database administrators, built-in local administrators, domain administrators, service accounts group or other high value groups).<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Workstation       | Yes             | No              | Yes              | No               | Group membership information for logged in user can help to detect that member of specific domain or local group logged in to the machine (for example, member of database administrators, built-in local administrators, domain administrators, service accounts group or other high value groups).<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |

**Events List:**

-   [4627](event-4627.md)(S): Group membership information.

