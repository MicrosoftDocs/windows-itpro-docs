---
title: Operator sign up and service onboarding
manager: aaroncz
description: Service onboarding for Microsoft Connected Cache for ISP
ms.prod: windows-client
ms.mktglfcycl: deploy
audience: itpro
author: nidos
ms.author: nidos
ms.topic: article
ms.date: 12/31/2017
ms.technology: itpro-updates
---

# Operator sign up and service onboarding for Microsoft Connected Cache

**Applies to**

- Windows 10
- Windows 11

This article details the process of signing up for Microsoft Connected Cache for Internet Service Providers (public preview). 

## Prerequisites

Before you begin sign up, ensure you have the following components:
- **Azure Pay-As-You-Go subscription**: Microsoft Connected Cache is a completely free-of-charge service hosted in Azure. You will need to have a Pay-As-You-Go subscription in order to onboard to our service. To create a subscription, [visit this page](https://azure.microsoft.com/offers/ms-azr-0003p/).
- **Access to Azure portal**: Ensure you have the credentials needed to access your organization's Azure portal.
- **Peering DB**: Ensure your organization's [Peering DB](https://www.peeringdb.com/) page is up-to-date and active. Check that the NOC email listed is accurate, and that you have access to this email. 
- **Server**: Ensure the server you wish to install Microsoft Connected Cache on is ready, and that the server is installed Ubuntu 20.04 LTS.

## Resource creation and sign up process  

1. Navigate to the [Azure portal](https://www.portal.azure.com). Select **Create a Resource**. Then, search for **Microsoft Connected Cache**.

   :::image type="content" source="./images/mcc-isp-search.png" alt-text="Screenshot of the Azure portal that shows the Microsoft Connected Cache resource in Azure marketplace.":::

1. Select **Create** to create a **Microsoft Connected Cache**. When prompted, enter a name for your cache resource.  

   > [!IMPORTANT]
   > After your resource has been created, we need some information to verify your network operator status and approve you to host Microsoft Connected Cache nodes. Please ensure that your [Peering DB](https://www.peeringdb.com/) organization information is up to date as this information will be used for verification. The NOC contact email will be used to send verification information.
1. Navigate to **Settings** > **Sign up**. Enter your organization ASN. Indicate whether you're a transit provider. If so, additionally, include any ASN(s) for downstream network operators that you may transit traffic for.

   :::image type="content" source="./images/mcc-isp-sign-up.png" alt-text="Screenshot of the sign up page in the Microsoft Connected Cache resource page in Azure portal." lightbox="./images/mcc-isp-sign-up.png":::

1. Once we verify the information entered, a verification code will be sent to the NOC email address provided on [Peering DB](https://www.peeringdb.com/). Once you receive the email, navigate to your Azure portal > **Microsoft Connected Cache** > **Settings** > **Verify operator**, and enter the verification code sent to the NOC email address.

    > [!NOTE]
    > Verification codes expire in 24 hours. You will need to generate a new code if it expires.

   :::image type="content" source="images/mcc-isp-operator-verification.png" alt-text="Screenshot of the sign up verification page on Azure portal for Microsoft Connected Cache." lightbox="./images/mcc-isp-operator-verification.png":::

1. Once verified, follow the instructions in [Create, provision, and deploy cache node](mcc-isp-create-provision-deploy.md) to create your cache node.

<!--## Traffic estimation

During the sign-up process, Microsoft will provide you with a traffic estimation based on your ASN(s). We make estimations based on our predictions on historical data about Microsoft content download volume. We'll use these estimations to recommend hardware or VM configurations. You can review these recommendations within the Azure portal.

We make these estimations based on the Microsoft content types that Microsoft Connected Cache serves. To learn more about the types of content that are supported, see [Delivery Optimization and Microsoft Connected Cache content type endpoints](delivery-optimization-endpoints.md).  -->

### Cache performance

To make sure you're maximizing the performance of your cache node, review the following information:

#### OS requirements

The Microsoft Connected Cache module is optimized for Ubuntu 20.04 LTS. Install Ubuntu 20.04 LTS on a physical server or VM of your choice.

#### NIC requirements

- Multiple NICs on a single MCC instance are supported using a *link aggregated* configuration.
- 10 Gbps NIC is the minimum speed recommended, but any NIC is supported.

#### Drive performance

The maximum number of disks supported is 9. When configuring your drives, we recommend SSD drives as cache read speed of SSD is superior to HDD. In addition, using multiple disks is recommended to improve cache performance. 

RAID disk configurations are discouraged as cache performance will be impacted. If using RAID disk configurations, ensure striping.

### Hardware configuration example

There are many hardware configurations that suit Microsoft Connected Cache. As an example, a customer has deployed the following hardware configuration and is able to achieve a peak egress of about 35 Gbps:

**Dell PowerEdge R330**

- 2 x Intel(R) Xeon(R) CPU E5-2630 v3 @ 2.40 GHz, total 32 core
- 48 GB, Micron Technology 18ASF1G72PDZ-2G1A1, Speed: 2133 MT/s
- 4 - Transcend SSD230s 1 TB SATA Drives
- Intel Corporation Ethernet 10G 2P X520 Adapter (Link Aggregated)

### Virtual machines

Microsoft Connected Cache supports both physical and virtual machines as cache servers. If you're using a virtual machine as your server, refer to [VM performance](mcc-isp-vm-performance.md) for tips on how to improve your VM performance.