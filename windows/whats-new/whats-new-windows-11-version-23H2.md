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

Devices updating from Windows 11, version 22H2 will use an enablement package. The majority of the files for the 23H2 update will already exist on Windows 11, version 22H2 devices that have installed a recent monthly security update. These files and features are just in an inactive and dormant state. These new features will remain dormant until they are turned on through the enablement package, a small, quick-to-install switch that activates the Windows 11, version 23H2 features.

Windows 11, version 23H2 is available through Windows Server Update Services (including Configuration Manager), Windows Update for Business, and the Volume Licensing Service Center (VLSC). For more information, see [How to get the Windows 11, version 23H2 update](https://aka.ms/W11/how-to-get-23H2). Review the [Windows 11, version 23H2 Windows IT Pro blog post](https://aka.ms/new-in-23H2) to discover information about available deployment resources such as the [Windows Deployment Kit (Windows ADK)](/windows-hardware/get-started/adk-install).


To learn more about the status of the update rollout, known issues, and new information, see [Windows release health](/windows/release-health/).

## Features no longer under temporary enterprise control

[Temporary enterprise feature control](temporary-enterprise-feature-control.md) temporarily turns off certain features that were introduced during monthly cumulative updates for managed Windows 11, version 22H2 devices. For the purposes of temporary enterprise control, a system is considered managed if it's configured to get updates from Windows Update for Business or [Windows Server Update Services (WSUS)](/windows-server/administration/windows-server-update-services/get-started/windows-server-update-services-wsus). Clients that get updates from Microsoft Configuration Manager and Microsoft Intune are considered managed since their updates ultimately come from WSUS or Windows Updates for Business.

When a manged Windows 11, version 22H2 device installs version 23H2, the following features will no longer under be under temporary enterprise feature control:

| Feature | KB article where the feature was introduced | 
|---|---|
| Touch-optimized taskbar for 2-in-1 devices <!--8092554, WIP.25197--> | [February 28, 2023 - KB5022913](https://support.microsoft.com/topic/february-28-2023-kb5022913-os-build-22621-1344-preview-3e38c0d9-924d-4f3f-b0b6-3bd49b2657b9)  | 
| Selecting **Uninstall** for a Win32 app from the right-click menu uses the **Installed Apps** page in **Settings** rather than **Programs and Features** under the **Control Panel** <!--8092554, WIP.25300-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  | 
| Windows Spotlight provides a minimized experience, opportunities to learn more about each image, and allows users to preview images at full screen.<!--8092554, WIP.23511 & WIP.25281, AllowWindowsSpotlight-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  |
| Copilot in Windows <!--8092554, WIP.23493 -->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  |
| Dev Home <!--8092554, WIP.23506-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  |
|Dev Drive <!--8092554, WIP.23466-->| [September 2023 - KB5030310](https://support.microsoft.com/kb/5030310)  | 

## Feature1