---
title: 4952(F) Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced. 
description: Security event 4952(F) Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4952(F): Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced.


When you create or edit a Windows Firewall rule, the settings that you can include depend upon the version of Windows you use when creating the rule. As new settings are added to later versions of Windows or to service packs for existing versions of Windows, the version number of the rules processing engine is updated, and that version number is stamped into rules that are created by using that version of Windows. For example, Windows Vista produces firewall rules that are stamped with version "v2.0". Future versions of Windows might use "v2.1", or "v3.0" to indicate, respectively, minor or major changes and additions.

If you create a firewall rule on a newer version of Windows that references firewall settings that are not available on earlier versions of Windows, and then try to deploy that rule to computers running the earlier version of Windows, the firewall engine produces this error to indicate that it cannot process the rule.

The only solution is to remove the incompatible rule, and then deploy a compatible rule.

There is no example of this event in this document.

***Subcategory:***&nbsp;[Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)

***Event Schema:***

*Parts of a rule have been ignored because its minor version number was not recognized by Windows Firewall. The other parts of the rule will be enforced.*

*%t*

*Profile:%t%1*

*Partially Ignored Rule:*

*%tID:%t%2*

*%tName:%t%3*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   This event can be a sign of software issues, Windows Firewall registry errors or corruption, or Group Policy setting misconfigurations. We recommend monitoring this event and investigating the reason for the condition. Typically this event indicates configuration issues, not security issues.

