---
title: Optimize update delivery for Windows 10 updates (Windows 10)
description: Two methods of peer-to-peer content distribution are available in Windows 10, Delivery Optimization and BranchCache.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: lomayor
ms.localizationpriority: medium
ms.author: lomayor
ms.date: 09/24/2018
ms.reviewer: 
manager: dansimp
ms.topic: article
---

# Optimize Windows 10 update delivery


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq)

When considering your content distribution strategy for Windows 10, think about enabling a form of peer-to-peer content sharing to reduce bandwidth issues during updates. Windows 10 offers two peer-to-peer options for update content distribution: Delivery Optimization and BranchCache. These technologies can be used with several of the servicing tools for Windows 10.

Two methods of peer-to-peer content distribution are available in Windows 10.

- [Delivery Optimization](waas-delivery-optimization.md) is a new peer-to-peer distribution method in Windows 10. Windows 10 clients can source content from other devices on their local network that have already downloaded the updates or from peers over the internet. Using the settings available for Delivery Optimization, clients can be configured into groups, allowing organizations to identify devices that are possibly the best candidates to fulfil peer-to-peer requests.

    Windows Update, Windows Update for Business, and Windows Server Update Services (WSUS) can use Delivery Optimization. Delivery Optimization can significantly reduce the amount of network traffic to external Windows Update sources as well as the time it takes for clients to retrieve the updates.

- [BranchCache](waas-branchcache.md) is a bandwidth optimization technology that is included in some editions of Windows Server 2016 and Windows 10 operating systems, as well as in some editions of Windows Server 2012 R2, Windows 8.1, Windows Server 2012, Windows 8, Windows Server 2008 R2, and Windows 7.

    >[!NOTE]
    >Full BranchCache functionality is supported in Windows 10 Enterprise and Education; Windows 10 Pro supports some BranchCache functionality, including BITS transfers used for servicing operations.

    Windows Server Update Services (WSUS) and System Center Configuration Manager can use BranchCache to allow peers to source content from each other versus always having to contact a server. Using BranchCache, files are cached on each individual client, and other clients can retrieve them as needed. This approach distributes the cache rather than having a single point of retrieval, saving a significant amount of bandwidth while drastically reducing the time that it takes for clients to receive the requested content.

</br></br>

| Method | Windows Update | Windows Update for Business | WSUS | Configuration Manager |
| --- | --- | --- | --- | --- |
| Delivery Optimization | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) |
| BranchCache | ![no](images/crossmark.png) | ![no](images/crossmark.png) |![yes](images/checkmark.png) | ![yes](images/checkmark.png) |

>[!NOTE]
>System Center Configuration Manager has an additional feature called Client Peer Cache that allows peer-to-peer content sharing between clients you use System Center Configuration Manager to manage, in the same Configuration Manager boundary Group. For more information, see [Client Peer Cache](https://docs.microsoft.com/sccm/core/plan-design/hierarchy/client-peer-cache).
>
>In addition to Client Peer Cache, similar functionality is available in the Windows Preinstallation Environment (Windows PE) for imaging-related content. Using this technology, clients imaging with System Center Configuration Manager task sequences can source operating system images, driver packages, boot images, packages, and programs from peers instead of distribution points. For detailed information about how Windows PE Peer Cache works and how to configure it, see [Prepare Windows PE peer cache to reduce WAN traffic in System Center Configuration Manager](https://technet.microsoft.com/library/mt613173.aspx).

## Express update delivery

Windows 10 quality update downloads can be large because every package contains all previously released fixes to ensure consistency and simplicity. Windows has been able to reduce the size of Windows Update downloads with a feature called Express.

>[!NOTE]
>Express update delivery applies to quality update downloads. Starting with Windows 10, version 1709, Express update delivery also applies to feature update downloads for clients connected to Windows Update and Windows Update for Business.

### How Microsoft supports Express
- **Express on System Center Configuration Manager** starting with version 1702 of Configuration Manager and Windows 10, version 1703 or later, or Windows 10, version 1607 with the April 2017 cumulative update.
- **Express on WSUS Standalone**

  Express update delivery is available on [all support versions of WSUS](https://technet.microsoft.com/library/cc708456(v=ws.10).aspx).
- **Express on devices directly connected to Windows Update**
- **Enterprise devices managed using [Windows Update for Business](waas-manage-updates-wufb.md)** also get the benefit of Express update delivery support without any change in configuration.

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
4. **The client downloads these ranges and passes them to the Windows Installer**, which applies the ranges and then determines if additional ranges are needed. This repeats until the Windows installer tells the Windows Update client that all necessary ranges have been downloaded.

At this point, the download is complete and the update is ready to be installed.

>[!TIP]
>Express will **always** be leveraged if your machines are updated regularly with the latest cumulative updates.

## Steps to manage updates for Windows 10

| | |
| --- | --- |
| ![done](images/checklistdone.png) | [Learn about updates and servicing channels](waas-overview.md) |
| ![done](images/checklistdone.png) | [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md) |
| ![done](images/checklistdone.png) | [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md) |
| ![done](images/checklistdone.png) | Optimize update delivery for Windows 10 updates (this topic) |
| ![to do](images/checklistbox.gif) | [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)</br>or [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>or [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md) |


## Related topics


- [Update Windows 10 in the enterprise](index.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Manage device restarts after updates](waas-restart.md)
