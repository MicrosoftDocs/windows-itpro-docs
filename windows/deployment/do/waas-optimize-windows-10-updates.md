---
title: Optimize Windows update delivery
description: Learn about the two methods of peer-to-peer content distribution that are available, Delivery Optimization and BranchCache.
ms.service: windows-client
ms.topic: conceptual
ms.subservice: itpro-updates
ms.author: carmenf
author: cmknox
ms.reviewer: mstewart
manager: aaroncz
ms.collection: tier3
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 05/23/2024
---

# Optimize Windows update delivery

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

When considering your content distribution strategy for Windows 10, think about enabling a form of peer-to-peer content sharing to reduce bandwidth issues during updates. Windows client offers two peer-to-peer options for update content distribution: Delivery Optimization and BranchCache. These technologies can be used with several of the servicing tools for Windows client.

Two methods of peer-to-peer content distribution are available.

- [Delivery Optimization](waas-delivery-optimization.md) is a peer-to-peer distribution method in Windows. Windows clients can source content from other devices on their local network that have already downloaded the updates or from peers over the internet. Using the settings available for Delivery Optimization, clients can be configured into groups, allowing organizations to identify devices that are possibly the best candidates to fulfill peer-to-peer requests.

    Windows Update, Windows Update for Business, and Windows Server Update Services (WSUS) can use Delivery Optimization. Delivery Optimization can significantly reduce the amount of network traffic to external Windows Update sources and the time it takes for clients to retrieve the updates.

- [BranchCache](../update/waas-branchcache.md) is a bandwidth optimization technology that is included in some editions of Windows Server 2016 and Windows operating systems, and in some editions of Windows Server 2012 R2, Windows 8.1, Windows Server 2012, Windows 8, Windows Server 2008 R2, and Windows 7.

    >[!NOTE]
    >Full BranchCache functionality is supported in Windows 10 Enterprise and Education; Windows 10 Pro supports some BranchCache functionality, including BITS transfers used for servicing operations.

    Windows Server Update Services (WSUS) and Microsoft Configuration Manager can use BranchCache to allow peers to source content from each other versus always having to contact a server. Using BranchCache, files are cached on each individual client, and other clients can retrieve them as needed. This approach distributes the cache rather than having a single point of retrieval, saving a significant amount of bandwidth while drastically reducing the time that it takes for clients to receive the requested content.

<br/><br/>

| Method | Windows Update | Windows Update for Business | WSUS | Configuration Manager |
| --- | --- | --- | --- | --- |
| Delivery Optimization | Yes | Yes | Yes | Yes |
| BranchCache | No | No |Yes | Yes |

> [!NOTE]
> Microsoft Configuration Manager has an additional feature called Client Peer Cache that allows peer-to-peer content sharing between clients you use Configuration Manager to manage, in the same Configuration Manager boundary Group. For more information, see [Client Peer Cache](/configmgr/core/plan-design/hierarchy/client-peer-cache).
>
> In addition to Client Peer Cache, similar functionality is available in the Windows Pre-installation Environment (Windows PE) for imaging-related content. Using this technology, clients imaging with Configuration Manager task sequences can source operating system images, driver packages, boot images, packages, and programs from peers instead of distribution points. For detailed information about how Windows PE Peer Cache works and how to configure it, see [Prepare Windows PE peer cache to reduce WAN traffic in Microsoft Configuration Manager](/configmgr/osd/get-started/prepare-windows-pe-peer-cache-to-reduce-wan-traffic).

## Express update delivery

Windows client quality update downloads can be large because every package contains all previously released fixes to ensure consistency and simplicity. Windows has been able to reduce the size of Windows Update downloads with a feature called Express.

> [!NOTE]
> Express update delivery applies to quality update downloads. Starting with Windows 10, version 1709, Express update delivery also applies to feature update downloads for clients connected to Windows Update and Windows Update for Business.

### How Microsoft supports Express

- **Express on Microsoft Configuration Manager** starting with version 1702 of Configuration Manager and Windows 10, version 1703 or later, or Windows 10, version 1607 with the April 2017 cumulative update.
- **Express on WSUS Standalone**

  Express update delivery is available on [all support versions of WSUS](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc708456(v=ws.10)).
- **Express on devices directly connected to Windows Update**
- **Enterprise devices managed using [Windows Update for Business](../update/waas-manage-updates-wufb.md)** also get the benefit of Express update delivery support without any change in configuration.

### How Express download works

For OS updates that support Express, there are two versions of the file payload stored on the service:

1. **Full-file version** - essentially replacing the local versions of the update binaries.
2. **Express version** - containing the deltas needed to patch the existing binaries on the device.

Both the full-file version and the Express version are referenced in the update's metadata, which has been downloaded to the client as part of the scan phase.

**Express download works as follows:**

The Windows Update client will try to download Express first, and under certain situations fall back to full-file if needed (for example, if going through a proxy that doesn't support byte range requests).

1. When the Windows Update client initiates an Express download, **Windows Update first downloads a stub**, which is part of the Express package.
2. **The Windows Update client passes this stub to the Windows installer**, which uses the stub to do a local inventory, comparing the deltas of the file on the device with what is needed to get to the latest version of the file being offered.
3. **The Windows installer then requests the Windows Update client to download the ranges**, which have been determined to be required.
4. **The client downloads these ranges and passes them to the Windows Installer**, which applies the ranges and then determines if more ranges are needed. This step repeats until the Windows installer tells the Windows Update client that all necessary ranges have been downloaded.

At this point, the download is complete and the update is ready to be installed.

> [!TIP]
> Express will **always** be leveraged if your machines are updated regularly with the latest cumulative updates.

## Steps to manage updates for Windows client

|&nbsp; |&nbsp; |
| --- | --- |
| ✅| [Learn about updates and servicing channels](../update/waas-overview.md) |
| ✅ | [Prepare servicing strategy for Windows client updates](../update/waas-servicing-strategy-windows-10-updates.md) |
| ✅ | [Build deployment rings for Windows client updates](../update/waas-deployment-rings-windows-10-updates.md) |
| ✅| [Assign devices to servicing channels for Windows client updates](../update/waas-servicing-channels-windows-10-updates.md) |
| ✅ | Optimize update delivery for Windows 10 updates (this article) |
|  | [Deploy updates using Windows Update for Business](../update/waas-manage-updates-wufb.md)<br/>or [Deploy Windows client updates using Windows Server Update Services](../update/waas-manage-updates-wsus.md)<br/>or [Deploy Windows client updates using Microsoft Configuration Manager](/mem/configmgr/osd/deploy-use/manage-windows-as-a-service) |
