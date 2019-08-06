---
title: Configure Delivery Optimization for Windows 10 updates (Windows 10)
ms.reviewer: 
manager: laurawi
description: Delivery Optimization is a peer-to-peer distribution method in Windows 10
keywords: oms, operations management suite, wdav, updates, downloads, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.localizationpriority: medium
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---

# Delivery Optimization for Windows 10 updates


**Applies to**

- Windows 10

> **Looking for consumer information?** See [Windows Update: FAQ](https://support.microsoft.com/help/12373/windows-update-faq) 

Windows updates, upgrades, and applications can contain packages with very large files. Downloading and distributing updates can consume quite a bit of network resources on the devices receiving them. You can use Delivery Optimization to reduce bandwidth consumption by sharing the work of downloading these packages among multiple devices in your deployment. Delivery Optimization can accomplish this because it is a self-organizing distributed cache that allows clients to download those packages from alternate sources (such as other peers on the network) in addition to the traditional Internet-based servers. You can use Delivery Optimization in conjunction with Windows Update, Windows Server Update Services (WSUS), Windows Update for Business, or System Center Configuration Manager (when installation of Express Updates is enabled).  

Delivery Optimization is a cloud-managed solution. Access to the Delivery Optimization cloud services is a requirement. This means that in order to use the peer-to-peer functionality of Delivery Optimization, devices must have access to the internet.


>[!NOTE]
>WSUS can also use [BranchCache](waas-branchcache.md) for content sharing and caching. If Delivery Optimization is enabled on devices that use BranchCache, Delivery Optimization will be used instead. 

## Requirements

The following table lists the minimum Windows 10 version that supports Delivery Optimization:

| Device type | Minimum Windows version |
|------------------|---------------|
| Computers running Windows 10 | 1511 |
| Computers running Server Core installations of Windows Server | 1709 |
| IoT devices | 1803 |
| HoloLens devices | 1803 |

**Types of download packages supported by Delivery Optimization**

| Download package | Minimum Windows version |
|------------------|---------------|
| Windows 10 updates (feature updates and quality updates) | 1511 |
| Windows 10 drivers | 1511 |
| Windows Store files | 1511 |
| Windows Store for Business files | 1511 |
| Windows Defender definition updates | 1511 |
| Office Click-to-Run updates | 1709 |
| Win32 apps for Intune | 1709 |
| SCCM Express Updates | 1709 + Configuration Manager version 1711 |

<!-- ### Network requirements

{can you share with me what the network requirements are?}-->




By default in Windows 10 Enterprise and Education editions, Delivery Optimization allows peer-to-peer sharing on the organization's own network only (specifically, all of the devices must be behind the same NAT), but you can configure it differently in Group Policy and mobile device management (MDM) solutions such as Microsoft Intune.

For more details, see "Download mode" in [Delivery optimization reference](waas-delivery-optimization-reference.md#download-mode).


## Set up Delivery Optimization

See [Set up Delivery Optimization](waas-delivery-optimization-setup.md) for suggested values for a number of common scenarios.

You can use Group Policy or an MDM solution like Intune to configure Delivery Optimization. 

You will find the Delivery Optimization settings in Group Policy under **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization**.
In MDM, the same settings are under **.Vendor/MSFT/Policy/Config/DeliveryOptimization/**.

Starting with Microsoft Intune version 1902, you can set many Delivery Optimization policies as a profile which you can then apply to groups of devices. For more information, see [Delivery Optimization settings in Microsoft Intune](https://docs.microsoft.com/intune/delivery-optimization-windows))

**Starting with Windows 10, version 1903,** you can use the Azure Active Directory (AAD) Tenant ID as a means to define groups. To do this set the value for DOGroupIdSource to its new maximum value of 5.

## Reference

For complete list of every possible Delivery Optimization setting, see [Delivery Optimization reference](waas-delivery-optimization-reference.md).


## How Microsoft uses Delivery Optimization
At Microsoft, to help ensure that ongoing deployments weren’t affecting our network and taking away bandwidth for other services, Microsoft IT used a couple of different bandwidth management strategies. Delivery Optimization, peer-to-peer caching enabled through Group Policy, was piloted and then deployed to all managed devices using Group Policy. Based on recommendations from the Delivery Optimization team, we used the "group" configuration to limit sharing of content to only the devices that are members of the same Active Directory domain. The content is cached for 24 hours. More than 76 percent of content came from peer devices versus the Internet.

For more details, check out the [Adopting Windows as a Service at Microsoft](https://www.microsoft.com/itshowcase/Article/Content/851/Adopting-Windows-as-a-service-at-Microsoft) technical case study.



## Frequently asked questions

**Does Delivery Optimization work with WSUS?**: Yes. Devices will obtain the update payloads from the WSUS server, but must also have an internet connection as they communicate with the Delivery Optimization cloud service for coordination.

**Which ports does Delivery Optimization use?**: For peer-to-peer traffic, it uses 7680 for TCP/IP or 3544 for NAT traversal (optionally Teredo). For client-service communication, it uses HTTP or HTTPS over port 80/443.

**What are the requirements if I use a proxy?**: You must allow Byte Range requests. See [Proxy requirements for Windows Update](https://support.microsoft.com/help/3175743/proxy-requirements-for-windows-update) for details.

**What hostnames should I allow through my firewall to support Delivery Optimization?**: 

For communication between clients and the Delivery Optimization cloud service: **\*.do.dsp.mp.microsoft.com**.

For Delivery Optimization metadata: 

- *.dl.delivery.mp.microsoft.com
- *.emdl.ws.microsoft.com

For the payloads (optional):

- *.download.windowsupdate.com 
- *.windowsupdate.com

**Does Delivery Optimization use multicast?**: No. It relies on the cloud service for peer discovery, resulting in a list of peers and their IP addresses. Client devices then connect to their peers to obtain download files over TCP/IP.

**How does Delivery Optimization deal with congestion on the router from peer-to-peer activity on the LAN?**: Starting in Windows 10, version 1903, Delivery Optimizatio uses LEDBAT to relieve such congestion. For more details see this post on the [Networking Blog](https://techcommunity.microsoft.com/t5/Networking-Blog/Windows-Transport-converges-on-two-Congestion-Providers-Cubic/ba-p/339819).


## Troubleshooting

This section summarizes common problems and some solutions to try.

### If you don't see any bytes from peers

If you don’t see any bytes coming from peers the cause might be one of the following issues:

- Clients aren’t able to reach the Delivery Optimization cloud services.
- The cloud service doesn’t see other peers on the network. 
- Clients aren’t able to connect to peers that are offered back from the cloud service.


### Clients aren't able to reach the Delivery Optimization cloud services.

If you suspect this is the problem, try these steps:

1. Start a download of an app that is larger than 50 MB from the Store (for example "Candy Crush Saga").
2. Run `Get-DeliveryOptimizationStatus` from an elevated Powershell window and observe the DownloadMode setting. For peering to work, DownloadMode should be 1, 2, or 3.
3. If **DownloadMode** is 99 it could indicate your device is unable to reach the Delivery Optimization cloud services. Ensure that the Delivery Optimization hostnames are allowed access: most importantly **\*.do.dsp.mp.microsoft.com**.



### The cloud service doesn't see other peers on the network.

If you suspect this is the problem, try these steps:

1. Download the same app on two different devices on the same network, waiting 10 – 15 minutes between downloads.
2. Run `Get-DeliveryOptimizationStatus` from an elevated Powershell window and ensure that **DownloadMode** is 1 or 2 on both devices.
3. Run `Get-DeliveryOptimizationPerfSnap` from an elevated Powershell window on the second device. The **NumberOfPeers** field should be non-zero.
4. If the number of peers is zero and you have **DownloadMode** = 1, ensure that both devices are using the same public IP address to reach the internet. To do this, open a browser Windows and search for “what is my IP”. You can **DownloadMode 2** (Group) and a custom GroupID (Guid) to fix this if the devices aren’t reporting the same public IP address.


### Clients aren't able to connect to peers offered by the cloud service

If you suspect this is the problem, try a Telnet test between two devices on the network to ensure they can connect using port 7680. To do this, follow these steps:

1. Install Telnet by running **dism /online /Enable-Feature /FeatureName:TelnetClient** from an elevated command prompt.
2. Run the test. For example, if you are on device with IP 192.168.8.12 and you are trying to test the connection to 192.168.9.17 run **telnet 192.168.9.17 7680** (the syntax is *telnet [destination IP] [port]*. You will either see a connection error or a blinking cursor like this /_. The blinking cursor means success.





## Learn more

[Windows 10, Delivery Optimization, and WSUS](https://blogs.technet.microsoft.com/mniehaus/2016/08/16/windows-10-delivery-optimization-and-wsus-take-2/)


## Related topics

- [Update Windows 10 in the enterprise](index.md)
- [Overview of Windows as a service](waas-overview.md)
- [Prepare servicing strategy for Windows 10 updates](waas-servicing-strategy-windows-10-updates.md)
- [Build deployment rings for Windows 10 updates](waas-deployment-rings-windows-10-updates.md)
- [Assign devices to servicing channels for Windows 10 updates](waas-servicing-channels-windows-10-updates.md)
- [Optimize update delivery for Windows 10 updates](waas-optimize-windows-10-updates.md)
- [Configure BranchCache for Windows 10 updates](waas-branchcache.md)
- [Deploy updates for Windows 10 Mobile Enterprise and Windows 10 IoT Mobile](waas-mobile-updates.md) 
- [Deploy updates using Windows Update for Business](waas-manage-updates-wufb.md)
- [Configure Windows Update for Business](waas-configure-wufb.md)
- [Integrate Windows Update for Business with management solutions](waas-integrate-wufb.md)
- [Walkthrough: use Group Policy to configure Windows Update for Business](waas-wufb-group-policy.md)
- [Walkthrough: use Intune to configure Windows Update for Business](https://docs.microsoft.com/intune/windows-update-for-business-configure)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)
