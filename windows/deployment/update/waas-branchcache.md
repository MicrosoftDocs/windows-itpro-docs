---
title: Configure BranchCache for Windows client updates
description: In this article, learn how to use BranchCache to optimize network bandwidth during update deployment.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
author: mestew
ms.author: mstewart
manager: aaroncz
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 11/16/2023
---

# Configure BranchCache for Windows client updates

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

BranchCache is a bandwidth-optimization feature that has been available since the Windows Server 2008 R2 and Windows 7 operating systems. Each client has a cache and acts as an alternate source for content that devices on its own network request. Windows Server Update Services (WSUS) and Microsoft Configuration Manager can use BranchCache to optimize network bandwidth during update deployment, and it's easy to configure for either of them. BranchCache has two operating modes: Distributed Cache mode and Hosted Cache mode. 

- Distributed Cache mode operates like the [Delivery Optimization](../do/waas-delivery-optimization.md) feature in Windows client: each client contains a cached version of the BranchCache-enabled files it requests and acts as a distributed cache for other clients requesting that same file. 

    > [!TIP]
    > Distributed Cache mode is preferred to Hosted Cache mode for Windows clients updates to get the most benefit from peer-to-peer distribution. 

- In Hosted Cache mode, designated servers at specific locations act as a cache for files requested by clients in its area. Then, rather than clients retrieving files from a latent source, the hosted cache server provides the content on its behalf. 

For detailed information about how Distributed Cache mode and Hosted Cache mode work, see [BranchCache Overview](/previous-versions/windows/it-pro/windows-7/dd637832(v=ws.10)). 

## Configure clients for BranchCache

Whether you use BranchCache with Configuration Manager or WSUS, each client that uses BranchCache must be configured to do so. You typically make your configurations through Group Policy. For step-by-step instructions on how to use Group Policy to configure BranchCache for Windows clients, see [Client Configuration](/previous-versions/windows/it-pro/windows-7/dd637820(v=ws.10)) in the [BranchCache Early Adopter's Guide](/previous-versions/windows/it-pro/windows-7/dd637762(v=ws.10)).

In Windows 10, version 1607, the Windows Update Agent uses Delivery Optimization by default, even when the updates are retrieved from WSUS. When using BranchCache with Windows client, set the Delivery Optimization **Download mode** to '100' (Bypass) to allow clients to use the Background Intelligent Transfer Service (BITS) protocol with BranchCache instead. For instructions on how to use BranchCache in Distributed Cache mode with WSUS, see the section WSUS and Configuration Manager with BranchCache in Distributed Cache mode.

> [!Note] 
> Setting [Download mode](../do/waas-delivery-optimization-reference.md#download-mode) to '100' (Bypass) is only available in Windows 10, version 1607 and later, not in Windows 11. BranchCache isn't supported for Delivery Optimization in Windows 11. <!--8530422-->

## Configure servers for BranchCache

You can use WSUS and Configuration Manager with BranchCache in Distributed Cache mode. BranchCache in Distributed Cache mode is easy to configure for both WSUS and Microsoft Configuration Manager. 

For a step-by-step guide to configuring BranchCache on Windows Server devices, see the [BranchCache Deployment Guide (Windows Server 2012)](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj572990(v=ws.11)) or [BranchCache Deployment Guide (Windows Server 2016)](/windows-server/networking/branchcache/deploy/branchcache-deployment-guide).

In addition to these steps, there's one requirement for WSUS to be able to use BranchCache in either operating mode: the WSUS server must be configured to download updates locally on the server to a shared folder. This way, you can select BranchCache publication for the share. For Configuration Manager, you can enable BranchCache on distribution points; no other server-side configuration is necessary for Distributed Cache mode.

> [!NOTE]
> Configuration Manager only supports Distributed Cache mode.

