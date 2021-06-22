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

Windows 10 and Windows Sun Valley are designed to coexist, so that you can use the same familiar tools and process to manage both operating systems. One management infrastructure that supports common applications across both Windows 10 and Windows Sun Valley helps to simplify the migration process. You can analyze endpoints, determine application compatibility, and manage Windows Sun Valley deployments in the same way that you do with Windows 10.

After you evaluate your hardware to see if it meets [requirements](windows-sv-requirements.md) for Windows Sun Valley, it's also a good time to review your deployment infrastructure, tools, and overall endpoint and update management processes and look for opportunities to simplify and optimize. This article provides some helpful guidance to accomplish these tasks.

## Infrastructure and tools

The tools that you use for heavy lifting during Windows 10 deployments can still be leveraged for Windows Sun Valley. A few nuanced differences are described below. 

  > [!IMPORTANT]
  > Be sure to check with the providers of any non-Microsoft solutions that you use. Verify compatibility of these tools with Windows Sun Valley, particularly if they provide security or data loss prevention capabilities. 

#### On-premises solutions

- If you use Windows Server Update Service (WSUS), you will need to sync the new **Windows Sun Valley** product category. Once you sync the product category, you will see Windows Sun Valley offered as an option.

  > [!NOTE]
  > During deployment, you will be prompted to agree to the end-user license agreement on behalf of your users. Additionally, you will not see an x86 option because Windows Sun Valley is not supported on 32-bit architecture.

- If you use Microsoft Endpoint Configuration Manager, you can sync the new **Windows Sun Valley** product category and begin upgrading eligible devices. If you would like to validate Windows Sun Valley prior to release, you can sync the **Windows Insider Pre-release** category as well.  

  > [!NOTE]
  > Configuration Manager will prompt you to accept the end-user license agreement on behalf of the users in your organization. 

#### Cloud-based solutions

- If you use Windows Update for Business Group Policy and Configuration Service Provider (CSP) policies, you will need to leverage the **Target Version** capability rather than feature update deferrals to upgrade from Windows 10 to Windows Sun Valley. Feature Update deferrals are great to move to newer versions of your current product (Windows 10, version 20H2 to 21H1), but do not enable you to move between products (Windows 10 to Windows Sun Valley). 
- Quality update deferrals will continue to work the same across both Windows 10 and Windows Sun Valley. This is true whether you are using Windows Update for Business, Microsoft Intune, or other management tools. 
- If you use Microsoft Intune and have a Microsoft 365 E3 license, you will be able to use **Feature Update Deployments** to easily update devices from one release of Windows 10 to another, or to upgrade Windows 10 devices to Windows Sun Valley. You can also continue using the same update experience controls to manage Windows 10 and Windows Sun Valley. 

## Cloud-based management

If you aren’t already taking advantage of cloud-based management capabilities, like those available in [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), it's worth considering. In addition to consolidating device management and endpoint security into a single platform, it can better support the diverse bring-your-own-device (BYOD) ecosystem that is increasingly the norm with hybrid work scenarios. It can also enable you to track your progress against compliance and business objectives, while protecting end-user privacy.  

The following are some common use cases and the corresponding Microsoft Endpoint Manager capabilities that support them: 

- **Provision and pre-configure new Windows Sun Valley devices**: [Windows Autopilot](/mem/autopilot/windows-autopilot) enables you to deploy new Windows Sun Valley devices in a “business-ready” state that includes your desired applications, settings, and policies. It can also be used to change the edition of Windows. For example, you can upgrade from Pro to Enterprise edition and gain the use of advanced features. 
- **Configure rules and control settings for users, apps, and devices**: Devices that are enrolled in [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) provide administrators with full control over apps, settings, features, and security for both Windows Sun Valley and Windows 10. You can also use app protection policies to require multi-factor authentication (MFA) for specific apps. 
- **Streamlined, easy-to-manage devices for frontline, remote, and onsite workers**: Introduced with Windows 10, [cloud configuration](/mem/intune/fundamentals/cloud-configuration) is a standard, easy-to-manage, device configuration that is cloud-optimized for users with specific workflow needs. It can be deployed to devices running the Pro, Enterprise, and Education editions of Windows Sun Valley by using Microsoft Endpoint Manager. 

If you are exclusively managing devices on-premise (for example, using Configuration Manager), you can still use the [cloud management gateway](/mem/configmgr/core/clients/manage/cmg/overview), enable [tenant attach](/mem/configmgr/tenant-attach/device-sync-actions), or enable [co-management](/mem/configmgr/comanage/overview) with Microsoft Intune, making it easier to keep devices secure and up-to-date. 

