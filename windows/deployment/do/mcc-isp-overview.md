---
title: MCC for ISPs Overview
manager: aaroncz
description: Overview for Microsoft Connected Cache for ISPs
ms.prod: windows-client
author: amymzhou
ms.author: amyzhou
ms.topic: article
ms.date: 05/09/2023
ms.technology: itpro-updates
ms.collection: tier3
---

# Microsoft Connected Cache for ISPs Overview

**Applies to**

- Windows 10
- Windows 11

Microsoft Connected Cache (MCC) for Internet Service Providers (preview) is a free software-only caching solution that delivers Microsoft content. MCC can be deployed free of charge to as many bare-metal servers or VMs as needed and is managed from a cloud portal. When deployed, MCC can help to reduce your network bandwidth usage for Microsoft software content and updates. Cache nodes are created in the cloud portal and are configured to deliver traffic to customers by manual CIDR or BGP routing.

## Supported scenarios

Microsoft Connected Cache (preview) supports the following scenarios:

- Internet service provider that provides content downloads for end customers
- Network service providers that provide transit for other service providers

## Supported content

Microsoft Connected Cache uses Delivery Optimization as the backbone for Microsoft content delivery. Microsoft Connected Cache caches the following types:

- Windows Update for Business: Windows feature and quality updates
- Office Click-to-Run apps: Microsoft 365 Apps and updates
- Client apps: Microsoft Store apps and updates
- Endpoint protection: Windows Defender definition updates
- Xbox: Xbox Game Pass (PC only)

For the full list of content endpoints that Microsoft Connected Cache for ISPs supports, see [Microsoft Connected Cache content and services endpoints](delivery-optimization-endpoints.md).

## How MCC works

:::image type="content" source="./images/mcc-isp-diagram.png" alt-text="Data flow diagram of how Microsoft Connected Cache works." lightbox="./images/mcc-isp-diagram.png":::

The following steps describe how MCC is provisioned and used:

1. The Azure Management Portal is used to create and manage MCC nodes.

1. A shell script is used to provision the server and deploy the MCC application.

1. A combination of the Azure Management Portal and shell script is used to configure Microsoft Delivery Optimization Services to route traffic to the MCC server.

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
