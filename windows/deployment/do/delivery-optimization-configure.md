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
ms.date: 07/01/2024
---

# Configure Delivery Optimization (DO) for Windows

## Delivery Optimization set up considerations checklist

Use this checklist to guide you through different aspects when modifying Delivery Optimization configurations for your environment.

1. Allow Delivery Optimization communication
2. Options to apply Delivery Optimization settings
3. Network topology
4. Optimize P2P usage for your organization size
5. System resources
6. Improve efficiencies
7. Connected Cache

## 1. Allow DO communication

:::image type="content" source="images/do-setup-allow-communication.png" alt-text="Screenshot of the considerations to allow Delivery Optimization communication." lightbox="images/do-setup-allow-communication.png":::

Delivery Optimization is used to download Microsoft content from different sources (HTTP source, peers, and/or dedicated cache solution). It requires communication between the DO client and the service to find the best and most reliable source of content. For this technology to work, the DO client running on the Windows device must be able to reach the DO cloud service.

Find out more about the requirements for Firewall, Proxy, and Port settings to enable Delivery Optimization communication.

### Firewall

There are service endpoints that you need to permit through your Firewall to communicate with the Delivery Optimization service. Check the [full list](waas-delivery-optimization-faq.yml#what-hostnames-should-i-allow-through-my-firewall-to-support-delivery-optimization) of endpoints to permit.

### Local proxy

When using a proxy, you want to bypass calls from the Delivery Optimization service (*.prod.do.dsp.mp.microsoft.com), as any altering of the public IP address prevents peering from working properly. For downloads from HTTP sources, Delivery Optimization can use the automatic proxy discovery capability of WinHttp to handle communication with the proxy server. It’s important to know, Delivery Optimization uses byte range requests, so you’ll want to make sure your proxy allows this capability. [Learn more](delivery-optimization-proxy.md) about Delivery Optimization with a proxy server.

### Cloud proxy

To allow peer-to-peer (P2P) to work properly you need to allow direct calls to the Delivery Optimization service from your devices (bypass the *.prod.do.dsp.mp.microsoft.com in your proxy). If the calls to the DO service are funneled through your proxy, it will alter the public IP Address of the devices, preventing P2P from working properly. If you're using a cloud proxy, you should configure it to allow Delivery Optimization traffic to [bypass the proxy](waas-delivery-optimization-faq.yml#what-is-the-recommended-configuration-for-delivery-optimization-used-with-cloud-proxies). Otherwise, you may experience reduced performance and increased bandwidth consumption.

### Ports

Delivery Optimization requires the use of certain ports to deliver content. Make sure all the [required ports](waas-delivery-optimization-faq.yml#which-ports-does-delivery-optimization-use) are open to make Delivery Optimization work seamlessly.

| Port    | Function          |
|---------|-------------------|
| 7680    | Listen for P2P using TCP/IP |
| 3544    | Uses Teredo to discover and connect to peers across NATs |
| 443     | Used to communicate Delivery Optimization client and service |

## 2. DO presence

:::image type="content" source="images/do-setup-presence.png" alt-text="Screenshot of different product areas where you find Delivery Optimization." lightbox="images/do-setup-presence.png":::

### Group Policies

To use Group Policy to manage Delivery Optimization settings you can find them here,

  `Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization`

### MDM Policies

Similarly, in MDM, the Delivery Optimization settings are under,

  `.Vendor/MSFT/Policy/Config/DeliveryOptimization/`

Delivery Optimization can be used with other Microsoft products. Learn more about the areas where there's integration to see how you can optimize the results in your environment.

* [Microsoft Endpoint Manager (MEM)](/mem/intune/configuration/delivery-optimization-windows)
* [Microsoft Endpoint Configuration Manager (MECM)](/mem/configmgr/sum/deploy-use/optimize-windows-10-update-delivery)
* [Autopilot](../windows-deployment-scenarios.md#modern-deployment-methods)/[Autopatch](../windows-autopatch/overview/windows-autopatch-overview.md) – there are no specific settings that should be configured for Autopilot or Autopatch devices. However, it’s important to remember that once the device is connected to the corporate network, Delivery Optimization policies are applied.

## 3. Network topology

:::image type="content" source="images/do-setup-network-topology.png" alt-text="Screenshot of Delivery Optimization network topology considerations." lightbox="images/do-setup-network-topology.png":::

Peer groups can be defined in Delivery Optimization using a combination of settings such as [DODownloadMode](waas-delivery-optimization-reference.md#download-mode), [DOGroupID](waas-delivery-optimization-reference.md#group-id), [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids), and [DORestrictPeerSelection](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection). *The combination of settings in use will depend on your desired peer group(s) and your network topology.*

### Peering setup

#### Define peer groups

##### Local area network (LAN)

To limit a peer group to your LAN, choose [DODownloadMode](waas-delivery-optimization-reference.md#download-mode) (1), LAN-mode. This Download Mode setting includes any devices that share the same public IP address when they connect to the Internet (behind the same NAT) in a single peer group.

> [!NOTE]
> If your network topology is a hub and spoke - consider using Group download mode and/or restrict peer selection to the subnet.

##### Wide area network (WAN)

To achieve peer groups across NATs within the same site, over the WAN, or to have more control in your local environment, use Download Mode ‘2’, Group-mode. Group download mode allows you to define a unique GUID Group ID or use existing logical groupings (e.g. AD Site) in your enterprise with the [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids) setting to identify a peer group.

##### GroupIDSource default behavior

There are several options for identifying your Group ID using the [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids). The default behavior, when the [DOGroupID](waas-delivery-optimization-reference.md#group-id) or [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids)  policies aren't set, is to determine the Group ID using AD Site (1), Authenticated domain SID (2), or Microsoft Entra tenant ID (5). More information on all [DOGroupIDSource](waas-delivery-optimization-reference.md#select-the-source-of-group-ids) setting options available.

> [!NOTE]
> If your peer group spans across NATs, the Teredo service will be used on port 3544.
>
> For Configuration Manager users, we recommend leveraging existing [MECM boundary groups](/mem/configmgr/sum/deploy-use/optimize-windows-10-update-delivery) to define the peer groups.

##### Restrict peer selection

If your environment requires a more granular approach, you can use the Restrict Peer Discovery setting alongside the Download Mode to achieve more control. For example, if you have several different subnets behind the same NAT but want to limit your peer groups to a single subnet, choose [DODownloadMode](waas-delivery-optimization-reference.md#download-mode) (1) and [DORestrictPeerSelection](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection)(Subnet). This setting can be used with any of the peer-related Download Modes (1, 2, or 3).

### Non-peering options

There are two valid Download Modes that don't use the peer-to-peer functionality to deliver content; Download Modes (0) and (99). Download Mode (0) uses additional metadata provided by the Delivery Optimization cloud services for a peerless, reliable and efficient download experience. Download Mode (99) will provide a reliable download experience over HTTP from the download's original source or Microsoft, with no other checks.

### Peering with VPN

By default, if Delivery Optimization detects a VPN, peering is not used. To enable this behavior, use the [DOAllowVPNPeerCaching](waas-delivery-optimization-reference.md#enable-peer-caching-while-the-device-connects-via-vpn) policy. The Delivery Optimization Client looks in the network adapter’s ‘Description’ and ‘FriendlyName’ strings to determine VPN usage. To allow greater flexibility for VPN identification, use the [DOVpnKeywords](waas-delivery-optimization-reference.md#vpn-keywords) to add descriptors for a particular VPN.

## 4. Optimize P2P usage for your organization size

:::image type="content" source="images/do-setup-org-size.png" alt-text="Screenshot of optimizing P2P usage for your organization." lightbox="images/do-setup-org-size.png":::

Delivery Optimization is designed to perform best in a large-scale environment with many devices. Depending on the size of the environment, you should evaluate the value of the [DOMinFileSizeToCache](waas-delivery-optimization-reference.md#minimum-peer-caching-content-file-size) to optimize peering.

### Minimum file size to cache

Content peering has a limited number of slots available at any given time. By default, only content files that are 50 MB or larger can be used for peering. In an environment with more than 30 devices, change the [DOMinFileSizeToCache](waas-delivery-optimization-reference.md#minimum-peer-caching-content-file-size) to a lower value (10 MB), to have more content available for peering, which can be distributed among many devices. For an even larger number of devices (>100), you can raise this setting to (1 MB).

### Mobile devices

By default, peer-to-peer capabilities aren't enabled for devices using a battery. If there are many mobile devices in your environment, consider enabling the [DOMinBatteryPercentageAllowedToUpload](waas-delivery-optimization-reference.md#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) policy to 60%, to use peering while on battery.

## 5. System resources

:::image type="content" source="images/do-setup-system-resources.png" alt-text="Screenshot of Delivery Optimization system resources considerations." lightbox="images/do-setup-system-resources.png":::

There are some Delivery Optimization configurations that can make an impact when ample system resources are available.

### Disk size

Alter the minimum disk size (default is 32 GB) a device must have to use peering with the [DOMinDiskSizeAllowedToPeer](waas-delivery-optimization-reference.md#minimum-disk-size-allowed-to-use-peer-caching) setting.

### Optimize cache size

You can also manage the amount of space the Delivery Optimization cache uses with the following settings:  [DOMaxCacheSize](waas-delivery-optimization-reference.md#max-cache-size) (default is 20%) and [DOAbsoluteMaxCacheSize](waas-delivery-optimization-reference.md#absolute-max-cache-size) (default is not configured).

### RAM size

Control the minimum amount of RAM (inclusive) allowed to use peer caching (default is 4 GB), [DOMinRAMAllowedToPeer](waas-delivery-optimization-reference.md#minimum-ram-inclusive-allowed-to-use-peer-caching).

### Large # of devices with idle system resources

In an environment with a set number of devices that are plugged in and have ample free disk space try increasing the content expiration interval of [DOMaxCacheAge](waas-delivery-optimization-reference.md#max-cache-age) seven or more (up to 30 days). You can take advantage of these devices, using them as excellent upload sources to upload more content over a longer period.

## 6. Improve efficiencies

:::image type="content" source="images/do-setup-improve-efficiencies.png" alt-text="Screenshot of Delivery Optimization improve efficiency considerations." lightbox="images/do-setup-improve-efficiencies.png":::

Looking to improve efficiency? Some of the most powerful settings you can change that could have a significant impact within your environment include:

* Help optimize peer connection over HTTP connections using the [DOMinBackgroundQoS](waas-delivery-optimization-reference.md#minimum-background-qos) policy. A good value for the [DOMinBackgroundQoS](waas-delivery-optimization-reference.md#minimum-background-qos) policy is something lower than the average download speed seen in your network. For example, if your average speed is 1000 KB/s, set this policy to 500 KB/s.
* Improve chances of downloading from peers and/or cache server by delaying the time DO attempts to make connections before falling back to the HTTP source. The set of policies include: [DODelayBackgroundDownloadFromHttp](waas-delivery-optimization-reference.md#delay-background-download-from-http-in-secs), [DODelayForegroundDownloadFromHttp](waas-delivery-optimization-reference.md#delay-foreground-download-from-http-in-secs). For applicable scenarios (improving efficiency from peers or cache server) a good starting point is 60 seconds for the background settings and 30 seconds for foreground settings.

### Bandwidth throttling options

* Reduce disruptions by throttling differently at different times of day, using the business hours policies, [DOSetHoursToLimitForegroundDownloadBandwidth](waas-delivery-optimization-reference.md#set-business-hours-to-limit-foreground-download-bandwidth) and [DOSetHoursToLimitBackgroundDownloadBandwidth](waas-delivery-optimization-reference.md#set-business-hours-to-limit-background-download-bandwidth).
* Manage network usage as a percentage or absolute value (Note: The absolute policies are recommended in low bandwidth environments). These policies include: [DOPercentageMaxForegroundBandwidth](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth)/[DOPercentageMaxBackgroundBandwidth](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth), [DOMaxBackgroundDownloadBandwidth](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth-in-kbs), and [DOMaxForegroundDownloadBandwidth](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth-in-kbs).

> [!NOTE]
> Not all content types are eligible for P2P. Refer to the [complete list](waas-delivery-optimization.md#types-of-download-content-supported-by-delivery-optimization) to learn more.

## 7. Connected cache

:::image type="content" source="images/do-setup-connected-cache.png" alt-text="Screenshot of Delivery Optimization options when using Connected Cache." lightbox="images/do-setup-connected-cache.png":::

* [DOCacheHost](waas-delivery-optimization-reference.md#cache-server-hostname) is the list of cache host server names, separated with commas. Delivery Optimization client connects to the listed Microsoft Connected Cache servers in the order as they're listed.
* [DOCacheHostSource](waas-delivery-optimization-reference.md#cache-server-hostname-source) can be used to dynamically discover cache host servers on the network, using DHCP.
* [DelayCacheServerFallbackBackground](waas-delivery-optimization-reference.md#delay-background-download-cache-server-fallback-in-secs) and [DelayCacheServerFallbackForeground](waas-delivery-optimization-reference.md#delay-foreground-download-cache-server-fallback-in-secs) are the delay policies to help improve chances of pulling content from the network cache host servers. (See recommended values in ‘Improving Efficiencies’ section).
* [DODisallowCacheServerDownloadsOnVPN](waas-delivery-optimization-reference.md#disallow-cache-server-downloads-on-vpn) allows control of the cache host server to supply content, when device is on a VPN connection.

## Summary of basic configuration recommendations

| Use case | Policy | Recommended value |
| --- | --- | ------------------------- |
| Use P2P | DownloadMode | 1 or 2 |
| Do not use P2P | DownloadMode | 0 |
| Number of devices in the organization | MinFileSizeToCache | 1 MB for peer group > 100 devices |
| Idle system resources | MaxCacheAge | 7 days (604800 seconds) |
| Improve efficiencies | MinBackgroundQoS and DelayBackgroundDownloadFromHttp / DelayForegroundDownloadFromHttp  | 500 KB/s and 60/30 seconds |
| Using Connected Cache? | DelayCacheServerFallbackBackground / DelayCacheServerFallbackForeground | 60/30 seconds |

## Monitor Delivery Optimization

Whether you opt for the default Delivery Optimization configurations or tailor them to suit your environment, you will want to track the outcomes to see how they improve your efficiency. [Learn more](waas-delivery-optimization-monitor.md) about the monitoring options for Delivery Optimization.

## Troubleshoot Delivery Optimization

There could be many different reasons why Delivery Optimization is not working in your environment. [Learn more](delivery-optimization-troubleshoot.md) about the DO Troubleshooter and common problems and solutions to help improve the experience of using Delivery Optimization.

## Test Delivery Optimization

[Learn more](delivery-optimization-test.md) for guidance on basic testing scenarios to see how Delivery Optimization works.
