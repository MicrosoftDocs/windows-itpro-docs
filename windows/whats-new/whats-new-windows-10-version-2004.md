---
title: What's new in Windows 10, version 2004
description: New and updated IT Pro content about new features in Windows 10, version 2004 (also known as the Windows 10 May 2020 Update).
keywords: ["What's new in Windows 10", "Windows 10", "May 2020 Update"]
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

# What's new in Windows 10, version 2004 IT Pro content

**Applies to**
-   Windows 10, version 1909

This article lists new and updated features and content that are of interest to IT Pros for Windows 10, version 1909, also known as the Windows 10 November 2019 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 1903. 

## Servicing





### Windows Server Update Services (WSUS)

 

### Windows Update for Business (WUfB)



## Security

### Windows Defender Credential Guard



### Microsoft BitLocker



### Key-rolling and Key-rotation



### Transport Layer Security (TLS)



## Virtualization

### Containers on Windows

This update includes 5 fixes to allow the host to run down-level containers on up-level for process (Argon) isolation. Previously [Containers on Windows](https://docs.microsoft.com/virtualization/windowscontainers/) required matched host and container version. This limited Windows containers from supporting mixed-version container pod scenarios.

### Windows Sandbox

[Windows Sandbox](https://techcommunity.microsoft.com/t5/Windows-Kernel-Internals/Windows-Sandbox/ba-p/301849) is an isolated desktop environment where you can install software without the fear of lasting impact to your device. This feature is available in Windows 10, version 1903. In Windows 10, version 1909 you have even more control over the level of isolation.

## Windows Virtual Desktop

[Windows Virtual Desktop](https://docs.microsoft.com/azure/virtual-desktop/overview) (WVD) is now generally available globally!

Windows Virtual Desktop is a comprehensive desktop and app virtualization service running in the cloud. It’s the only virtual desktop infrastructure (VDI) that delivers simplified management, multi-session Windows 10, optimizations for Microsoft 365 Apps for enterprise, and support for Remote Desktop Services (RDS) environments. Deploy and scale your Windows desktops and apps on Azure in minutes, and get built-in security and compliance features. Windows Virtual Desktop requires a Microsoft E3 or E5 license, or a Microsoft 365 E3 or E5 license, as well as an Azure tenant.

## Deployment

#### Microsoft Endpoint Manager

Configuration Manager, Intune, Desktop Analytics, Co-Management, and Device Management Admin Console are now are [Microsoft Endpoint Manager](https://docs.microsoft.com/configmgr/). See the Nov. 4 2019 [announcement](https://www.microsoft.com/microsoft-365/blog/2019/11/04/use-the-power-of-cloud-intelligence-to-simplify-and-accelerate-it-and-the-move-to-a-modern-workplace/). Also see [Modern management and security principles driving our Microsoft Endpoint Manager vision](https://techcommunity.microsoft.com/t5/Enterprise-Mobility-Security/Modern-management-and-security-principles-driving-our-Microsoft/ba-p/946797).

### Windows 10 Pro and Enterprise in S mode

 You can now deploy and run traditional Win32 (desktop) apps without leaving the security of S mode by configuring the Windows 10 in S mode policy to support Win32 apps, and deploy them with Mobile Device Management (MDM) software such as Microsoft Intune. For more information, see [Allow Line-of-Business Win32 Apps on Intune-Managed S Mode Devices](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-application-control/lob-win32-apps-on-s).

### SetupDiag

[SetupDiag](https://docs.microsoft.com/windows/deployment/upgrade/setupdiag) version 1.6.0.42 is available.

SetupDiag is a command-line tool that can help diagnose why a Windows 10 update failed. SetupDiag works by searching Windows Setup log files. When searching log files, SetupDiag uses a set of rules to match known issues. In the current version of SetupDiag there are 53 rules contained in the rules.xml file, which is extracted when SetupDiag is run. The rules.xml file will be updated as new versions of SetupDiag are made available.        .

### Windows Assessment and Deployment Toolkit (ADK)

A new [Windows ADK](https://docs.microsoft.com/windows-hardware/get-started/adk-install) will **not be released** for Windows 10, version 1909. You can use the Windows ADK for Windows 10, version 1903 to deploy Windows 10, version 1909.

## Desktop Analytics

[Desktop Analytics](https://docs.microsoft.com/configmgr/desktop-analytics/overview) is now generally available globally! Desktop Analytics is a cloud-connected service, integrated with Configuration Manager, which gives you data-driven insights to the management of your Windows endpoints. It provides insight and intelligence that you can use to make more informed decisions about the update readiness of your Windows endpoints. Desktop Analytics requires a Windows E3 or E5 license, or a Microsoft 365 E3 or E5 license.

## Microsoft Connected Cache

Together with Delivery Optimization, [Microsoft Connected Cache](https://techcommunity.microsoft.com/t5/Windows-IT-Pro-Blog/Introducing-Microsoft-Connected-Cache-Microsoft-s-cloud-managed/ba-p/963898) installed on Windows Server or Linux can seamlessly offload your traffic to local sources, caching content efficiently at the byte range level. Connected Cache is configured as a “configure once and forget it” solution that transparently caches content that your devices on your network need.

## Accessibility

This release adds the ability for Narrator and other assistive technologies to read and learn where the FN key is located on keyboards and what state it is in (locked versus unlocked).

## Processor requirements and enhancements

### Requirements

[Windows Processor Requirements](https://docs.microsoft.com/windows-hardware/design/minimum/windows-processor-requirements) have been updated for this version of Windows.

### Favored CPU Core Optimization

This version of Windows 10 will include optimizations to how instructions are processed by the CPU in order to increase the performance and reliability of the operating system and its applications.

When a CPU is manufactured, not all of the cores are created equal. Some of the cores may have slightly different voltage and power characteristics that could allow them to get a "boost" in performance. These cores are called "favored cores" as they can offer better performance than the other cores on the die.

With Intel Turbo Boost Max Technology 3.0, an operating system will use information stored in the CPU to identify which cores are the fastest and then push more of the CPU intensive tasks to those cores. According to Intel, this technology "delivers more than 15% better single-threaded performance".

### Debugging

Additional debugging capabilities for newer Intel processors have been added in this release. This is only relevant for hardware manufacturers.

### Efficiency

General battery life and power efficiency improvements for PCs with certain processors have been added in this release.

## See Also

[What's New in Windows Server](https://docs.microsoft.com/windows-server/get-started/whats-new-in-windows-server): New and updated features in Windows Server.<br>
[Windows 10 Features](https://www.microsoft.com/windows/features): General information about Windows 10 features.<br>
[What's New in Windows 10](https://docs.microsoft.com/windows/whats-new/): See what’s new in other versions of Windows 10.<br>
[What Windows 10, version 1909 Means for Developers](https://blogs.windows.com/windowsdeveloper/2019/10/16/what-windows-10-version-1909-means-for-developers/): New and updated features in Windows 10 that are of interest to developers.<br>
[What's new in Windows 10, version 1909 - Windows Insiders](https://docs.microsoft.com/windows-insider/at-home/whats-new-wip-at-home-1909): This list also includes consumer focused new features.<br>
[Features and functionality removed in Windows 10](https://docs.microsoft.com/windows/deployment/planning/windows-10-removed-features): Removed features.<br>
[Windows 10 features we’re no longer developing](https://docs.microsoft.com/windows/deployment/planning/windows-10-deprecated-features): Features that are not being developed.<br>
[How to get the Windows 10 November 2019 Update](https://aka.ms/how-to-get-1909): John Cable blog.<br>
[How to get Windows 10, Version 1909: Enablement Mechanics](https://aka.ms/1909mechanics): Mechanics blog.<br>
[What’s new for IT pros in Windows 10, version 1909](https://aka.ms/whats-new-in-1909): Windows IT Pro blog.<br>
