---
title: Enhancing VM performance
manager: dougeby
description: How to enhance performance on a VM
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: amyzhou
ms.localizationpriority: medium
ms.author: amyzhou
ms.collection: M365-modern-desktop
ms.topic: article
---

# Enhancing VM performance

In virtual environments, the cache server egress peaks at around 1.1 Gbps. If you want to maximize the egress in virtual environments, it's critical to change the following two settings:

1. Enable **SR-IOV** in the following three locations:

    - The BIOS of the MCC VM
    - The MCC VM's network card properties
    - The hypervisor for the MCC VM

    Microsoft has found these settings to double egress when using a Microsoft Hyper-V deployment.

2. Enable "high performance" in the BIOS instead of energy savings. Microsoft has found this setting to also nearly double egress in a Microsoft Hyper-V deployment.