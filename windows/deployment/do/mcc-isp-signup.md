---
title: Operator sign up and service onboarding
description: Instructions on how to go through the service onboarding process for Microsoft Connected Cache for ISPs.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: how-to
manager: aaroncz
author: nidos
ms.author: nidos
ms.reviewer: mstewart
ms.collection: tier3
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for ISPs</a>	
ms.date: 05/23/2024
---

# Operator sign up and service onboarding for Microsoft Connected Cache

This article details the process of signing up for Microsoft Connected Cache for Internet Service Providers (public preview).

 > [!NOTE]
 > Microsoft Connected Cache is now in public preview. Instead of submitting a survey, you can directly onboard by following the instructions in this article.

## Prerequisites

Before you begin sign up, ensure you have the following components:

1. **Azure Pay-As-You-Go subscription**: Microsoft Connected Cache is a completely free-of-charge service hosted in Azure. You'll need to have a Pay-As-You-Go subscription in order to onboard to our service. To create a subscription, go to the [Pay-As-You-Go subscription page](https://azure.microsoft.com/offers/ms-azr-0003p/).

   > [!NOTE]
   > Microsoft Connected Cache is a completely free service for operators. None of the resources created in Azure will incur any charges. However, be aware that any additional services that might be selected as part of the Azure sign-up process might incur charges.

1. **Access to Azure portal**: Ensure you have the credentials needed to access your organization's Azure portal.

1. **Peering DB**: Ensure your organization's [Peering DB](https://www.peeringdb.com/) page is up-to-date and active. Check that the NOC email listed is accurate, and that you have access to this email.

1. **Server**: Ensure the server you wish to install Microsoft Connected Cache on is ready, and that the server is installed on Ubuntu 20.04 LTS.
1. **Configure cache drive**: Make sure that you have a data drive configured with full permissions on your server. You'll need to specify the location for this cache drive during the cache node configuration process. The minimum size for the data drive is 100 GB. For instructions to mount a disk on a Linux VM, see [Attach a data disk to a Linux VM](/azure/virtual-machines/linux/attach-disk-portal#find-the-disk).

## Resource creation and sign up process  

1. Navigate to the [Azure portal](https://www.portal.azure.com). Select **Create a Resource**. Then, search for **Microsoft Connected Cache**.

   :::image type="content" source="./images/mcc-isp-search.png" alt-text="Screenshot of the Azure portal that shows the Microsoft Connected Cache resource in Azure marketplace." lightbox="./images/mcc-isp-search.png":::

1. Select **Create** to create a **Microsoft Connected Cache**. When prompted, choose the subscription, resource group, and location of your cache node. Also, enter a name for your cache node.

   :::image type="content" source="./images/mcc-isp-create-resource-fields.png" alt-text="Screenshot of the Azure portal that shows the Microsoft Connected Cache resource creation step." lightbox="./images/mcc-isp-create-resource-fields.png":::

   > [!IMPORTANT]
   > After your resource has been created, we need some information to verify your network operator status and approve you to host Microsoft Connected Cache nodes. Please ensure that your [Peering DB](https://www.peeringdb.com/) organization information is up to date as this information will be used for verification. The NOC contact email will be used to send verification information.

    After a few moments, you'll see a "Validation successful" message, indicating you can move onto the next step and select **Create**.

   :::image type="content" source="./images/mcc-isp-create-resource-validated.png" alt-text="Screenshot of the Azure portal that shows a green validation successful message for the creation of the Microsoft Connected Cache resource." lightbox="./images/mcc-isp-create-resource-validated.png":::

1. The creation of the cache node may take a few minutes. After a successful creation, you'll see a **Deployment complete** page as below. Select **Go to resource**.

    :::image type="content" source="./images/mcc-isp-deployment-complete.png" alt-text="Screenshot of the Azure portal that shows a successful deployment for the creation of the Microsoft Connected Cache resource." lightbox="./images/mcc-isp-deployment-complete.png":::

1. Navigate to **Settings** > **Sign up**. Enter your organization ASN. Indicate whether you're a transit provider. If so, additionally, include any ASN(s) for downstream network operators that you may transit traffic for.

   :::image type="content" source="./images/mcc-isp-sign-up.png" alt-text="Screenshot of the sign up page in the Microsoft Connected Cache resource page in Azure portal." lightbox="./images/mcc-isp-sign-up.png":::

1. Once we verify the information entered, a verification code will be sent to the NOC email address provided on [Peering DB](https://www.peeringdb.com/). Once you receive the email, navigate to your Azure portal > **Microsoft Connected Cache** > **Settings** > **Verify operator**, and enter the verification code sent to the NOC email address.

    > [!NOTE]
    > Verification codes expire in 24 hours. You will need to generate a new code if it expires.

    :::image type="content" source="images/mcc-isp-operator-verification.png" alt-text="Screenshot of the sign up verification page on Azure portal for Microsoft Connected Cache." lightbox="./images/mcc-isp-operator-verification.png":::

    > [!NOTE]
    > **Can't find the verification email in your inbox?** Check that the email under the NOC role is correct in [Peering DB](https://www.peeringdb.com/). Search for an email from the sender **microsoft-noreply@microsoft.com** with the email subject: "Here's your Microsoft Connected Cache verification code" in your Spam folders. Still can't find it? Ensure that your email admin rules allow emails from the sender **microsoft-noreply@microsoft.com**.

1. Once verified, follow the instructions in [Create, provision, and deploy cache node](mcc-isp-create-provision-deploy.md) to create your cache node.

<!--## Traffic estimation

During the sign-up process, Microsoft will provide you with a traffic estimation based on your ASN(s). We make estimations based on our predictions on historical data about Microsoft content download volume. We'll use these estimations to recommend hardware or VM configurations. You can review these recommendations within the Azure portal.

We make these estimations based on the Microsoft content types that Microsoft Connected Cache serves. To learn more about the types of content that are supported, see [Delivery Optimization and Microsoft Connected Cache content type endpoints](delivery-optimization-endpoints.md).  -->
