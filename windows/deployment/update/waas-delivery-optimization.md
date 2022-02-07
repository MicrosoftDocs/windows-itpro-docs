---
title: What is Delivery Optimization?
manager: dougeby
description: This article provides information about Delivery Optimization, a peer-to-peer distribution method in Windows 10 and Windows 11.
keywords: oms, operations management suite, wdav, updates, downloads, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: carmenf
ms.localizationpriority: medium
ms.author: carmenf
ms.collection:
- M365-modern-desktop
- m365initiative-coredeploy
- highpri
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# What is Delivery Optimization?

**Applies to**

- Windows 10
- Windows 11

> **Looking for Group Policy objects?** See [Delivery Optimization reference](waas-delivery-optimization-reference.md) or the master spreadsheet available at the [Download Center](https://www.microsoft.com/download/details.aspx?id=102158).

Windows updates, upgrades, and applications can contain packages with large files. Downloading and distributing updates can consume quite a bit of network resources on the devices receiving them. You can use Delivery Optimization to reduce bandwidth consumption by sharing the work of downloading these packages among multiple devices in your deployment. Delivery Optimization is a cloud-managed solution that allows clients to download those packages from alternate sources (such as other peers on the network) in addition to the traditional Internet-based servers. You can use Delivery Optimization with Windows Update, Windows Server Update Services (WSUS), Windows Update for Business, or Microsoft Endpoint Manager (when installation of Express Updates is enabled).  

 Access to the Delivery Optimization cloud services and the Internet, are both requirements for using the peer-to-peer functionality of Delivery Optimization.

For information about setting up Delivery Optimization, including tips for the best settings in different scenarios, see [Set up Delivery Optimization](waas-delivery-optimization-setup.md). For a comprehensive list of all Delivery Optimization settings, see [Delivery Optimization reference](waas-delivery-optimization-reference.md).

>[!NOTE]
>WSUS can also use [BranchCache](waas-branchcache.md) for content sharing and caching. If Delivery Optimization is enabled on devices that use BranchCache, Delivery Optimization will be used instead.

## New in Windows 10, version 20H2 and Windows 11

- New peer selection options: Currently the available options include: 0 = None, 1 = Subnet mask, and 2 = Local Peer Discovery. The subnet mask option applies to both Download Modes LAN (1) and Group (2). If Group mode is set, Delivery Optimization will connect to locally discovered peers that are also part of the same Group (have the same Group ID)."
- Local Peer Discovery: a new option for **[Restrict Peer Selection By](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection)** (in Group Policy) or **DORestrictPeerSelectionBy** (in MDM). This option restricts the discovery of local peers using the DNS-SD protocol. When you set Option 2, Delivery Optimization will restrict peer selection to peers that are locally discovered (using DNS-SD). If Group mode is enabled, Delivery Optimization will connect to locally discovered peers that are also part of the same group, for those devices with the same Group ID).

