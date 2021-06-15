---
title: Plan to deploy Windows Sun Valley
description: Windows Sun Valley deployment planning, IT Pro content.
keywords: ["get started", "windows sun valley", "plan"]
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.date: 06/24/2021
ms.reviewer: 
manager: laurawi
ms.localizationpriority: high
ms.topic: article
---

# Plan to deploy Windows Sun Valley

**Applies to**

-   Windows Sun Valley, version 21H2

## Deployment planning

Windows Sun Valley is developed with Windows 10 as its foundation, enabling you to plan, prepare, deploy, and manage Windows Sun Valley with the same tools and methods that you use for Windows 10. As you integrate Windows Sun Valley into your environment, there will be some unique but familiar considerations working with a mix of Windows 10 and Windows Sun Valley devices side-by-side.

This article provides planning guidance to help you begin depoying Windows Sun Valley, specifically: 
 
   - Adoption guidance
   - Infrastructure planning
   - Servicing cadence and lifecycle 
   - Application readiness 
   - Functionality and coexistence with Windows 10 ecosystems 

#### Deployment processes

Consider using the following processes to deploy Windows Sun Valley:
1. [Preview Windows Sun Valley](windows-sv.md#how-to-get-windows-sun-valley) and create a deployment plan. 
2. [Test critical applications](windows-sv-prepare.md#application-compatibility) and management policies.
3. Update devices to the Windows 10, version 20H1 or later.
4. Verify that devices meet the [minimum hardware requirements](windows-sv-requirements.md#hardware-requirements) for Windows Sun Valley.
5. [Update](windows-sv-prepare.md#management-tools) deployment tools, infrastructure, and policies.
6. Update qualifying devices to Windows Sun Valley.

#### Phased deployment

A phased deployment model is recommended for rolling out upgrades to devices in your organization. This is is described in the [service management model](/windows/deployment/update/create-deployment-plan) that is recommended for Windows 10 updates. It includes separate groups or 'rings' of devices that receive updates based on their role in your deployment plan. For example:
- Preview: Windows Sun Valley planning and development
- Limited: Windows Sun Valley pilot deployment
- Broad: Windows Sun Valley rollout

With this method, you define the timing and scope of devices that will migrate to Windows Sun Valley, documenting and validating each phase before moving to the next one.

Also consider [assigning roles](/windows/deployment/update/plan-define-readiness) within your organization to groups and individuals you'll need to carry out specific tasks, if you have not already done so.

## Infrastructure and tools

You can use your current management tools and processes to manage quality updates for both Windows 10 and Windows Sun Valley, as well as using them to move between the two products beginning on the General Availability (GA) date for Windows Sun Valley. 

For information about updates that are required to support the deployment of Windows Sun Valley, see [Management tools](windows-sv-prepare.md#management-tools).

Also see [Evaluate infrastructure and tools](/windows/deployment/update/eval-infra-tools) for a list of tasks related to deploying feature updates. 

## Configurations

Assess your current [configurations](/windows/deployment/update/eval-infra-tools#configuration-updates) such as security baselines, administrative templates, and policies that affect updates. Then, set some criteria to define your [operational readiness](/windows/deployment/update/eval-infra-tools#define-operational-readiness-criteria), Define an infrastructure update plan to:
- Review requirements
- Identify gaps
- Implement required updates

## Windows Sun Valley servicing

#### Cadence

Windows Sun Valley feature updates will be released once per year, in the second half of the year. Quality updates will be released each month, on the second Tuesday of the month. 

Microsoft will continue to provide one cumulative package that includes all latest cumulative updates and servicing stack updates, if applicable, for Windows Sun Valley. This will be provided as a single package to Windows Server Update Services (WSUS) and Catalog, and have them orchestrated on the device. This capability is also the default for devices using Windows Update. 

#### Lifecycle

Windows Sun Valley annual releases are supported for 24 months or 36 months, depending on the edition. This is a different servicing lifecycle than that for [Windows 10 release information](/windows/release-health/release-information). See the following table:<br>&nbsp;<br>


| 24 months from the release date | 36 months from the release date |
| ------------------------------- | ------------------------------- |
| Windows Sun Valley Home | Windows Sun Valley Enterprise |
| Windows Sun Valley Pro | Windows Sun Valley Education |
| Windows Sun Valley Pro for Workstations |  |
| Windows Sun Valley Pro Education |  |

A long term servicing channel release of Windows Sun Valley is not planned at this time.

#### Features and applications

Most features and applications that are included with Windows 10 will be available on Windows Sun Valley. For information about features that are deprecated or work differently on Windows Sun Valley, see [article link here].

## Application readiness

Windows Sun Valley is designed to work with the applications you are currently using with Windows 10. If an application compatibility issue is identified, Microsoft provides services to help you remediate the problem. For more information, see [Application compatibility](windows-sv-prepare.md#application-compatibility).

## Windows 10 coexistence

For organizations that need to maintain a mixed enviroment with coexisting Windows 10 and Windows Sun Valley devices, Microsoft’s guidance is to standardize on Windows 10, version 21H2. This release will be the last feature update to Windows 10, and will receive specific feature enhancements to ease migrating to Windows Sun Valley. 

Windows 10 will continue to be supported with security updates until October 2025.

## Next steps

[Prepare for Windows Sun Valley](windows-sv-prepare.md)
