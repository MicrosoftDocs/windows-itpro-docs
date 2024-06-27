---
title: Configure Delivery Optimization for Windows
description: In this article, learn how to set up Delivery Optimization for use by Windows clients in your organization.
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

# Configure Delivery Optimization for Windows

## Delivery Optimization set up considerations checklist

* Allow Delivery Optimization communication
* Find Delivery Optimization
* Network topology
* Device count
* System resources
* Improve efficiencies
* Connected Cache

:::image type="content" source="images/do-setup-full.png" alt-text="Screenshot of the various Delivery Optimization configurations that should be considered to maximize efficiency." lightbox="images/do-setup-full.png":::

## Allow DO communication

:::image type="content" source="images/do-setup-allow-communication.png" alt-text="Screenshot of the considerations to allow Delivery Optimization communication." lightbox="images/do-setup-allow-communication.png":::

Learn more about Firewall, Proxy, and Port requirements for Delivery Optimization communication.

### Firewall

There are some host names that you need to permit through your Firewall for Delivery Optimization to communicate. Check the [full list](waas-delivery-optimization-faq.yml#what-hostnames-should-i-allow-through-my-firewall-to-support-delivery-optimization) of host names to permit.

### Local proxy

When using a proxy, you’ll want to bypass calls from the Delivery Optimization service (*.prod.do.dsp.mp.microsoft.com), as any altering of the public IP address will prevent peering from working properly. For downloads from HTTP sources, Delivery Optimization can use the automatic proxy discovery capability of WinHttp to handle communication with the proxy server. It’s important to know, Delivery Optimization uses byte range requests, so you’ll want to make sure your proxy allows this capability.. [Learn more](delivery-optimization-proxy.md) about Delivery Optimization with a proxy server.

### Cloud proxy

If you are using a cloud proxy, you should configure it to allow Delivery Optimization traffic to [bypass the proxy](waas-delivery-optimization-faq.yml#what-is-the-recommended-configuration-for-delivery-optimization-used-with-cloud-proxies). Otherwise, you may experience reduced performance and increased bandwidth consumption.

### Ports

Delivery Optimization requires the use of certain ports to deliver content. Make sure you have opened all the [required ports](/waas-delivery-optimization-faq.yml#which-ports-does-delivery-optimization-use) to make Delivery Optimization work seamlessly.

## DO presence

:::image type="content" source="images/do-setup-presence.png" alt-text="Screenshot of different product areas where you'll find Delivery Optimization." lightbox="images/do-setup-presence.png":::

Use Group Policy or MDM Policies to locate Delivery Optimization settings.

**Group Policies:** Computer Configuration\Administrative Templates\Windows Components\Delivery Optimization.
**MDM Policies:** You can use an MDM solution like Intune to configure Delivery Optimization.

Delivery Optimization is increasingly found throughout Microsoft products. Learn more about the areas where there is integration to see how you can optimize the results in your environment.

* [Microsoft Endpoint Manager (MEM)](https://learn.microsoft.com/en-us/mem/configmgr/sum/deploy-use/optimize-windows-10-update-delivery)
* [Microsoft Endpoint Configuration Manager (MECM)](https://learn.microsoft.com/en-us/mem/intune/configuration/delivery-optimization-windows)
* [Autopilot](https://learn.microsoft.com/en-us/windows/deployment/windows-deployment-scenarios#modern-deployment-methods)/[Autopatch](https://learn.microsoft.com/en-us/windows/deployment/windows-autopatch/overview/windows-autopatch-overview) – there are no specific settings that should be configured for Autopilot or Autopatch devices. However, it’s important to remember that once the device is connected to the corporate network, Delivery Optimization policies will be applied.

## Network topology

:::image type="content" source="images/do-setup-network-topology.png" alt-text="Screenshot of Delivery Optimization network topology considerations." lightbox="images/do-setup-network-topology.png":::

Peer groups can be defined in Delivery Optimization using a combination of settings such as [‘DODownloadMode’](waas-delivery-optimization-reference.md#download-mode), [‘DOGroupID’](waas-delivery-optimization-reference.md#group-id), [‘DOGroupIDSource’](waas-delivery-optimization-reference.md#select-the-source-of-group-ids), and [‘DORestrictPeerSelection’](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection). *The combination of settings you use will depend on your desired peer group(s) and your network topology.*

### Peer-to-peer setup

#### Define peer groups

##### Local area network (LAN)

To limit a peer group to your LAN, choose [‘DODownloadMode’](waas-delivery-optimization-reference.md#download-mode) (1), LAN-mode. This will include any devices that share the same public IP address when they connect to the Internet (behind the same NAT) in a single peer group.

##### Wide area network (WAN)

To achieve peer groups across NATs within the same site, over the WAN, or to have more control in your local environment, use Download Mode ‘2’, Group-mode. Group download mode allows you to define a unique GUID Group ID or leverage existing “boundaries” in your enterprise with the [‘DOGroupIDSource’](waas-delivery-optimization-reference.md#select-the-source-of-group-ids) setting to identify a peer group.

##### GroupIDSource default behavior

There are several options for identifying your Group ID using the [‘DOGroupIDSource’](waas-delivery-optimization-reference.md#select-the-source-of-group-ids). The default behavior, when the [‘DOGroupID’](waas-delivery-optimization-reference.md#group-id) or [‘DOGroupIDSource’](waas-delivery-optimization-reference.md#select-the-source-of-group-ids)  policies are not set, is to determine the Group ID using AD Site (1), Authenticated domain SID (2), or Microsoft Entra tenant ID (5). More information on all [‘DOGroupIDSource’](waas-delivery-optimization-reference.md#select-the-source-of-group-ids) setting options available.

> [!NOTE]
> If your peer group spans across NATs, the Teredo service will be used on port 3544.

##### Restrict peer selection

If your environment requires a more granular approach, you can use the Restrict Peer Discovery setting alongside the Download Mode to achieve more control. For example, if you have several different subnets behind the same NAT but want to limit your peer groups to a single subnet, choose [‘DODownloadMode’](waas-delivery-optimization-reference.md#download-mode) (1) and [‘DORestrictPeerSelection’](waas-delivery-optimization-reference.md#select-a-method-to-restrict-peer-selection)(Subnet). This setting can be used in conjunction with any of the peer-related Download Modes (1’, 2’, or ‘3’).

### Non-peering options

There are two valid Download Modes that do not leverage the peer-to-peer functionality to deliver content; Download Modes (0) and (99). Download Mode (0) provides hash checks of the requested content and allows for quick detection and recovery of corrupted data due to the use of piece level hash checks. Download Mode (99) will provide a reliable download experience over HTTP from the download's original source or Microsoft, with no additional checks.

### Peering with VPN

By default, if Delivery Optimization detects a VPN, peering will not be used. To enable this behavior, use the [‘DOAllowVPNPeerCaching’](waas-delivery-optimization-reference.md#enable-peer-caching-while-the-device-connects-via-vpn) policy. The Delivery Optimization Client looks in the network adapter’s ‘Description’ and ‘FriendlyName’ strings to determine VPN usage. To allow greater flexibility for VPN identification use the [‘DOVpnKeywords’](waas-delivery-optimization-reference.md#vpn-keywords) to add descriptors for a particular VPN. Also related, there is a [‘DODisallowCacheServerDownloadsOnVPN*’](waas-delivery-optimization-reference.md#disallow-cache-server-downloads-on-vpn) policy to prevent downloads from a cache server while on a VPN connection.

## Device counts

:::image type="content" source="images/do-setup-device-counts.png" alt-text="Screenshot of Delivery Optimization device count considerations." lightbox="images/do-setup-device-counts.png":::

Delivery Optimization is designed to perform best in a large-scale environment with many devices. Depending on the size of the environment, you should evaluate the value of the [‘DOMinFileSizeToCache’](waas-delivery-optimization-reference.md#minimum-peer-caching-content-file-size) to optimize peering.

### Cache file size

Content peering has a limited number of slots available at any given time. By default, only content files that are 50MB or larger can be used for peering. In an environment with more than 30 devices, change the [‘DOMinFileSizeToCache’](waas-delivery-optimization-reference.md#minimum-peer-caching-content-file-size) to a lower value (10MB), to have more content available for peering, which can be distributed among many devices. For an even larger number of devices (>100) you can raise this setting to (1MB).

### Mobile devices

By default, peer-to-peer capabilities are not enabled for devices using a battery. If there are many mobile devices in your environment, consider enabling the [‘DOMinBatteryPercentageAllowedToUpload’](waas-delivery-optimization-reference.md#allow-uploads-while-the-device-is-on-battery-while-under-set-battery-level) policy to 60%, to use peering while on battery.

## System resources

:::image type="content" source="images/do-setup-system-resources.png" alt-text="Screenshot of Delivery Optimization system resources considerations." lightbox="images/do-setup-system-resources.png":::

There are some Delivery Optimization configurations that can make an impact when ample system resources are available.

### Disk size

Alter the minimum disk size a device must have to use peering with the [‘DOMinDiskSizeAllowedToPeer’](waas-delivery-optimization-reference.md#minimum-disk-size-allowed-to-use-peer-caching) setting. You can also manage the amount of space the Delivery Optimization cache uses with the following settings:  [‘DOMaxCacheSize’](waas-delivery-optimization-reference.md#max-cache-size)/[’DOAbsoluteMaxCacheSize’](waas-delivery-optimization-reference.md#absolute-max-cache-size).

### RAM size

Control the minimum amount of RAM (inclusive) allowed to use peer caching, [‘DOMinRAMAllowedToPeer’](waas-delivery-optimization-reference.md#minimum-ram-inclusive-allowed-to-use-peer-caching).

### Large # of devices with healthy system resources

In a lab situation, you typically have set number of devices that are plugged in and have a lot of free disk space. By increasing the content expiration interval of [‘DOMaxCacheAge’](waas-delivery-optimization-reference.md#max-cache-age) to 7 or more (up to 30 days), you can take advantage of these devices, using them as excellent upload sources to upload more content over a longer period.

## Improve efficiencies

:::image type="content" source="images/do-setup-improve-efficiencies.png" alt-text="Screenshot of Delivery Optimization improve efficiency considerations." lightbox="images/do-setup-improve-efficiencies.png":::

Looking to improve efficiency? Some of the most powerful settings you can change that could have a big impact within your environment include:

* Help optimize peer connection over HTTP connections using the [‘DOMinBackgroundQoS’](waas-delivery-optimization-reference.md#minimum-background-qos) policy. A good value for this is something lower than the average download speed seen in your network. For example, if your average speed is 1000KB/s, set this policy to 500KB/s.
* Improve chances of downloading from peers and/or cache server by delaying the time DO attempts to make connections before falling back to the HTTP source. The set of policies include: [‘DODelayBackgroundDownloadFromHttp’](waas-delivery-optimization-reference.md#delay-background-download-from-http-in-secs), [‘DODelayForegroundDownloadFromHttp’](waas-delivery-optimization-reference.md#delay-foreground-download-from-http-in-secs), [‘DelayCacheServerFallbackBackground*’](waas-delivery-optimization-reference.md#delay-background-download-cache-server-fallback-in-secs), [‘DelayCacheServerFallbackForeground*’](waas-delivery-optimization-reference.md#delay-foreground-download-cache-server-fallback-in-secs). For applicable scenarios (improving efficiency from peers or cache server) a good starting point is ’60 - 90’ seconds for the background settings and ’30 – 60’ for foreground settings.
* Reduce any disruptions and help to manage the timing of network usage by utilizing the business hours policies, [‘DOSetHoursToLimitForegroundDownloadBandwidth’](waas-delivery-optimization-reference.md#set-business-hours-to-limit-foreground-download-bandwidth) and [‘DOSetHoursToLimitBackgroundDownloadBandwidth’](waas-delivery-optimization-reference.md#set-business-hours-to-limit-background-download-bandwidth).
* Manage network usage as a percentage or absolute value (Note: The absolute policies are recommended in low bandwidth environments). These policies include: [‘DOPercentageMaxForegroundBandwidth’](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth)/[’DOPercentageMaxBackgroundBandwidth’](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth), [‘DOMaxBackgroundDownloadBandwidth’](waas-delivery-optimization-reference.md#maximum-background-download-bandwidth-in-kbs), and [‘DOMaxForegroundDownloadBandwidth’](waas-delivery-optimization-reference.md#maximum-foreground-download-bandwidth-in-kbs).

> [!NOTE]
> Not all content types are not eligible for P2P. Refer the [complete list](waas-delivery-optimization.md#types-of-download-content-supported-by-delivery-optimization) to learn more.

## Connected cache

:::image type="content" source="images/do-setup-connected-cache.png" alt-text="Screenshot of Delivery Optimization options when using Connected Cache." lightbox="images/do-setup-connected-cache.png":::

> [!NOTE]
> When using the Connected Cache dedicated cache solution for your environment there are a handful of policies you should be aware of, some of which have been mentioned throughout this page (denoted with *).

* [‘DOCacheHost’](waas-delivery-optimization-reference.md#cache-server-hostname) is the list of cachehost server names, separated with commas. Delivery Optimization client will connect to the listed Microsoft Connected Cache servers in the order as they are listed.
* [‘DOCacheHostSource’](waas-delivery-optimization-reference.md#cache-server-hostname-source) can be used to dynamically discover cachehost servers on the network, using DHCP.
* [‘DelayCacheServerFallbackBackground’](waas-delivery-optimization-reference.md#delay-background-download-cache-server-fallback-in-secs) and [‘DelayCacheServerFallbackForeground’](waas-delivery-optimization-reference.md#delay-foreground-download-cache-server-fallback-in-secs) are the delay policies to help improve chances of pulling content from the network cachehost servers. (See recommended values in ‘Improving Efficiencies’ section).
* [‘DODisallowCacheServerDownloadsOnVPN’](waas-delivery-optimization-reference.md#disallow-cache-server-downloads-on-vpn) allows control of the cachehost server to supply content, when device is on a VPN connection.

# Monitor Delivery Optimization and Troubleshooting

Whether you opt for the default Delivery Optimization configurations or tailor them to suit your environment, you'll want to track the outcomes to see how they improve your efficiency. [Learn more](hwaas-delivery-optimization-monitor.md) about the monitoring options for Delivery Optimization.

## Troubleshooting

### DO Troubleshooter

[Check out](https://aka.ms/do-fix) the new Delivery Optimization Troubleshooter. This tool provides a device health check to verify the device is set up properly to use Delivery Optimization. To scope the output more specifically, use one of the available switches:

* -HealthCheck: Provides an overall check of the device setup to ensure Delivery Optimization communication is possible on the device.
* -P2P: Provides output specific to P2P settings, efficiency, and errors.
* -MCC: Provides output specific to MCC settings and verifies the client can access the cache server.

### Testing Delivery Optimization

[Learn more](delivery-optimization-test.md) for guidance on basic testing scenarios to see how Delivery Optimization works.

### Common problems and solutions

This section summarizes common problems and some solutions to try.

#### If you don't see any bytes from peers

If you don't see any bytes coming from peers the cause might be one of the following issues:

* Clients aren't able to reach the Delivery Optimization cloud services.
* The cloud service doesn't see other peers on the network.
* Clients aren't able to connect to peers that are offered back from the cloud service.
* None of the computers on the network are getting updates from peers.

#### Clients aren't able to reach the Delivery Optimization cloud services

Try these steps:

1. Start a download of an app that is larger than 50 MB from the Store (for example "Candy Crush Saga").
2. Run `Get-DeliveryOptimizationStatus` from an elevated PowerShell window and observe the [DODownloadMode](waas-delivery-optimization-reference.md#download-mode) setting. For peering to work, download mode should be 1, 2, or 3.
3. If the download mode is 99, it could indicate your device is unable to reach the Delivery Optimization cloud services. Ensure that the Delivery Optimization host names are allowed access: most importantly **\*.prod.do.dsp.mp.microsoft.com**.

#### The cloud service doesn't see other peers on the network

Try these steps:

1. Download the same app on two different devices on the same network, waiting 10 - 15 minutes between downloads.
2. Run `Get-DeliveryOptimizationStatus` from an elevated PowerShell window and ensure that **[DODownloadMode](waas-delivery-optimization-reference.md#download-mode)** is 1 or 2 on both devices.
3. Run `Get-DeliveryOptimizationPerfSnap` from an elevated PowerShell window on the second device. The **NumberOfPeers** field should be nonzero.
4. If the number of peers is zero and **[DODownloadMode](waas-delivery-optimization-reference.md#download-mode)** is 1, ensure that both devices are using the same public IP address to reach the internet (you can easily do this by opening a browser window and do a search for "what is my IP"). In the case where devices aren't reporting the same public IP address, configure **[DODownloadMode](waas-delivery-optimization-reference.md#download-mode)** to 2 (Group) and use a custom **[DOGroupID (Guid)](waas-delivery-optimization-reference.md#group-id)**.

> [!NOTE]
> Starting in Windows 10, version 2004, `Get-DeliveryOptimizationStatus` has a new option `-PeerInfo` which returns a real-time list of potential peers per file, including which peers are successfully connected and the total bytes sent or received from each peer.

#### Clients aren't able to connect to peers offered by the cloud service

Try a Telnet test between two devices on the network to ensure they can connect using port 7680. Follow these steps:

1. Install Telnet by running `dism /online /Enable-Feature /FeatureName:TelnetClient` from an elevated command prompt.
2. Run the test. For example, if you are on device with IP 192.168.8.12 and you're trying to test the connection to 192.168.9.17 run `telnet 192.168.9.17 7680` (the syntax is *telnet [destination IP] [port]*. You'll either see a connection error or a blinking cursor like this /_. The blinking cursor means success.

> [!NOTE]
> You can also use [Test-NetConnection](/powershell/module/nettcpip/test-netconnection) instead of Telnet to run the test.
> **Test-NetConnection -ComputerName 192.168.9.17 -Port 7680**

#### None of the computers on the network are getting updates from peers

Check Delivery Optimization settings that could limit participation in peer caching. Check whether the following settings in assigned group policies, local group policies, or MDM policies are too restrictive:

* Minimum RAM (inclusive) allowed to use peer caching
* Minimum disk size allowed to use peer caching
* Enable peer caching while the device connects using VPN.
* Allow uploads when the device is on battery while under the set battery level
