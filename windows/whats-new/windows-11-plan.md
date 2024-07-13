---
title: Plan for Windows 11
description: This article provides guidance to help you plan for Windows 11 in your organization.
ms.service: windows-client
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: high
ms.topic: get-started
ms.collection:
  - highpri
  - tier1
  - essentials-get-started
ms.subservice: itpro-fundamentals
ms.date: 07/12/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
---

# Plan for Windows 11

This article provides guidance to help you plan for Windows 11 in your organization.

## Deployment planning

Since Windows 11 is built on the same foundation as Windows 10, you can use the same deployment capabilities, scenarios, and tools. You can also use the same basic deployment strategy that you use today for Windows 10. Make sure that you review and update your servicing strategy to adjust for changes in [servicing and support](#servicing-and-support) for Windows 11.

At a high level, this strategy should include the following steps:

- [Create a deployment plan](/windows/deployment/update/create-deployment-plan)
- [Define readiness criteria](/windows/deployment/update/plan-define-readiness)
- [Evaluate infrastructure and tools](/windows/deployment/update/eval-infra-tools)
- [Test applications](/windows/compatibility/windows-11/testing-guidelines)
- [Define your servicing strategy](/windows/deployment/update/plan-define-strategy)

If you're looking for ways to optimize your approach to deploying Windows 11, or if deploying a new version of Windows isn't a familiar process for you, consider the factors in the following sections.

## Determine eligibility

As a first step, determine which of your current devices meet the Windows 11 hardware requirements. To ensure compatibility, verify that your device meets or exceeds [Windows 11 requirements](windows-11-requirements.md).

Microsoft has analysis tools to help you evaluate your devices against the Windows 11 hardware requirements. If you're running Windows 10 Home, Pro, or Pro for Workstations editions, you can use the [PC Health Check](https://www.microsoft.com/windows/windows-11#pchealthcheck) app to determine Windows 11 eligibility. Users running Windows 10 Enterprise and Education editions should rely on their IT administrators to let them know when they're eligible for the upgrade.

Enterprise organizations looking to evaluate device readiness in their environments can expect this capability to be integrated into existing Microsoft tools, such as [Endpoint analytics](/mem/analytics/).

## Windows 11 availability

The availability of Windows 11 varies according to a device's hardware and whether the device receives updates directly from Microsoft, or from a management solution that's maintained by an IT administrator.

For more information, see [Defining Windows update-managed devices](/windows/deployment/update/update-managed-unmanaged-devices).

### Managed devices

Managed devices are devices that are under organizational control. Managed devices include those devices managed by Microsoft Intune, Microsoft Configuration Manager, or other endpoint management solutions.

If you manage devices on behalf of your organization, you can upgrade eligible devices to Windows 11 using your existing deployment and management tools.

Organizations that use Windows Update for Business also have the following benefits:

- Ensuring that devices that don't meet the minimum hardware requirements aren't automatically offered the Windows 11 upgrade.
- More insight into safeguard holds. While safeguard holds function for Windows 11 devices just as they do for Windows 10 today, administrators using Windows Update for Business have access to information on which safeguard holds are preventing individual devices from taking the upgrade to Windows 11.

> [!NOTE]
> Also, Windows 11 has new Microsoft Software License Terms. If you deploy with Windows Update for Business or Windows Server Update Services, you accept these new license terms on behalf of the users in your organization.

### Unmanaged devices

Unmanaged devices are devices that an IT administrator doesn't manage on behalf of an organization. For OS deployment, these devices aren't subject to organizational policies that manage upgrades or updates.

Windows 11 was offered to eligible Windows 10 devices in 2021. Messaging on new devices varies by PC manufacturer.

The Windows 11 upgrade is available on eligible, unmanaged devices to users who manually seek the upgrade through Windows Update. As with all Windows Update-managed devices, the **Windows Update** settings page confirms when a device is eligible.

Just like Windows 10, the machine learning-based [intelligent rollout](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/using-machine-learning-to-improve-the-windows-10-update/ba-p/877860) process is used when rolling out upgrades. Machine learning uses a combination of testing, close partner engagement, feedback, diagnostic data, and real-life insights to manage quality. This process improves the update experience and ensures that devices first nominated for updates are the devices likely to have a seamless experience. Devices that might have compatibility issues with the upgrade get the benefit of resolving these issues before the upgrade is offered.

## Windows 11 readiness considerations

The recommended method to determine if your infrastructure, deployment processes, and management tools are ready for Windows 11 is to join the [Windows Insider Program for Business](https://insider.windows.com/for-business). As a participant in the [release preview channel](/windows-insider/business/validate-Release-Preview-Channel), you can validate that your devices and applications work as expected, and explore new features.

As you plan your endpoint management strategy for Windows 11, consider moving to cloud-based mobile device management (MDM), such as [Microsoft Intune](/mem/intune/fundamentals/what-is-intune). If a cloud-only approach isn't right for your organization yet, you can still modernize and streamline essential pieces of your endpoint management strategy as follows:

- To manage Configuration Manager clients over the internet, create a [cloud management gateway](/mem/configmgr/core/clients/manage/cmg/overview) (CMG).
- Attach your existing Configuration Management estate to the cloud with [tenant attach](/mem/configmgr/tenant-attach/device-sync-actions) so you can manage all devices from within the [Microsoft Intune admin center](https://go.microsoft.com/fwlink/?linkid=2109431).
- Use [co-management](/mem/configmgr/comanage/overview) to concurrently manage devices using both Configuration Manager and Microsoft Intune. This concurrent management allows you to take advantage of cloud-powered capabilities like [conditional access](/azure/active-directory/conditional-access/overview).

For more information on the benefits of these approaches, see [Cloud Attach Your Future: The Big 3](https://techcommunity.microsoft.com/t5/configuration-manager-blog/cloud-attach-your-future-part-ii-quot-the-big-3-quot/ba-p/1750664).

The introduction of Windows 11 is also a good time to review your hardware refresh plans and prioritize eligible devices to ensure an optimal experience for your users.

## Servicing and support

Along with user experience and security improvements, Windows 11 introduces enhancements to Microsoft's servicing approach based on your suggestions and feedback.

- **Quality updates**: Windows 11 and Windows 10 devices receive regular monthly quality updates to provide security updates and bug fixes.

- **Feature updates**: Microsoft provides a single Windows 11 feature update annually, targeted for release in the second half of each calendar year.

- **Lifecycle**:

  - Home, Pro, Pro for Workstations, and Pro for Education editions of Windows 11 receive 24 months of support from the general availability date.
  - Enterprise and Education editions of Windows 11 are supported for 36 months from the general availability date.

A consolidated [Windows 11 update history](https://support.microsoft.com/topic/59875222-b990-4bd9-932f-91a5954de434) is available. Similarly, the [Windows release health](/windows/release-health/) hub offers quick access to Windows 11 servicing announcements, known issues, and safeguard holds.

It's important that organizations have adequate time to plan for Windows 11. Microsoft also recognizes that many organizations have a mix of Windows 11 and Windows 10 devices across their ecosystem. Devices on in-service versions of Windows 10 continue to receive monthly Windows 10 security updates, and incremental improvements to Windows 10 to support ongoing Microsoft 365 deployments. For more information, see the [Windows 10 release information](/windows/release-health/release-information) page.

## Application compatibility

Microsoft's compatibility promise for Windows 10 is maintained for Windows 11. Data from the App Assure program shows that Windows 10 compatibility rates are over 99.7% for enterprise organizations, including line of business (LOB) apps. Microsoft remains committed to ensuring that the apps you rely upon continue to work as expected when you upgrade. Windows 11 is subject to the same app compatibility validation requirements that are in place for Windows 10 today, for both feature and quality updates.

For more information, see [Windows compatibility cookbook](/windows/compatibility/).

### App Assure

If you run into compatibility issues or want to ensure that your organization's applications are compatible from day one, App Assure can help. With enrollment in the [App Assure](/windows/compatibility/app-assure) service, any app compatibility issues that you find with Windows 11 can be resolved. Microsoft helps you remedy application issues at no cost. Since 2018, App Assure has evaluated almost 800,000 apps, and subscriptions are free for eligible customers with more than 150 devices.

## Next steps

[Prepare for Windows 11](windows-11-prepare.md)

[Plan to deploy updates for Windows 10 and Microsoft 365 Apps](/training/modules/windows-plan/)
