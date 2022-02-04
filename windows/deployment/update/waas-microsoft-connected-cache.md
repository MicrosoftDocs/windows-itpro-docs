---
title: What is Microsoft Connected Cache?
manager: dougeby
description: This article provides information about Microsoft Connected Cache, a software-only caching solution.
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

# What is Microsoft Connected Cache?

**Applies to**

- Windows 10
- Windows 11

Microsoft Connected Cache (MCC) preview is a software-only caching solution that delivers Microsoft content within Enterprise networks. MCC can be deployed to as many bare-metal servers or VMs as needed and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying the client policy using your management tool (e.g. Intune).

Microsoft Connected Cache is a Hybrid (mix of on-prem and cloud resources) SaaS solution built as an Azure IoT Edge module, a Docker compatible Linux container, that is deployed to your Windows devices. The Delivery Optimization team chose IoT Edge for Linux on Windows (EFLOW) as a secure, reliable container management infrastructure. EFLOW is a Linux virtual machine, based on Microsoft's first party CBL-Mariner operating system. It’s built with the IoT Edge runtime and validated as a tier 1 supported environment for IoT Edge workloads. Microsoft Connected Cache will be a Linux IoT Edge module running on the Windows Host OS.  

Even though your Microsoft Connected Cache scenario is not related to IoT, Azure IoT Edge is used as a more generic Linux container deployment and management infrastructure. The Azure IoT Edge runtime sits on your designated MCC device and performs management and communication operations. The runtime performs several functions important to manage Microsoft Connected Cache on your edge device:

1. Installs and updates Microsoft Connected Cache on your edge device.
2. Maintains Azure IoT Edge security standards on your edge device.
3. Ensures that Microsoft Connected Cache is always running.
4. Reports Microsoft Connected Cache health and usage to the cloud for remote monitoring.
  
To deploy a functional Microsoft Connected Cache to your device, you must obtain the necessary keys that will provision the Connected Cache instance to communicate with Delivery Optimization services and enable the device to cache and deliver content.
  
The architecture of Microsoft Connected Cache is described below.
  
For more details information on Azure IoT Edge, please see the Azure IoT Edge [documentation](/azure/iot-edge/about-iot-edge).

## How Microsoft Connected Cache Works  

1. The Azure Management Portal used to create the Microsoft Connected Cache nodes.
2. The Microsoft Connected Cache container deployed and provisioned to the server using the installer provided in the portal.
3. Set the client policy in your management solution to point to the IP Address/FQDN of the cache server.
4. Microsoft end-user devices make the range requests for content from the Microsoft Connected Cache node.
5. Microsoft Connected Cache node pulls content from the CDN, seeds its local cache stored on disk and delivers the content to the client.
6. Subsequent requests from end-user devices for content will now come from cache.
7. If the Microsoft Connected Cache node is unavailable, the client will pull content from CDN to ensure uninterrupted service for your subscribers.

![Microsoft Connected Cache Overview](images/waas-mcc-diag-overview.png#lightbox)