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

# Prepare to deploy Windows Sun Valley

**Applies to**

-   Windows Sun Valley

## Deployment readiness

Organizations will vary in their pace relative to transitioning from Windows 10 to Sun Valley, and we expect early corporate adoptions to consist of smaller test environments before rolling out to wider groups begins.  With the new Sun Valley experience, it’s highly plausible that hybrid environments of both operating systems running simultaneously will be the norm, at least initially. 

As you prepare for Sun Valley, it’s also a good time to look at the deployment infrastructure of your environment. If you aren’t already taking advantage of cloud-based management tools like Microsoft Endpoint Manager this might be the perfect scenario in which to make that leap. Or if you are on -premises, Configuration Manager’s Cloud management gateway  <- additional Configuration Manager content needed here .

Additionally, policies related to deployment may need to be updated or re-evaluated respective of update compliance deadlines, device activity policies, and the re-evaluation of older policies.  A servicing mindset pointed at keeping current means that, as with Windows 10 devices, you will create a deployment plan in order to build out your servicing strategy.

The IT Pro tools that you are familiar with and have been using in the past to prepare for deployments also work in Sun Valley; you can analyze endpoints, determine application compatibility, and manage deployments in the same way you did with Windows 10: 

Analytics
Content on Endpoint analytics needed.

Application compatibility
Two Microsoft services that work directly with you to ensure application compatibility with Sun Valley are App Assure and Test Base.

If you experience any issues with your apps and are enrolled in the App Assure service, Microsoft will help you identify the issue at no cost. App Assure works with you to troubleshoot the issue, determine the root cause, and can help fix the issue as well. App Assure is subscription based, but subscriptions are free for eligible customers with 150+ seats. 

Test Base is our intelligent application validation service that allows software vendors and commercial customers to test their applications. The Test Base test and validation environment runs Sun Valley as well as Windows 10 with a matrix of updates and environments in a Microsoft managed Azure environment. You can get started by enrolling in Test Base for Microsoft 365.

Management tools  
The management toolset that you use for heavy lifting during deployments of Windows 10 are still able to be leveraged in Sun Valley. There are a few nuanced differences described here:

•	Windows Server Update Service (WSUS): For commercial customers using WSUS, they will need to sync the new “Windows  <SV>” product category. 
•	Windows Update for Business (WUfB): For commercial customers using WUfB, they will need to leverage the Target Version capability rather than feature update deferrals to move from Windows 10 to Windows <SV>. Feature Update deferrals are great to move to newer versions of your current product (e.g. Windows 10 21H1 to Windows 10 21H2), but do not enable you to move between products (e.g. Windows 10 to Windows <SV>). Quality update deferrals will continue to work the same across both Windows 10 and Windows <SV>. 
•	MEM Configuration Manager: For customers using MEM Configuration Manager, you will easily be able to sync the new “Windows <SV>” Product category and begin upgrading eligible devices. Please note that Configuration Manager will prompt you to accept the end user license agreement on behalf of the users in your organization. If you would like to validate Sun Valley prior to release, simply sync the “Windows Insider Pre-release" category as well.  
•	MEM Intune: For customers using MEM Intune with E3 licenses you will be able to leverage the “Feature Update Deployments” to easily manage moving between Windows 10 versions or to Windows <SV> 21H2. 
•	Autopilot:   Autopilot works seamlessly in a Windows Sun Valley OOBE experience (out of box experience). It’s plug and play. 
•	In an Intune environment, a Sun Valley boot image needs to already exist on the device for Autopilot to work with Sun Valley. If the device comes with a Windows 10 boot image, IT Pros can use Windows Autopilot to deploy Windows 10, and then use Windows Update for Business to upgrade to Windows Sun Valley.
o	
o	To use Windows Autopilot to upgrade existing, eligible devices, Configuration  Manager plus the task sequence ‘Windows Autopilot for existing devices’ can place the Windows Sun Valley boot image onto the managed device, allowing Windows Autopilot to then deploy Sun Valley.
o	Note that Windows Autopilot cannot downgrade a device from Sun Valley to Windows 10. 


























Consider using the following process to deploy Windows Sun Valley to existing devices:
1. Preview Windows Sun Valley and create a deployment plan. 
2. Test critical applications and management policies.
3. Update devices to the latest release of Windows 10.
4. Verify that devices meet the minimum hardware requirements for Windows Sun Valley.
5. Update deployment tools and infrastructure.
6. Update qualifying devices to Windows Sun Valley.


## See also

[Windows Sun Valley deployment planning](windows-sv-plan.md)

•	Technical documentation: Prescriptive and authoritative documentation on Microsoft Docs can help you plan for, prepare, and deploy Sun Valley — and to service and manage Windows devices effectively across your organization.
•	Windows release health: Windows release health offers the quickest way to stay up to date on update-related news, information, and best practices, including important lifecycle reminders and the status of known issues and safeguard holds. IT administrators have access to this information, plus additional details, within the health experience Microsoft 365 admin center.
•	Windows 10 update history: For every version of the Windows operating system, we publish a consolidated update history documentation experience, offering quick access to the knowledge base (KB) articles for each monthly, optional, and out-of-band release. In addition to update highlights, you’ll find a list of improvements and fixes, a summary of any known issues, and details on how to get the update, including any prerequisites. Want to see an example? See Windows 10 update history.
•	Windows Tech Community: Offering technical professionals a place to discuss, share, troubleshoot, and learn around Windows, Tech Community is also the home of the Windows IT Pro Blog, our monthly Windows Office Hours events, and the Windows Video Hub.
•	Microsoft Learn: We are in the process of developing online learning paths and modules to help you and your organization effectively plan, prepare, and deploy Sun Valley effectively.

