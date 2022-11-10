---
title: Operator sign up and service onboarding
manager: dougeby
description: Service onboarding for Microsoft Connected Cache for ISP
keywords: updates, downloads, network, bandwidth
ms.prod: w10
ms.mktglfcycl: deploy
audience: itpro
author: nidos
ms.localizationpriority: medium
ms.author: nidos
ms.collection: M365-modern-desktop
ms.topic: article
---

# Operator sign up and service onboarding for Microsoft Connected Cache

**Applies to**

- Windows 10
- Windows 11

This article details the process of signing up for Microsoft Connected Cache for Internet Service Providers (Public Preview). 

> [!IMPORTANT]
> Microsoft Connected Cache for ISPs (Public Preview) is currently invite-only. Interested in joining our public preview? Fill out [this survey](https://aka.ms/MCCForISPSurvey) to be notified when it becomes available.

## Resource creation and sign up process  

1. Navigate to your [Azure portal](https://www.portal.azure.com). In the top search bar, search for **Microsoft Connected Cache**.

:::image type="content" source="images/searchmcc.png" alt-text="Screenshot of the Azure portal which shows the Microsoft Connected Cache resource in Azure marketplace.":::

1. Select **Create** to create a **Microsoft Connected Cache**. When prompted, enter a name for your cache resource.  

> [!IMPORTANT]
> After your resource has been created, we need some information to verify your network operator status and approve you to host Microsoft Connected Cache nodes. Please ensure that your [Peering DB](https://www.peeringdb.com/) organization information is up to date as this information will be used for verification. The NOC contact email will be used to send verification information.

1. Navigate to **Settings** > **Sign up**. Enter your organization ASN. Indicate whether you are a transit provider. If so, additionally, please include any ASN(s) for downstream network operators that you may transit traffic for.

:::image type="content" source="images/signup1.png" alt-text="Screenshot of the sign up page in the Microsoft Connected Cache resource page in Azure portal.":::

1. Once we verify the information entered, a verification code will be sent to the NOC email address provided on [Peering DB](https://www.peeringdb.com/). Once you receive the email, navigate to your Azure portal > **Microsoft Connected Cache** > **Settings** > **Verify operator**, and enter the verification code sent to the NOC email address.

**Note:** Verification codes expire in 24 hours. You will need to generate a new code if it expires.  

:::image type="content" source="images/verification.png" alt-text="Screenshot of the signup verification page on Azure portal for Microsoft Connected Cache.":::

Once verified, follow the instructions on [Create, provision, and deploy cache node](mcc-isp-create-provision-deploy.md) to create your cache node.

## Traffic estimation

During the sign-up process, Microsoft will provide you with a traffic estimation based on your ASN(s). We make estimations based on our predictions on historical data about Microsoft content download volume. We'll use these estimations to recommend hardware or VM configurations. You can view these recommendations within the Azure portal.

We make these estimations based on the Microsoft content types that Microsoft Connected Cache serves. To learn more about the types of content that are supported, see [Delivery Optimization and Microsoft Connected Cache content type endpoints](delivery-optimization-endpoints.md).

### Cache performance

To make sure you're maximizing the performance of your cache node, note the following:

#### OS requirements

The Microsoft Connected Cache module is optimized for Ubuntu 20.04 LTS. Install Ubuntu 20.04 LTS on a physical server or VM of your choice.

#### NIC requirements

- Multiple NICs on a single MCC instance are supported using a _link aggregated_ configuration.
- 10 Gbps NIC is the minimum speed recommended, but any NIC is supported.

#### Drive performance

The maximum number of disks supported is 9. When configuring your drives, we recommend SSD drives as cache read speed of SSD is superior to HDD. In addition, using multiple disks is recommended to improve cache performance. 

RAID disk configurations are discouraged as cache performance will be impacted. If using RAID disk configurations, ensure striping.

### Hardware configuration example

There are many hardware configurations that suit Microsoft Connected Cache. As an example, below is the hardware configuration of a customer who is able to egress 40 Gbps of traffic.

**Dell PowerEdge R330**

- 2 x Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40 GHz , total 32 core
- 48 GB, Micron Technology 18ASF1G72PDZ-2G1A1, Speed: 2133 MT/s
- 4 - Transcend SSD230s 1 TB SATA Drives
- Intel Corporation Ethernet 10G 2P X520 Adapter (Link Aggregated)

### Virtual machines

Microsoft Connected Cache supports both physical and virtual machines as cache servers. If you're using a virtual machine as your server, refer to [VM performance](mcc-isp-vm-performance.md) for tips on how to improve your VM performance.
