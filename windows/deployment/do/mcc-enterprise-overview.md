---
title: Overview and requirements
manager: dougeby
description: Overview and requirements of Microsoft Connected Cache (MCC) for Enterprise and Education.
ms.prod: w10
author: amymzhou
ms.localizationpriority: medium
ms.author: amyzhou
ms.collection: M365-modern-desktop
ms.topic: article
---

# Overview and requirements of Microsoft Connected Cache for Enterprise and Education (early preview)

**Applies to**

- Windows 10
- Windows 11

## Overview

> [!IMPORTANT]
> Microsoft Connected Cache is currently a early preview feature. During this phase we invite customers to take part in early access for testing purposes. This phase does not include formal support, and should not be used for production workloads. For more information, see [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/).

Microsoft Connected Cache (MCC) preview is a software-only caching solution that delivers Microsoft content within Enterprise networks. MCC can be deployed to as many physical servers or VMs as needed, and is managed from a cloud portal. Cache nodes are created in the cloud portal and are configured by applying a client policy using your management tool, such as [Intune](/mem/intune/).

MCC is a hybrid (a mix of on-premises and cloud resources) SaaS solution built as an Azure IoT Edge module; it's a Docker compatible Linux container that is deployed to your Windows devices. IoT Edge for Linux on Windows (EFLOW) was chosen because it's a secure, reliable container management infrastructure. EFLOW is a Linux virtual machine, based on Microsoft's first party CBL-Mariner operating system. It's built with the IoT Edge runtime and validated as a tier 1 supported environment for IoT Edge workloads. MCC will be a Linux IoT Edge module running on the Windows Host OS.

Even though your MCC scenario isn't related to IoT, Azure IoT Edge is used as a more generic Linux container, deployment, and management infrastructure. The Azure IoT Edge runtime sits on your designated MCC device and performs management and communication operations. The runtime performs the following important functions to manage MCC on your edge device: 

1. Installs and updates MCC on your edge device. 
1. Maintains Azure IoT Edge security standards on your edge device. 
1. Ensures that MCC is always running. 
1. Reports MCC health and usage to the cloud for remote monitoring.

To deploy a functional MCC to your device, you must obtain the necessary keys that will provision the Connected Cache instance to communicate with Delivery Optimization services and enable the device to cache and deliver content. See [figure 1](#fig1) below for a summary of the architecture of MCC, built using IoT Edge.

For more information about Azure IoT Edge, see [What is Azure IoT Edge](/azure/iot-edge/about-iot-edge).

## How MCC works

The following steps describe how MCC is provisioned and used.

1. The Azure Management Portal is used to create MCC nodes.
1. The MCC container is deployed and provisioned to a server using the installer provided in the portal.
1. Client policy is configured in your management solution to point to the IP address or FQDN of the cache server.
1. Microsoft end-user devices make range requests for content from the MCC node.
1. An MCC node pulls content from the CDN, seeds its local cache stored on disk, and delivers content to the client.
1. Subsequent requests from end-user devices for content come from the cache.

If an MCC node is unavailable, the client will pull content from CDN to ensure uninterrupted service for your subscribers.

<a id="fig1">

 :::image type="content" source="./images/ent-mcc-overview.png" alt-text="Diagram of the MCC process." lightbox="./images/ent-mcc-overview.png"::: 

</a>Figure 1: **MCC processes**. Each number in the diagram corresponds to the steps described above.


## Enterprise requirements for MCC

1. **Azure subscription**: MCC management portal is hosted within Azure and is used to create the Connected Cache [Azure resource](/azure/cloud-adoption-framework/govern/resource-consistency/resource-access-management) and IoT Hub resource. Both are free services.

    Your Azure subscription ID is first used to provision MCC services, and enable access to the preview. The MCC server requirement for an Azure subscription will cost you nothing. If you do not have an Azure subscription already, you can create an Azure [Pay-As-You-Go](https://azure.microsoft.com/offers/ms-azr-0003p/) account which requires a credit card for verification purposes. For more information, see the [Azure Free Account FAQ](https://azure.microsoft.com/free/free-account-faq/).

    The resources used for the preview and in the future when this product is ready for production will be completely free to you, like other caching solutions.

2. **Hardware to host MCC**: The recommended configuration will serve approximately 35000 managed devices, downloading a 2GB payload in 24-hour timeframe at a sustained rate of 6.5 Gbps.

    **EFLOW Requires Hyper-V support**
    - On Windows client, enable the Hyper-V feature
    - On Windows Server, install the Hyper-V role and create a default network switch

    Disk recommendations:
    - Using an SSD is recommended as cache read speed of SSD is superior to HDD

    NIC requirements:
    - Multiple NICs on a single MCC instance aren't supported.
    - 1 Gbps NIC is the minimum speed recommended but any NIC is supported.
    - For best performance, NIC and BIOS should support SR-IOV

    VM networking:
    -  An external virtual switch to support outbound and inbound network communication (created during the installation process)

### Sizing recommendations

| Component  | Branch Office / Small Enterprise | Large Enterprise |
| -- | --- | --- |
| OS|  Windows Server 2019*/2022 <br> Windows 10*/11 (Pro or Enterprise) with Hyper-V Support <br><br>* Windows 10 and Windows Server 2019 build 17763 or later | Same |
|NIC | 1 Gbps | 5 Gbps |
|Disk | SSD <br>1 drive <br>50GB each  |SSD <br>1 drive <br>200GB each  |
|Memory | 4GB | 8GB |
|Cores | 4 | 8  |
