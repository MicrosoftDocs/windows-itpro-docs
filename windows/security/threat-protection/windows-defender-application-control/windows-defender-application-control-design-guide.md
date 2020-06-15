---
title: Windows Defender Application Control design guide (Windows 10)
description: Microsoft Windows Defender Application Control allows organizations to control what apps and drivers will run on their managed Windows 10 devices.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.topic: conceptual
ms.date: 02/20/2018
---

# Windows Defender Application Control design guide

**Applies to**
- Windows 10
- Windows Server 2016 and above

This guide covers design and planning for Windows Defender Application Control (WDAC). It is intended to help security architects, security administrators, and system administrators create a plan that addresses specific application control requirements for different departments or business groups within an organization.

## Plan for success

A common refrain you may hear about application control is that it is "too hard". While it is true that application control is not as simple as flipping a switch, organizations can be very successful if they take a methodical approach and carefully plan their approach. In reality, the issues that lead to failure with application control often arise from business issues rather than technology challenges. Organizations that have successfully deployed application control have ensured the following before starting their planning:

-   Executive sponsorship and organizational buy-in is in place.
-   There is a clear **business** objective for using application control and it is not being planned as a purely technical problem from IT.
-   The organization has a plan to handle potential helpdesk support requests for users who are blocked from running some apps.
-   The organization has considered where application control can be most useful (e.g. securing sensitive workloads or business functions) and also where it may be difficult to achieve (e.g. developer workstations).

Once these business factors are in place, you are ready to begin planning your WDAC deployment. The following topics can help guide you through your planning process.

## In this section

| Topic | Description |
| - | - |
| [Plan for WDAC policy management](plan-windows-defender-application-control-management.md) | This topic describes the decisions you need to make to establish the processes for managing and maintaining WDAC policies. |
| [Understand WDAC policy design decisions](understand-windows-defender-application-control-policy-design-decisions.md) | This topic lists the design questions, possible answers, and ramifications of the decisions when you plan a deployment of application control policies. |
| [Understand WDAC policy rules and file rules](select-types-of-rules-to-create.md) | This topic lists resources you can use when selecting your application control policy rules by using WDAC. |
| [Policy creation for common WDAC usage scenarios](types-of-devices.md) | This set of topics outlines common use case scenarios and helps you begin to develop a plan for deploying WDAC in your organization. |

After planning is complete, the next step is to deploy WDAC. The [Windows Defender Application Control Deployment Guide](windows-defender-application-control-deployment-guide.md) covers the creation and testing of policies, deploying the enforcement setting, and managing and maintaining the policies.
