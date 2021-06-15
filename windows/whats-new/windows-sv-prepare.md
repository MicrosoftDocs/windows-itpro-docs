---
title: Prepare to deploy Windows Sun Valley
description: Prepare your infrastructure and tools to deploy Windows Sun Valley, IT Pro content.
keywords: ["get started", "windows sun valley"]
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

# Prepare for Windows Sun Valley

**Applies to**

-   Windows Sun Valley, version 21H2

## Deployment readiness

This article provides details on how to begin testing and validating Windows Sun Valley in your environment, and prepare for deployment. Links are also provided to important resource locations for more information.

To prepare for deployment of Windows Sun Valley, you will need to implement your [planned updates](windows-sv-plan.md) to infrastructure, settings, and tools, including:
- Test your critical applications and management policies
- Update devices to Windows 10, version 20H1 or later
- Verify hardware meets requirements for Windows Sun Valley
- Update your management tools, infrastructure, and policies
- [Prepare users](/windows/deployment/update/prepare-deploy-windows#prepare-users) for Windows Sun Valley. 

After completing these actions, you can begin your phased deployment of Windows Sun Valley.

## Application compatibility

Two Microsoft services that work directly with you to ensure application compatibility with Windows Sun Valley are [App Assure](https://www.microsoft.com/fasttrack/microsoft-365/app-assure) and [Test Base](https://www.microsoft.com/testbase).

- If you experience any issues with your apps and are enrolled in the App Assure service, Microsoft will help you identify the issue at no cost. App Assure works with you to troubleshoot the issue, determine the root cause, and can help fix the issue as well. App Assure is subscription based, but subscriptions are free for eligible customers with 150+ seats. 
- Test Base is Microsoft's intelligent application validation service that allows software vendors and commercial customers to test their applications. The Test Base test and validation environment runs Windows Sun Valley as well as Windows 10 with a matrix of updates and environments in a Microsoft managed Azure environment. You can get started by enrolling in Test Base for Microsoft 365. 

You can also use [Endpoint Analytics](/mem/analytics/app-reliability), to test application compatibility.

## Management tools

The following updates are required to support deploying Windows Sun Valley.

#### Microsoft Intune

No infrastructure update is required for you to use Microsoft Intune because it is cloud-based.
  - If you are using Microsoft Intune with E3 licenses you will be able to leverage **Feature Update Deployments** to easily manage moving between Windows 10 versions or to Windows Sun Valley.

#### Windows Autopilot

Windows Autopilot works seamlessly in a Windows Sun Valley Out-of-Box-Experience (OOBE) environment.
  - In an Intune environment, a Windows Sun Valley boot image needs to already exist on the device for Windows Autopilot to work with Windows Sun Valley. 
  - If the device comes with a Windows 10 boot image, an administrator can use Windows Autopilot to deploy Windows 10, and then use WUfB to upgrade to Windows Sun Valley.
  - To use [Windows Autopilot to upgrade existing devices](/mem/autopilot/existing-devices), Configuration Manager and the task sequence: **Windows Autopilot for existing devices** can place the Windows Sun Valley boot image on the managed device, allowing Windows Autopilot to deploy Windows Sun Valley.
  - Windows Autopilot cannot be used to downgrade a device from Windows Sun Valley to Windows 10.

#### Configuration Manager

Configuration Manager should use the current branch. 
  - You will easily be able to sync the new **Windows Sun Valley** product category and upgrade eligible devices. 
  - Configuration Manager will prompt you to accept the End User License Agreement (EULA) on behalf of the users in your organization. 
  - If you would like to validate Sun Valley prior to release, simply sync the **Windows Insider Pre-release** category as well.   

#### WSUS

If you use Windows Server Update Services (WSUS), you will need to sync the new **Windows Sun Valley** category. 

#### WUfB

Windows Update for Business (WUfB) users can leverage the **Target Version** capability (not Feature Update deferrals).
   -  Feature Update deferrals are great to move to newer versions of a product (for example: Windows 10 21H1 to Windows 10 21H2), but deferrals do not enable you to move between products (Windows 10 to Windows Sun Valley). Quality update deferrals will continue to work the same across both Windows 10 and Windows Sun Valley. 
   - WUfB has the additional benefit of two safety nets: offering blocks on non-eligible devices, and [Safeguard holds](/windows/deployment/update/safeguard-holds). Safeguard holds will function for Windows Sun Valley devices just as they do for Windows 10. Administrators will have access to information on which safeguard holds are preventing individual devices from taking the upgrade to Windows Sun Valley. 



## See also

[Windows Sun Valley deployment planning](windows-sv-plan.md)
