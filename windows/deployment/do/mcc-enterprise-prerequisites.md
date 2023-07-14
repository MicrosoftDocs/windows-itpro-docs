---
title: Requirements for Microsoft Connected Cache (MCC) for Enterprise and Education
manager: aaroncz
description: Overview of requirements for Microsoft Connected Cache (MCC) for Enterprise and Education.
ms.prod: windows-client
author: amymzhou
ms.author: amyzhou
ms.topic: article
ms.date: 12/31/2017
ms.technology: itpro-updates
ms.collection: tier3
---

# Requirements of Microsoft Connected Cache for Enterprise and Education (early preview)

**Applies to**

- Windows 10
- Windows 11

> [!NOTE]
> We're still accepting Enterprise and Education customers to join the early preview. To register your interest, fill out the survey located at [https://aka.ms/MSConnectedCacheSignup](https://aka.ms/MSConnectedCacheSignup).

## Enterprise requirements for MCC

1. **Azure subscription**: MCC management portal is hosted within Azure and is used to create the Connected Cache [Azure resource](/azure/cloud-adoption-framework/govern/resource-consistency/resource-access-management) and IoT Hub resource. Both are free services.

    Your Azure subscription ID is first used to provision MCC services, and enable access to the preview. The MCC server requirement for an Azure subscription will cost you nothing. If you don't have an Azure subscription already, you can create an Azure [Pay-As-You-Go](https://azure.microsoft.com/offers/ms-azr-0003p/) account, which requires a credit card for verification purposes. For more information, see the [Azure Free Account FAQ](https://azure.microsoft.com/free/free-account-faq/).

    The resources used for the preview and in the future when this product is ready for production will be free to you, like other caching solutions.
1. **Hardware to host MCC**: The recommended configuration will serve approximately 35000 managed devices, downloading a 2 GB payload in 24-hour timeframe at a sustained rate of 6.5 Gbps.
  
   > [!NOTE]
   > Azure VMs are not currently supported. If you'd like to install your cache node on VMWare, see the [Appendix](mcc-enterprise-appendix.md) for a few additional configurations.

    **EFLOW requires Hyper-V support**
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
1. **Content endpoints**: If you're using a proxy or firewall, certain endpoints must be allowed through in order for your MCC to cache and serve content. See [Delivery Optimization and Microsoft Connected Cache content type endpoints](delivery-optimization-endpoints.md) for the list of required endpoints. 

## Sizing recommendations

| Component  | Branch Office / Small Enterprise | Large Enterprise |
| -- | --- | --- |
| OS|  Windows Server 2019*/2022 <br> Windows 10*/11 (Pro or Enterprise) with Hyper-V Support <br><br>* Windows 10 and Windows Server 2019 build 17763 or later | Same |
|NIC | 1 Gbps | 5 Gbps |
|Disk | SSD <br>1 drive <br>50 GB each  |SSD <br>1 drive <br>200 GB each  |
|Memory | 4 GB | 8 GB |
|Cores | 4 | 8  |
