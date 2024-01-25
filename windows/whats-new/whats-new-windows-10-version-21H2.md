---
title: What's new in Windows 10, version 21H2 for IT pros
description: Learn more about what's new in Windows 10 version 21H2, including servicing updates, Windows Subsystem for Linux, the latest CSPs, and more.
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
ms.date: 12/31/2017
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10, version 21H2</a>
---

# What's new in Windows 10, version 21H2

Windows 10, version 21H2 is the next feature update. This article lists the new and updated features IT Pros should know. Windows 10, version 21H2 is also known as the Windows 10 November 2021 Update. It includes all features and fixes in previous cumulative updates to Windows 10, version 21H1.

Windows 10, version 21H2 is an [H2-targeted release](/lifecycle/faq/windows#what-is-the-servicing-timeline-for-a-version--feature-update--of-windows-10-), and has the following servicing schedule:

- **Windows 10 Professional**: Serviced for 18 months from the release date.
- **Windows 10 Enterprise**: Serviced for 30 months from the release date.

Windows 10, version 21H2 is available through Windows Server Update Services (including Configuration Manager), Windows Update for Business, and the Volume Licensing Service Center (VLSC). For more information, see [How to get the Windows 10 November 2021 Update](https://blogs.windows.com/windowsexperience/2021/11/16/how-to-get-the-windows-10-november-2021-update/) and [IT tools to support Windows 10, version 21H2 blog](https://aka.ms/tools-for-21h2).

Devices running Windows 10, versions 2004, 20H2, and 21H1 can update quickly to version 21H2 using an enablement package. For more information, see [Feature Update through Windows 10, version 21H2 Enablement Package](https://support.microsoft.com/help/5003791).

To learn more about the status of the November 2021 Update rollout, known issues, and new information, see [Windows release health](/windows/release-health/).

## Updates and servicing

Windows 10, version 21H2 feature updates are installed annually using the General Availability Channel. Previous feature updates were installed using the General Availability Channel. For more information on this change, see the [How to get the Windows 10 November 2021 Update](https://blogs.windows.com/windowsexperience/?p=176473).

Quality updates are still installed monthly on the second Tuesday of the month.

For more information, see:

- [Feature and quality update definitions](/windows/deployment/update/waas-quick-start#definitions)
- [Windows servicing channels](/windows/deployment/update/waas-overview#servicing-channels)

## GPU compute support for the Windows Subsystem for Linux

Starting with Windows 10 version 21H2, the Windows Subsystem for Linux has full graphics processing unit (GPU) compute support. It was available to Windows Insiders, and is now available to everyone. The Linux binaries can use your Windows GPU, and run different workloads, including artificial intelligence (AI) and machine learning (ML) development workflows.

For more information, and what GPU compute support means for you, see the [GPU accelerated ML training inside the Windows Subsystem for Linux blog post](https://blogs.windows.com/windowsdeveloper/2020/06/17/gpu-accelerated-ml-training-inside-the-windows-subsystem-for-linux/).

## Get the latest CSPs

The [KB5005101  September 1, 2021 update](https://support.microsoft.com/topic/september-1-2021-kb5005101-os-builds-19041-1202-19042-1202-and-19043-1202-preview-82a50f27-a56f-4212-96ce-1554e8058dc1) includes about 1400 CSPs that were made available to MDM providers.

These CSPs are built in to Windows 10, version 21H2. These settings are available in Microsoft Intune in the [Settings Catalog](/mem/intune/configuration/settings-catalog). [Group Policy analytics](/mem/intune/configuration/group-policy-analytics) also includes these GPOs in its analysis.

For more information on the CSPs, see the [Configuration service provider reference](/windows/client-management/mdm/configuration-service-provider-reference).

## Apps appear local with Azure Virtual Desktop

Azure virtual desktop is a Windows client OS hosted in the cloud, and runs virtual apps. You use the cloud to deliver virtual apps in real time, and as-needed. Users use the apps as if they're installed locally.

You can create Azure virtual desktops that run Windows 10 version 21H2.

For more information, see:

- [What is Azure Virtual Desktop?](/azure/virtual-desktop/overview)
- [What's new in Azure Virtual Desktop?](/azure/virtual-desktop/whats-new)
- [Set up MSIX app attach with the Azure portal](/azure/virtual-desktop/app-attach-azure-portal)

## Wi-Fi WPA3-Personal H2E support

Wi-Fi WPA3-Personal H2E (Hash-to-Element) support is built in to Windows 10, version 21H2.

## Related articles

- [Release notes for Microsoft Edge Stable Channel](/deployedge/microsoft-edge-relnote-stable-channel)
