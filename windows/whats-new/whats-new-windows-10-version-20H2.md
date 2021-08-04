---
title: What's new in Windows 10, version 20H2
description: New and updated features in Windows 10, version 20H2 (also known as the Windows 10 October 2020 Update).
keywords: ["What's new in Windows 10", "Windows 10", "October 2020 Update"]
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: greg-lindsay
ms.author: greglin
manager: laurawi
ms.localizationpriority: high
ms.topic: article
---

# What's new in Windows 10, version 20H2 for IT Pros

**Applies to**
-   Windows 10, version 20H2

This article lists new and updated features and content that is of interest to IT Pros for Windows 10, version 20H2, also known as the Windows 10 October 2020 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 2004.

> [!NOTE]
> With this release and future releases, the Windows 10 release nomenclature is changing from a year and month pattern (YYMM) to a year and half-year pattern (YYH1, YYH2).

As with previous fall releases, Windows 10, version 20H2 is a scoped set of features for select performance improvements, enterprise features, and quality enhancements. As an [H2-targeted release](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet), 20H2 is serviced for 30 months from the release date for devices running Windows 10 Enterprise or Windows 10 Education editions. 

To download and install Windows 10, version 20H2, use Windows Update (**Settings > Update & Security > Windows Update**). For more information, including a video, see [How to get the Windows 10 October 2020 Update](https://community.windows.com/videos/how-to-get-the-windows-10-october-2020-update/7c7_mWN0wi8). 

## Microsoft Edge

This release automatically includes the new Chromium-based [Microsoft Edge](https://www.microsoft.com/edge/business) browser instead of the legacy version of Edge.  For more information, see the [Microsoft Edge documentation](/microsoft-edge/).

## Servicing

### Windows Update

There are several changes that help improve the security of devices that scan Windows Server Update Services (WSUS) for updates. For more information, see [Changes to improve security for Windows devices scanning WSUS](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/changes-to-improve-security-for-windows-devices-scanning-wsus/ba-p/1645547).

Starting with Windows 10, version 20H2, LCUs and SSUs have been combined into a single cumulative monthly update, available via Microsoft Catalog or Windows Server Update Services. For more information, see [Simplifying on-premises deployment of servicing stack updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/simplifying-on-premises-deployment-of-servicing-stack-updates/ba-p/1646039).

## Deployment

New guidance is available to help prepare a [servicing strategy](/windows/deployment/update/waas-servicing-strategy-windows-10-updates) and move your devices to the latest version of Windows 10 quickly and as seamlessly as possible. 

Activities are grouped into the following phases: **Plan** > **Prepare** > **Deploy**:

**Plan** your deployment by evaluating and understanding essential activities: 
- Create a [phased deployment plan](/windows/deployment/update/create-deployment-plan)
- Assign [roles and responsibilities](/windows/deployment/update/plan-define-readiness#process-manager) within your organization
- Set [criteria](/windows/deployment/update/plan-define-readiness#set-criteria-for-rating-apps) to establish readiness for the upgrade process
- Evaluate your [infrastructure and tools](/windows/deployment/update/eval-infra-tools)
- Determine [readiness](/windows/deployment/update/plan-determine-app-readiness) for your business applications
- Create an effective, schedule-based [servicing strategy](/windows/deployment/update/plan-define-strategy)

**Prepare** your devices and environment for deployment by performing necessary actions:
- Update [infrastructure and tools](/windows/deployment/update/prepare-deploy-windows#prepare-infrastructure-and-environment)
- Ensure the needed [services](/windows/deployment/update/prepare-deploy-windows#prepare-applications-and-devices) are available
- Resolve issues with [unhealthy devices](/windows/deployment/update/prepare-deploy-windows#address-unhealthy-devices)
- Ensure that [users are ready](/windows/deployment/update/prepare-deploy-windows) for updates

**Deploy** and manage Windows 10 strategically in your organization:
- Use [Windows Autopilot](/mem/autopilot/windows-autopilot) to streamline the set up, configuration, and delivery of new devices
- Use [Configuration Manager](/windows/deployment/deploy-windows-cm/prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager) or [MDT](/windows/deployment/deploy-windows-mdt/prepare-for-windows-deployment-with-mdt) to deploy new devices and update existing devices
- Use [Windows Update for Business](/windows/deployment/update/waas-configure-wufb) with Group Policy to [customize update settings](/windows/deployment/update/waas-wufb-group-policy) for your devices
- [Deploy Windows updates](/windows/deployment/update/waas-manage-updates-wsus) with Windows Server Update Services (WSUS)
- Manage bandwidth for updates with [Delivery Optimization](/windows/deployment/update/waas-delivery-optimization)
- [Monitor Windows Updates](/windows/deployment/update/update-compliance-monitor) with Update Compliance

### Windows Autopilot

Enhancements to Windows Autopilot since the last release of Windows 10 include:
- [Windows Autopilot for HoloLens](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/windows-autopilot-for-hololens-2/ba-p/1371494): Set up HoloLens 2 devices with Windows Autopilot for HoloLens 2 self-deploying mode.
- [Windows Autopilot with co-management](/mem/configmgr/comanage/quickstart-autopilot): Co-management and Autopilot together can help you reduce cost and improve the end user experience.
- Enhancements to Windows Autopilot deployment reporting are in preview. From the Microsoft Endpoint Manager admin center (endpoint.microsoft.com), select **Devices** > **Monitor** and scroll down to the **Enrollment** section. Click **Autopilot deployment (preview)**.

### Windows Assessment and Deployment Toolkit (ADK)

There is no new ADK for Windows 10, version 20H2. The ADK for Windows 10, version 2004 will also work with Windows 10, version 20H2.  For more information, see [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).

## Device management

Modern Device Management (MDM) policy is extended with new [Local Users and Groups settings](/windows/client-management/mdm/policy-csp-localusersandgroups) that match the options available for devices managed through Group Policy.

For more information about what's new in MDM, see [What's new in mobile device enrollment and management](/windows/client-management/mdm/new-in-windows-mdm-enrollment-management)

## Security

### Microsoft Defender for Endpoint

This release includes improved support for non-ASCII file paths for Microsoft Defender Advanced Threat Protection (ATP) Auto Incident Response (IR).

The [DisableAntiSpyware](/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) parameter is deprecated in this release.

### Microsoft Defender Application Guard for Office

Microsoft Defender Application Guard now supports Office: With [Microsoft Defender Application Guard for Office](/microsoft-365/security/office-365-security/install-app-guard), you can launch untrusted Office documents (from outside the Enterprise) in an isolated container to prevent potentially malicious content from compromising your device.

### Windows Hello

With specialized hardware and software components available on devices shipping with Windows 10, version 20H2 configured out of factory, Windows Hello now offers added support for virtualization-based security with supporting fingerprint and face sensors. This feature isolates and secures a user's biometric authentication data.

## Virtualization

### Windows Sandbox

New policies for [Windows Sandbox](/windows/security/threat-protection/windows-sandbox/windows-sandbox-overview) are available in this release. For more information, see [Policy CSP - WindowsSandbox](/windows/client-management/mdm/policy-csp-windowssandbox).

### Windows Virtual Desktop (WVD)

> **Note**: WVD is not tied directly to a Windows 10 release, but it is included here as an evolving capability of Windows.

New capabilities in WVD were announced at Ignite 2020. For more information, see [Announcing new management, security, and monitoring capabilities in Windows Virtual Desktop](https://aka.ms/wvd-ignite2020-blogpost).

In addition, [Windows Virtual Desktop is now generally available in the Azure Government cloud](https://azure.microsoft.com/updates/windows-virtual-desktop-is-now-generally-available-in-the-azure-government-cloud/).

## Windows Shell

Some enhancements to the Windows 10 user interface are implemented in this release:

- With this release, the solid color behind tiles on the Start menu is replaced with a partially transparent background. Tiles are also theme-aware. 
- Icons on the Start menu no longer have a square outline around each icon.
- Notifications are slightly updated in appearance.
- You can now change the monitor refresh rate on advanced display settings.
- Alt+Tab now shows Edge browser tabs by default. You can edit this setting under **Settings** > **System** > **Multitasking**: **Alt+Tab**.
- The System control panel under System and Security has been updated to the Settings > About page. Links to Device Manager, Remote desktop, System protection, Advanced system settings, and Rename this PC are moved to the About page.

### 2-in-1 PCs

On a 2-in-1 device, Windows will now automatically switch to tablet mode when you detach the screen.

## Surface

Windows 10 Pro and Enterprise are now [available on Surface Hub 2](https://techcommunity.microsoft.com/t5/surface-it-pro-blog/announcing-the-availability-of-windows-10-pro-and-enterprise-on/ba-p/1624107).  For more information, see [What's new in Surface Hub 2S for IT admins](/surface-hub/surface-hub-2s-whats-new).

## Desktop Analytics

[Desktop Analytics](/configmgr/desktop-analytics/overview) is a cloud-connected service, integrated with Configuration Manager that provides data-driven insights to the management of Windows endpoints in your organization. Desktop Analytics requires a Windows E3 or E5 license, or a Microsoft 365 E3 or E5 license. 

For information about Desktop Analytics and this release of Windows 10, see [What's new in Desktop Analytics](/mem/configmgr/desktop-analytics/whats-new).

## See Also

[What’s new for IT pros in Windows 10, version 20H2](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/what-s-new-for-it-pros-in-windows-10-version-20h2/ba-p/1800132)<br>
[Get started with the October 2020 update to Windows 10](https://www.linkedin.com/learning/windows-10-october-2020-update-new-features-2/get-started-with-the-october-2020-update-to-windows-10)<br>
[Learn Windows 10 with the October 2020 Update](https://www.linkedin.com/learning/windows-10-october-2020-update-essential-training/learn-windows-10-with-the-october-2020-update)<br>
[What's New in Windows Server](/windows-server/get-started/whats-new-in-windows-server): New and updated features in Windows Server.<br>
[Windows 10 Features](https://www.microsoft.com/windows/features): General information about Windows 10 features.<br>
[What's New in Windows 10](./index.yml): See what’s new in other versions of Windows 10.<br>
[Announcing more ways we’re making app development easier on Windows](https://blogs.windows.com/windowsdeveloper/2020/09/22/kevin-gallo-microsoft-ignite-2020/): Simplifying app development in Windows.<br>
[Features and functionality removed in Windows 10](/windows/deployment/planning/windows-10-removed-features): Removed features.<br>
[Windows 10 features we’re no longer developing](/windows/deployment/planning/windows-10-deprecated-features): Features that are not being developed.<br>