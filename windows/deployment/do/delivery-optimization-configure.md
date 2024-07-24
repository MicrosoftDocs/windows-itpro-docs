---
title: Configure Delivery Optimization for Windows
description: In this article, learn about the different configuration considerations to optimize Delivery Optimization (DO) in your environment.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
author: cmknox
ms.author: carmenf
ms.reviewer: mstewart
manager: aaroncz
ms.collection:
  - tier3
  - essentials-get-started
ms.localizationpriority: medium
appliesto:
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-delivery-optimization target=_blank>Delivery Optimization</a>
ms.date: 07/23/2024
---

# Configure Delivery Optimization (DO) for Windows

This article describes the different configuration considerations to optimize Delivery Optimization (DO) in your environment.

## Delivery Optimization set up considerations

Use this checklist to guide you through different aspects when modifying Delivery Optimization configurations for your environment.

1. Prerequisites to allow Delivery Optimization communication
1. Evaluate Delivery Optimization policies based on the following items:

    * Network topology
    * Organization size
    * System resources
    * Improve P2P efficiencies
  
1. Using Connected Cache (MCC)
1. Choose where to set Delivery Optimization policies

## 1. Prerequisites to allow Delivery Optimization communication

:::image type="content" source="images/do-setup-allow-communication.png" alt-text="Screenshot of the considerations to allow Delivery Optimization communication." lightbox="images/do-setup-allow-communication.png":::

Delivery Optimization (DO) is used to download Microsoft content from different sources (HTTP source, peers, and/or dedicated cache solution). It requires communication between the DO client and services to find the best and most reliable sources of content. For this technology to work, the DO client running on the Windows device must be able to reach the DO cloud service.

Find out more about the requirements for Firewall, Proxy, and Port settings to enable Delivery Optimization communication.

### Firewall

