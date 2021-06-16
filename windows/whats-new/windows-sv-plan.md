---
title: Plan for Windows Sun Valley
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

# Plan for Windows Sun Valley

**Applies to**

-   Windows Sun Valley, version 21H2

## Deployment planning

This article provides guidance to help you plan for Windows Sun Valley in your organization.

Since Windows Sun Valley is built on the same foundation as Windows 10, you can utilize the same deployment capabilities, scenarios, and tools—as well as the same basic deployment and servicing strategy. At a high level, this strategy should include the following steps:
- Create a deployment plan.
- Define readiness criteria.
- Evaluate current infrastructure and tools.
- Determine application readiness.
- Define your servicing strategy.

Most organizations will have a mix of Windows Sun Valley and Windows 10 devices side-by-side as they integrate the upgrade into their environments. As such, there are unique yet largely familiar considerations to take into account when planning your deployments.

## Upgrade eligibility

As a first step, you will need to know which of your current PCs meet the Windows Sun Valley hardware requirements.  Detailed requirements can be found [here](windows-sv-requirements.md). However, in general you should expect that if your devices were purchased within the last 18-24 months, they will be able to run Windows Sun Valley. 

Analysis tools will be developed and made available to validate devices against the Windows Sun Valley hardware requirements. A standalone tool is planned, and upgrade eligibility will also be integrated into your existing enterprise deployment tools.

When Windows Sun Valley reaches general availability, end users running Windows 10 Home, Pro, and Pro for Workstations can use the PC Health Check app to determine their eligibility for Windows Sun Valley. End users running Windows 10 Enterprise and Education editions should rely on their IT administrators to let them know when they are eligible for the upgrade. [LINK NEEDED]() has been developed for this purpose.

For organizations with investments in enterprise deployment tools, analytics functionality will be available to evaluate device readiness, including Endpoint Analytics and Update Compliance. Microsoft is also sharing information with independent sofware vendors to enable their tools to support analytics for Windows Sun Valley.

## Windows Sun Valley availability

As with Windows 10, the availability of Windows Sun Valley will vary depending on whether the device is unmanaged and receives updates from Windows Update, or a device is managed using tools operated by an IT administrator.

##### Unmanaged devices

For unmanaged devices, most eligible devices purchased after June of 2021 will be offered the Windows Sun Valley upgrade in October of 2021. Messaging on new devices will vary by PC manufacturer, but users will see labels such as **This PC will upgrade to Windows Sun Valley once available** on products that are available for purchase. 

> [!NOTE]
> New devices purchased after October 2021 will see the Windows Sun Valley offer during the out of box experience (OOBE), or they will already be upgraded to Windows Sun Valley.

After General Availability (GA) date for Windows Sun Valley, the OS upgrade will be available to eligible devices that use Windows Update. The upgrade will be available first to seekers, then as part of Microsoft's intelligent rollout process. The Windows Update Settings page will confirm when a device is eligible, and users can choose whether or not to upgrade.

Just like Windows 10, the machine learning based [intelligent rollout](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/using-machine-learning-to-improve-the-windows-10-update/ba-p/877860) process will be leveraged when rolling out upgrades. Machine learning uses a combination of testing, close partner engagement, feedback, diagnostic data, and real-life insights to manage quality. This improves the update experience and ensures that devices first nominated for updates are those likely to have a seamless experience. Devices that might have compatibility issues with the upgrade get the benefit of resolving these issues before the upgrade is offered. 

##### Managed devices

The right time to upgrade will be different for each organization and environment. You can choose between Windows Sun Valley and Windows 10, and decide when the time is right to integrate Window Sun Valley into your environment. Initially, it is expected that many organizations will operate with a mix of Windows 10 and Windows Sun Valley.  

You can deploy the Windows Sun Valley upgrade to eligible devices using your existing management tools beginning at GA. If you use Windows Update for Business (WUfB), you will have the additional benefit of two safety nets: offering blocks on non-eligible devices that do not meet the hardware requirements, and Safeguard holds. Safeguard holds will function for Windows Sun Valley devices the same way that they do for Windows 10. Administrators will have access to information on which Safeguard holds are preventing individual devices from taking the upgrade to Windows Sun Valley. 

> [!NOTE]
> If you use WUfB to manage feature update deployments today, you will need to leverage the **Target Version** policy rather than **Feature Update deferrals** to move from Windows 10 to Windows Sun Valley. Deferrals are great for quality updates or to move to newer versions of the same product (Windows 10 to Windows 10), but they cannot migrate a devices between products (Windows 10 to Windows Sun Valley). <br>
> Additionally, Windows Sun Valley has a new end user license agreement (EULA). If you are deploying with WUfB **Target Version** or with WSUS, you are accepting this new EULA on behalf of the end users within your organization. 

Additional considerations: 

