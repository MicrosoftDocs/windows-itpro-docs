---
title: Become a Microsoft Defender for Endpoint partner
ms.reviewer: 
description: Learn the steps and requirements to integrate your solution with Microsoft Defender ATP and be a partner
keywords: partner, integration, solution validation, certification, requirements, member, misa, application portal
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual 
---

# Become a Microsoft Defender for Endpoint partner

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:** 
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

To become a Defender for Endpoint solution partner, you'll need to follow and complete the following steps.

## Step 1: Subscribe to a Microsoft Defender for Endpoint Developer license
Subscribe to the [Microsoft Defender for Endpoint Developer license](https://winatpregistration-prd.trafficmanager.net/Developer/UserAgreement?Length=9). Subscribing allows you to use a Microsoft Defender for Endpoint tenant with up to 10 devices to developing solutions that integrate with Microsoft Defender for Endpoint. 

## Step 2: Fulfill the solution validation and certification requirements
The best way for technology partners to certify that their integration works is to have a joint customer approve the suggested integration design (the customer can use the **Recommend a partner** option in the [Partner Application page](https://securitycenter.microsoft.com/interoperability/partners) in the Microsoft Defender Security Center) and have it tested and demoed to the Microsoft Defender for Endpoint team.

Once the Microsoft Defender for Endpoint team has reviewed and approves the integration, we will direct you to be included as a partner at the Microsoft Intelligent Security Association.

## Step 3: Become a  Microsoft Intelligent Security Association member
[Microsoft Intelligent Security Association](https://www.microsoft.com/security/partnerships/intelligent-security-association) is a program specifically for Microsoft security partners to help enrich your security products and improve customer discoverability of your integrations to Microsoft security products.

## Step 4: Get listed in the Microsoft Defender for Endpoint partner application portal
Microsoft Defender for Endpoint supports third-party applications discovery and integration using the in-product [partner page](partner-applications.md) that is embedded within the Microsoft Defender for Endpoint management portal. 

To have your company listed as a partner in the in-product partner page, you will need to provide the following information:

1. A square logo (SVG).
2. Name of the product to be presented.
3. Provide a 15-word product description.
4. Link to the landing page for the customer to complete the integration or blog post that will include sufficient information for customers. Any press release including the Microsoft Defender for Endpoint product name should be reviewed by the marketing and engineering teams. Wait for at least 10 days for the review process to be done.
5.	If you use a multi-tenant Azure AD approach, we will need the Azure AD application name to track usage of the application.
6. Include the User-Agent field in each API call made to Microsoft Defender for Endpoint public set of APIs or Graph Security APIs. This will be used for statistical purposes, troubleshooting, and partner recognition. In addition, this step is a requirement for membership in Microsoft Intelligent Security Association (MISA).

    Follow these steps:
    
   	- Set the User-Agent field in each HTTP request header to the below format.

    - `MdePartner-{CompanyName}-{ProductName}/{Version}`
    
    - For example, User-Agent: `MdePartner-Contoso-ContosoCognito/1.0.0`
    
    - For more information, see [RFC 2616 section-14.43](https://tools.ietf.org/html/rfc2616#section-14.43).

Partnerships with Microsoft Defender for Endpoint help our mutual customers to further streamline, integrate, and orchestrate defenses. We are happy that you chose to become a Microsoft Defender for Endpoint partner and to achieve our common goal of effectively protecting customers and their assets by preventing and responding to modern threats together.

## Related topics
- [Technical partner opportunities](partner-integration.md)
