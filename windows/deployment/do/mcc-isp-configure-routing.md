---
title: Configure client routing for cache node
manager: dougeby
description: How to configure client routing for a cache node
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: amyzhou
ms.localizationpriority: medium
ms.author: amyzhou
ms.collection: M365-modern-desktop
ms.topic: article
---

# Configure client routing for cache node

All configuration routing takes place within the Azure portal. There are two main methods to route clients to your cache node:

- **Manual routing**: Providing the CIDR blocks that represent the client IP address space, which should be routed to the MCC node.
- **BGP routing**: BGP neighborship sessions from the cache node to the router or route server will be initiated automatically based on the portal configuration.

> [!NOTE]
> Only IPv4 addresses are supported at this time. Entering IPv6 addresses will result in an error.

## Manual routing

1. To configure client routing using manually entered CIDR blocks, navigate to **Settings** >> **Routing Information**. 
1. Select **Manual prefix entry** as the Prefix Source.
1. Paste in the CIDR blocks, with each IP range separated by a comma.
1. Lastly, press Save to save your changes.

## BGP routing

1. To configure client routing using BGP, navigate to **Settings** >> **Routing Information**.
1. Select **BGP** as the Prefix source.
1. Select on **Add neighbor** to add the ASN(s) and IP address(es) of your BGP neighbors.
1. If you'd like to download your BGP routes, select on the **Download Routes** button.
1. Lastly, press Save to save your changes.
1. From your end, establish a neighborship from your router to MCC's host machine. Use the IP address of the host machine that's running the MCC container.

> [!NOTE]
> With the BGP configuration, you're essentially setting up an iBGP neighbor in your public ASN. For example, when you initiate the BGP session from the router to the cache node, you would use your own ASN.

> [!NOTE]
> Make sure there aren't any firewall rules blocking this connection.

To verify that BGP has been configured properly and that Microsoft Connected Cache services are receiving the route advertisements, wait about five minutes before refreshing cache node settings page and view the BGP routes received.

If after five minutes, you don't see traffic, navigate to [Support and Troubleshooting](mcc-isp-support.md) for more information.
