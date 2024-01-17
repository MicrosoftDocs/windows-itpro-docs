---
title: Audit Directory Service Access 
description: The policy setting Audit Directory Service Access determines if audit events are generated when an Active Directory Domain Services (AD DS) object is accessed.
ms.assetid: ba2562ba-4282-4588-b87c-a3fcb771c7d0
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

# Audit Directory Service Access


Audit Directory Service Access determines whether the operating system generates audit events when an Active Directory Domain Services (AD DS) object is accessed.

**Event volume**: High on servers running AD DS role services.

This subcategory allows you to audit when an Active Directory Domain Services (AD DS) object is accessed. It also generates Failure events if access was not granted.

| Computer Type     | General Success | General Failure | Stronger Success | Stronger Failure | Comments                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|-------------------|-----------------|-----------------|------------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Domain Controller | No              | Yes             | No               | Yes              | It is better to track changes to Active Directory objects through the [Audit Directory Service Changes](audit-directory-service-changes.md) subcategory. However, [Audit Directory Service Changes](audit-directory-service-changes.md) doesn’t give you information about failed access attempts, so we recommend Failure auditing in this subcategory to track failed access attempts to Active Directory objects.<br>For recommendations for using and analyzing the collected information, see the ***Security Monitoring Recommendations*** sections. Also, develop an Active Directory auditing policy ([SACL](/windows/win32/secauthz/access-control-lists) design for specific classes, operation types which need to be monitored for specific Organizational Units, and so on) so you can audit only the access attempts that are made to specific important objects. |
| Member Server     | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| Workstation       | No              | No              | No               | No               | This subcategory makes sense only on domain controllers.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

**Events List:**

-   [4662](event-4662.md)(S, F): An operation was performed on an object.

-   [4661](event-4661.md)(S, F): A handle to an object was requested.
