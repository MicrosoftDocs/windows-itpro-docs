---
title: Microsoft Connected Cache overview
manager: aaroncz
description: This article provides information about Microsoft Connected Cache (MCC), a software-only caching solution.
ms.prod: windows-client
author: cmknox
ms.localizationpriority: medium
ms.author: carmenf
ms.topic: article
ms.technology: itpro-updates
ms.date: 12/31/2017
ms.collection: tier3
---

# Microsoft Connected Cache overview

**Applies to**

- Windows 10
- Windows 11

> [!IMPORTANT]
> Microsoft Connected Cache is currently a preview feature. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

Microsoft Connected Cache is a software-only caching solution that delivers Microsoft content. Microsoft Connected Cache has two main offerings: 1) Microsoft Connected Cache for Internet Service Providers and 2) Microsoft Connected Cache for Enterprise and Education (early preview). Both products are created and managed in the cloud portal.

## Microsoft Connected Cache for ISPs (preview)

> [!NOTE]
> Microsoft Connected Cache for Internet Service Providers is now in Public Preview! Instead of submitting a survey, you can directly onboard onto our product by following the instructions on [Operator sign up and service onboarding for Microsoft Connected Cache](mcc-isp-signup.md).

Microsoft Connected Cache (MCC) for Internet Service Providers is currently in preview. MCC can be deployed to as many bare-metal servers or VMs as needed and is managed from a cloud portal. When deployed, MCC can help to reduce your network bandwidth usage for Microsoft software content and updates. Cache nodes are created in the cloud portal and are configured to deliver traffic to customers by manual CIDR or BGP routing.

## Microsoft Connected Cache for Enterprise and Education (early preview)

> [!NOTE]
> We are still accepting Enterprise and Education customers to join the private preview. To register your interest, please fill out our survey here: [https://aka.ms/MSConnectedCacheSignup](https://aka.ms/MSConnectedCacheSignup)

Microsoft Connected Cache (MCC) for Enterprise and Education (early preview) is a software-only caching solution that delivers Microsoft content within Enterprise and Education networks. MCC can be deployed to as many Windows servers, bare-metal servers, or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using management tools such as Intune.

MCC is a hybrid (mix of on-premises and cloud resources) SaaS solution built as an Azure IoT Edge module and Docker compatible Linux container deployed to your Windows devices. The Delivery Optimization team chose IoT Edge for Linux on Windows (EFLOW) as a secure, reliable container management infrastructure. EFLOW is a Linux virtual machine, based on Microsoft's first party CBL-Mariner operating system. It’s built with the IoT Edge runtime and validated as a tier 1 supported environment for IoT Edge workloads. MCC will be a Linux IoT Edge module running on the Windows Host OS.  

## IoT Edge 

Both of Microsoft Connected Cache product offerings use Azure IoT Edge. Even though your MCC scenario isn't related to IoT, Azure IoT Edge is used as a more generic Linux container deployment and management infrastructure. The Azure IoT Edge runtime sits on your designated MCC device and performs management and communication operations. The runtime performs several functions important to manage MCC on your edge device:

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
