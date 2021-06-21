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
- [Create a deployment plan](/windows/deployment/update/create-deployment-plan)
- [Define readiness criteria](/windows/deployment/update/plan-define-readiness)
- [Evaluate infrastructure and tools](/windows/deployment/update/eval-infra-tools)
- [Determine application readiness](/windows/deployment/update/plan-determine-app-readiness)
- [Define your servicing strategy](/windows/deployment/update/plan-define-strategy)

If you are looking for ways to optimize your approach to deploying Windows Sun Valley, or if deploying a new version of an operating system is not a familiar process for you, some additional items to consider are provided below. 

## Determining eligibility

As a first step, you will need to know which of your current devices meet the Windows Sun Valley hardware requirements.  Detailed requirements can be found at [Windows Sun Valley requirements](windows-sv-requirements.md). In general, you should expect that a device purchased in the last 18-24 months will be able to run Windows Sun Valley.

Microsoft is currently developing analysis tools to help you evaluate your devices against the Windows Sun Valley hardware requirements. When Windows Sun Valley reaches general availability, end users running Windows 10 Home, Pro, and Pro for Workstations will be able to use the **PC Health Check** app to determine their eligibility for Windows Sun Valley. End users running Windows 10 Enterprise and Education editions should rely on their IT administrators to let them know when they are eligible for the upgrade.  
 
Enterprise organizations looking to evaluate device readiness in their environments can expect this capability to be integrated into existing Microsoft tools, such as Endpoint Analytics and Update Compliance. This capability will be available when Windows Sun Valley is generally available. Microsoft is also working with software vendor partners to facilitate Windows Sun Valley device readiness into their solutions. 

## Windows Sun Valley availability

Windows Sun Valley will be offered to eligible Windows 10 devices beginning the last quarter of calendar year 2021. The availability of Windows Sun Valley will vary according to a device's hardware and whether or not the device receives updates directly or from a management solution that is maintained by an IT administrator. 

##### Managed devices

Managed devices are devices that are under organization control. For example: devices managed by Microsoft Endpoint Manager (Microsoft Intune or Microsoft Endpoint Configuration Manager) or another endpoint management solution. 

If you manage devices on behalf of your organization, you will be able to upgrade eligible devices to Windows Sun Valley using your existing deployment and management tools when the upgrade reaches general availability. Organizations that use Windows Update for Business will have additional benefits, such as:  

- Blocking the upgrade on non-eligible devices. 
- Additional insight into safeguard holds. While safeguard holds will function for Windows Sun Valley devices just as they do for Windows 10 today, administrators using Windows Update for Business will have access to information on which safeguard holds are preventing individual devices from taking the upgrade to Windows Sun Valley. 

> [!NOTE]
> If you use WUfB to manage feature update deployments today, you will need to leverage the **Target Version** policy rather than **Feature Update deferrals** to move from Windows 10 to Windows Sun Valley. Deferrals are great for quality updates or to move to newer versions of the same product (Windows 10 to Windows 10), but they cannot migrate a devices between products (Windows 10 to Windows Sun Valley). <br>
> Additionally, Windows Sun Valley has a new end user license agreement. If you are deploying with Windows Update for Business **Target Version** or with Windows Server Update Services, you are accepting this new end user license agreements on behalf of the end users within your organization. 

Additional considerations: 

- Devices running Windows 10 Pro or higher can upgrade for free using existing management tools.
- Devices running S mode will first need to switch out of S mode because it is not supported on Windows Sun Valley.
- Downgrade rights are available with Windows Sun Valley Pro OEM licensed devices and with Microsoft Volume Licensing, where the licensing agreement permits it. 
- You can downgrade to any version of Windows Pro that has not reached its end of support date.

##### Unmanaged devices

Unmanaged devices are those that are not managed by an IT administrator on behalf of an organization. For operating system (OS) deployment, these devices are not subject to organizational policies that manage upgrades or updates.  

 

Unmanaged eligible devices running Windows 10 that were purchased after June 2021 will be offered the Windows Sun Valley upgrade in the last quarter of the 2021 calendar year. Messaging on new devices will vary by PC manufacturer, but users will see labels such as **This PC will upgrade to Windows Sun Valley once available** on products that are available for purchase. 

> [!NOTE]
> New devices purchased after October 2021 will see the Windows Sun Valley offer during the out of box experience (OOBE), or they will already be upgraded to Windows Sun Valley.

The Windows Sun Valley upgrade will be available initially on eligible, unmanaged devices to users who manually seek the upgrade through Windows Update. As with all Microsoft Update managed devices, the **Windows Update Settings** page will confirm when a device is eligible, and users can upgrade if they choose to.

Just like Windows 10, the machine learning based [intelligent rollout](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/using-machine-learning-to-improve-the-windows-10-update/ba-p/877860) process will be leveraged when rolling out upgrades. Machine learning uses a combination of testing, close partner engagement, feedback, diagnostic data, and real-life insights to manage quality. This improves the update experience and ensures that devices first nominated for updates are those likely to have a seamless experience. Devices that might have compatibility issues with the upgrade get the benefit of resolving these issues before the upgrade is offered. 

