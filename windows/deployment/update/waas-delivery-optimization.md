---
title: Configure Delivery Optimization for Windows 10 updates (Windows 10)
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

[//]: # (**Network requirements**)




By default in Windows 10 Enterprise and Education editions, Delivery Optimization allows peer-to-peer sharing on the organization's own network only (specifically, all of the devices must be behind the same NAT), but you can configure it differently in Group Policy and mobile device management (MDM) solutions such as Microsoft Intune.

For more details, see "Download mode" in [Delivery optimization reference](waas-delivery-optimization-reference.md#download-mode).


## Set up Delivery Optimization

See [Set up Delivery Optimization](waas-delivery-optimization-setup.md) for suggested values for a number of common scenarios.

You can use Group Policy or an MDM solution like Intune to configure Delivery Optimization. 

You will find the Delivery Optimization settings in Group Policy under **Configuration\Policies\Administrative Templates\Windows Components\Delivery Optimization**.
In MDM, the same settings are under **.Vendor/MSFT/Policy/Config/DeliveryOptimization/**.

[//]: # (Starting with Windows Intune version 1902, you can set many Delivery Optimization policies as a profile which you can then apply to groups of devices. For more information, see {LINK}.)

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

[//]: # (**What data does Delivery Optimization send to the service?**)
[//]: # (??????????????? I'm not sure we can avoid sharing this, per GDPR guidelines)




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
- [Walkthrough: use Intune to configure Windows Update for Business](waas-wufb-intune.md)
- [Deploy Windows 10 updates using Windows Server Update Services](waas-manage-updates-wsus.md)
- [Deploy Windows 10 updates using System Center Configuration Manager](waas-manage-updates-configuration-manager.md)
- [Manage device restarts after updates](waas-restart.md)
