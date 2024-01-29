---
title: Audit Group Membership 
description: Using the advanced security audit policy setting, Audit Group Membership, you can audit group memberships when they're enumerated on the client PC.
ms.assetid: 1CD7B014-FBD9-44B9-9274-CC5715DE58B9
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/06/2021
ms.topic: reference
---

# Audit Group Membership


By using Audit Group Membership, you can audit group memberships when they're enumerated on the client computer.

This policy allows you to audit the group membership information in the user's logon token. Events in this subcategory are generated on the computer on which a logon session is created.

For an interactive logon, the security audit event is generated on the computer that the user logged on to. For a network logon, such as accessing a shared folder on the network, the security audit event is generated on the computer hosting the resource.

You must also enable the [Audit Logon](audit-logon.md) subcategory.

Multiple events are generated if the group membership information cannot fit in a single security audit event

**Event volume**:

- Low on a client computer.

- Medium on a domain controller or network servers.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
|-------------------|-----------------|-----------------|------------------|------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | Group membership information for a logged-in user can help to detect that member of specific domain or local group logged in to the machine (for example, member of database administrators, built-in local administrators, domain administrators, service accounts group, or other high value groups).<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>This subcategory doesn’t have Failure events, so this subcategory doesn't have a recommendation to enable Failure auditing. |
| Member Server     | Yes             | No              | Yes              | No               | Group membership information for logged in user can help to detect that member of specific domain or local group logged in to the machine (for example, member of database administrators, built-in local administrators, domain administrators, service accounts group, or other high value groups).<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>This subcategory doesn’t have Failure events, so this subcategory doesn't have a recommendation to enable Failure auditing. |
| Workstation       | Yes             | No              | Yes              | No               | Group membership information for a logged-in user can help to detect that member of specific domain or local group logged in to the machine (for example, member of database administrators, built-in local administrators, domain administrators, service accounts group, or other high value groups).<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections.<br>This subcategory doesn’t have Failure events, so this subcategory doesn't have a recommendation to enable Failure auditing. |

**Events List:**

-   [4627](event-4627.md)(S): Group membership information.

