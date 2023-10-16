---
title: What's new in Delivery Optimization
description: What's new in Delivery Optimization, a peer-to-peer distribution method in Windows 10 and Windows 11.
ms.prod: windows-client
ms.technology: itpro-updates
ms.topic: conceptual
author: cmknox
ms.author: carmenf
manager: aaroncz
ms.reviewer: mstewart
ms.collection: tier3
ms.localizationpriority: medium
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 06/02/2023
---

# What's new in Delivery Optimization

This article contains information about what's new in Delivery Optimization, a peer-to-peer distribution method in Windows 10 and Windows 11.
## Microsoft Connected Cache (early preview)

Microsoft Connected Cache (MCC) is a software-only caching solution that delivers Microsoft content within Enterprise networks. MCC can be deployed to as many bare-metal servers or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using management tools such as Intune.

For more information about MCC, see [Microsoft Connected Cache overview](waas-microsoft-connected-cache.md).

There are two different versions:

- [Microsoft Connected Cache for Enterprise and Education](mcc-ent-edu-overview.md)
- [Microsoft Connected Cache for ISPs](mcc-isp-overview.md).

## New in Delivery Optimization for Windows

### Windows 11 22H2

- New setting: Customize Vpn detection by choosing custom keywords. Now, you don't have to rely on Delivery Optimization keywords to detect your Vpn. By using the new VpnKeywords configuration you can add keywords for Delivery Optimization to use when detecting a Vpn when in use. You can find this configuration in Group Policy or MDM under 'DOVpnKeywords'.
- New setting: Use the disallow downloads from a connected cache server, when a Vpn is detected and you want to prevent the download from the connected cache server. You can find this configuration in Group Policy or MDM under 'DODisallowCacheServerDownloadsOnVPN'.
- Delivery Optimization introduced support for receiver side ledbat (rLedbat).
- New peer selection options: Currently the available options include: 0 = None, 1 = Subnet mask, and 2 = Local Peer Discovery. The subnet mask option applies to both Download Modes LAN (1) and Group (2). If Group mode is set, Delivery Optimization connects to locally discovered peers that are also part of the same Group (have the same Group ID)."
- Local Peer Discovery: a new option for **[Restrict Peer Selection By](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection)** (in Group Policy) or **DORestrictPeerSelectionBy** (in MDM). This option restricts the discovery of local peers using the DNS-SD protocol. When you set Option 2, Delivery Optimization restricts peer selection to peers that are locally discovered (using DNS-SD). If Group mode is enabled, Delivery Optimization connects to locally discovered peers that are also part of the same group, for those devices with the same Group ID).

> [!NOTE]
> The Local Peer Discovery (DNS-SD, [RFC 6763](https://datatracker.ietf.org/doc/html/rfc6763)) option can only be set via MDM delivered policies on Windows 11 builds. This feature can be enabled in supported Windows 10 builds by setting the `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DeliveryOptimization\DORestrictPeerSelectionBy` value to **2**. For more information, see [Delivery Optimization reference](waas-delivery-optimization-reference.md).

- Starting with Windows 11, the Bypass option of [Download Mode](waas-delivery-optimization-reference.md#download-mode) is no longer used.
