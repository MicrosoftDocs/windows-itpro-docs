---
title: Prepare for Windows Sun Valley
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

Windows 10 and Windows Sun Valley are designed to coexist, so that you can use the same familiar tools and process to manage both operating systems. One common management infrastructure that supports common applications across both Windows 10 and Windows Sun Valley helps to simplify the migration process. You can analyze endpoints, determine application compatibility, and manage Windows Sun Valley deployments in the same way that you do with Windows 10.

As you prepare for Windows Sun Valley, it’s also a good time to look at the deployment infrastructure of your environment. If you aren’t already taking advantage of cloud-based management tools like Microsoft Endpoint Manager this might be the perfect time. Or, if you are exclusively using an on-premises management tool such as Configuration Manager (Note: Config Mgr is part of MEM, need clarification here), using Cloud management gateway, enabling tenant attach, or enabling co-management with Microsoft Intune are all ways to help keep devices secure and up-to-date. ---insert links for the named solutions

Policies related to deployment may need to be updated or re-evaluated, considering update compliance deadlines, device activity policies, and the replacement of older policies. A servicing mindset focused on keeping current means creating a deployment plan to build out your servicing strategy.

## Analytics

If you’re a Microsoft Endpoint Manager customer, make sure you’ve onboarded your devices to Endpoint analytics. Later this year, we’ll be providing a hardware readiness assessment directly in Endpoint analytics so that you can quickly identify which of your managed devices meet or exceed the minimum hardware requirements.

If you’d rather start exploring Windows Sun Valley readiness within your organization right away, take advantage of our [hardware eligibility assessment script](add link). By following the instructions to deploy and aggregate results via Microsoft Intune or Configuration Manager, you can quickly determine how many of your devices meet the hardware requirements for Windows Sun Valley.

## Management tools

The toolset that you use for heavy lifting during deployments of Windows 10 are still able to be leveraged in Windows Sun Valley. There are a few nuanced differences described here:

####	On-premises management 

- Windows Server Update Service (WSUS): Commercial customers using WSUS will need to sync the new **Windows Sun Valley** product category. Once you sync the product category you will see the feature update to SV. Please note that during deployment you will be prompted to agree to the license agreement on behalf of your end users. Additionally, you will note there is no x86 (32 bit?) payload for Windows Sun Valley as such is no longer supported on Windows Sun Valley going forward.
- MEM Configuration Manager: For customers using MEM Configuration Manager, you will easily be able to sync the new “Windows Sun Valley” Product category and begin upgrading eligible devices. Please note that Configuration Manager will prompt you to accept the end user license agreement on behalf of the users in your organization. If you would like to validate Windows Sun Valley prior to release, simply sync the **Windows Insider Pre-release** category as well.  

#### Cloud management

- Windows Update for Business (WUfB) Group Policy (GP) and Configuration Service Provider (CSP) policies: Commercial customers using WUfB  will need to leverage the Target Version capability rather than feature update deferrals to move from Windows 10 to Windows Sun Valley. Feature Update deferrals are great to move to newer versions of your current product, but do not enable you to move between products (Windows 10 to Windows Sun Valley). Quality update deferrals will continue to work the same across both Windows 10 and Windows Sun Valley. This is true whether using WUfB through Group Policy Management Console (GPMC), MEM Intune, or other 3rd party management tools. 
- MEM Intune: For customers using MEM Intune with E3 licenses you will be able to leverage **Feature Update Deployments** to easily manage moving between Windows 10 versions or to Windows Sun Valley, version 21H2. You will be able to continue using the same update experience controls to manage the behavior of the device once updates are offered for either Windows 10, version 21H2 and Windows Sun Valley, version 21H2.

## Deploy Windows Sun Valley

Since your familiar Windows 10 toolsets are meant to be used with Windows Sun Valley as well, then managing, securing, and deploying Windows Sun Valley devices will be well known procedures in the plan, prepare and deploy process.

Just as we recommend that broad deployment of new versions of Windows 10 begin with a pilot deployment phase, Windows Sun Valley is no different. Further, in your blended environment of Windows 10-capable devices and Windows 10 + SV-eligible devices, you will be poised to roll out an update to a select number of devices. Once you’ve gone through the checklist of pilot deployment tasks such as assigning the pilot devices from your prepare phase, implementing baseline and operations updates, testing and supporting the devices, and so forth, you can deploy to your test group.  We recommend cloud-based deployment solutions such as Microsoft Endpoint Manager to fully take advantage of data-driven insights, though Configuration Manager works as well.

Using artifacts from your Plan and Prepare phase (such as security and configuration baselines, etc.) as well as data from your test deployment, will give you the confidence you seek to manage a broader rollout of Windows Sun Valley to increasingly larger rings of eligible devices. Desktop Analytics will help you ensure that your apps are scoped to only the pilot rings you designate. 

Though we’ve mentioned only a few, the tools and processes we have had in place for your previous 10 Windows deployment will be there for you with Windows Sun Valley as well.

## See also

[Windows Sun Valley deployment planning](windows-sv-plan.md)

•	Windows release health: Windows release health offers the quickest way to stay up to date on update-related news, information, and best practices, including important lifecycle reminders and the status of known issues and safeguard holds. IT administrators have access to this information, plus additional details, within the health experience Microsoft 365 admin center. 

•	Windows Tech Community: Offering technical professionals a place to discuss, share, troubleshoot, and learn around Windows, Tech Community is also the home of the Windows IT Pro Blog, our monthly Windows Office Hours events, and the Windows Video Hub.

•	Microsoft Learn: We are in the process of developing online learning paths and modules to help you and your organization effectively plan, prepare, and deploy Windows Sun Valley effectively. 
