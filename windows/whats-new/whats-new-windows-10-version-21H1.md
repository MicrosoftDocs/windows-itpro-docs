---
title: What's new in Windows 10, version 21H1
description: New and updated features in Windows 10, version 21H1 (also known as the Windows 10 May 2021 Update).
keywords: ["What's new in Windows 10", "Windows 10", "May 2021 Update"]
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

# What's new in Windows 10, version 21H1 for IT Pros

**Applies to**
-   Windows 10, version 21H1

This article lists new and updated features and content that is of interest to IT Pros for Windows 10, version 21H1, also known as the Windows 10 Map 2021 Update. This update also contains all features and fixes included in previous cumulative updates to Windows 10, version 20H2.

Windows 10, version 21H1 is a scoped set of features for select performance improvements, enterprise features, and quality enhancements. As an [H1-targeted release](https://docs.microsoft.com/lifecycle/faq/windows#what-is-the-servicing-timeline-for-a-version--feature-update--of-windows-10-), 21H1 is serviced for 18 months from the release date for devices running Windows 10 Enterprise or Windows 10 Education editions. 

To download and install Windows 10, version 21H1, use Windows Update (**Settings > Update & Security > Windows Update**). 

## Microsoft Edge

This release automatically includes the new Chromium-based [Microsoft Edge](https://www.microsoft.com/edge/business) browser instead of the legacy version of Edge.  For more information, see the [Microsoft Edge documentation](/microsoft-edge/).

## Servicing

### Windows Update

There are several changes that help improve the security of devices that scan Windows Server Update Services (WSUS) for updates. For more information, see [Changes to improve security for Windows devices scanning WSUS](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/changes-to-improve-security-for-windows-devices-scanning-wsus/ba-p/1645547).

Starting with Windows 10, version 20H2, LCUs and SSUs have been combined into a single cumulative monthly update, available via Microsoft Catalog or Windows Server Update Services. For more information, see [Simplifying on-premises deployment of servicing stack updates](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/simplifying-on-premises-deployment-of-servicing-stack-updates/ba-p/1646039).

## Deployment

New guidance is available to help 

### Windows Autopilot



### Windows Assessment and Deployment Toolkit (ADK)

There is no new ADK for Windows 10, version 20H2. The ADK for Windows 10, version 2004 will also work with Windows 10, version 20H2.  For more information, see [Download and install the Windows ADK](/windows-hardware/get-started/adk-install).

## Device management



## Security

### Windows Defender Application Guard (WDAG)

WDAG performance improvements including optimizing document opening scenario times.

“We fixed an issue that causes a one minute or more delay when you open a Microsoft Defender Application Guard (WDAG) Office document. This occurs when you try to open a file using a Universal Naming Convention (UNC) path or Server Message Block (SMB) share link.”

### Microsoft Defender Application Guard for Office

Microsoft Defender Application Guard now supports Office: With [Microsoft Defender Application Guard for Office](/microsoft-365/security/office-365-security/install-app-guard), you can launch untrusted Office documents (from outside the Enterprise) in an isolated container to prevent potentially malicious content from compromising your device.

### Windows Hello

Windows Hello multi-camera support to allow users to choose an external camera priority when using high end displays with integrated cameras.

## Virtualization

### Windows Sandbox



## Windows Shell



### 2-in-1 PCs

On a 2-in-1 device, Windows will now automatically switch to tablet mode when you detach the screen.

## Surface







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