---
title: What's new in Windows 11, version 23H2 for IT pros
description: Learn more about what's new in Windows 11 version 23H2, including servicing updates, Windows Subsystem for Linux, the latest CSPs, and more.
manager: aaroncz
ms.prod: windows-client
ms.author: mstewart
author: mestew
ms.localizationpriority: medium
ms.topic: conceptual
ms.collection:
  - highpri
  - tier2
ms.technology: itpro-fundamentals
ms.date: 10/31/2023
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

Windows 11, version 23H2 is available through Windows Server Update Services (including Configuration Manager), Windows Update for Business, and the Volume Licensing Service Center (VLSC). For more information, see [How to get the Windows 11, version 23H2 update](https://aka.ms/W11/how-to-get-23H2). Review the [Windows 11, version 23H2 Windows IT Pro blog post](https://aka.ms/new-in-23H2) to discover information about available deployment resources such as the [Windows Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install).


To learn more about the status of the update rollout, known issues, and new information, see [Windows release health](/windows/release-health/).

## Features no longer under temporary enterprise control

[Temporary enterprise feature control](temporary-enterprise-feature-control.md) temporarily turns off certain features that were introduced during monthly cumulative updates for managed Windows 11, version 22H2 devices. For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

When a manged Windows 11, version 22H2 device installs version 23H2, the following features will no longer under be under temporary enterprise feature control:

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


### feature
<!--    -->
For more information, see [Placeholder](placeholder.md).

### Windows Hello for Business authentication improvement
<!--7771685-->
Peripheral face and fingerprint sensors can be used for Windows Hello for Business authentication on devices where Enhanced Sign-in Security (Secure Biometrics) has been enabled at the factory. Previously this functionality was blocked. For more information, see [Common questions about Windows Hello for Business](/windows/security/identity-protection/hello-for-business/hello-faq).

### LAPS native integration
<!--6399966-->
Use Windows Local Administrator Password Solution (LAPS) to regularly rotate and manage local administrator account passwords. For more information, see [Local Administrator Password Solution (LAPS)](/windows-server/identity/laps/laps-overview)

### Federated sign-in
<!--7593916-->
You can sign into Windows using a federated identity, which simplifies the experience for students. For example, students and educators can use QR code badges to sign-in. This feature is designed specifically for Education editions of Windows. For more information, see [Configure federated sign-in for Windows devices](/education/windows/federated-sign-in).

### Customize Windows 11 taskbar buttons
<!--07525381-->
[Policies to customize Windows 11 taskbar buttons](/windows/configuration/supported-csp-taskbar-windows#csp-policies-to-customize-windows-11-taskbar-buttons) were added to provide you with more control over the taskbar search experience across your organization.


### Braille displays
<!--7579823-->
The compatibility of braille displays has been expanded. Braille displays work seamlessly and reliably across multiple screen readers, improving the end user experience. We also added support for new braille displays and new braille input and output languages in Narrator. For more information, see [Accessibility information for IT professionals](/windows/configuration/windows-accessibility-for-ITPros).


### Additional features
<!--kb5019509-->

- **Tabs for File Explorer**: File Explorer includes tabs to help you organize your File Explorer sessions. 
- **Taskbar overflow menu**: The taskbar offer an entry point to a menu that shows all of your overflowed apps in one spot
- **Suggested actions**: Copied text in certain formats, such as phone numbers or dates, offer suggested actions such as calling the number or adding the event to your calendar.


