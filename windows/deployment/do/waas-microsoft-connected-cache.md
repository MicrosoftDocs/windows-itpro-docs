---
title: Microsoft Connected Cache overview
manager: dougeby
description: This article provides information about Microsoft Connected Cache (MCC), a software-only caching solution.
keywords: oms, operations management suite, wdav, updates, downloads, log analytics
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: carmenf
ms.localizationpriority: medium
ms.author: carmenf
ms.collection:
- M365-modern-desktop
- m365initiative-coredeploy
- highpri
ms.topic: article
ms.custom: seo-marvel-apr2020
---

# Microsoft Connected Cache overview

**Applies to**

- Windows 10
- Windows 11

Microsoft Connected Cache (MCC) preview is a software-only caching solution that delivers Microsoft content within Enterprise networks. MCC can be deployed to as many bare-metal servers or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using management tools such as Intune.

MCC is a hybrid (mix of on-prem and cloud resources) SaaS solution built as an Azure IoT Edge module and Docker compatible Linux container deployed to your Windows devices. The Delivery Optimization team chose IoT Edge for Linux on Windows (EFLOW) as a secure, reliable container management infrastructure. EFLOW is a Linux virtual machine, based on Microsoft's first party CBL-Mariner operating system. It’s built with the IoT Edge runtime and validated as a tier 1 supported environment for IoT Edge workloads. MCC will be a Linux IoT Edge module running on the Windows Host OS.  

Even though your MCC scenario is not related to IoT, Azure IoT Edge is used as a more generic Linux container deployment and management infrastructure. The Azure IoT Edge runtime sits on your designated MCC device and performs management and communication operations. The runtime performs several functions important to manage MCC on your edge device:

1. Installs and updates MCC on your edge device.
2. Maintains Azure IoT Edge security standards on your edge device.
3. Ensures that MCC is always running.
4. Reports MCC health and usage to the cloud for remote monitoring.
  
To deploy a functional MCC to your device, you must obtain the necessary keys to provision the Connected Cache instance that communicates with Delivery Optimization services, and enable the device to cache and deliver content. The architecture of MCC is described below.
  
For more details information on Azure IoT Edge, please see the Azure IoT Edge [documentation](/azure/iot-edge/about-iot-edge).

## How MCC Works  

1. The Azure Management Portal is used to create MCC nodes.
2. The MCC container is deployed and provisioned to the server using the installer provided in the portal.
3. Client policy is set in your management solution to point to the IP address or FQDN of the cache server.
4. Microsoft end-user devices make range requests for content from the MCC node.
5. The MCC node pulls content from the CDN, seeds its local cache stored on disk, and delivers the content to the client.
6. Subsequent requests from end-user devices for content will now come from cache.
7. If the MCC node is unavailable, the client will pull content from CDN to ensure uninterrupted service for your subscribers.

See the following diagram.

[!MCC Overview](images/waas-mcc-diag-overview.png#lightbox)

## Also see

[Microsoft Connected Cache for Enterprises](mcc-enterprise.md)<br>
[Microsoft Connected Cache for ISPs](mcc-isp.md)<br>
[Introducing Microsoft Connected Cache](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/introducing-microsoft-connected-cache-microsoft-s-cloud-managed/ba-p/963898)