## Review servicing approach and policies

Every organization will transition to Windows Sun Valley at its own pace. Microsoft is committed to supporting you through your migration to Windows Sun Valley, whether you are a fast adopter or will make the transition over the coming months or years. 

When you think of operating system updates as an ongoing process, you will automatically improve your ability to deploy updates. This enables you to stay current with less effort and impact on productivity. To begin, think about how you roll out Windows feature updates today: which devices, and at what pace. 

Next, craft a deployment plan for Windows Sun Valley that includes deployment groups, rings, users, or devices. There are no absolute rules for exactly how many rings to have for your deployments, but a common structure is: 
- Preview (first or canary): Planning and development 
- Limited (fast or early adopters): Pilot and validation 
- Broad (users or critical): Wide deployment 

For detailed information, see [Create a deployment plan](/windows/deployment/update/create-deployment-plan).  

#### Review policies

Review deployment-related policies, taking into consideration your organization's security objectives, update compliance deadlines, and device activity. Apply changes where you can gain a clear improvement, particularly with regard to the speed of the update process or security. 

#### Validate apps and infrastructure

To validate that your apps, infrastructure, and deployment processes are ready for Windows Sun Valley, join the [Windows Insider Program for Business](https://insider.windows.com/for-business-getting-started), and opt in to the [Release Preview Channel](/windows-insider/business/validate-Release-Preview-Channel).  

If you use Windows Server Update Services, you can deploy directly from the Windows Insider Pre-release category using one of the following processes:

- Set **Manage Preview Builds** to **Release Preview** in Windows Update for Business. 
- Leverage Azure Virtual Desktop and Azure Marketplace images. 
- Download and deploy ISOs from Microsoft’s Windows Insider Program ISO Download page. 

Regardless of the method you choose, you have the benefit of free Microsoft support when validating pre-release builds. Free support is available to any commercial customer deploying Windows 10, version 21H2 or Windows Sun Valley, version 21H2 pre-release bits, once they become available through the Windows Insider Program. 

#### Analytics and assessment tools 

If you use Microsoft Endpoint Manager and have onboarded devices to Endpoint analytics, you will have access to a hardware readiness assessment later this year. This tool enables you to quickly identify which of your managed devices are eligible for the Windows Sun Valley upgrade. 

If you are ready to explore Windows Sun Valley readiness right away, you can take advantage of Microsoft's [hardware eligibility assessment script](https://aka.ms/HWReadinessScript). This script includes instructions on how to deploy and aggregate your assessment results using Microsoft Intune or Configuration Manager, so you can quickly determine how many of your devices meet the hardware requirements for Windows Sun Valley. 

For more information, see [Understanding Windows Sun Valley readiness in your organization with Microsoft Endpoint Manager](https://aka.ms/HWReadinessBlog).

## Prepare a pilot deployment

A pilot deployment is a proof of concept that rolls out an upgrade to a select number of devices in production, before deploying it broadly across the organization.  

At a high level, the tasks involved are: 

1. Assign a group of users or devices to receive the upgrade. 
2. Implement baseline updates. 
3. Implement operational updates. 
4. Validate the deployment process. 
5. Deploy the upgrade to devices. 
6. Test and support the pilot devices. 
7. Determine broad deployment readiness based on the results of the pilot. 

## End-user readiness

To prepare an effective, enterprise-wide deployment of Windows Sun Valley, the importance of end-user readiness should not be overlooked. Windows Sun Valley has a familiar design, but your users will see several enhancements to the overall user interface. They will also need to adapt to changes in menus and settings pages. Therefore, consider the following tasks to prepare users and your IT support staff Windows Sun Valley: 
- Create a communications schedule to ensure that you provide the right message at the right time to the right groups of users, based on when they will see the changes. 
- Draft concise emails that inform users of what changes they can expect to see. Offer tips on how to use or customize their experience. Include information about support and help desk options. 
- Update help desk manuals with screenshots of the new user interface, the out-of-box experience for new devices, and the upgrade experience for existing devices. 

## Learn more

See the [Stay current with Windows 10 and Microsoft 365 Apps](/learn/paths/m365-stay-current/) learning path on Microsoft Learn. The learning path was created for Windows 10, but the basic principles and tasks outlined for the plan, prepare, and deploy phases also apply to your deployment of Windows Sun Valley.  

## See also

[Windows Sun Valley deployment planning](windows-sv-plan.md)
