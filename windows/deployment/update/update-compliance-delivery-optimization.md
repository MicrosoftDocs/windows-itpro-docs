---
title: Delivery Optimization in Update Compliance (Windows 10)
description: new Delivery Optimization data displayed in Update Compliance
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
keywords: oms, operations management suite, optimization, downloads, updates, log analytics
ms.localizationpriority: medium
ms.collection: M365-analytics
ms.topic: article
---

# Delivery Optimization in Update Compliance
The Update Compliance solution of Windows Analytics provides you with information about your Delivery Optimization configuration, including the observed bandwidth savings across all devices that used peer-to-peer distribution over the past 28 days.

![DO status](images/UC_workspace_DO_status.png)

> [!IMPORTANT]
> There are currently two known issues affecting the Delivery Optimization status displayed in these blades:
>- Devices running Windows 10, version 1803 or older versions are not sending the correct configuration profile. As a result, the information in the Device Configuration blade might not accurately reflect the settings in your environment.
>- Some devices running Windows 10, version 1809 report the Delivery Optimization DownloadMode configuration value as the sequential value in the list of possible configurations rather than the actual configured value. For example, a device that is configured as HTTP + Group (2), will be shown as HTTP + Internet (3) in Update Compliance.
>
>Look for fixes for both of these issues in a forthcoming update.

## Delivery Optimization Status
 
The Delivery Optimization Status section includes three blades:

- The **Device Configuration** blade shows a breakdown of download configuration for each device
- The **Content Distribution (%)** blade shows the percentage of bandwidth savings for each category
- The **Content Distribution (GB)** blade shows the total amount of data seen from each content type broken down by the download source (peers vs non-peers).



 
## Device Configuration blade
Devices can be set to use different download modes; these download modes determine in what situations Delivery Optimization will use peer-to-peer distribution to accomplish the downloads. The top section shows the number of devices configured to use peer-to-peer distribution in *Peering On* compared to *Peering Off* modes. The table shows a breakdown of the various download mode configurations seen in your environment. For more information about the different configuration options, see [Set up Delivery Optimization for Windows 10 updates](waas-delivery-optimization-setup.md) for recommendations for different scenarios or [Delivery Optimization reference](waas-delivery-optimization-reference.md#download-mode) for complete details of this setting.
 
## Content Distribution (%) blade
The first of two blades showing information on content breakdown, this blade shows a ring chart summarizing **Bandwidth Savings %**, which is the percentage of data received from peer sources out of the total data downloaded (for any device that used peer-to-peer distribution).
The table breaks down the Bandwidth Savings % into specific content categories along with the number of devices seen downloading the given content type that used peer-to-peer distribution.
 
## Content Distribution (GB) blade
The second of two blades showing information on content breakdown, this blade shows a ring chart summarizing the total bytes downloaded by using peer-to-peer distribution compared to HTTP distribution. 
The table breaks down the number of bytes from each download source into specific content categories, along with the number of devices seen downloading the given content type that used peer-to-peer distribution.

The download sources that could be included are:
- LAN Bytes: Bytes downloaded from LAN Peers which are other devices on the same local network
- Group Bytes: Bytes downloaded from Group Peers which are other devices that belong to the same Group (available when the “Group” download mode is used)
- HTTP Bytes: Non-peer bytes. The HTTP download source can be Microsoft Servers, Windows Update Servers, a WSUS server or an SCCM Distribution Point for Express Updates. 

