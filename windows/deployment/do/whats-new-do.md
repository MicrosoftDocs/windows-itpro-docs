---
title: What's new in Delivery Optimization
manager: dougeby
description: This article provides information about Delivery Optimization, a peer-to-peer distribution method in Windows 10 and Windows 11.
keywords: oms, operations management suite, wdav, updates, downloads, log analytics, mcc, do, delivery, connected cache
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

# What's new in Delivery Optimization 

**Applies to**

- Windows 10
- Windows 11

## Microsoft Connected Cache (private preview)

Microsoft Connected Cache (MCC) is a software-only caching solution that delivers Microsoft content within Enterprise networks. MCC can be deployed to as many bare-metal servers or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using management tools such as Intune.

For more information about MCC, see [Microsoft Connected Cache overview](waas-microsoft-connected-cache.md).

## New in Delivery Optimization for Windows 10, version 20H2 and Windows 11

- New peer selection options: Currently the available options include: 0 = None, 1 = Subnet mask, and 2 = Local Peer Discovery. The subnet mask option applies to both Download Modes LAN (1) and Group (2). If Group mode is set, Delivery Optimization will connect to locally discovered peers that are also part of the same Group (have the same Group ID)."
- Local Peer Discovery: a new option for **[Restrict Peer Selection By](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection)** (in Group Policy) or **DORestrictPeerSelectionBy** (in MDM). This option restricts the discovery of local peers using the DNS-SD protocol. When you set Option 2, Delivery Optimization will restrict peer selection to peers that are locally discovered (using DNS-SD). If Group mode is enabled, Delivery Optimization will connect to locally discovered peers that are also part of the same group, for those devices with the same Group ID).

> [!NOTE]
> The Local Peer Discovery (DNS-SD, [RFC 6763](https://datatracker.ietf.org/doc/html/rfc6763)) option can only be set via MDM delivered policies on Windows 11 builds. This feature can be enabled in supported Windows 10 builds by setting the `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization\DORestrictPeerSelectionBy` value to **2**. For more information, see [Delivery Optimization reference](waas-delivery-optimization-reference.md).

- Starting with Windows 11, the Bypass option of [Download Mode](waas-delivery-optimization-reference.md#download-mode) is no longer used.


