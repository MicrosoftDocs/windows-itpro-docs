---
title: 4958(F) Windows Firewall did not apply the following rule because the rule referred to items not configured on this computer. 
description: Describes security event 4958(F) Windows Firewall didn't apply the following rule because the rule referred to items not configured on this computer.
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

# 4958(F): Windows Firewall did not apply the following rule because the rule referred to items not configured on this computer.


Windows Firewall with Advanced Security processed a rule that contains parameters that can't be resolved on the local computer. The rule is therefore not enforceable on the computer and so is excluded from the runtime state of the firewall. This exclusion isn't necessarily an error. Examine the rule for applicability on the computers to which it was applied.

There's no example of this event in this document.

***Subcategory:***&nbsp;[Audit MPSSVC Rule-Level Policy Change](audit-mpssvc-rule-level-policy-change.md)

***Event Schema:***

*Windows Firewall didn't apply the following rule because the rule referred to items not configured on this computer:
Rule Information:
%tID:%t%1
%tName:%t%2
Error Information:
%tError:%t%3
%tReason:%t%4*

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

-   This event can be a sign of software issues, Windows Firewall registry errors or corruption, or Group Policy setting misconfigurations. We recommend monitoring this event and investigating the reason for the condition. Typically this event indicates configuration issues, not security issues.

