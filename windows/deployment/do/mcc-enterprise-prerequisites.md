---
title: Requirements for MCC for Enterprise and Education
description: Overview of prerequisites and recommendations for using Microsoft Connected Cache (MCC) for Enterprise and Education.
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
- - ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for Enterprise and Education</a>
ms.date: 05/23/2024
---

# Requirements of Microsoft Connected Cache for Enterprise and Education (early preview)

> [!NOTE]
> As we near the release of public preview, we have paused onboarding. Please continue to submit the form to express interest so we can follow up with you once public preview of Microsoft Connected Cache for Enteprise and Education is available. To register your interest, fill out the form located at [https://aka.ms/MSConnectedCacheSignup](https://aka.ms/MSConnectedCacheSignup).

## Enterprise requirements for MCC

1. **Azure subscription**: MCC management portal is hosted within Azure and is used to create the Connected Cache [Azure resource](/azure/cloud-adoption-framework/govern/resource-consistency/resource-access-management) and IoT Hub resource. Both are free services.

    Your Azure subscription ID is first used to provision MCC services, and enable access to the preview. The MCC server requirement for an Azure subscription costs you nothing. If you don't have an Azure subscription already, you can create an Azure [pay-as-you-go](https://azure.microsoft.com/offers/ms-azr-0003p/) account, which requires a credit card for verification purposes. For more information, see the [Azure Free Account FAQ](https://azure.microsoft.com/free/free-account-faq/).

    The resources used for the preview and in the future when this product is ready for production will be free to you, like other caching solutions.
1. **Hardware to host MCC**: The recommended configuration serves approximately 35,000 managed devices, downloading a 2-GB payload in 24-hour timeframe at a sustained rate of 6.5 Gbps.
  
   > [!NOTE]
   > Azure VMs are not currently supported. If you'd like to install your cache node on VMWare, see the [Appendix](mcc-enterprise-appendix.md) for a few additional configurations.

    **EFLOW requires Hyper-V support**
    - On Windows client, enable the Hyper-V feature.
    - On Windows Server, install the Hyper-V role and create a default network switch.
    - For more requirements, see [EFLOW requirements](/azure/iot-edge/iot-edge-for-linux-on-windows#prerequisites).

    Disk recommendations:
    - Using an SSD is recommended as cache read speed of SSD is superior to HDD

    NIC requirements:
    - Multiple NICs on a single MCC instance aren't supported.
    - 1 Gbps NIC is the minimum speed recommended but any NIC is supported.
    - For best performance, NIC and BIOS should support SR-IOV.

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
