---
title: AppLocker design guide (Windows 10)
description: This topic for the IT professional introduces the design and planning steps required to deploy application control policies by using AppLocker.
ms.assetid: 1c8e4a7b-3164-4eb4-9277-11b1d5a09c7b
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/21/2017
---

# AppLocker design guide

**Applies to**
- Windows 10
- Windows Server

This topic for the IT professional introduces the design and planning steps required to deploy application control policies by using AppLocker.

This guide provides important designing and planning information for deploying application control policies by using AppLocker. It is intended for security architects, security administrators, and system administrators. Through a sequential and iterative process, you can create an AppLocker policy deployment plan for your organization that will address your specific application control requirements by department, organizational unit, or business group.

This guide does not cover the deployment of application control policies by using Software Restriction Policies (SRP). However, SRP is discussed as a deployment option in conjunction with AppLocker policies. For info about these options, see [Determine your application control objectives](determine-your-application-control-objectives.md).

To understand if AppLocker is the correct application control solution for your organization, see [Understand AppLocker policy design decisions](understand-applocker-policy-design-decisions.md).
## In this section

| Topic | Description |
| - | - |
| [Understand AppLocker policy design decisions](understand-applocker-policy-design-decisions.md) | This topic for the IT professional lists the design questions, possible answers, and ramifications of the decisions when you plan a deployment of application control policies by using AppLocker within a Windows operating system environment. |
| [Determine your application control objectives](determine-your-application-control-objectives.md) | This topic helps you with the decisions you need to make to determine what applications to control and how to control them by comparing Software Restriction Policies (SRP) and AppLocker. |
| [Create a list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md) | This topic describes the process of gathering app usage requirements from each business group in order to implement application control policies by using AppLocker. |
| [Select the types of rules to create](select-types-of-rules-to-create.md) | This topic lists resources you can use when selecting your application control policy rules by using AppLocker. |
| [Determine the Group Policy structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md) | This overview topic describes the process to follow when you are planning to deploy AppLocker rules. |
| [Plan for AppLocker policy management](plan-for-applocker-policy-management.md) | This topic for describes the decisions you need to make to establish the processes for managing and maintaining AppLocker policies. |

 
After careful design and detailed planning, the next step is to deploy AppLocker policies. [AppLocker Deployment Guide](applocker-policies-deployment-guide.md) covers the creation and testing of policies, deploying the enforcement setting, and managing and maintaining the policies.
 
