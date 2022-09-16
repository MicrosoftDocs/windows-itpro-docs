---
title: Client routing
manager: dougeby
description: How client routing works for Microsoft Connected Cache
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

# Client routing

Before serving traffic to your customers, client routing configuration is needed. During the configuration of your cache node in Azure portal, you'll be able to route your clients to your cache node.

Microsoft Connected Cache offers two ways for you to route your clients to your cache node. The first method of manual entry involves uploading a comma-separated list of CIDR blocks that represents the clients. The second method of setting BGP (Border Gateway Protocol) is more automatic and dynamic, which is set up by establishing neighborships with other ASNs. All routing methods are set up within Azure portal. 

Once client routing and other settings are configured, your cache node will be able to download content and serve traffic to your customers. 

At this time, only IPv4 addresses are supported. IPv6 addresses aren't supported.

### Manual routing

You can manually upload a list of your CIDR blocks in Azure portal to enable manual routing of your customers to your cache node.

### BGP routing

BGP (Border Gateway Protocol) routing is another method offered for client routing. BGP dynamically retrieves CIDR ranges by exchanging information with routers to understand reachable networks. For an automatic method of routing traffic, you can choose to configure BGP routing in Azure portal.

