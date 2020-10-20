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

As with previous fall releases, Windows 10, version 20H2 is a scoped set of features for select performance improvements, enterprise features, and quality enhancements. As a [September-targeted release](https://support.microsoft.com/help/13853/windows-lifecycle-fact-sheet), 20H2 is serviced for 30 months from the release date for devices running Windows 10 Enterprise or Windows 10 Education editions. 

To download and install Windows 10, version 20H2, use Windows Update (**Settings > Update & Security > Windows Update**). 

## Microsoft Edge

This release automatically includes the new Chromium-based [Microsoft Edge](https://www.microsoft.com/edge/business) browser instead of the legacy version of Edge.  For more information, see the [Microsoft Edge documentation](https://docs.microsoft.com/microsoft-edge/).

## Servicing

### Windows Update

There are several changes that help improve the security of devices that scan Windows Server Update Services (WSUS) for updates. For more information, see [Changes to improve security for Windows devices scanning WSUS](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/changes-to-improve-security-for-windows-devices-scanning-wsus/ba-p/1645547).

## Deployment

New guidance is available to help move your devices to the latest version of Windows 10 quickly and as seamlessly as possible. 

These steps have been broken into the following phases: **Plan** > **Prepare** > **Deploy**:

**Plan** your deployment by evaluating and understanding essential activities: 
- Create a [phased deployment plan](https://docs.microsoft.com/windows/deployment/update/create-deployment-plan)
- Assign [roles and responsibilities](https://docs.microsoft.com/windows/deployment/update/plan-define-readiness#process-manager) within your organization
- Set [criteria](https://docs.microsoft.com/windows/deployment/update/plan-define-readiness#set-criteria-for-rating-apps) to establish readiness for the upgrade process
- Evaluate your [infrastructure and tools](https://docs.microsoft.com/windows/deployment/update/eval-infra-tools)
- Determine [readiness](https://docs.microsoft.com/windows/deployment/update/plan-determine-app-readiness) for your business applications
- Create an effective, schedule-based [servicing strategy](https://docs.microsoft.com/windows/deployment/update/plan-define-strategy)

**Prepare** your devices and environment for deployment by performing necessary actions:
- Update [infrastructure and tools](https://docs.microsoft.com/windows/deployment/update/prepare-deploy-windows#prepare-infrastructure-and-environment)
- Ensure the needed [services](https://docs.microsoft.com/windows/deployment/update/prepare-deploy-windows#prepare-applications-and-devices) are available
- Resolve issues with [unhealthy devices](https://docs.microsoft.com/windows/deployment/update/prepare-deploy-windows#address-unhealthy-devices)
- Ensure that [users are ready](https://docs.microsoft.com/windows/deployment/update/prepare-deploy-windows) for updates

**Deploy** and manage Windows 10 strategically in your organization:
- [Windows Autopilot](https://docs.microsoft.com/mem/autopilot/windows-autopilot) to streamline the setup and configuration of new devices
- [Configuration Manager](https://docs.microsoft.com/windows/deployment/deploy-windows-cm/prepare-for-zero-touch-installation-of-windows-10-with-configuration-manager) or [MDT](https://docs.microsoft.com/windows/deployment/deploy-windows-mdt/prepare-for-windows-deployment-with-mdt) for both new and existing devices
- Windows Server Update Services (WSUS) to [deploy Windows updates](https://docs.microsoft.com/windows/deployment/update/waas-manage-updates-wsus)
- Update Compliance to [monitor Windows Updates](https://docs.microsoft.com/windows/deployment/update/update-compliance-monitor)

### Windows Assessment and Deployment Toolkit (ADK)

There is no new ADK for Windows 10, version 20H2. The ADK for Windows 10, version 2004 will also work with Windows 10, version 20H2.  For more information, see [Download and install the Windows ADK](https://docs.microsoft.com/windows-hardware/get-started/adk-install).

## Device management

Modern Device Management (MDM) policy is extended with new [Local Users and Groups settings](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-localusersandgroups) that match the options available for devices managed through Group Policy.

For more information about what's new in MDM, see [What's new in mobile device enrollment and management](https://docs.microsoft.com/windows/client-management/mdm/new-in-windows-mdm-enrollment-management)

## Security

### Microsoft Defender Advanced Threat Protection (ATP) 

This release includes improved support for non-ASCII file paths has been added for Microsoft Defender ATP Auto Incident Response (IR).

The [DisableAntiSpyware](https://docs.microsoft.com/windows-hardware/customize/desktop/unattend/security-malware-windows-defender-disableantispyware) parameter is deprecated in this release.

## Virtualization

### Windows Sandbox

New polices for [Windows Sandbox](https://docs.microsoft.com/windows/security/threat-protection/windows-sandbox/windows-sandbox-overview) are available in this release. For more information, see [Policy CSP - WindowsSandbox](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-windowssandbox).

### Windows Virtual Desktop (WVD)

> **Note**: WVD is not tied directly to a Windows 10 release, but it is included here as an evolving capability of Windows.

New capabilities in WVD were announced at Ignite 2020. For more information, see [Announcing new management, security, and monitoring capabilities in Windows Virtual Desktop](https://aka.ms/wvd-ignite2020-blogpost).

In addition, [Windows Virtual Desktop is now generally available in the Azure Government cloud](https://azure.microsoft.com/en-us/updates/windows-virtual-desktop-is-now-generally-available-in-the-azure-government-cloud/).

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

## Desktop Analytics

[Desktop Analytics](https://docs.microsoft.com/configmgr/desktop-analytics/overview) is a cloud-connected service, integrated with Configuration Manager that provides data-driven insights to the management of Windows endpoints in your organization. Desktop Analytics requires a Windows E3 or E5 license, or a Microsoft 365 E3 or E5 license. 

For information about Desktop Analytics and this release of Windows 10, see [What's new in Desktop Analytics](https://docs.microsoft.com/mem/configmgr/desktop-analytics/whats-new).

## See Also

[What's New in Windows Server](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server): New and updated features in Windows Server.<br>
[Windows 10 Features](https://www.microsoft.com/windows/features): General information about Windows 10 features.<br>
[What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.<br>
[Announcing more ways we’re making app development easier on Windows](https://blogs.windows.com/windowsdeveloper/2020/09/22/kevin-gallo-microsoft-ignite-2020/): Simplifying app development in Windows.<br>
[Features and functionality removed in Windows 10](https://docs.microsoft.com/windows/deployment/planning/windows-10-removed-features): Removed features.<br>
[Windows 10 features we’re no longer developing](https://docs.microsoft.com/windows/deployment/planning/windows-10-deprecated-features): Features that are not being developed.<br>
