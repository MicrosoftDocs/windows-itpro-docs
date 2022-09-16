---
title: Traffic estimation
manager: dougeby
description: Details on how traffic estimates are made and how to enhance cache node performance.
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

# Traffic estimation

During the sign up process, Microsoft will provide you with a traffic estimation based on your ASN(s). We make estimations based on our predictions on historical data about Microsoft content download volume. We will use these estimations to recommend hardware or VM configurations. You can view these recommendations within the Azure portal.

Note that we make these estimations based on the Microsoft content types that Microsoft Connected Cache serves. To learn more about the types of content that are supported, see [Delivery Optimization and Microsoft Connected Cache content endpoints](). 

## Cache performance

To make sure you are maximizing the performance of your cache node, please note the following:

### OS requirements

The MCC module is optimized for Ubuntu 20.04 LTS. Install Ubuntu 20.04 LTS on a physical server or VM of your choice.

### NIC requirements

- Multiple NICs on a single MCC instance are supported using a _link aggregated_ configuration.
- 10 Gbps NIC is the minimum speed recommended, but any NIC is supported.

### Drive performance

The maximum number of disks supported is 9. When configuring your drives, we recommend SSD drives as cache read speed of SSD is superior to HDD. In addition, using multiple disks is recommended to improve cache performance. 

RAID disk configurations are discouraged as cache performance will be impacted. If using RAID disk configurations, ensure striping.

### Hardware configuration example

There are many hardware configurations that suit Microsoft Connected Cache. As an example, below is the hardware configuration of a customer who is able to egress 40 Gbps of traffic.

**Dell PowerEdge R330**
- 2 x Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40GHz , total 32core
- 48GB, Micron Technology 18ASF1G72PDZ-2G1A1, Speed: 2133 MT/s
- 4 - Transcend SSD230s 1TB SATA Drives
- Intel Corporation Ethernet 10G 2P X520 Adapter (Link Aggregated)

### Virtual Machines

If you are using a virtual machine as your server, please refer to [VM performance](mcc-isp-vm-performance.md) for tips on how to improve your VM performance.