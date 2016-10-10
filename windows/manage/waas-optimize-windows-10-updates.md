---
title: Optimize update delivery for Windows 10 updates (Windows 10)
description: Two methods of peer-to-peer content distribution are available in Windows 10, Delivery Optimization and BranchCache.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Optimize update delivery for Windows 10 updates


**Applies to**

- Windows 10


When considering your content distribution strategy for Windows 10, think about enabling a form of peer-to-peer content sharing to reduce bandwidth issues during updates. Windows 10 offers two peer-to-peer options for update content distribution: Delivery Optimization and BranchCache. These technologies can be used with several of the servicing tools for Windows 10.

Two methods of peer-to-peer content distribution are available in Windows 10. 

- [Delivery Optimization](waas-delivery-optimization.md) is a new peer-to-peer distribution method in Windows 10. Windows 10 clients can source content from other devices on their local network that have already downloaded the updates or from peers over the internet. Using the settings available for Delivery Optimization, clients can be configured into groups, allowing organizations to identify devices that are possibly the best candidates to fulfil peer-to-peer requests. 

    Windows Update, Windows Update for Business, and Windows Server Update Services (WSUS) can use Delivery Optimization. Delivery Optimization can significantly reduce the amount of network traffic to external Windows Update sources as well as the time it takes for clients to retrieve the updates. 

- [BranchCache](waas-branchcache.md) is a bandwidth optimization technology that is included in some editions of the Windows Server 2016 Technical Preview and Windows 10 operating systems, as well as in some editions of Windows Server 2012 R2, Windows 8.1, Windows Server 2012, Windows 8, Windows Server 2008 R2, and Windows 7. 

    >[!NOTE]
    >Full BranchCache functionality is supported in Windows 10 Enterprise and Education; Windows 10 Pro supports some BranchCache functionality, including BITS transfers used for servicing operations.

    Windows Server Update Services (WSUS) and System Center Configuration Manager can use BranchCache to allow peers to source content from each other versus always having to contact a server. Using BranchCache, files are cached on each individual client, and other clients can retrieve them as needed. This approach distributes the cache rather than having a single point of retrieval, saving a significant amount of bandwidth while drastically reducing the time that it takes for clients to receive the requested content. 

</br></br>

| Method | Windows Update | Windows Update for Business | WSUS | Configuration Manager |
| --- | --- | --- | --- | --- |
| Delivery Optimization | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![yes](images/checkmark.png) | ![no](images/crossmark.png) |
| BranchCache | ![no](images/crossmark.png) | ![no](images/crossmark.png) |![yes](images/checkmark.png) | ![yes](images/checkmark.png) |

>[!NOTE]
>Starting with preview version 1604, System Center Configuration Manager has an additional feature called Client Peer Cache that allows peer-to-peer content sharing between clients you use System Center Configuration Manager to manage in the same Configuration Manager boundary group. This is expected to be available in later Configuration Manager current branch releases.
>
>In addition to client content sharing, similar functionality is available in the Windows Preinstallation Environment (Windows PE) for imaging-related content. Using this technology, clients imaging with System Center Configuration Manager task sequences can source operating system images, driver packages, boot images, packages, and programs from peers instead of distribution points. For detailed information about how Windows PE Peer Cache works and how to configure it, see [Prepare Windows PE peer cache to reduce WAN traffic in System Center Configuration Manager](https://technet.microsoft.com/en-us/library/mt613173.aspx).


## Steps to manage updates for Windows 10

<table><tbody>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Learn about updates and servicing branches](waas-overview.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">[Assign devices to servicing branches for Windows 10 updates](waas-servicing-branches-windows-10-updates.md)</td></tr>
<tr><td style="border: 0px;width: 24px">![done](images/checklistdone.png)</td><td align="left" style="border: 0px">Optimize update delivery for Windows 10 updates (this topic)</td></tr>
<tr><td style="border: 0px;width: 24px">![to do](images/checklistbox.gif)</td><td align="left" style="border: 0px">[Manage updates using Windows Update for Business](waas-manage-updates-wufb.md)</br>
or [Manage Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)</br>
or [Manage Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)</td></tr>
</tbody></table>
</br>



## Related topics

- [Update Windows 10 in the enterprise](waas-update-windows-10.md)
- [Manage updates for Windows 10 Mobile Enterprise](waas-mobile-updates.md) 
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)


