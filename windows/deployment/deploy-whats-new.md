---
title: What's new in Windows client deployment
ms.reviewer: 
manager: laurawi
ms.author: greglin
description: Use this article to learn about new solutions and online content related to deploying Windows in your organization.
keywords: deployment, automate, tools, configure, news
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.prod: w10
ms.sitesec: library
ms.pagetype: deploy
audience: itpro
author: greg-lindsay
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# What's new in Windows 10 deployment

**Applies to:**
- Windows 10

## In this topic

This topic provides an overview of new solutions and online content related to deploying Windows client in your organization.

- For an all-up overview of new features in Windows 10, see [What's new in Windows 10](/windows/whats-new/index).
- For an overview of Windows 11, see [What's new in Windows 11](/windows/whats-new/windows-11).

## Latest news

[SetupDiag](#setupdiag) is included with Windows 10, version 2004 and later.<br>
The [Windows ADK for Windows 10, version 2004](/windows-hardware/get-started/adk-install) is available.<br>
New capabilities are available for [Delivery Optimization](#delivery-optimization) and [Windows Update for Business](#windows-update-for-business).<br>
VPN support is added to [Windows Autopilot](#windows-autopilot)<br>
An in-place upgrade wizard is available in [Configuration Manager](#microsoft-endpoint-configuration-manager).<br>
The [Windows ADK](#windows-assessment-and-deployment-kit-adk) for Windows 10, version 2004 is available.<br>
The Windows 10 deployment and update [landing page](index.yml) has been redesigned, with additional content added and more content coming soon.<br>

## The Modern Desktop Deployment Center

The [Modern Desktop Deployment Center](/microsoft-365/enterprise/desktop-deployment-center-home) has launched with tons of content to help you with large-scale deployment of Windows 10 and Microsoft 365 Apps for enterprise.

## Microsoft 365

Microsoft 365 is a new offering from Microsoft that combines
- Windows 10
- Office 365
- Enterprise Mobility and Security (EMS).

See [Deploy Windows 10 with Microsoft 365](deploy-m365.md) for an overview, which now includes a link to download a nifty [M365 Enterprise poster](deploy-m365.md#m365-enterprise-poster).

## Windows 10 servicing and support

### Delivery Optimization

Windows PowerShell cmdlets for Delivery Optimization have been improved:

- **Get-DeliveryOptimizationStatus** has added the  **-PeerInfo** option for a real-time peak behind the scenes on peer-to-peer activity (for example the peer IP Address, bytes received / sent).
- **Get-DeliveryOptimizationLogAnalysis** is a new cmdlet that provides a summary of the activity in your DO log (# of downloads, downloads from peers, overall peer efficiency). Use the **-ListConnections** option to for in-depth look at peer-to-peer connections.
- **Enable-DeliveryOptimizationVerboseLogs** is a new cmdlet that enables a greater level of logging detail to assist in troubleshooting.

Additional improvements in [Delivery Optimization](./update/waas-delivery-optimization.md) include:
- Enterprise network [throttling is enhanced](/windows-insider/archive/new-for-business#new-download-throttling-options-for-delivery-optimization-build-18917) to optimize foreground vs. background throttling.
- Automatic cloud-based congestion detection is available for PCs with cloud service support.
- Improved peer efficiency for enterprises and educational institutions with complex networks is enabled with [new policies](/windows/client-management/mdm/policy-csp-deliveryoptimization). This now supports Microsoft 365 Apps for enterprise updates and Intune content, with Microsoft Endpoint Manager content coming soon!

The following Delivery Optimization policies are removed in the Windows 10, version 2004 release:

- Percentage of Maximum Download Bandwidth (DOPercentageMaxDownloadBandwidth)
  - Reason: Replaced with separate policies for foreground and background
- Max Upload Bandwidth (DOMaxUploadBandwidth)
  - Reason: impacts uploads to internet peers only, which isn't used in enterprises.
- Absolute max throttle (DOMaxDownloadBandwidth)
  - Reason: separated to foreground and background

### Windows Update for Business

[Windows Update for Business](./update/waas-manage-updates-wufb.md) enhancements in this release include:
- Intune console updates: target version is now available allowing you to specify which version of Windows 10 you want devices to move to. Additionally, this capability enables you to keep devices on their current version until they reach end of service. Check it out in Intune, also available as a Group Policy and Configuration Service Provider (CSP) policy.
- Validation improvements: To ensure devices and end users stay productive and protected, Microsoft uses safeguard holds to block devices from updating when there are known issues that would impact that device. Also, to better enable IT administrators to validate on the latest release, we have created a new policy that enables admins to opt devices out of the built-in safeguard holds.

- [**Automatic Restart Sign-on (ARSO)**](/windows-insider/at-work-pro/wip-4-biz-whats-new#automatic-restart-and-sign-on-arso-for-enterprises-build-18305): Windows will automatically log on as the user and lock their device in order to complete the update, ensuring that when the user returns and unlocks the device, the update will be completed.
- [**Windows Update for Business**](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/Windows-Update-for-Business-and-the-retirement-of-SAC-T/ba-p/339523): There will now be a single, common start date for phased deployments (no more SAC-T designation). In addition, there will be a new notification and reboot scheduling experience for end users, the ability to enforce update installation and reboot deadlines, and the ability to provide end user control over reboots for a specific time period.
- **Update rollback improvements**: You can now automatically recover from startup failures by removing updates if the startup failure was introduced after the installation of recent driver or quality updates. When a device is unable to start up properly after the recent installation of Quality of driver updates, Windows will now automatically uninstall the updates to get the device back up and running normally.
- **Pause updates**: We have extended the ability to pause updates for both feature and monthly updates. This extension ability is for all editions of Windows 10, including Home. You can pause both feature and monthly updates for up to 35 days (seven days at a time, up to five times). Once the 35-day pause period is reached, you will need to update your device before pausing again.
- **Improved update notifications**: When there's an update requiring you to restart your device, you'll see a colored dot on the Power button in the Start menu and on the Windows icon in your taskbar.
- **Intelligent active hours**: To further enhance active hours, users will now have the option to let Windows Update intelligently adjust active hours based on their device-specific usage patterns. You must enable the intelligent active hours feature for the system to predict device-specific usage patterns.
- **Improved update orchestration to improve system responsiveness**: This feature will improve system performance by intelligently coordinating Windows updates and Microsoft Store updates, so they occur when users are away from their devices to minimize disruptions.

Microsoft previously announced that we are [extending support](https://www.microsoft.com/microsoft-365/blog/2018/09/06/helping-customers-shift-to-a-modern-desktop) for Windows 10 Enterprise and Windows 10 Education editions to 30 months from the version release date. This includes all past versions and future versions that are targeted for release in September (versions ending in 09, ex: 1809). Future releases that are targeted for release in March (versions ending in 03, ex: 1903) will continue to be supported for 18 months from their release date. All releases of Windows 10 Home, Windows 10 Pro, and Microsoft 365 Apps for enterprise will continue to be supported for 18 months (there is no change for these editions).  These support policies are summarized in the table below.

![Support lifecycle](images/support-cycle.png)

## Windows 10 Enterprise upgrade

Windows 10 version 1703 includes a Windows 10 Enterprise E3 and E5 benefit to Microsoft customers with Enterprise Agreements (EA) or Microsoft Products & Services Agreements (MPSA). These customers can now subscribe users to Windows 10 Enterprise E3 or E5 and activate their subscriptions on up to five devices. Virtual machines can also be activated. For more information, see [Windows 10 Enterprise Subscription Activation](windows-10-subscription-activation.md).

Windows 10 Enterprise E3 launched in the Cloud Solution Provider (CSP) channel on September 1, 2016. Previously, only organizations with a Microsoft Volume Licensing Agreement could deploy Windows 10 Enterprise to their users. With Windows 10 Enterprise E3 in CSP, small and medium-sized organizations can more easily take advantage of Windows 10 Enterprise features.

For more information, see [Windows 10 Enterprise E3 in CSP](windows-10-enterprise-e3-overview.md)

## Deployment solutions and tools

### Windows Autopilot

[Windows Autopilot](/windows/deployment/windows-autopilot/windows-autopilot) streamlines and automates the process of setting up and configuring new devices, with minimal interaction required from the end user. You can also use Windows Autopilot to reset, repurpose, and recover devices.

With the release of Windows 10, version 2004 you can configure [Windows Autopilot user-driven](/windows/deployment/windows-autopilot/user-driven) Hybrid Azure Active Directory join with VPN support. This support is also backported to Windows 10, version 1909 and 1903.

If you configure the language settings in the Autopilot profile and the device is connected to Ethernet, all scenarios will now skip the language, locale, and keyboard pages.  In previous versions, this was only supported with self-deploying profiles.

The following Windows Autopilot features are available in Windows 10, version 1903 and later:

- [Windows Autopilot for white glove deployment](/windows/deployment/windows-autopilot/white-glove) is new in Windows 10, version 1903. "White glove" deployment enables partners or IT staff to pre-provision devices so they are fully configured and business ready for your users.
- The Intune [enrollment status page](/intune/windows-enrollment-status) (ESP) now tracks Intune Management Extensions​.
- [Cortana voiceover](/windows-hardware/customize/desktop/cortana-voice-support) and speech recognition during OOBE is disabled by default for all Windows 10 Pro Education, and Enterprise SKUs.
- Windows Autopilot is self-updating during OOBE. Starting with the Windows 10, version 1903 Autopilot functional and critical updates will begin downloading automatically during OOBE.
- Windows Autopilot will set the [diagnostics data](/windows/privacy/windows-diagnostic-data) level to Full on Windows 10 version 1903 and later during OOBE.

### Microsoft Endpoint Configuration Manager

An in-place upgrade wizard is available in Configuration Manager. For more information, see [Simplifying Windows 10 deployment with Configuration Manager](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/simplifying-windows-10-deployment-with-configuration-manager/ba-p/1214364).

### Windows 10 Subscription Activation

Windows 10 Education support has been added to Windows 10 Subscription Activation.

With Windows 10, version 1903, you can step-up from Windows 10 Pro Education to the enterprise-grade edition for educational institutions – Windows 10 Education. For more information, see [Windows 10 Subscription Activation](./windows-10-subscription-activation.md).

### SetupDiag

[SetupDiag](upgrade/setupdiag.md) is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues.

In Windows 10, version 2004, SetupDiag is now automatically installed.

During the upgrade process, Windows Setup will extract all its sources files to the **%SystemDrive%\$Windows.~bt\Sources** directory. With Windows 10, version 2004 and later, Windows Setup now also installs SetupDiag.exe to this directory. If there is an issue with the upgrade, SetupDiag is automatically run to determine the cause of the failure. If the upgrade process proceeds normally, this directory is moved under %SystemDrive%\Windows.Old for cleanup.

### Upgrade Readiness

The Upgrade Readiness tool moved from public preview to general availability on March 2, 2017.

Upgrade Readiness helps you ensure that applications and drivers are ready for a Windows 10 upgrade. The solution provides up-to-date application and driver inventory, information about known issues, troubleshooting guidance, and per-device readiness and tracking details.

The development of Upgrade Readiness has been heavily influenced by input from the community; the development of new features is ongoing. To begin using Upgrade Readiness, add it to an existing Operation Management Suite (OMS) workspace or sign up for a new OMS workspace with the Upgrade Readiness solution enabled.

For more information about Upgrade Readiness, see the following topics:

- [Windows Analytics blog](https://aka.ms/blog/WindowsAnalytics/)
- [Manage Windows upgrades with Upgrade Readiness](/mem/configmgr/desktop-analytics/overview)


### Update Compliance

Update Compliance helps you to keep Windows 10 devices in your organization secure and up-to-date.

Update Compliance is a solution built using OMS Logs and Analytics that provides information about installation status of monthly quality and feature updates. Details are provided about the deployment progress of existing updates and the status of future updates. Information is also provided about devices that might need attention to resolve issues.

For more information about Update Compliance, see [Monitor Windows Updates with Update Compliance](update/update-compliance-monitor.md).

### Device Health

Device Health is the newest Windows Analytics solution that complements the existing Upgrade Readiness and Update Compliance solutions by helping to identify devices crashes and the cause. Device drivers that are causing crashes are identified along with alternative drivers that might reduce the number of crashes.  Windows Information Protection misconfigurations are also identified. For more information, see [Monitor the health of devices with Device Health](/mem/configmgr/desktop-analytics/overview)

### MBR2GPT

MBR2GPT.EXE converts a disk from Master Boot Record (MBR) to GUID Partition Table (GPT) partition style without modifying or deleting data on the disk. Previously, it was necessary to image, then wipe and reload a disk to change from MBR format to GPT.

There are many benefits to converting the partition style of a disk to GPT, including the use of larger disk partitions, added data reliability, and faster boot and shutdown speeds. The GPT format also enables you to use the Unified Extensible Firmware Interface (UEFI) which replaces the Basic Input/Output System (BIOS) firmware interface.  Security features of Windows 10 that require UEFI mode include: Secure Boot, Early Launch Anti-malware (ELAM) driver, Windows Trusted Boot, Measured Boot, Device Guard, Credential Guard, and BitLocker Network Unlock.

For more information, see [MBR2GPT.EXE](mbr-to-gpt.md).

### Microsoft Deployment Toolkit (MDT)

MDT version 8456 supports Windows 10, version 2004 and earlier operating systems, including Windows Server 2019. There is currently an issue that causes MDT to incorrectly detect that UEFI is present in Windows 10, version 2004.  This issue is currently under investigation.

For the latest information about MDT, see the [MDT release notes](/mem/configmgr/mdt/release-notes).

### Windows Assessment and Deployment Kit (ADK)

The Windows Assessment and Deployment Kit (Windows ADK) contains tools that can be used by IT Pros to deploy Windows.

Download the Windows ADK and Windows PE add-on for Windows 10, version 2004 [here](/windows-hardware/get-started/adk-install).

For information about what's new in the ADK, see [What's new in the Windows ADK for Windows 10, version 2004](/windows-hardware/get-started/what-s-new-in-kits-and-tools#whats-new-in-the-windows-adk-for-windows-10-version-2004).

Also see [Windows ADK for Windows 10 scenarios for IT Pros](windows-adk-scenarios-for-it-pros.md).

## Testing and validation guidance

### Windows 10 deployment proof of concept (PoC)

The Windows 10 PoC guide enables you to test Windows 10 deployment in a virtual environment and become familiar with deployment tools such as MDT and Configuration Manager. The PoC guide provides step-by-step instructions for installing and using Hyper-V to create a virtual lab environment. The guide makes extensive use of Windows PowerShell to streamline each phase of the installation and setup.

For more information, see the following guides:

- [Step by step guide: Configure a test lab to deploy Windows 10](windows-10-poc.md)
- [Deploy Windows 10 in a test lab using Microsoft Deployment Toolkit](windows-10-poc-mdt.md)
- [Deploy Windows 10 in a test lab using Microsoft Endpoint Configuration Manager](windows-10-poc-sc-config-mgr.md)

## Troubleshooting guidance

[Resolve Windows 10 upgrade errors](upgrade/resolve-windows-10-upgrade-errors.md) was published in October of 2016 and will continue to be updated with new fixes. The topic provides a detailed explanation of the Windows 10 upgrade process and instructions on how to locate, interpret, and resolve specific errors that can be encountered during the upgrade process.

## Related topics

[Overview of Windows as a service](update/waas-overview.md)<br>
[Windows 10 deployment considerations](planning/windows-10-deployment-considerations.md)<br>
[Windows 10 release information](/windows/windows-10/release-information)<br>
[Windows 10 Specifications & Systems Requirements](https://www.microsoft.com/windows/windows-10-specifications)<br>
[Windows 10 upgrade paths](upgrade/windows-10-upgrade-paths.md)<br>
[Windows 10 deployment tools](windows-deployment-scenarios-and-tools.md)<br>