There are service endpoints that you need to permit through your Firewall to communicate with the Delivery Optimization service. Check the [full list](waas-delivery-optimization-faq.yml#what-hostnames-should-i-allow-through-my-firewall-to-support-delivery-optimization) of endpoints to permit.

### Proxy

To allow peer-to-peer (P2P) to work properly, you need to allow direct calls to the Delivery Optimization service from your devices. When using a proxy, you want to bypass calls from the Delivery Optimization service (*.prod.do.dsp.mp.microsoft.com).

#### Local proxy

For downloads from HTTP sources, Delivery Optimization can use the automatic proxy discovery capability of WinHttp to handle communication with the proxy server. It's important to know that Delivery Optimization uses byte range requests, so you'll want to make sure your proxy allows this capability. [Learn more](delivery-optimization-proxy.md) about using Delivery Optimization with a proxy server.

#### Cloud proxy

 If you're using a cloud proxy, the calls to the DO service are funneled through your cloud proxy and the public IP address of the devices is altered, preventing P2P from working properly. To avoid any issues, you should configure it to allow Delivery Optimization traffic to [bypass the proxy](waas-delivery-optimization-faq.yml#what-is-the-recommended-configuration-for-delivery-optimization-used-with-cloud-proxies). Otherwise, you may experience reduced performance and increased bandwidth consumption.

### Ports

Delivery Optimization requires the use of certain ports to deliver content. Make sure all the [required ports](waas-delivery-optimization-faq.yml#which-ports-does-delivery-optimization-use) are open to make Delivery Optimization work seamlessly.

| Port    | Protocol | Function          |
|---------|-------------------|----------|
| 7680    | TCP/IP | Listen for P2P using TCP/IP |
| 3544    | TCP/IP | Use Teredo to discover and connect to peers across NATs |
| 443     | HTTPS / TLS 1.2 | Use to communicate Delivery Optimization client and service |

## 2. Evaluate Delivery Optimization policies

There are a range of [Delivery Optimization settings](waas-delivery-optimization-reference.md) available to meet the needs of your environment. To fully leverage Delivery Optimization, you should focus on key areas to determine the most suitable settings for your unique environment.

### 2a. Network topology

:::image type="content" source="images/do-setup-network-topology.png" alt-text="Screenshot of Delivery Optimization network topology considerations." lightbox="images/do-setup-network-topology.png":::

Peer groups can be defined in Delivery Optimization using a combination of settings such as [DODownloadMode](waas-delivery-optimization-reference.md#download-mode), [DOGroupID](waas-delivery-optimization-reference.md#group-id), [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids), and [DORestrictPeerSelection](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection). *The combination of settings used depends on your desired peer group(s) and your network topology.*

#### Peering setup options

Delivery Optimization can use P2P to help improve bandwidth efficiencies. The section outlines the different options available to define peer groups for your environment.

##### Local area network (LAN)

To define a peer group limited to your LAN, choose [DODownloadMode](waas-delivery-optimization-reference.md#download-mode) (1), LAN-mode. This download mode setting includes any devices that share the same public IP address when they connect to the Internet (behind the same NAT) in a single peer group.

> [!NOTE]
> Consider using Group download mode and/or limiting peer selection to the subnet if your network topology is a Hub and Spoke.

##### Wide area network (WAN)

To achieve peer groups across NATs within the same site, over the WAN, or to have more control in your local environment, use download mode '2', Group-mode. Group download mode allows you to define a unique GUID Group ID or use existing logical groupings (for example, AD Site) in your enterprise with the [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids) setting to identify a peer group.

##### GroupIDSource default behavior

There are several options for identifying your Group ID using the [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids). The default behavior, when the [DOGroupID](waas-delivery-optimization-reference.md#group-id) or [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids)  policies aren't set, is to determine the Group ID using AD Site (1), Authenticated domain SID (2), or Microsoft Entra tenant ID (5). [Learn more](waas-delivery-optimization-reference.md#select-the-source-of-group-ids) about all DOGroupIDSource available options.

> [!NOTE]
> If your peer group spans across NATs, the Teredo service will be used on port 3544.
>
> For Configuration Manager users, we recommend leveraging existing [boundary groups](/mem/configmgr/core/plan-design/hierarchy/fundamental-concepts-for-content-management#delivery-optimization) to define the peer groups.

##### Restrict peer selection

If your environment requires a more granular approach, you can use the restrict peer discovery setting alongside the download mode to achieve more control. For example, if you have several different subnets behind the same NAT but want to limit your peer groups to a single subnet, choose [DODownloadMode](waas-delivery-optimization-reference.md#download-mode) (1) and [DORestrictPeerSelection](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection) (Subnet). This setting can be used with any of the peer-related download modes (1, 2, or 3).

#### Nonpeering options

There are two valid download modes that don't use P2P functionality to deliver content; download modes (0) and (99). Download mode (0) uses additional metadata provided by the Delivery Optimization services for a peerless, reliable, and efficient download experience. Download mode (99) will provide a reliable download experience over HTTP from the download's original source or Microsoft, with no other checks.

#### Peering with VPN

By default, if Delivery Optimization detects a VPN, peering isn't used. To change this behavior, use the [DOAllowVPNPeerCaching](waas-delivery-optimization-reference.md#enable-peer-caching-while-the-device-connects-via-vpn) policy. The Delivery Optimization client looks in the network adapter's 'Description' and 'FriendlyName' strings to determine VPN usage. To allow greater flexibility for VPN identification, use the [DOVpnKeywords](waas-delivery-optimization-reference.md#vpn-keywords) to add descriptors for a particular VPN you use in your organization.

> [!NOTE]
> The default keyword list is "VPN", "Secure", and "Virtual Private Network". For example, "MYVPN" matches the "VPN" keyword and would be detected as a VPN connection.

### 2b. Organization size

:::image type="content" source="images/do-setup-org-size.png" alt-text="Screenshot of optimizing P2P usage for your organization." lightbox="images/do-setup-org-size.png":::

Delivery Optimization is designed to perform best in a large-scale environment with many devices. Depending on the size of the environment, you should evaluate the value of the [DOMinFileSizeToCache](waas-delivery-optimization-reference.md#minimum-peer-caching-content-file-size) to optimize peering.

#### Minimum file size to cache

Content peering has a limited number of slots available at any given time. By default, only content files that are 50 MB or larger can be used for peering. In an environment with more than 30 devices, change the [DOMinFileSizeToCache](waas-delivery-optimization-reference.md#minimum-peer-caching-content-file-size) to a lower value (10 MB), to have more content available for peering, which can be distributed among many devices. For an even larger number of devices (>100), you can raise this setting to (1 MB).

#### Mobile devices

By default, P2P capabilities aren't enabled for devices using a battery. If there are many mobile devices in your environment, consider enabling the [DOMinBatteryPercentageAllowedToUpload](waas-delivery-optimization-reference.md#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) policy to 60%, to use peering while on battery.

### 2c. System resources

:::image type="content" source="images/do-setup-system-resources.png" alt-text="Screenshot of Delivery Optimization system resources considerations." lightbox="images/do-setup-system-resources.png":::

There are some Delivery Optimization configurations that can make an impact when various system resources are available.

#### Disk size

Alter the minimum disk size (default is 32 GB) a device must have to use peering with the [DOMinDiskSizeAllowedToPeer](waas-delivery-optimization-reference.md#minimum-disk-size-allowed-to-use-peer-caching) setting.

#### Optimize cache size

You can also manage the amount of space the Delivery Optimization cache uses with the following settings:  [DOMaxCacheSize](waas-delivery-optimization-reference.md#max-cache-size) (default is 20%) and [DOAbsoluteMaxCacheSize](waas-delivery-optimization-reference.md#absolute-max-cache-size) (default isn't configured).

#### RAM size

Control the minimum amount of RAM (inclusive) allowed to use peer caching (default is 4 GB), with [DOMinRAMAllowedToPeer](waas-delivery-optimization-reference.md#minimum-ram-inclusive-allowed-to-use-peer-caching).

#### Large number of devices with idle system resources

In an environment with devices that are plugged in and have ample free disk space try increasing the content expiration interval of [DOMaxCacheAge](waas-delivery-optimization-reference.md#max-cache-age) to seven or more (up to 30 days). You can take advantage of these devices, using them as excellent upload sources to upload more content over a longer period.

### 2d. Improve P2P efficiency

:::image type="content" source="images/do-setup-improve-efficiency.png" alt-text="Screenshot of Delivery Optimization improve efficiency considerations." lightbox="images/do-setup-improve-efficiency.png":::

Looking to improve P2P efficiency? Some of the most powerful settings you can change that could have a significant impact within your environment include:

- Help optimize peer connection over HTTP connections using the [DOMinBackgroundQoS](waas-delivery-optimization-reference.md#minimum-background-qos) policy. A good value for the [DOMinBackgroundQoS](waas-delivery-optimization-reference.md#minimum-background-qos) policy is something lower than the average download speed seen in your network. For example, if your average speed is 1000 KB/s, set this policy to 500 KB/s.
- Improve chances of downloading from peers and/or cache server by delaying the time DO attempts to make connections before falling back to the HTTP source. The set of delay-related policies include:
  - [DODelayBackgroundDownloadFromHttp](waas-delivery-optimization-reference.md#delay-background-download-from-http-in-secs)
  - [DODelayForegroundDownloadFromHttp](waas-delivery-optimization-reference.md#delay-foreground-download-from-http-in-secs) 
  
  To improve efficiencies from peers or a dedicated cache server, a good starting point is 60 seconds for background settings and 30 seconds for foreground settings.

> [!NOTE]
> Not all content types are eligible for P2P. Refer to the [complete list](waas-delivery-optimization.md#types-of-download-content-supported-by-delivery-optimization) to learn more.

#### Bandwidth throttling options

Regardless of P2P, consider setting the following policies to avoid network disruption.

- Manage network usage as a percentage or absolute value. These policies include: 
  - [DOPercentageMaxBackgroundBandwidth](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth)
  - [DOPercentageMaxForegroundBandwidth](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth)
  - [DOMaxBackgroundDownloadBandwidth](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth-in-kbs)
  - [DOMaxForegroundDownloadBandwidth](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth-in-kbs)
- Reduce disruptions by throttling differently at different times of day, using the following business hours policies: 
  - [DOSetHoursToLimitBackgroundDownloadBandwidth](waas-delivery-optimization-reference.md#set-business-hours-to-limit-background-download-bandwidth)
  - [DOSetHoursToLimitForegroundDownloadBandwidth](waas-delivery-optimization-reference.md#set-business-hours-to-limit-foreground-download-bandwidth).

> [!NOTE]
> The absolute policies are recommended in low bandwidth environments.

## 3. Using Connected Cache (MCC)

:::image type="content" source="images/do-setup-connected-cache.png" alt-text="Screenshot of Delivery Optimization options when using Connected Cache." lightbox="images/do-setup-connected-cache.png":::

- [DOCacheHost](waas-delivery-optimization-reference.md#cache-server-hostname) is the list of cache host server names, separated with commas. *Delivery Optimization client connects to the listed Microsoft Connected Cache servers in the order as they're listed.*
- [DOCacheHostSource](waas-delivery-optimization-reference.md#cache-server-hostname-source) can be used to dynamically discover cache host servers on the network, using DHCP.
- [DelayCacheServerFallbackBackground](waas-delivery-optimization-reference.md#delay-background-download-cache-server-fallback-in-secs) and [DelayCacheServerFallbackForeground](waas-delivery-optimization-reference.md#delay-foreground-download-cache-server-fallback-in-secs) are the delay policies to help improve chances of pulling content from the network cache host servers. (See recommended values in [Improve P2P efficiency](#2d-improve-p2p-efficiency) section above).
- [DODisallowCacheServerDownloadsOnVPN](waas-delivery-optimization-reference.md#disallow-cache-server-downloads-on-vpn) allows control of the cache host server to supply content, when device is on a VPN connection.

## 4. Choose where to set Delivery Optimization policies

:::image type="content" source="images/do-setup-presence.png" alt-text="Screenshot of different product areas where you find Delivery Optimization." lightbox="images/do-setup-presence.png":::

### Group Policies

Use Group Policy to manage Delivery Optimization settings here,

  `Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization`

### MDM Policies

Use MDM to manage Delivery Optimization settings here,

  `.Vendor/MSFT/Policy/Config/DeliveryOptimization/`

Delivery Optimization is integrated with both Microsoft Endpoint Manager and Configuration Manager.

- [Microsoft Endpoint Manager (MEM)](/mem/intune/configuration/delivery-optimization-windows)
- [Microsoft Endpoint Configuration Manager (MECM)](/mem/configmgr/sum/deploy-use/optimize-windows-10-update-delivery)

## Summary of basic configuration recommendations

| Use case | Policy | Recommended value |
| ----- | ----- | ----------------- |
| Use P2P | DownloadMode | 1 or 2 |
| Don't use P2P | DownloadMode | 0 |
| Number of devices in the organization | MinFileSizeToCache | 1 MB for peer group > 100 devices |
| Idle system resources | MaxCacheAge | 7 days (604800 seconds) |
| Improve P2P efficiency | MinBackgroundQoS and DelayBackgroundDownloadFromHttp / DelayForegroundDownloadFromHttp  | 500 KB/s and 60/30 seconds |
| Using Connected Cache? | DelayCacheServerFallbackBackground / DelayCacheServerFallbackForeground | 60/30 seconds |

## Monitor Delivery Optimization

Whether you opt for the default Delivery Optimization configurations or tailor them to suit your environment, you'll want to track the outcomes to see how they improve your efficiency. [Learn more](waas-delivery-optimization-monitor.md) about the monitoring options for Delivery Optimization.

## Troubleshoot Delivery Optimization

There could be many different reasons why Delivery Optimization isn't working in your environment. [Learn more](delivery-optimization-troubleshoot.md) about the DO Troubleshooter and common problems and solutions to help improve the experience of using Delivery Optimization.

## Test Delivery Optimization

[Learn more](delivery-optimization-test.md) about guidance on basic testing scenarios to see how Delivery Optimization works.
