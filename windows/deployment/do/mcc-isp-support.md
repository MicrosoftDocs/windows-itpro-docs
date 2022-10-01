---
title: Support and troubleshooting
manager: dougeby
description: Troubleshooting Issues for Microsoft Connected Cache for ISP
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

# Support and troubleshooting

**Applies to**

- Windows 10
- Windows 11

## Sign up errors

#### Cannot verify account

During sign-up, we verify the information you provide against what is present in [Peering DB](https://www.peeringdb.com/). Make sure the information for your ISP entry on [Peering DB](https://www.peeringdb.com/) is up to date and matches what you provide during sign-up.

#### Invalid verification code

During sign-up, a verification code is sent to your NOC email address present in [Peering DB](https://www.peeringdb.com/). This code expires in 24 hours. If expired, you'll need to request a new verification code to complete sign up.  

## Cache Node Errors  

#### Cannot find my cache node
  
Did you previously had access to your cache nodes but it's now no longer accessible? If so, it may be because you had a trial subscription, and its trial period ended. To resolve this issue, complete the following two steps:

1. Create a new Azure Pay-As-You-Go subscription  
1. Recreate the cache nodes using the new subscription

#### Recommended Documents

[Steps to obtain Azure subscription](https://aka.ms/MCC-Azure-Subscription)
[Pay-as-you-go-subscription](https://azure.microsoft.com/en-us/offers/ms-azr-0003p/)
[Azure free account FAQs](https://azure.microsoft.com/en-us/free/free-account-faq/)