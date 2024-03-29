---
title: Windows Defender Application Control design guide
description: Microsoft Windows Defender Application Control allows organizations to control what apps and drivers will run on their managed Windows devices.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 02/20/2018
---

# Windows Defender Application Control design guide

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

This guide covers design and planning for Windows Defender Application Control (WDAC). It's intended to help security architects, security administrators, and system administrators create a plan that addresses specific application control requirements for different departments or business groups within an organization.

## Plan for success

A common refrain you may hear about application control is that it is "too hard." While it's true that application control isn't as simple as flipping a switch, organizations can be successful, if they're methodical when carefully planning their approach. In reality, the issues that lead to failure with application control often arise from business issues rather than technology challenges. Organizations that have successfully deployed application control have ensured the following before starting their planning:

-   Executive sponsorship and organizational buy-in is in place.
-   There's a clear **business** objective for using application control, and it's not being planned as a purely technical problem from IT.
-   The organization has a plan to handle potential helpdesk support requests for users who are blocked from running some apps.
-   The organization has considered where application control can be most useful (for example, securing sensitive workloads or business functions) and also where it may be difficult to achieve (for example, developer workstations).

Once these business factors are in place, you're ready to begin planning your Windows Defender Application Control (WDAC) deployment. The following topics can help guide you through your planning process.

## In this section

| Topic | Description |
| - | - |
| [Plan for WDAC policy management](plan-wdac-management.md) | This topic describes the decisions you need to make to establish the processes for managing and maintaining WDAC policies. |
| [Understand WDAC policy design decisions](understand-wdac-policy-design-decisions.md) | This topic lists the design questions, possible answers, and ramifications of the decisions, when you plan a deployment of application control policies. |
| [Understand WDAC policy rules and file rules](select-types-of-rules-to-create.md) | This topic lists resources you can use when selecting your application control policy rules by using WDAC. |
| [Policy creation for common WDAC usage scenarios](common-wdac-use-cases.md) | This set of topics outlines common use case scenarios, and helps you begin to develop a plan for deploying WDAC in your organization. |
| [Policy creation using the WDAC Wizard tool](wdac-wizard.md) | This set of topics describes how to use the WDAC Wizard desktop app to easily create, edit, and merge WDAC policies. |

After planning is complete, the next step is to deploy WDAC. The [Windows Defender Application Control Deployment Guide](../deployment/wdac-deployment-guide.md) covers creating and testing policies, deploying the enforcement setting, and managing and maintaining policies.
