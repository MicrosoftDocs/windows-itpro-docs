---
title: MCC for Enterprise and Education Overview
description: Overview, supported scenarios, and content types for Microsoft Connected Cache (MCC) for Enterprise and Education.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: conceptual
ms.author: carmenf
author: cmknox
manager: aaroncz
ms.reviewer: mstewart
ms.collection: tier3
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for Enterprise and Education</a>	
ms.date: 05/23/2024
---

# Microsoft Connected Cache for Enterprise and Education Overview

> [!IMPORTANT]
>
> - Microsoft Connected Cache is currently a preview feature. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).
> - As we near the release of public preview, we have paused onboarding. Please continue to submit the form to express interest so we can follow up with you once public preview of Microsoft Connected Cache for Enteprise and Education is available. To register your interest, fill out the form located at [https://aka.ms/MSConnectedCacheSignup](https://aka.ms/MSConnectedCacheSignup).

Microsoft Connected Cache (MCC) for Enterprise and Education (early preview) is a software-only caching solution that delivers Microsoft content within Enterprise and Education networks. MCC can be deployed to as many Windows servers, bare-metal servers, or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using management tools such as Intune.

Microsoft Connected Cache (MCC) for Enterprise and Education (early preview) is a standalone cache for customers moving towards modern management and away from Configuration Manager distribution points. For information about Microsoft Connected Cache in Configuration Manager (generally available, starting Configuration Manager version 2111), see [Microsoft Connected Cache in Configuration Manager](/mem/configmgr/core/plan-design/hierarchy/microsoft-connected-cache).

## Supported scenarios

Connected Cache (early preview) supports the following scenarios:

- Pre-provisioning of devices using Windows Autopilot
- Cloud-only devices, such as Intune-enrolled devices

## Supported content types

When clients download cloud-managed content, they use Delivery Optimization from the cache server installed on a Windows server or VM. Cloud-managed content includes the following types:

- Windows updates: Windows feature and quality updates
- Office Click-to-Run apps: Microsoft 365 Apps and updates
- Client apps: Intune, store apps, and updates
- Endpoint protection: Windows Defender definition updates

For the full list of content endpoints that Microsoft Connected Cache for Enterprise and Education supports, see [Microsoft Connected Cache content and services endpoints](delivery-optimization-endpoints.md).

## How it works

MCC is a hybrid (mix of on-premises and cloud resources) SaaS solution built as an Azure IoT Edge module and Docker compatible Linux container deployed to your Windows devices. The Delivery Optimization team chose IoT Edge for Linux on Windows (EFLOW) as a secure, reliable container management infrastructure. EFLOW is a Linux virtual machine, based on Microsoft's first party CBL-Mariner operating system. It's built with the IoT Edge runtime and validated as a tier 1 supported environment for IoT Edge workloads. MCC is a Linux IoT Edge module running on the Windows Host OS.  

1. The Azure Management Portal is used to create MCC nodes.
1. The MCC container is deployed and provisioned to the server using the installer provided in the portal.
1. Client policy is set in your management solution to point to the IP address or FQDN of the cache server.
1. Microsoft end-user devices make range requests for content from the MCC node.
1. The MCC node pulls content from the CDN, seeds its local cache stored on disk, and delivers the content to the client.
1. Subsequent requests from end-user devices for content will now come from cache.
1. If the MCC node is unavailable, the client pulls content from CDN to ensure uninterrupted service for your subscribers.

The following diagram displays an overview of how MCC functions:

:::image type="content" source="./images/waas-mcc-diag-overview.png" alt-text="Diagram displaying the components of MCC." lightbox="./images/waas-mcc-diag-overview.png":::

## IoT Edge

Even though your MCC scenario isn't related to IoT, Azure IoT Edge is used as a more generic Linux container deployment and management infrastructure. The Azure IoT Edge runtime sits on your designated MCC device and performs management and communication operations. The runtime performs several functions important to manage MCC on your edge device:

1. Installs and updates MCC on your edge device.
1. Maintains Azure IoT Edge security standards on your edge device.
1. Ensures that MCC is always running.
1. Reports MCC health and usage to the cloud for remote monitoring.
  
For more information on Azure IoT Edge, see the Azure IoT Edge [documentation](/azure/iot-edge/about-iot-edge).
