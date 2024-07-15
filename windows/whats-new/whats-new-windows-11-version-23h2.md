---
title: What's new in Windows 11, version 23H2 for IT pros
description: Learn more about what's new in Windows 11 version 23H2, including servicing updates, Windows Subsystem for Linux, the latest CSPs, and more.
manager: aaroncz
ms.service: windows-client
ms.author: mstewart
author: mestew
ms.localizationpriority: medium
ms.topic: reference
ms.collection:
  - highpri
  - tier2
ms.subservice: itpro-fundamentals
ms.date: 07/09/2024
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11, version 23H2</a>
---

# What's new in Windows 11, version 23H2
<!--6681501-->
Windows 11, version 23H2 is a feature update for Windows 11. It includes all features and fixes in previous cumulative updates to Windows 11, version 22H2. This article lists the new and updated features IT Pros should know.

Windows 11, version 23H2 follows the [Windows 11 servicing timeline](/lifecycle/faq/windows#windows-11):

- **Windows 11 Pro**: Serviced for 24 months from the release date.
- **Windows 11 Enterprise**: Serviced for 36 months from the release date.

Devices updating from Windows 11, version 22H2 use an enablement package. Most the files for the 23H2 update already exist on Windows 11, version 22H2 devices that have installed a recent monthly security update. Many of the new features have already been enabled on Windows 11, version 22H2 clients. However, some features are just in an inactive and dormant state because they are under [temporary enterprise feature control](temporary-enterprise-feature-control.md). These new features remain dormant until they're turned on through the enablement package, a small, quick-to-install switch that activates all of the Windows 11, version 23H2 features.

Windows 11, version 23H2 is available through Windows Server Update Services (including Configuration Manager), Windows Update for Business, and the Volume Licensing Service Center (VLSC). For more information, see [How to get the Windows 11, version 23H2 update](https://blogs.windows.com/windowsexperience/?p=178531). Review the [Windows 11, version 23H2 Windows IT Pro blog post](https://aka.ms/new-in-23H2) to discover information about available deployment resources such as the [Windows Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install).


To learn more about the status of the update rollout, known issues, and new information, see [Windows release health](/windows/release-health/).

## Features no longer under temporary enterprise control

[Temporary enterprise feature control](temporary-enterprise-feature-control.md) temporarily turns off certain features that were introduced during monthly cumulative updates for managed Windows 11, version 22H2 devices. For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

When a managed Windows 11, version 22H2 device installs [version 23H2](https://support.microsoft.com/kb/5027397), the following features will no longer be under temporary enterprise feature control:

| Feature | KB article where the feature was introduced | 
|---|---|
| Touch-optimized taskbar for 2-in-1 devices <!--8092554, WIP.25197--> | [February 28, 2023 - KB5022913](https://support.microsoft.com/kb/5022913)  | 
| Selecting **Uninstall** for a Win32 app from the right-click menu uses the **Installed Apps** page in **Settings** rather than **Programs and Features** under the **Control Panel** <!--8092554, WIP.25300-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  | 
| Windows Spotlight provides a minimized experience, opportunities to learn more about each image, and allows users to preview images at full screen.<!--8092554, WIP.23511 & WIP.25281, AllowWindowsSpotlight-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  |
| Copilot in Windows <!--8092554, WIP.23493 -->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  |
| [Dev Home](/windows/dev-home/) <!--8092554, WIP.23506-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  |
| [Dev Drive](/windows/dev-drive/) <!--8092554, WIP.23466-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  | 

## Features added to Windows 11 since version 22H2

Starting with Windows 11, version 22H2, new features and enhancements were introduced periodically to provide continuous innovation for Windows 11. These features and enhancements use the normal update servicing channels you're already familiar with. At first, new features are introduced with an optional nonsecurity preview release and gradually rolled out to clients. These new features are released later as part of a monthly security update release. For more information about continuous innovation, see [Update release cycle for Windows clients](/windows/deployment/update/release-cycle#continuous-innovation-for-windows-11) Some of the features were released within the past year's continuous innovation updates and carry forward into the 23H2 annual feature update include:


### Passkeys in Windows
<!--8138341-->
Windows provides a native experience for passkey management. You can use the Settings app to view and manage passkeys saved for apps or websites. For more information, see [Support for passkeys in Windows](/windows/security/identity-protection/passkeys).

### Windows passwordless experience
<!--8138336-->
Windows passwordless experience is a security policy that promotes a user experience without passwords on Microsoft Entra joined devices.
When the policy is enabled, certain Windows authentication scenarios don't offer users the option to use a password, helping organizations and preparing users to gradually move away from passwords. For more information, see [Windows passwordless experience](/windows/security/identity-protection/passwordless-experience/).

### Web sign-in for Windows
<!--8344016-->
You can enable a web-based sign-in experience on Microsoft Entra joined devices, unlocking new sign-in options and capabilities. For more information, see [Web sign-in for Windows](/windows/security/identity-protection/web-sign-in).

### Declared configuration protocol
<!--7771694 --> 
**Declared configuration protocol** is a new protocol for device configuration management that's based on a desired state model and uses OMA-DM SyncML protocol. It allows the server to provide the device with a collection of settings for a specific scenario, and the device to handle the configuration request and maintain its state. For more information, see [What is the declared configuration protocol](/windows/client-management/declared-configuration).

### Education themes
<!--7771679-->
You can deploy education themes to your devices. The education themes are designed for students using devices in a school. For more information, see [Configure education themes for Windows 11](/education/windows/edu-themes).

### Temporary enterprise feature control
<!--7790977-->
Controls were added to temporarily turn off certain features that were introduced during monthly cumulative updates for managed Windows 11, version 22H2 devices. For more information, see [Temporary enterprise feature control](temporary-enterprise-feature-control.md).

### Multi-app kiosk
<!--6444738-->

You can configure a multi-app kiosk, which displays a customized start menu of allowed apps. For more information, see [Set up a multi-app kiosk on Windows 11 devices](/windows/configuration/lock-down-windows-11-to-specific-apps).

### Copilot in Windows
<!--8138371-->
Copilot in Windows provides centralized generative AI assistance to your users right from the Windows desktop. For more information, see [Manage Copilot in Windows](/windows/client-management/manage-windows-copilot).

### Windows Hello for Business authentication improvement
<!--7771685-->
Peripheral face and fingerprint sensors can be used for Windows Hello for Business authentication on devices where Enhanced Sign-in Security (Secure Biometrics) has been enabled at the factory. Previously this functionality was blocked. For more information, see [Common questions about Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-faq).

### LAPS native integration
<!--6399966-->
Use Windows Local Administrator Password Solution (LAPS) to regularly rotate and manage local administrator account passwords. For more information, see [Local Administrator Password Solution (LAPS)](/windows-server/identity/laps/laps-overview)

### Federated sign-in
<!--7593916, 7593946-->
You can sign into Windows using a federated identity, which simplifies the experience for students. For example, students and educators can use QR code badges to sign-in. This feature is designed specifically for Education editions of Windows. For more information, see [Configure federated sign-in for Windows devices](/education/windows/federated-sign-in).

### Customize Windows 11 taskbar buttons
<!--07525381-->
[Policies to customize Windows 11 taskbar buttons](/windows/configuration/supported-csp-taskbar-windows#csp-policies-to-customize-windows-11-taskbar-buttons) were added to provide you with more control over the taskbar search experience across your organization.

### Braille displays
<!--7579823-->
The compatibility of braille displays was expanded. Braille displays work seamlessly and reliably across multiple screen readers, improving the end user experience. We also added support for new braille displays and new braille input and output languages in Narrator. For more information, see [Accessibility information for IT professionals](/windows/configuration/windows-accessibility-for-ITPros).

### Dev Drive

Dev Drive is a new form of storage volume available to improve performance for key developer workloads. For more information, see [Set up a Dev Drive on Windows 11](/windows/dev-drive/).

### Additional features
<!--kb5019509 items and notable items for IT pros from other updates-->

- **Tabs for File Explorer**: File Explorer includes tabs to help you organize your File Explorer sessions. 
- **Taskbar overflow menu**: The taskbar offers an entry point to a menu that shows all of your overflowed apps in one spot.
- **Suggested actions**: Copied text in certain formats, such as phone numbers or dates, offer suggested actions such as calling the number or adding the event to your calendar.
- **Task Manager enhancements**: Process filtering, theme settings, and the ability to opt out of efficiency mode notification were added to Task Manager.
- **Narrator improvements**: Scripting functionality was added to Narrator. Narrator includes more natural voices. <!--8138352, 8138357--> 

### In-box apps

- **Microsoft Teams**: Chat is being removed from the Microsoft Teams in-box app. Teams will no longer be pinned to the taskbar for enterprise editions of Windows 11, version 23H2 or later. To identify the appx package: `Get-AppxPackage -Name MicrosoftTeams` <!--8349096-->
- **Dev Home**: Dev Home is a new app that provides a central location for developers to start building, testing, and deploying Windows apps. For more information, see [Dev Home](/windows/dev-home/). To identify the appx package: `Get-AppxPackage -Name Microsoft.Windows.DevHome`
