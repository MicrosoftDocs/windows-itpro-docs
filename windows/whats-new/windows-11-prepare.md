---
title: Prepare for Windows 11
description: Prepare your infrastructure and tools to deploy Windows 11, IT Pro content.
keywords: ["get started", "windows 11"]
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.author: greglin
ms.date: 09/03/2021
ms.reviewer: 
manager: laurawi
ms.localizationpriority: high
ms.topic: article
---

# Prepare for Windows 11

**Applies to**

-   Windows 11

Windows 10 and Windows 11 are designed to coexist, so that you can use the same familiar tools and process to manage both operating systems. Using a single management infrastructure that supports common applications across both Windows 10 and Windows 11 helps to simplify the migration process. You can analyze endpoints, determine application compatibility, and manage Windows 11 deployments in the same way that you do with Windows 10.

After you evaluate your hardware to see if it meets [requirements](windows-11-requirements.md) for Windows 11, it's a good time to review your deployment infrastructure, tools, and overall endpoint and update management processes and look for opportunities to simplify and optimize. This article provides some helpful guidance to accomplish these tasks.

## Infrastructure and tools

The tools that you use for core workloads during Windows 10 deployments can still be used for Windows 11. A few nuanced differences are described below. 

  > [!IMPORTANT]
  > Be sure to check with the providers of any non-Microsoft solutions that you use. Verify compatibility of these tools with Windows 11, particularly if they provide security or data loss prevention capabilities. 

#### On-premises solutions

