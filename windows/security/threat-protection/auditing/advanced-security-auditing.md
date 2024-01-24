---
title: Advanced security audit policies
description: Advanced security audit policy settings might appear to overlap with basic policies, but they're recorded and applied differently. Learn more about them here.
ms.assetid: 6FE8AC10-F48E-4BBF-979B-43A5DFDC5DFC
ms.reviewer:
ms.author: vinpa
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: low
author: vinaypamnani-msft
manager: aaroncz
audience: ITPro
ms.topic: reference
ms.date: 09/6/2021
---

# Advanced security audit policies

Advanced security audit policy settings are found in **Security Settings\\Advanced Audit Policy Configuration\\System Audit Policies** and appear to overlap with basic security audit policies, but they're recorded and applied differently.
When you apply basic audit policy settings to the local computer by using the Local Security Policy snap-in, you're editing the effective audit policy, so changes made to basic audit policy settings appear exactly as configured in Auditpol.exe. In Windows 7 and later, advanced security audit policies can be controlled by using Group Policy.

## In this section

| Article | Description |
| - | - |
| [Planning and deploying advanced security audit policies](planning-and-deploying-advanced-security-audit-policies.md) | This article for IT professionals explains the options that security policy planners must consider, and the tasks that they must complete, to deploy an effective security audit policy in a network that includes advanced security audit policies |
| [Advanced security auditing FAQ](advanced-security-auditing-faq.yml) | This article for the IT professional lists questions and answers about understanding, deploying, and managing security audit policies.
| [Using advanced security auditing options to monitor dynamic access control objects](using-advanced-security-auditing-options-to-monitor-dynamic-access-control-objects.md) | This guide explains the process of setting up advanced security auditing capabilities that are made possible through settings and events that were introduced in Windows 8 and Windows Server 2012.
| [Advanced security audit policy settings](advanced-security-audit-policy-settings.md) | This reference for IT professionals provides information about the advanced audit policy settings in Windows and the audit events that they generate.
