---
title: Prepare for Windows 11
description: Prepare your infrastructure and tools to deploy Windows 11.
ms.service: windows-client
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: high
ms.topic: concept-article
ms.collection:
  - highpri
  - tier1
ms.subservice: itpro-fundamentals
ms.date: 07/16/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
---

# Prepare for Windows 11

Windows 10 and Windows 11 are designed to coexist so that you can use the same familiar tools and processes to manage both operating systems. Using a single management infrastructure that supports common applications across both Windows 10 and Windows 11 helps to simplify the migration process. You can analyze endpoints, determine application compatibility, and manage Windows 11 deployments in the same way that you do with Windows 10.

After you evaluate your hardware to see if it meets [requirements](windows-11-requirements.md) for Windows 11, it's a good time to review your deployment infrastructure, tools, and overall endpoint and update management processes. Use this review time to look for opportunities to simplify and optimize. This article provides some helpful guidance to accomplish these tasks.

## Infrastructure and tools

The tools that you use for core workloads during Windows 10 deployments can still be used for Windows 11.

> [!IMPORTANT]
> Be sure to check with the providers of any non-Microsoft solutions that you use. Verify compatibility of these tools with Windows 11, particularly if they provide security or data loss prevention capabilities.

### On-premises solutions

- If you use [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus), you need to sync the Windows 11 product category. After you sync the product category, you'll see Windows 11 offered as an option. If you want to validate Windows 11 builds before their broad release, you can also sync the **Windows Insider Pre-release** category.

  > [!NOTE]
  > During deployment, you'll be prompted to agree to the Microsoft Software License Terms on behalf of your users. Additionally, you won't see an x86 option because Windows 11 isn't supported on 32-bit architecture.

- If you use [Microsoft Configuration Manager](/mem/configmgr/), you can sync the **Windows 11** product category and begin upgrading eligible devices. If you want to validate Windows 11 builds before their broad release, you can also sync the **Windows Insider Pre-release** category.

  > [!NOTE]
  > Configuration Manager will prompt you to accept the Microsoft Software License Terms on behalf of the users in your organization.

### Cloud-based solutions

- If you use [Windows Update for Business](/windows/deployment/update/waas-manage-updates-wufb) policies, you need to use the **Target Version** capability. This option is either through policy or the Windows Update for Business deployment service. You need to use this option instead of only using feature update deferrals to upgrade from Windows 10 to Windows 11. Feature update deferrals are great for moving to newer versions of your current product. For example, Windows 10, version 21H2 to version 22H2. They don't automatically move devices between products, for example Windows 10 to Windows 11.

  - If you use [Microsoft Intune](/mem/intune/) and have a Microsoft 365 E3 license, use the [feature update deployments](/mem/intune/protect/windows-10-feature-updates) page to select the latest version of Windows 11 and upgrade Windows 10 devices to Windows 11. You can also continue using the same update experience controls to manage Windows 10 and Windows 11 on the **Update Rings** page in Intune. If you aren't ready to move to Windows 11, keep the feature update version set at the version you're currently on. When you're ready to start upgrading devices, change the feature update deployment setting to specify Windows 11.

  - In group policy, **Select target Feature Update version** has two entry fields: **Product Version** and **Target Version**.

  - The product field must specify Windows 11 in order for devices to upgrade to Windows 11. If only the target version field is configured, the service offers the device matching versions of the same product.

- Quality update deferrals continue to work the same across both Windows 10 and Windows 11. This behavior is true regardless of which management tool you use to configure Windows Update for Business policies.

  > [!NOTE]
  > Endpoints managed by Windows Update for Business don't automatically upgrade to Windows 11 unless an administrator explicitly configures a **Target Version** using the [TargetReleaseVersion](/windows/client-management/mdm/policy-csp-update#update-targetreleaseversion) setting using a Windows CSP, a [feature update profile](/mem/intune/protect/windows-10-feature-updates) in Intune, or the [Select target Feature Update version setting](/windows/deployment/update/waas-wufb-group-policy#i-want-to-stay-on-a-specific-version) group policy.

## Cloud-based management

The cloud-based management capabilities of the [Microsoft Intune family of products](/mem/endpoint-manager-overview) help consolidate device management and endpoint security into a single platform. Microsoft Intune also supports the diverse bring-your-own-device (BYOD) ecosystem that's common with hybrid work scenarios. It can also enable you to track your progress against compliance and business objectives while protecting user data.

The following are some common use cases and the corresponding [Microsoft Intune](/mem/intune/fundamentals/what-is-intune) capabilities that support them:

