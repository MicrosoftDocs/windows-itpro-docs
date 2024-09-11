---
title: What is Delivery Optimization?
description: This article provides information about Delivery Optimization, a peer-to-peer distribution method in Windows 10 and Windows 11.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
author: cmknox
ms.author: carmenf
manager: aaroncz
ms.reviewer: mstewart
ms.collection:
  - tier3
  - highpri
ms.localizationpriority: medium
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 05/23/2024
---

# What is Delivery Optimization?

> **Looking for Group Policy objects?** See [Delivery Optimization reference](waas-delivery-optimization-reference.md) or the master spreadsheet available at the Download Center [for Windows 11](https://www.microsoft.com/en-us/download/details.aspx?id=104594) or [for Windows 10](https://www.microsoft.com/en-us/download/details.aspx?id=104678).

Windows updates, upgrades, and applications can contain packages with large files. Downloading and distributing updates can consume quite a bit of network resources on the devices receiving them. Delivery Optimization is a reliable HTTP downloader with a cloud-managed solution that allows Windows devices to download those packages from alternate sources if desired (such as other devices on the network and/or a dedicated cache server) in addition to the traditional internet-based servers (referred to as 'HTTP sources' throughout Delivery Optimization documents). You can use Delivery Optimization to reduce bandwidth consumption by sharing the work of downloading these packages among multiple devices in your deployment however, the use of peer-to-peer is optional.

To use either the peer-to-peer functionality or the Microsoft Connected Cache features, devices must have access to the Internet and Delivery Optimization cloud services. When Delivery Optimization is configured to use peers and Microsoft Connected Cache (MCC), to achieve the best possible content delivery experience, the client connects to MCC and peers in parallel. If the desired content can't be obtained from MCC or peers, Delivery Optimization seamlessly falls back to the HTTP source to get the requested content.

You can use Delivery Optimization with Windows Update, Windows Server Update Services (WSUS), Microsoft Intune/Windows Update for Business, or Microsoft Configuration Manager (when installation of Express Updates is enabled).

For information about setting up Delivery Optimization, including tips for the best settings in different scenarios, see [Set up Delivery Optimization](delivery-optimization-configure.md). For a comprehensive list of all Delivery Optimization settings, see [Delivery Optimization reference](waas-delivery-optimization-reference.md).

> [!NOTE]
> WSUS can also use [BranchCache](../update/waas-branchcache.md) for content sharing and caching. If Delivery Optimization is enabled on devices that use BranchCache, Delivery Optimization will be used instead.

## Requirements

The following table lists the minimum Windows 10 version that supports Delivery Optimization:

| Device type | Minimum Windows version
|------------------|---------------|
| Computers running Windows 10 | Windows 10 1511 |
| Computers running Server Core installations of Windows Server | Windows Server 2019 |
| Windows IoT devices | Windows 10 1803 |

### Types of download content supported by Delivery Optimization

#### Windows Client

| Windows Client | Minimum Windows version | HTTP Downloader | Peer to Peer | Microsoft Connected Cache (MCC) |
|------------------|---------------|----------------|----------|----------------|
| Windows Update ([feature updates quality updates, language packs, drivers](../update/get-started-updates-channels-tools.md#types-of-updates)) | Windows 10 1511, Windows 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Windows 10/11 UWP Store apps | Windows 10 1511, Windows 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Windows 11 Win32 Store apps | Windows 11 | :heavy_check_mark: | |
| Windows Defender definition updates | Windows 10 1511, Windows 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Intune Win32 apps| Windows 10 1709, Windows 11 | :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |
| Microsoft 365 Apps and updates | Windows 10 1709, Windows 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Edge Browser Updates | Windows 10 1809, Windows 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Configuration Manager Express updates| Windows 10 1709 + Configuration Manager version 1711, Windows 11 | :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |
| Dynamic updates| Windows 10 1903, Windows 11 | :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |
| MDM Agent | Windows 11 | :heavy_check_mark: | | |
| Xbox Game Pass (PC) | Windows 10 1809, Windows 11 | :heavy_check_mark: |  | :heavy_check_mark: |
| Windows Package Manager| Windows 10 1809, Windows 11 | :heavy_check_mark: | | |
| MSIX Installer| Windows 10 2004, Windows 11 | :heavy_check_mark: |  | |
| Teams (via MSIX Installer) | Windows 10 2004, Windows 11 | :heavy_check_mark: | | |

#### Windows Server

| Windows Server | Minimum Windows version | HTTP Downloader | Peer to Peer | Microsoft Connected Cache (MCC) |
|----------------|--------------------------|----------------|----------|----------------|
| Windows Update | Windows Server 2019 (1809) | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Edge Browser Updates | Windows Server 2019 (1809) | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |

#### Linux (Public Preview)

| Linux ([Public Preview](https://github.com/microsoft/do-client)) | Linux versions | HTTP Downloader | Peer to Peer | Microsoft Connected Cache (MCC) |
|------------------------|----------------|-----------------|--------------|---------------|
| Device Update for IoT Hub | Ubuntu 18.04, 20.04 / Debian 9, 10 | :heavy_check_mark: |  | :heavy_check_mark: |
> [!NOTE]
> Starting with Configuration Manager version 1910, you can use Delivery Optimization for the distribution of all Windows update content for clients running Windows 10 version 1709 or newer, not just express installation files. For more, see [Delivery Optimization starting in version 1910](/mem/configmgr/sum/deploy-use/optimize-windows-10-update-delivery#bkmk_DO-1910).

In Windows client Enterprise, Professional, and Education editions, Delivery Optimization is enabled by default for peer-to-peer sharing on the local network (NAT). Specifically, all of the devices must be behind the same NAT (which includes either Ethernet or WiFi), but you can configure it differently in Group Policy and mobile device management (MDM) solutions such as Microsoft Intune. For more information on [Download mode](waas-delivery-optimization-reference.md#download-mode) options.

## How Microsoft uses Delivery Optimization

At Microsoft, to help ensure that ongoing deployments weren't affecting our network and taking away bandwidth for other services, Microsoft IT used a couple of different bandwidth management strategies. Delivery Optimization, peer-to-peer caching enabled through Group Policy, was piloted and then deployed to all managed devices using Group Policy. Based on recommendations from the Delivery Optimization team, we used the "group" configuration to limit sharing of content to only the devices that are members of the same Active Directory domain. The content is cached for 24 hours. More than 76 percent of content came from peer devices versus the Internet.

For more information, check out the [Adopting Windows as a Service at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/851/Adopting-Windows-as-a-service-at-Microsoft) technical case study.

## Using a proxy with Delivery Optimization

If a proxy is being used in your environment, see [Using a proxy with Delivery Optimization](delivery-optimization-proxy.md) to understand the proxy settings needed to properly using Delivery Optimization.

## Delivery Optimization client-service communication explained

To gain a deeper understanding of the Delivery Optimization client-service communication workflow, see [Delivery Optimization client-service communication explained](delivery-optimization-workflow.md)

## Set up Delivery Optimization for Windows

[Learn more](delivery-optimization-configure.md) about the Delivery Optimization settings to ensure proper setup in your environment.

## Delivery Optimization reference

For a complete list of Delivery Optimization settings, see [Delivery Optimization reference](waas-delivery-optimization-reference.md).

## New in Windows 10, version 20H2 and Windows 11

See [What's new in Delivery Optimization](whats-new-do.md)
