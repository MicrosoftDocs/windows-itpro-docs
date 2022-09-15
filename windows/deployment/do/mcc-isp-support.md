---
title: Troubleshooting Issues for Microsoft Connected Cache for ISP
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

# Troubleshooting Issues for Microsoft Connected Cache for ISP (public preview)

**Applies to**

- Windows 10
- Windows 11

<br/>

## Sign up Errors

### Could not verify account:  
During sign up we verify the information you provide against what is present in [Peering DB]. Make sure the information you have provided on Peering DB is up to date and matches what you provide during sign up.
<br/>
<br/>

### Invalid verification code: 
During sign up, a verification code is sent to your NOC email address present in Peering DB. **TBD** This code expires in 24 hours. You will need to request a new verification code and use that to complete sign up.  
<br/>

<br/>


## Cache Node Errors  

### Cannot find my cache node:  
If you previously had access to your cache nodes but it is now no longer accessible, it may be because you had a trial subscription and its trial period ended. 
#### Recommended steps:  
1. Create a new Azure Pay As You Go subscription  
1. Recreate the cache nodes using the new subscription 

#### Recommended Documents:  
[Steps to obtain Azure subscription](https://aka.ms/MCC-Azure-Subscription)   
[Pay-as-you-go-subscription](https://azure.microsoft.com/en-us/offers/ms-azr-0003p/)  
[Azure free account FAQs](https://azure.microsoft.com/en-us/free/free-account-faq/) 