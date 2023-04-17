---
title: Support and troubleshooting
manager: aaroncz
description: Troubleshooting issues for Microsoft Connected Cache for ISP
ms.prod: windows-client
author: nidos
ms.author: nidos
ms.topic: reference
ms.date: 12/31/2017
ms.technology: itpro-updates
ms.collection: tier3
---

# Support and troubleshooting

**Applies to**

- Windows 10
- Windows 11

This article provides information on how to troubleshoot common issues with Microsoft Connected Cache for ISPs.

## Common issues

This section details a few common issues that customers face during the sign up process.

### Sign up errors

#### Cannot verify account

During sign-up, we verify the information you provide against what is present in [Peering DB](https://www.peeringdb.com/). Make sure the information for your ISP entry on [Peering DB](https://www.peeringdb.com/) is up to date and matches what you provide during sign-up.

#### Invalid verification code

During sign-up, a verification code is sent to your NOC email address present in [Peering DB](https://www.peeringdb.com/). This code expires in 24 hours. If it's expired, you'll need to request a new verification code to complete the sign-up.  

### Cache Node Errors  

#### Cannot find my cache node

Did you previously had access to your cache nodes but it's now no longer accessible? If so, it may be because you had a trial subscription, and its trial period ended. To resolve this issue, complete the following two steps:

1. Create a new Azure Pay-As-You-Go subscription  
1. Recreate the cache nodes using the new subscription

## Diagnose and Solve Problems

If this article isn't resolving the issue you're facing with your cache node, you can use the **Diagnose and solve problems** functionality within your MCC resource to continue troubleshooting. **Diagnose and solve problems** contains solutions to most common problems that users may face as they onboard.

You can find **Diagnose and solve problems** on the left pane within your MCC resource.

:::image type="content" source="images/mcc-isp-diagnose-solve.png" alt-text="A screenshot of Azure portal showing the Diagnose and Solve problems tab on the left hand pane of Azure portal." lightbox="images/mcc-isp-diagnose-solve.png":::

Within **Diagnose and solve problems**, select **Troubleshoot** under the type of problem you're facing and follow the prompts that narrow down the solution to the issue.

:::image type="content" source="images/mcc-isp-diagnose-solve-troubleshoot.png" alt-text="A screenshot of Azure portal showing the option to select Troubleshoot to continue troubleshooting common issues related to the installation of Microsoft Connected Cache." lightbox="images/mcc-isp-diagnose-solve-troubleshoot.png":::

## Steps to obtain an Azure subscription ID

To onboard onto Microsoft Connected Cache, you will need an Azure subscription ID. Follow the steps below to obtain your subscription ID:
<!--Using include file, get-azure-subscription.md, for shared content-->
[!INCLUDE [Get Azure subscription](includes/get-azure-subscription.md)]

## Recommended resources

- [Pay-as-you-go-subscription](https://azure.microsoft.com/offers/ms-azr-0003p/)
- [Azure free account FAQs](https://azure.microsoft.com/free/free-account-faq/)

