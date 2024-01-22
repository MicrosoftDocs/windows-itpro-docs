---
title: Audit Directory Service Changes 
description: The policy setting Audit Directory Service Changes determines if audit events are generated when objects in Active Directory Domain Services (AD DS) are changed
ms.assetid: 9f7c0dd4-3977-47dd-a0fb-ec2f17cad05e
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

# Audit Directory Service Changes


Audit Directory Service Changes determines whether the operating system generates audit events when changes are made to objects in Active Directory Domain Services (AD DS).

Auditing of directory service objects can provide information about the old and new properties of the objects that were changed.

Audit events are generated only for objects with configured system access control lists ([SACLs](/windows/win32/secauthz/access-control-lists)), and only when they are accessed in a manner that matches their [SACL](/windows/win32/secauthz/access-control-lists) settings. Some objects and properties do not cause audit events to be generated due to settings on the object class in the schema.

This subcategory only logs events on domain controllers.

**Event volume**: High on domain controllers.

This subcategory triggers events when an Active Directory object was modified, created, undeleted, moved, or deleted.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
|-------------------|-----------------|-----------------|------------------|------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | Yes             | No              | Yes              | No               | It is important to track actions related to high value or critical Active Directory objects, for example, changes to [AdminSDHolder](/previous-versions/technet-magazine/ee361593(v=msdn.10)) container or Domain Admins group objects. <br>This subcategory shows you what actions were performed. If you want to track failed access attempts for Active Directory objects you need to take a look at [Audit Directory Service Access](audit-directory-service-access.md) subcategory.<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections. Also, develop an Active Directory auditing policy ([SACL](/windows/win32/secauthz/access-control-lists) design for specific classes, operation types which need to be monitored for specific Organizational Units, and so on) so you can audit only the access attempts that are made to specific important objects.<br>This subcategory doesn’t have Failure events, so there is no recommendation to enable Failure auditing for this subcategory. |
| Member Server     | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Workstation       | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |

**Events List:**

-   [5136](event-5136.md)(S): A directory service object was modified.

-   [5137](event-5137.md)(S): A directory service object was created.

-   [5138](event-5138.md)(S): A directory service object was undeleted.

-   [5139](event-5139.md)(S): A directory service object was moved.

-   [5141](event-5141.md)(S): A directory service object was deleted.