- **Provision and pre-configure new Windows 11 devices**: [Windows Autopilot](/autopilot/) enables you to deploy new Windows 11 devices in a business-ready state that includes your desired applications, settings, and policies. It can also be used to change the edition of Windows. For example, you can upgrade from Professional to Enterprise edition and gain the use of advanced features.

- **Configure rules and control settings for users, apps, and devices**: When you enroll devices in Microsoft Intune, you have full control over apps, settings, features, and security for both Windows 11 and Windows 10. You can also use app protection policies to require multifactor authentication (MFA) for specific apps.

- **Streamline device management for frontline, remote, and onsite workers**: [Cloud configuration](/mem/intune/fundamentals/cloud-configuration) is a standard, easy-to-manage, device configuration that is cloud-optimized for users with specific workflow needs. You can use Microsoft Intune to deploy it to devices running the Pro, Enterprise, and Education editions of Windows 11.

If you're exclusively using an on-premises device management solution like Configuration Manager, you can still use the [cloud management gateway](/mem/configmgr/core/clients/manage/cmg/overview), enable [tenant attach](/mem/configmgr/tenant-attach/device-sync-actions), or enable [co-management](/mem/configmgr/comanage/overview) with Microsoft Intune. These solutions can make it easier to keep devices secure and up-to-date.

## Review servicing approach and policies

Every organization transitions to Windows 11 at its own pace. Microsoft is committed to supporting you through your migration to Windows 11, whether you're a fast adopter or will make the transition over the coming months or years.

When you think of OS updates as an ongoing process, you improve your ability to deploy updates. This approach enables you to stay current with less effort, and less effect on productivity. To begin, think about how you roll out Windows feature updates today: which devices, and at what pace.

Next, craft a deployment plan for Windows 11 that includes deployment groups, rings, users, or devices. There are no absolute rules for exactly how many rings to have for your deployments, but the following example is a common structure:

- Preview (first or canary): Planning and development
- Limited (fast or early adopters): Pilot and validation
- Broad (users or critical): Wide deployment

For more information, see [Create a deployment plan](/windows/deployment/update/create-deployment-plan).

### Review policies

Review deployment-related policies, and take into consideration your organization's security objectives, update compliance deadlines, and device activity. Apply changes where you can gain a clear improvement, particularly regarding the speed of the update process or security.

### Validate apps and infrastructure

To validate that your apps, infrastructure, and deployment processes are ready for Windows 11, join the [Windows Insider Program for Business](https://insider.windows.com/for-business-getting-started). Then opt into the [Release Preview Channel](/windows-insider/business/validate-Release-Preview-Channel).

If you use [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus), you can deploy directly from the Windows Insider Prerelease category using one of the following processes:

- Set **Manage Preview Builds** to **Release Preview** in Windows Update for Business.
- Use Azure Virtual Desktop and Azure Marketplace images.
- Download and deploy ISOs from Microsoft's Windows Insider Program ISO download page.

Regardless of the method you choose, you have the benefit of free Microsoft support when validating prerelease builds. Free support is available to any commercial customer deploying Windows 10 or Windows 11 Preview Builds, once they become available through the Windows Insider Program.

### Analytics and assessment tools

If you use Microsoft Intune and have onboarded devices to [Endpoint analytics](/mem/analytics/overview), you have access to a hardware readiness assessment. This tool enables you to quickly identify which of your managed devices are eligible for the Windows 11 upgrade.

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

## User readiness

Don't overlook the importance of user readiness to deliver an effective, enterprise-wide deployment of Windows 11. Windows 11 has a familiar design, but your users will see several enhancements to the overall user interface. They'll also need to adapt to changes in menus and settings pages. Therefore, consider the following tasks to prepare users and IT support staff for Windows 11:

- Create a communications schedule to ensure that you provide the right message at the right time to the right groups of users, based on when they'll see the changes.
- Draft concise emails that inform users of what changes they can expect to see. Offer tips on how to use or customize their experience. Include information about support and help desk options.
- Update help desk manuals with screenshots of the new user interface, the out-of-box experience for new devices, and the upgrade experience for existing devices.

For more information and resources, see the [Meet Windows 11](https://support.microsoft.com/meetwindows11) video series.

## See also

[Stay current with Windows devices and Microsoft 365 Apps](/training/paths/m365-stay-current/)

[Plan for Windows 11](windows-11-plan.md)

[Windows help & learning for users](https://support.microsoft.com/windows)
