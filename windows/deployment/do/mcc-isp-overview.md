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
