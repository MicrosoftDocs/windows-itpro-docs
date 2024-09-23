---
title: App Control for Business design guide
description: Microsoft App Control for Business allows organizations to control what apps and drivers will run on their managed Windows devices.
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# App Control for Business design guide

[!INCLUDE [Feature availability note](../includes/feature-availability-note.md)]

This guide covers design and planning for App Control for Business. It's intended to help security architects, security administrators, and system administrators create a plan that addresses specific App Control requirements for different departments or business groups within an organization.

## Plan for success

A common refrain you may hear about App Control is that it is "too hard." While it's true that App Control isn't as simple as flipping a switch, organizations can be successful, if they're methodical when carefully planning their approach. In reality, the issues that lead to failure with App Control often arise from business issues rather than technology challenges. Organizations that have successfully deployed App Control have ensured the following before starting their planning:

-   Executive sponsorship and organizational buy-in is in place.
-   There's a clear **business** objective for using App Control, and it's not being planned as a purely technical problem from IT.
-   The organization has a plan to handle potential helpdesk support requests for users who are blocked from running some apps.
-   The organization has considered where App Control can be most useful (for example, securing sensitive workloads or business functions) and also where it may be difficult to achieve (for example, developer workstations).

Once these business factors are in place, you're ready to begin planning your App Control for Business deployment. The following topics can help guide you through your planning process.

## In this section

| Topic | Description |
| - | - |
| [Plan for App Control policy management](plan-appcontrol-management.md) | This topic describes the decisions you need to make to establish the processes for managing and maintaining App Control policies. |
| [Understand App Control policy design decisions](understand-appcontrol-policy-design-decisions.md) | This topic lists the design questions, possible answers, and ramifications of the decisions, when you plan a deployment of App Control policies. |
| [Understand App Control policy rules and file rules](select-types-of-rules-to-create.md) | This topic lists resources you can use when selecting your policy rules by using App Control. |
| [Policy creation for common App Control usage scenarios](common-appcontrol-use-cases.md) | This set of topics outlines common use case scenarios, and helps you begin to develop a plan for deploying App Control in your organization. |
| [Policy creation using the App Control Wizard tool](appcontrol-wizard.md) | This set of topics describes how to use the App Control Wizard desktop app to easily create, edit, and merge App Control policies. |

After planning is complete, the next step is to deploy App Control. The [App Control for Business Deployment Guide](../deployment/appcontrol-deployment-guide.md) covers creating and testing policies, deploying the enforcement setting, and managing and maintaining policies.