- Windows 10 Pro or higher can upgrade for free using existing management tools.
- Devices running S mode will first need to switch out of S mode because it is not supported on Windows Sun Valley.
- Downgrade rights are available with Windows Sun Valley Pro OEM licensed devices and with Microsoft Volume Licensing, where the licensing agreement permits it. 
- You can downgrade to any version of Windows Pro that has not reached its end of support date.

## Availability and upgrade path

As previously mentioned, the Windows Sun Valley upgrade offer will begin for eligible devices at GA in October of 2021. This is true for existing eligible devices as well as for new devices. 

To preview Windows Sun Valley, you can join the [Windows Insider Program](https://insider.windows.com/for-business) (WIP). This enables you to begin validating Windows Sun Valley, and to explore new features as they’re being created. As a WIP participant in the [Release Preview Channel](/windows-insider/business/validate-Release-Preview-Channel), Windows Sun Valley will be available to you in the summer of 2021, well ahead of the October GA date.

You can deploy directly from the Windows Insider Pre-release category in WSUS in a variety of ways: 
1.	Configure Manage Preview Builds to **Release Preview** with WUfB. 
2.	Leverage Windows Virtual Devices or Cloud PC* (check if this will be announced when this paper goes out) and Azure Marketplace images. 
3.	Download and deploy ISOs from Microsoft’s Windows Insider Program ISO Download page.

Regardless of which way you choose to deploy, you have the benefit of free Microsoft support when validating a pre-release. Just go to [Support for business](http://support.microsoft.com/supportforbusiness/productselection?sapId=39fc4a93-68cd-5a19-f91b-f0b349a098f3) and submit your support case. This is free for any Microsoft commercial customer deploying Windows 10 version 21H2 or Windows Sun Valley 21H2 pre-release bits after the commercial preview date in the summer of 2021. 

## Quality updates

- Windows Sun Valley and Windows 10 devices will receive regular monthly quality updates. 
- Windows Sun Valley devices will receive a single feature update annually, a change from the twice per year of Windows 10. 
- Devices on in-service versions of Windows 10 that do not meet Windows Sun Valley hardware requirements will continue to receive monthly Windows 10 security updates through 2025, as well as incremental improvements to Windows 10 to support your ongoing deployments of Microsoft 365.

## Servicing duration

Along with end user experience and security improvements, Windows Sun Valley introduces enhancements to our servicing approach based on your suggestions and feedback.

Windows 10 feature updates are released twice yearly via the Semi-Annual Channel. They are serviced with monthly quality updates for 18 or 30 months from the date of the release, depending on the lifecycle policy. Windows Sun Valley will have an annual feature update cadence, targeted for release in the second half of the calendar year:
- Home, Pro, Pro for Workstations, and Pro for Education editions of Windows Sun Valley will receive 24 months of support from the date of release. 
- Enterprise and Education editions of Windows Sun Valley will be supported for 36 months. 

THIS SECTION DOESNT EXIST: For more details on the lifecycle and servicing strategy for Windows Sun Valley, see [Windows lifecycle and servicing update overview]().
 
Microsoft recognizes the importance that organizations have adequate time to plan for Windows Sun Valley. Therefore, we have committed to supporting Windows 10 through October 14, 2025. For more information, see the [Windows release information]() page. This page also includes information for Windows 10 semi-annual channel and LTSC releases. 

A consolidated [update history]() is also available for every version of the Windows operating system. This information offers quick access to knowledge base articles for each monthly, optional, and out-of-band release. In addition to update highlights, you’ll find a list of improvements and fixes, a summary of any known issues, and details on how to get the update, including any prerequisites. 

## Application compatibility

Windows 10 upgrades have proven to be highly compatible, and that does not change with Windows Sun Valley. Our compatibility promise for Windows 10 is that upgrades will maintain compatibility with apps written for previously released versions. Windows Sun Valley comes with the same App Assure promise and commitment that you have known with Windows 10. Data from the App Assure program shows that Windows 10 compatibility rates are over 99.7% for our enterprise customers, including line of business apps. This great progress will not be lost. Windows Sun Valley has been subjected to, and is passing the same app compatibility validation requirements, that are in place for Windows 10 feature and quality update releases today. 

#### App Assure and Test Base 

You might already be using App Assure and Test Base in your Windows 10 environment. Both of these tools will continue to function with Windows Sun Valley. With enrollment in the App Assure service, if you find any problems with an existing application as you migrate to Windows Sun Valley, Microsoft will help you remedy application issues at no cost.  Since 2018, App Assure has evaluated almost 800,000 apps, and subscriptions are free for eligible customers with 150+ seats. 

If you’ve created your own applications, Test Base for Microsoft is a service that allows independent software vendors and commercial customers to validate their apps across a variety of updates and environments in a Microsoft managed Azure environment.  Both services can be of benefit to you as you roll out Windows Sun Valley into your environment.

## Next steps

[Prepare for Windows Sun Valley](windows-sv-prepare.md)

## Also see

Learning module
