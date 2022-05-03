---
title: Delivery Optimization Frequently Asked Questions
ms.reviewer: 
manager: dougeby
description: The following is a list of frequently asked questions for Delivery Optimization.
keywords: oms, operations management suite, wdav, updates, downloads, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: carmenf
ms.localizationpriority: medium
ms.author: carmenf
ms.collection: M365-modern-desktop
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Delivery Optimization Frequently Asked Questions

**Applies to**

- Windows 10
- Windows 11

## Does Delivery Optimization work with WSUS?

Yes. Devices will obtain the update payloads from the WSUS server, but must also have an internet connection as they communicate with the Delivery Optimization cloud service for coordination.

## Which ports does Delivery Optimization use?

Delivery Optimization listens on port 7680 for requests from other peers by using TCP/IP. The service will register and open this port on the device. The port must be set to accept inbound traffic through your firewall. If you don't allow inbound traffic over port 7680, you can't use the peer-to-peer functionality of Delivery Optimization. However, devices can still successfully download by using HTTP or HTTPS traffic over port 80 (such as for default Windows Update data).

Delivery Optimization will use Teredo to create peer groups, which include devices across NATs (or any form of internal subnet that uses gateways or firewalls between subnets). For this to work, you must allow inbound TCP/IP traffic over port 3544. Look for a "NAT traversal" setting in your firewall to set this up.

Delivery Optimization also communicates with its cloud service by using HTTP/HTTPS over port 80.

## What are the requirements if I use a proxy?

For Delivery Optimization to successfully use the proxy, you should set up the proxy by using Windows proxy settings or Internet Explorer proxy settings. For details see [Using a proxy with Delivery Optimization](../do/delivery-optimization-proxy.md). Most content downloaded with Delivery Optimization uses byte range requests. Make sure your proxy allows byte range requests. For more information, see [Proxy requirements for Windows Update](/windows/deployment/update/windows-update-troubleshooting).

## What hostnames should I allow through my firewall to support Delivery Optimization?

For communication between clients and the Delivery Optimization cloud service: **\*.do.dsp.mp.microsoft.com**.

**For Delivery Optimization metadata**:

- *.dl.delivery.mp.microsoft.com
- *.emdl.ws.microsoft.com

**For the payloads (optional)**:

- *.download.windowsupdate.com
- *.windowsupdate.com

## Does Delivery Optimization use multicast?

No. It relies on the cloud service for peer discovery, resulting in a list of peers and their IP addresses. Client devices then connect to their peers to obtain download files over TCP/IP.

## How does Delivery Optimization deal with congestion on the router from peer-to-peer activity on the LAN?

Starting in Windows 10, version 1903, Delivery Optimization uses LEDBAT to relieve such congestion. For more information, see this post on the [Networking Blog](https://techcommunity.microsoft.com/t5/Networking-Blog/Windows-Transport-converges-on-two-Congestion-Providers-Cubic/ba-p/339819).

## How does Delivery Optimization handle VPNs?

Delivery Optimization attempts to identify VPNs by checking the network adapter type and details. A connection will be treated as a VPN if the adapter description contains certain keywords, such as "VPN" or "secure."

If the connection is identified as a VPN, Delivery Optimization will suspend uploads to other peers. However, you can allow uploads over a VPN by using the [Enable Peer Caching while the device connects via VPN](../do/waas-delivery-optimization-reference.md#enable-peer-caching-while-the-device-connects-via-vpn) policy.

If you have defined a boundary group in Configuration Manager for VPN IP ranges, you can set the [DownloadMode](../do/waas-delivery-optimization-reference.md#download-mode) policy to 0 for that boundary group, to ensure that there will be no peer-to-peer activity over the VPN. When the device is not connected using a VPN, it can still use peer-to-peer with the default of LAN.

With split tunneling, make sure to allow direct access to these endpoints:

Delivery Optimization service endpoint:

- `https://*.prod.do.dsp.mp.microsoft.com`

Delivery Optimization metadata:

- `http://emdl.ws.microsoft.com`
- `http://*.dl.delivery.mp.microsoft.com`

Windows Update and Microsoft Store backend services and Windows Update and Microsoft Store payloads

- `http://*.windowsupdate.com`
- `https://*.delivery.mp.microsoft.com`
- `https://*.update.microsoft.com`
- `https://tsfe.trafficshaping.dsp.mp.microsoft.com`

For more information about remote work if you're using Configuration Manager, see this post on the [Configuration Manager blog](https://techcommunity.microsoft.com/t5/configuration-manager-blog/managing-patch-tuesday-with-configuration-manager-in-a-remote/ba-p/1269444).

## How does Delivery Optimization handle networks where a public IP address is used in place of a private IP address?

Starting with Windows 10, version 1903 or later, Delivery Optimization no longer restricts connections between LAN peers to those using private IP addresses. If you use public IP addresses instead of private IP addresses, you can use Delivery Optimization in LAN mode.

> [!NOTE]
> If you use public IP addresses instead of private in LAN mode, the bytes downloaded from or uploaded to LAN peers with public IP addresses might be reported as coming from Internet peers.