- If you use [Windows Server Update Service (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus), you will need to sync the new **Windows 11** product category. After you sync the product category, you will see Windows 11 offered as an option. If you would like to validate Windows 11 prior to release, you can sync the **Windows Insider Pre-release** category as well.

  > [!NOTE]
  > During deployment, you will be prompted to agree to the End User License Agreement on behalf of your users. Additionally, you will not see an x86 option because Windows 11 is not supported on 32-bit architecture.

- If you use [Microsoft Endpoint Configuration Manager](/mem/configmgr/), you can sync the new **Windows 11** product category and begin upgrading eligible devices. If you would like to validate Windows 11 prior to release, you can sync the **Windows Insider Pre-release** category as well.  

  > [!NOTE]
  > Configuration Manager will prompt you to accept the End User License Agreement on behalf of the users in your organization. 

#### Cloud-based solutions

-	If you use Windows Update for Business policies, you will need to use the **Target Version** capability rather than feature update deferrals to upgrade from Windows 10 to Windows 11. Feature update deferrals are great to move to newer versions of your current product (for example, Windows 10, version 20H2 to 21H1), but do not enable you to move between products (Windows 10 to Windows 11). In Group Policy, the **Select target Feature Update version** has two entry fields after taking the 9/1/2021 optional update ([KB5005101](https://support.microsoft.com/topic/september-1-2021-kb5005101-os-builds-19041-1202-19042-1202-and-19043-1202-preview-82a50f27-a56f-4212-96ce-1554e8058dc1)) or a later update: **Product Version** and **Target Version**. The product field must specify Windows 11 in order for devices to upgrade to Windows 11. If only target version is configured, the device will be offered matching versions of the same product. For example, if a device is running Windows 10, version 2004 and only the target version is configured to 21H1, this device will be offered version 21H1, even if multiple products have that same version.
- Quality update deferrals will continue to work the same across both Windows 10 and Windows 11. This is true regardless of which management tool you use to configure Windows Update for Business policies.
- If you use Microsoft Intune and have a Microsoft 365 E3 license, you will be able to use feature update deployments to easily update devices from one release of Windows 10 to another, or to upgrade Windows 10 devices to Windows 11. You can also continue using the same update experience controls to manage Windows 10 and Windows 11. 

## Cloud-based management

If you aren’t already taking advantage of cloud-based management capabilities, like those available in [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), it's worth considering. In addition to consolidating device management and endpoint security into a single platform, Microsoft Endpoint Manager can better support the diverse bring-your-own-device (BYOD) ecosystem that is increasingly the norm with hybrid work scenarios. It can also enable you to track your progress against compliance and business objectives, while protecting end-user privacy.  

The following are some common use cases and the corresponding Microsoft Endpoint Manager capabilities that support them: 

- **Provision and pre-configure new Windows 11 devices**: [Windows Autopilot](/mem/autopilot/windows-autopilot) enables you to deploy new Windows 11 devices in a “business-ready” state that includes your desired applications, settings, and policies. It can also be used to change the edition of Windows. For example, you can upgrade from Pro to Enterprise edition and gain the use of advanced features. The [Windows Autopilot diagnostics page](/mem/autopilot/windows-autopilot-whats-new#preview-windows-autopilot-diagnostics-page) is new feature that is available when you use in Windows Autopilot to deploy Windows 11.
- **Configure rules and control settings for users, apps, and devices**: When you enroll devices in [Microsoft Intune](/mem/intune/fundamentals/what-is-intune), administrators have full control over apps, settings, features, and security for both Windows 11 and Windows 10. You can also use app protection policies to require multifactor authentication (MFA) for specific apps. 
- **Streamline device management for frontline, remote, and onsite workers**: Introduced with Windows 10, [cloud configuration](/mem/intune/fundamentals/cloud-configuration) is a standard, easy-to-manage, device configuration that is cloud-optimized for users with specific workflow needs. It can be deployed to devices running the Pro, Enterprise, and Education editions of Windows 11 by using Microsoft Endpoint Manager. 

If you are exclusively using an on-premises device management solution (for example, Configuration Manager), you can still use the [cloud management gateway](/mem/configmgr/core/clients/manage/cmg/overview), enable [tenant attach](/mem/configmgr/tenant-attach/device-sync-actions), or enable [co-management](/mem/configmgr/comanage/overview) with Microsoft Intune. These solutions can make it easier to keep devices secure and up-to-date. 

## Review servicing approach and policies

Every organization will transition to Windows 11 at its own pace. Microsoft is committed to supporting you through your migration to Windows 11, whether you are a fast adopter or will make the transition over the coming months or years. 

When you think of operating system updates as an ongoing process, you will automatically improve your ability to deploy updates. This approach enables you to stay current with less effort, and less impact on productivity. To begin, think about how you roll out Windows feature updates today: which devices, and at what pace. 

Next, craft a deployment plan for Windows 11 that includes deployment groups, rings, users, or devices. There are no absolute rules for exactly how many rings to have for your deployments, but a common structure is: 
- Preview (first or canary): Planning and development 
- Limited (fast or early adopters): Pilot and validation 
- Broad (users or critical): Wide deployment 

For detailed information, see [Create a deployment plan](/windows/deployment/update/create-deployment-plan).  

#### Review policies

Review deployment-related policies, taking into consideration your organization's security objectives, update compliance deadlines, and device activity. Apply changes where you can gain a clear improvement, particularly with regard to the speed of the update process or security. 

#### Validate apps and infrastructure

To validate that your apps, infrastructure, and deployment processes are ready for Windows 11, join the [Windows Insider Program for Business](https://insider.windows.com/for-business-getting-started), and opt in to the [Release Preview Channel](/windows-insider/business/validate-Release-Preview-Channel).  

If you use Windows Server Update Services, you can deploy directly from the Windows Insider Pre-release category using one of the following processes:

- Set **Manage Preview Builds** to **Release Preview** in Windows Update for Business. 
- Leverage Azure Virtual Desktop and Azure Marketplace images. 
- Download and deploy ISOs from Microsoft’s Windows Insider Program ISO Download page. 

Regardless of the method you choose, you have the benefit of free Microsoft support when validating pre-release builds. Free support is available to any commercial customer deploying Windows 10 or Windows 11 Preview Builds, once they become available through the Windows Insider Program. 

#### Analytics and assessment tools 

If you use Microsoft Endpoint Manager and have onboarded devices to Endpoint analytics, you will have access to a hardware readiness assessment later this year. This tool enables you to quickly identify which of your managed devices are eligible for the Windows 11 upgrade.

[Desktop Analytics](/mem/configmgr/desktop-analytics/overview) does not support Windows 11. You must use [Endpoint analytics](/mem/analytics/overview).

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

Do not overlook the importance of end-user readiness to deliver an effective, enterprise-wide deployment of Windows 11. Windows 11 has a familiar design, but your users will see several enhancements to the overall user interface. They will also need to adapt to changes in menus and settings pages. Therefore, consider the following tasks to prepare users and your IT support staff Windows 11: 
- Create a communications schedule to ensure that you provide the right message at the right time to the right groups of users, based on when they will see the changes. 
- Draft concise emails that inform users of what changes they can expect to see. Offer tips on how to use or customize their experience. Include information about support and help desk options. 
- Update help desk manuals with screenshots of the new user interface, the out-of-box experience for new devices, and the upgrade experience for existing devices. 

## Learn more

See the [Stay current with Windows 10 and Microsoft 365 Apps](/learn/paths/m365-stay-current/) learning path on Microsoft Learn. 
- The learning path was created for Windows 10, but the basic principles and tasks outlined for the plan, prepare, and deploy phases also apply to your deployment of Windows 11.  

## See also

[Plan for Windows 11](windows-11-plan.md)<br>
[Windows help & learning](https://support.microsoft.com/windows)
