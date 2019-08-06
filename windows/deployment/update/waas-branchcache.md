---
title: Configure BranchCache for Windows 10 updates (Windows 10)
description: Use BranchCache to optimize network bandwidth during update deployment.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
audience: itproauthor: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.date: 07/27/2017
ms.reviewer: 
manager: laurawi
ms.topic: article
---

# Configure BranchCache for Windows 10 updates


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

BranchCache is a bandwidth-optimization feature that has been available since the Windows Server 2008 R2 and Windows 7 operating systems. Each client has a cache and acts as an alternate source for content that devices on its own network request. Windows Server Update Services (WSUS) and System Center Configuration Manager can use BranchCache to optimize network bandwidth during update deployment, and it’s easy to configure for either of them. BranchCache has two operating modes: Distributed Cache mode and Hosted Cache mode. 

- Distributed Cache mode operates like the [Delivery Optimization](waas-delivery-optimization.md) feature in Windows 10: each client contains a cached version of the BranchCache-enabled files it requests and acts as a distributed cache for other clients requesting that same file. 

    >[!TIP]
    >Distributed Cache mode is preferred to Hosted Cache mode for Windows 10 updates to get the most benefit from peer-to-peer distribution. 

- In Hosted Cache mode, designated servers at specific locations act as a cache for files requested by clients in its area. Then, rather than clients retrieving files from a latent source, the hosted cache server provides the content on its behalf. 

For detailed information about how Distributed Cache mode and Hosted Cache mode work, see [BranchCache Overview](https://technet.microsoft.com/library/dd637832(v=ws.10).aspx). 

## Configure clients for BranchCache

Whether you use BranchCache with Configuration Manager or WSUS, each client that uses BranchCache must be configured to do so. You typically make your configurations through Group Policy. For step-by-step instructions on how to use Group Policy to configure BranchCache for Windows clients, see [Client Configuration](https://technet.microsoft.com/library/dd637820%28v=ws.10%29.aspx) in the [BranchCache Early Adopter’s Guide](https://technet.microsoft.com/library/dd637762(v=ws.10).aspx).

In Windows 10, version 1607, the Windows Update Agent uses Delivery Optimization by default, even when the updates are retrieved from WSUS. When using BranchCache with Windows 10, simply set the Delivery Optimization mode to Bypass to allow clients to use the Background Intelligent Transfer Service (BITS) protocol with BranchCache instead. For instructions on how to use BranchCache in Distributed Cache mode with WSUS, see the section WSUS and Configuration Manager with BranchCache in Distributed Cache mode.

## Configure servers for BranchCache

You can use WSUS and Configuration Manager with BranchCache in Distributed Cache mode. BranchCache in Distributed Cache mode is easy to configure for both WSUS and System Center Configuration Manager. 

For a step-by-step guide to configuring BranchCache on Windows Server devices, see the [BranchCache Deployment Guide (Windows Server 2012)](https://technet.microsoft.com/library/jj572990) or [BranchCache Deployment Guide (Windows Server 2016)](https://technet.microsoft.com/windows-server-docs/networking/branchcache/deploy/branchcache-deployment-guide).

In addition to these steps, there is one requirement for WSUS to be able to use BranchCache in either operating mode: the WSUS server must be configured to download updates locally on the server to a shared folder. This way, you can select BranchCache publication for the share. For Configuration Manager, you can enable BranchCache on distribution points; no other server-side configuration is necessary for Distributed Cache mode.

>[!NOTE]
>Configuration Manager only supports Distributed Cache mode.


## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure Delivery Optimization for Windows 10 updates](waas-delivery-optimization.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)