## Windows Sun Valley readiness considerations 

The recommended method for organizations to determine if their infrastructure, deployment processes, and management tools are ready for Windows Sun Valley is to join the [Windows Insider Program for Business](https://insider.windows.com/for-business). As a participant in the [Release Preview Channel](/windows-insider/business/validate-Release-Preview-Channel), you can validate that your devices and applications work as expected, and explore new features in details.

As you plan your endpoint management strategy for Windows Sun Valley, consider moving to cloud-based mobile device management (MDM), such as [Microsoft Intune](/mem/intune/fundamentals/what-is-intune). If a cloud-only approach isn't right for your organization just yet, you can still modernize and streamline essential pieces of your endpoint management strategy as follows:
- Create a [cloud management gateway](/mem/configmgr/core/clients/manage/cmg/overview) (CMG) to manage Configuration Manager clients over the internet.
- Attach your existing Configuration Management estate to the cloud with [tenant attach](/mem/configmgr/tenant-attach/device-sync-actions) so you can manage all devices from within the Microsoft Endpoint Manager admin center. 
- Use [co-management](/mem/configmgr/comanage/overview) to concurrently manage devices using both Configuration Manager and Microsoft Intune, allowing you to take advantage of cloud-powered capabilities like [Conditional Access](/azure/active-directory/conditional-access/overview). 

For more information on the benefits of these approaches, see [Cloud Attach Your Future: The Big 3](https://techcommunity.microsoft.com/t5/configuration-manager-blog/cloud-attach-your-future-part-ii-quot-the-big-3-quot/ba-p/1750664). 

The introduction of Windows Sun Valley is also a good time to review your hardware refresh plans and prioritize eligible devices to ensure an optimal experience for your users.

## Servicing and support

Along with end user experience and security improvements, Windows Sun Valley introduces enhancements to Microsoft's servicing approach based on your suggestions and feedback. 

Windows Sun Valley and Windows 10 devices will receive regular monthly quality updates to provide security updates and bug fixes. However, Windows Sun Valley devices will receive a single feature update annually, targeted for release in the second half of each calendar year. 
- Home, Pro, Pro for Workstations, and Pro for Education editions of Windows Sun Valley will receive 24 months of support from the date of release. 
- Enterprise and Education editions of Windows Sun Valley will be supported for 36 months from the date of release.

When Windows Sun Valley reaches general availability, a consolidated Windows Sun Valley update history will be available on support.microsoft.com, similar to what is [available today for Windows 10](https://support.microsoft.com/topic/windows-10-update-history-1b6aac92-bf01-42b5-b158-f80c6d93eb11). Similarly, the [Windows release health](/windows/release-health/) hub will offer quick access to Windows Sun Valley servicing announcements, known issues, and safeguard holds. 


It is important that organizations have adequate time to plan for Windows Sun Valley. Microsoft also recognizes that many organizations will have a mix of Windows Sun Valley and Windows 10 devices across their ecosystem. Devices on in-service versions of Windows 10 that do not meet Windows Sun Valley hardware requirements will continue to receive monthly Windows 10 security updates through 2025, as well as incremental improvements to Windows 10 to support ongoing Microsoft 365 deployments. For more information, see the [Windows 10 release information](/windows/release-health/release-information) page, which offers information about Windows 10 semi-annual channel and LTSC releases. 

## Application compatibility

Microsoft's compatibility promise for Windows 10 is maintained for Windows Sun Valley. Data from the App Assure program shows that Windows 10 compatibility rates are over 99.7% for enterprise organizations, including line of business (LOB) apps. Microsoft remains committed to ensuring that the apps you rely upon continue to work as expected when you upgrade. Windows Sun Valley is subject to the same app compatibility validation requirements that are in place for Windows 10 today, and it is passing these requirements. 

#### App Assure and Test Base for Microsoft 365

If you run into compatibility issues or want to ensure that your organization's applications are compatible from day one, App Assure and Test Base for Microsoft 365 can help. 

With enrollment in the [App Assure](/windows/compatibility/app-assure) service, if you find any problems with an existing application as you migrate to Windows Sun Valley, Microsoft will help you remedy those application issues at no cost. Since 2018, App Assure has evaluated almost 800,000 apps, and subscriptions are free for eligible customers with 150+ seats. 

For software vendors and systems integrators, [Test Base for Microsoft 365](https://www.microsoft.com/testbase) (currently in public preview) is a service that allows you to validate your apps across a variety of Windows feature and quality updates and environments in a Microsoft-managed Azure environment. Enterprise organizations can also nominate their software vendors for participation by completing a short form.  

You might already be using App Assure and Test Base in your Windows 10 environment. Both of these tools will continue to function with Windows Sun Valley. 

## Next steps

[Prepare for Windows Sun Valley](windows-sv-prepare.md)

## Also see

Learning module
