---
title: MCC for ISPs Overview
description: Overview of Microsoft Connected Cache for ISPs. Learn about how MCC works, supported scenarios, and supported content.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: overview
manager: aaroncz
ms.author: carmenf
author: cmknox
ms.reviewer: mstewart
ms.collection: tier3
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for ISPs</a>	
ms.date: 05/23/2024
---

# Microsoft Connected Cache for ISPs overview

Microsoft Connected Cache (MCC) for Internet Service Providers (preview) is a free software-only caching solution that delivers Microsoft content. MCC can be deployed free of charge to as many bare-metal servers or VMs as needed and is managed from a cloud portal. When deployed, MCC can help to reduce your network bandwidth usage for Microsoft software content and updates. Cache nodes are created in the cloud portal and are configured to deliver traffic to customers by manual CIDR or BGP routing.

## Supported scenarios

Microsoft Connected Cache (preview) supports the following scenarios:

- Internet service provider that provides content downloads for end customers
- Network service providers that provide transit for other service providers

## Supported content

Microsoft Connected Cache uses Delivery Optimization as the backbone for Microsoft content delivery. Microsoft Connected Cache caches the following types:

- Windows updates: Windows feature and quality updates
- Office Click-to-Run apps: Microsoft 365 Apps and updates
- Client apps: Intune, store apps, and updates
- Endpoint protection: Windows Defender definition updates
- Xbox: Xbox Game Pass (PC only)

For the full list of content endpoints that Microsoft Connected Cache for ISPs supports, see [Microsoft Connected Cache content and services endpoints](delivery-optimization-endpoints.md).

### Are you already peering with 8075?

MCC complements peering by offloading static content that is served off of multiple CDNs such as Akamai, Lumen, Edgecast. Static content such as OS updates, Apps, Software installs etc. can't be served via 8075. So, even if you're peering with Microsoft, you can benefit from installing MCC.

:::image type="content" source="./media/mcc-isp-overview/mcc-isp-peeringvsmcc.png" alt-text="Chart containing Peering vs Cache Content Traffic." lightbox="./media/mcc-isp-overview/mcc-isp-peeringvsmcc.png":::

## How MCC works

:::image type="content" source="./images/mcc-isp-diagram.png" alt-text="Data flow diagram of how Microsoft Connected Cache works." lightbox="./images/mcc-isp-diagram.png":::

The following steps describe how MCC is provisioned and used:

1. The Azure portal is used to create and manage MCC nodes.

1. A shell script is used to provision the server and deploy the MCC application.

1. A combination of the Azure portal and shell script is used to configure Microsoft Delivery Optimization Services to route traffic to the MCC server.

    - The publicly accessible IPv4 address of the server is configured on the portal.

    - **Manual Routing:** Providing the CIDR blocks that represent the client IP address space, which should be routed to the MCC node.

    - **BGP Routing:** A shell script is used to initiate a peering session with a router in the operator network, and the operator initiates a session with the MCC node.

        > [!NOTE]
        > Only IPv4 addresses are supported at this time. Entering IPv6 addresses will result in an error.

1. Microsoft end-user devices (clients) periodically connect with Microsoft Delivery Optimization Services, and the services match the IP address of the client with the IP address of the corresponding MCC node.

1. Microsoft clients make the range requests for content from the MCC node.

1. An MCC node gets content from the CDN, seeds its local cache stored on disk, and delivers the content to the client.

1. Subsequent requests from end-user devices for content will be served from cache.

1. If the MCC node is unavailable, the client gets content from the CDN to ensure uninterrupted service for your subscribers.

### Hardware recommendation

The following are recommended hardware configurations based on traffic ranges:

| Microsoft Connected Cache Machine Class | Scenario |Traffic Range| VM/Hardware Recommendation|
| -------- | -------- | -------- | -------- |
| Edge   | For smaller ISPs or remote sites part of a larger network. |< 5 Gbps Peak| **VM** </br> </br>Up to 8 cores</br></br>Up to 16-GB memory</br></br>1 500 GB SSD|
| Metro POP   | For ISPs, IXs, or Transit Providers serving a moderate amount of traffic in a network that might require one of more cache nodes.   |5 to 20 Gbps Peak| **VM or hardware**</br></br>16 cores*</br></br>32-GB memory</br></br>2 - 3 500-GB SSDs each|
|Data Center|For ISPs, IXs, or Transit Providers serving a large amount traffic daily and might require deployment of multiple cache nodes.|20 to 40 Gbps Peak| **Hardware**, see sample spec below:</br></br> 32 or more cores*</br></br>64 or more GB memory</br></br>4 - 6 500 - 1-TB SSDs** each |

*Requires systems (chipset, CPU, motherboard) with PCIe version 3, or higher.

**Drive speeds are important and to achieve higher egress, we recommend SSD NVMe in m.2 PCIe slot (version 4, or higher).
