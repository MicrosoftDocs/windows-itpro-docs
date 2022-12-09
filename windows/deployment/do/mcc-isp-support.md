---
title: Support and troubleshooting
manager: aaroncz
description: Troubleshooting issues for Microsoft Connected Cache for ISP
keywords: updates, downloads, network, bandwidth
ms.prod: windows-client
audience: itpro
author: nidos
ms.localizationpriority: medium
ms.author: nidos
ms.topic: reference
ms.date: 12/31/2017
---

# Support and troubleshooting

**Applies to**

- Windows 10
- Windows 11

This article provides information on how to troubleshoot common issues with Microsoft Connected Cache for ISPs.
## Sign up errors

### Cannot verify account

During sign-up, we verify the information you provide against what is present in [Peering DB](https://www.peeringdb.com/). Make sure the information for your ISP entry on [Peering DB](https://www.peeringdb.com/) is up to date and matches what you provide during sign-up.

### Invalid verification code

During sign-up, a verification code is sent to your NOC email address present in [Peering DB](https://www.peeringdb.com/). This code expires in 24 hours. If it's expired, you'll need to request a new verification code to complete the sign-up.  

## Cache Node Errors  

### Cannot find my cache node

Did you previously had access to your cache nodes but it's now no longer accessible? If so, it may be because you had a trial subscription, and its trial period ended. To resolve this issue, complete the following two steps:

1. Create a new Azure Pay-As-You-Go subscription  
1. Recreate the cache nodes using the new subscription

## Steps to obtain an Azure subscription ID

<!--Using include file, get-azure-subscription.md, for shared content-->
[!INCLUDE [Get Azure subscription](includes/get-azure-subscription.md)]

## Recommended resources

- [Pay-as-you-go-subscription](https://azure.microsoft.com/offers/ms-azr-0003p/)
- [Azure free account FAQs](https://azure.microsoft.com/free/free-account-faq/)

