---
title: AppLocker deployment guide (Windows 10)
description: This topic for IT professionals introduces the concepts and describes the steps required to deploy AppLocker policies.
ms.assetid: 38632795-be13-46b0-a7af-487a4340bea1
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


# AppLocker deployment guide

**Applies to**
 -   Windows 10 
 -   Windows Server

This topic for IT professionals introduces the concepts and describes the steps required to deploy AppLocker policies.

This guide provides steps based on your design and planning investigation for deploying application control policies by using AppLocker. It is intended for security architects, security administrators, and system administrators. Through a sequential and iterative deployment process, you can create application control policies, test and adjust the policies, and implement a method for maintaining those policies as the needs in your organization change.

This guide covers the use of Software Restriction Policies (SRP) in conjunction with AppLocker policies to control application usage. For a comparison of SRP and AppLocker, see [Using Software Restriction Policies and AppLocker policies](using-software-restriction-policies-and-applocker-policies.md) in this guide. To understand if AppLocker is the correct application control solution for you, see [Understand AppLocker policy design decisions](understand-applocker-policy-design-decisions.md).

## Prerequisites to deploying AppLocker policies

The following are prerequisites or recommendations to deploying policies:

-   Understand the capabilities of AppLocker:
    -   [AppLocker](applocker-overview.md)
-   Document your application control policy deployment plan by addressing these tasks:
    -   [Understand the AppLocker policy deployment process](understand-the-applocker-policy-deployment-process.md)
    -   [Understand AppLocker policy design decisions](understand-applocker-policy-design-decisions.md)
    -   [Determine your application control objectives](determine-your-application-control-objectives.md)
    -   [Create list of apps deployed to each business group](create-list-of-applications-deployed-to-each-business-group.md)
    -   [Select types of rules to create](select-types-of-rules-to-create.md)
    -   [Determine Group Policy Structure and rule enforcement](determine-group-policy-structure-and-rule-enforcement.md)
    -   [Plan for AppLocker policy management](plan-for-applocker-policy-management.md)

## Contents of this guide

This guide provides steps based on your design and planning investigation for deploying application control policies created and maintained by AppLocker for computers running any of the supported versions of Windows listed in [Requirements to use AppLocker](requirements-to-use-applocker.md).

## In this section

| Topic | Description |
| - | - |
| [Understand the AppLocker policy deployment process](understand-the-applocker-policy-deployment-process.md) | This planning and deployment topic for the IT professional describes the process for using AppLocker when deploying application control policies. |
| [Requirements for Deploying AppLocker Policies](requirements-for-deploying-applocker-policies.md) | This deployment topic for the IT professional lists the requirements that you need to consider before you deploy AppLocker policies. |
| [Use Software Restriction Policies and AppLocker policies](using-software-restriction-policies-and-applocker-policies.md) | This topic for the IT professional describes how to use Software Restriction Policies (SRP) and AppLocker policies in the same Windows deployment. |
| [Create Your AppLocker policies](create-your-applocker-policies.md) | This overview topic for the IT professional describes the steps to create an AppLocker policy and prepare it for deployment. |
| [Deploy the AppLocker policy into production](deploy-the-applocker-policy-into-production.md) | This topic for the IT professional describes the tasks that should be completed before you deploy AppLocker application control settings. |

