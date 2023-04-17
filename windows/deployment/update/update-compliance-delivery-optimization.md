---
title: Delivery Optimization in Update Compliance
manager: aaroncz
description: Learn how the Update Compliance solution provides you with information about your Delivery Optimization configuration.
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.localizationpriority: medium
ms.topic: article
ms.technology: itpro-updates
ms.date: 04/01/2023
---

# Delivery Optimization in Update Compliance

**Applies to**

- Windows 10
- Windows 11

<!--Using include for recommending Windows Update for Business reports for all Update Compliance v1 docs-->
[!INCLUDE [Recommend Windows Update for Business reports](./includes/wufb-reports-recommend.md)]

:::image type="content" alt-text="Screenshot of Delivery Optimization information in Update Compliance." source="images/UC_workspace_DO_status.png" lightbox="images/UC_workspace_DO_status.png":::

The Update Compliance solution provides you with information about your Delivery Optimization configuration, including the observed bandwidth savings across all devices that used peer-to-peer distribution over the past 28 days.

## Delivery Optimization Status
 
The Delivery Optimization Status section includes three blades:

- The **Device Configuration** blade shows a breakdown of download configuration for each device
- The **Content Distribution (%)** blade shows the percentage of bandwidth savings for each category
- The **Content Distribution (GB)** blade shows the total amount of data seen from each content type broken down by the download source (peers vs non-peers).

 
## Device Configuration blade
Devices can be set to use different download modes; these download modes determine in what situations Delivery Optimization will use peer-to-peer distribution to accomplish the downloads. The top section shows the number of devices configured to use peer-to-peer distribution in *Peering On* compared to *Peering Off* modes. The table shows a breakdown of the various download mode configurations seen in your environment. For more information about the different configuration options, see [Configure Delivery Optimization for Windows client updates](../do/waas-delivery-optimization-setup.md).
 
## Content Distribution (%) blade
The first of two blades showing information on content breakdown, this blade shows a ring chart summarizing **Bandwidth Savings %**, which is the percentage of data received from peer sources out of the total data downloaded (for any device that used peer-to-peer distribution).
The table breaks down the Bandwidth Savings % into specific content categories along with the number of devices seen downloading the given content type that used peer-to-peer distribution.
 
## Content Distribution (GB) blade
The second of two blades showing information on content breakdown, this blade shows a ring chart summarizing the total bytes downloaded by using peer-to-peer distribution compared to HTTP distribution. 
The table breaks down the number of bytes from each download source into specific content categories, along with the number of devices seen downloading the given content type that used peer-to-peer distribution.

The download sources that could be included are:
- LAN Bytes: Bytes downloaded from LAN Peers which are other devices on the same local network
- Group Bytes: Bytes downloaded from Group Peers which are other devices that belong to the same Group (available when the "Group" download mode is used)
- HTTP Bytes: Non-peer bytes. The HTTP download source can be Microsoft Servers, Windows Update Servers, a WSUS server or a Configuration Manager Distribution Point for Express Updates.

<!--Using include file, waas-delivery-optimization-monitor.md, for shared content on DO monitoring-->
[!INCLUDE [Monitor Delivery Optimization](../do/includes/waas-delivery-optimization-monitor.md)]

For more information on Delivery Optimization, see [Set up Delivery Optimization for Windows](../do/waas-delivery-optimization-setup.md).