> [!NOTE]
> The Local Peer Discovery (DNS-SD, [RFC 6763](https://datatracker.ietf.org/doc/html/rfc6763)) option can only be set via MDM delivered policies on Windows 11 builds. This feature can be enabled in supported Windows 10 builds by setting the `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization\DORestrictPeerSelectionBy` value to **2**. For more information, see [Delivery Optimization reference](/windows/deployment/update/waas-delivery-optimization-reference.md).

- Starting with Windows 11, the Bypass option of [Download Mode](waas-delivery-optimization-reference.md#download-mode) is no longer used.

## Requirements

The following table lists the minimum Windows 10 version that supports Delivery Optimization:

| Device type | Minimum Windows version
|------------------|---------------|
| Computers running Windows 10 | Win 10 1511 |
| Computers running Server Core installations of Windows Server | Windows Server 2019 |
| Windows IoT devices | Win 10 1803 |

### Types of download content supported by Delivery Optimization

#### Windows Client

| Windows Client | Minimum Windows version | HTTP Downloader | Peer to Peer | Microsoft Connected Cache (MCC)
|------------------|---------------|----------------|----------|----------------|
| Windows Update (feature updates quality updates, language packs, drivers) | Win 10 1511, Win 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Windows 10 Store files | Win 10 1511, Win 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Windows 10 Store for Business files | Win 10 1511, Win 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Windows Defender definition updates | Win 10 1511, Win 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Intune Win32 apps| Win 10 1709, Win 11 | :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |
| Microsoft 365 Apps and updates | Win 10 1709, Win 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Edge Browser Updates | Win 10 1809, Win 11 | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Configuration Manager Express updates| Win 10 1709 + Configuration Manager version Win 10 1711, Win 11 | :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |
| Dynamic updates| Win 10 1903, Win 11 | :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |
| MDM Agent | Win 11 | :heavy_check_mark: | :heavy_check_mark:  | :heavy_check_mark: |
| Xbox Game Pass (PC) | Win 10 1809, Win 11 | :heavy_check_mark: |  | :heavy_check_mark: |
| Windows Package Manager| Win 10 1809, Win 11 | :heavy_check_mark: |  |  |
| MSIX | Win 10 2004, Win 11 | :heavy_check_mark: |  |  |

#### Windows Server

| Windows Server | Minimum Windows version | HTTP Downloader | Peer to Peer | Microsoft Connected Cache (MCC)
|----------------|--------------------------|----------------|----------|----------------|
| Windows Update | Windows Server 2019 (1809) | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| Edge Browser Updates | Windows Server 2019 (1809) | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |

#### Linux (Public Preview)

| Linux ([Public Preview](https://github.com/microsoft/do-client)) | Linux versions | HTTP Downloader | Peer to Peer | Microsoft Connected Cache (MCC)
|------------------------|----------------|-----------------|--------------|---------------|
| Device Update for IoT Hub | Ubuntu 18.04, 20.04 / Debian 9, 10 | :heavy_check_mark: |  | :heavy_check_mark: |
> [!NOTE]
> Starting with Configuration Manager version 1910, you can use Delivery Optimization for the distribution of all Windows update content for clients running Windows 10 version 1709 or newer, not just express installation files. For more, see [Delivery Optimization starting in version 1910](/mem/configmgr/sum/deploy-use/optimize-windows-10-update-delivery#bkmk_DO-1910).

In Windows client Enterprise, Professional, and Education editions, Delivery Optimization is enabled by default for peer-to-peer sharing on the local network (NAT). Specifically, all of the devices must be behind the same NAT (which includes either Ethernet or WiFi), but you can configure it differently in Group Policy and mobile device management (MDM) solutions such as Microsoft Intune. For more information on [Download mode](waas-delivery-optimization-reference.md#download-mode) options.

## How Microsoft uses Delivery Optimization

At Microsoft, to help ensure that ongoing deployments weren't affecting our network and taking away bandwidth for other services, Microsoft IT used a couple of different bandwidth management strategies. Delivery Optimization, peer-to-peer caching enabled through Group Policy, was piloted and then deployed to all managed devices using Group Policy. Based on recommendations from the Delivery Optimization team, we used the "group" configuration to limit sharing of content to only the devices that are members of the same Active Directory domain. The content is cached for 24 hours. More than 76 percent of content came from peer devices versus the Internet.

For more information, check out the [Adopting Windows as a Service at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/851/Adopting-Windows-as-a-service-at-Microsoft) technical case study.

## Using a proxy with Delivery Optimization

If a proxy is being used in your environment, see [Using a proxy with Delivery Optimization](delivery-optimization-proxy.md) to understand the proxy settings needed to properly using Delivery Optimization.

## Delivery Optimization client-service communication explained

To gain a deeper understanding of the Delivery Optimization client-service communication workflow, see [Delivery Optimization client-service communication explained](delivery-optimization-workflow.md)

## Set up Delivery Optimization for Windows

[Learn more](waas-delivery-optimization-setup.md) about the Delivery Optimization settings to ensure proper set up in your environment.

## Delivery Optimization reference

For a complete list of Delivery Optimization settings, see [Delivery Optimization reference](waas-delivery-optimization-reference.md).
