---
title: Microsoft Connected Cache overview
manager: dougeby
description: This article provides information about Microsoft Connected Cache (MCC), a software-only caching solution.
ms.prod: windows-client
author: carmenf
ms.localizationpriority: medium
ms.author: carmenf
ms.topic: article
ms.custom: seo-marvel-apr2020
ms.technology: itpro-updates
---

# Microsoft Connected Cache overview

**Applies to**

- Windows 10
- Windows 11

> [!IMPORTANT]
> Microsoft Connected Cache is currently a preview feature. To view our early preview documentation, visit [Microsoft Connected Cache for Internet Service Providers (ISPs)](mcc-isp.md). For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

Microsoft Connected Cache (MCC) preview is a software-only caching solution that delivers Microsoft content within Enterprise networks. MCC can be deployed to as many bare-metal servers or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using management tools such as Intune.

MCC is a hybrid (mix of on-premises and cloud resources) SaaS solution built as an Azure IoT Edge module and Docker compatible Linux container deployed to your Windows devices. The Delivery Optimization team chose IoT Edge for Linux on Windows (EFLOW) as a secure, reliable container management infrastructure. EFLOW is a Linux virtual machine, based on Microsoft's first party CBL-Mariner operating system. It’s built with the IoT Edge runtime and validated as a tier 1 supported environment for IoT Edge workloads. MCC will be a Linux IoT Edge module running on the Windows Host OS.  

Even though your MCC scenario isn't related to IoT, Azure IoT Edge is used as a more generic Linux container deployment and management infrastructure. The Azure IoT Edge runtime sits on your designated MCC device and performs management and communication operations. The runtime performs several functions important to manage MCC on your edge device:

1. Installs and updates MCC on your edge device.
1. Maintains Azure IoT Edge security standards on your edge device.
1. Ensures that MCC is always running.
1. Reports MCC health and usage to the cloud for remote monitoring.
  
To deploy a functional MCC to your device, you must obtain the necessary keys to provision the Connected Cache instance that communicates with Delivery Optimization services, and enable the device to cache and deliver content. The architecture of MCC is described below.
  
For more information on Azure IoT Edge, see the Azure IoT Edge [documentation](/azure/iot-edge/about-iot-edge).

## How MCC Works  

1. The Azure Management Portal is used to create MCC nodes.
1. The MCC container is deployed and provisioned to the server using the installer provided in the portal.
1. Client policy is set in your management solution to point to the IP address or FQDN of the cache server.
1. Microsoft end-user devices make range requests for content from the MCC node.
1. The MCC node pulls content from the CDN, seeds its local cache stored on disk, and delivers the content to the client.
1. Subsequent requests from end-user devices for content will now come from cache.
1. If the MCC node is unavailable, the client will pull content from CDN to ensure uninterrupted service for your subscribers.

The following diagram displays and overview of how MCC functions:

:::image type="content" source="./images/waas-mcc-diag-overview.png" alt-text="Diagram displaying the components of MCC." lightbox="./images/waas-mcc-diag-overview.png":::



## Next steps

- [Microsoft Connected Cache for Enterprise and Education](mcc-enterprise-prerequisites.md)
- [Microsoft Connected Cache for ISPs](mcc-isp-signup.md)
