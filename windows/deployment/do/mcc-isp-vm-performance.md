---
title: Enhancing VM performance
manager: aaroncz
description: How to enhance performance on a virtual machine used with Microsoft Connected Cache for ISPs
keywords: updates, downloads, network, bandwidth
ms.prod: windows-client
ms.mktglfcycl: deploy
audience: itpro
author: amyzhou
ms.localizationpriority: medium
ms.author: amyzhou
ms.topic: reference
ms.date: 12/31/2017
---

# Enhancing virtual machine performance

In virtual environments, the cache server egress peaks at around 1.1 Gbps. If you want to maximize the egress in virtual environments, it's critical to change two settings.

## Virtual machine settings

Change the following settings to maximize the egress in virtual environments:

1. Enable **Single Root I/O Virtualization (SR-IOV)** in the following three locations:

    - The BIOS of the MCC virtual machine
    - The network card properties of the MCC virtual machine
    - The hypervisor for the MCC virtual machine

    Microsoft has found these settings to double egress when using a Microsoft Hyper-V deployment.

2. Enable high performance in the BIOS instead of energy savings. Microsoft has found this setting to also nearly double egress in a Microsoft Hyper-V deployment.

## Next steps

[Support and troubleshooting](mcc-isp-support.md)
