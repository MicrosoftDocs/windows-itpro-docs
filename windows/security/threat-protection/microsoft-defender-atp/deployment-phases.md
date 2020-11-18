---
title: Deployment phases
description: Learn how to deploy Microsoft Defender ATP by preparing, setting up, and onboarding endpoints to that service
keywords: deploy, prepare, setup, onboard, phase, deployment, deploying, adoption, configuring
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365solution-endpointprotect
- m365solution-overview  
ms.topic: article
---

# Deployment phases

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)


Protect your enterprise environment by deploying Microsoft Defender for Endpoint. Microsoft Defender for Endpoint is a unified platform that helps you implement preventative protection, leverage post-breach detection, use automated investigation, and respond to sophisticated threats.




There are three phases in deploying Defender for Endpoint:

|Phase | Description | 
|:-------|:-----|
| ![Phase 1: Prepare](images/prepare.png)<br>[Phase 1: Prepare](prepare-deployment.md)| Learn about what you need to consider when deploying Defender for Endpoint: <br><br>- Stakeholders and sign-off <br> - Environment considerations <br>- Access <br> - Adoption order
|  ![Phase 2: Setup](images/setup.png) <br>[Phase 2: Setup](production-deployment.md)|  Take the initial steps to access Microsoft Defender Security Center. You'll be guided on:<br><br>- Validating the licensing <br>  - Completing the setup wizard within the portal<br>- Network configuration|
|  ![Phase 3: Onboard](images/onboard.png) <br>[Phase 3: Onboard](onboarding.md) | Onboard devices to the service so the Microsoft Defender ATP service can get sensor data from them. 



The deployment guide will guide you through the recommended path in deploying Defender for Endpoint. 

If you're unfamiliar with the general deployment planning steps, check out the [Plan deployment](deployment-strategy.md) topic to get a  high-level overview of the general deployment steps and methods.



## In Scope

The following is in scope for this deployment guide:

-   Use of Microsoft Endpoint Configuration Manager and Microsoft Endpoint Manager to onboard endpoints into the service and configure capabilities

-   Enabling Defender for Endpoint endpoint detection and response (EDR)  capabilities

-   Enabling Defender for Endpoint endpoint protection platform (EPP)
    capabilities

    -   Next-generation protection

    -   Attack surface reduction


## Out of scope

The following are out of scope of this deployment guide:

-   Configuration of third-party solutions that might integrate with Defender for Endpoint

-   Penetration testing in production environment
