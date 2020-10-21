---
title: Deployment phases
description: Learn how deploy Microsoft Defender ATP by preparing, setting up, and onboarding endpoints to that service
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
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2146631)


There are three phases in deploying Microsoft Defender ATP:

|Phase | Desription | 
|:-------|:-----|
| ![Phase 1: Prepare](images/prepare.png)<br>[Phase 1: Prepare](prepare-deployment.md)| Learn about what you need to consider when deploying Microsoft Defender ATP: <br><br>- Stakeholders and sign-off <br> - Environment considerations <br>- Access <br> - Adoption order
|  ![Phase 2: Setup](images/setup.png) <br>[Phase 2: Setup](production-deployment.md)|  Take the initial steps to access Microsoft Defender Security Center. You'll be guided on:<br><br>- Validating the licensing <br>  - Completing the setup wizard within the portal<br>- Network configuration|
|  ![Phase 3: Onboard](images/onboard.png) <br>[Phase 3: Onboard](onboarding.md) | Onboard devices to the service so the Microsoft Defender ATP service can get sensor data from them. You'll be guided on:<br><br>- Using Microsoft Endpoint Configuration Manager to onboard devices<br>- Configure capabilities 



 The deployment guide will guide you through the recommended path in deploying Microsoft Defender ATP. 

There are several methods you can use to onboard to the service. For information on other ways to onboard, see [Onboard devices to Microsoft Defender ATP](onboard-configure.md).

## Deploy Microsoft Defender ATP in rings

Deploying Microsoft Defender ATP can be done using a ring-based deployment approach. 

A ring-based approach is a method of identifying a set of machines to onboard with specific timelines and verifying that certain criteria are met before the deploying to a larger set of devices.

Adopting a ring-based deployment helps reduce potential issues or conflicts that could arise while rolling the service out. By piloting a certain number of devices first, you can identify potential issues and mitigate potential risks that might arise. 


Table 1 provides an example of the deployment rings you might use. 

**Table 1**

|**Deployment ring**|**Description**|
|:-----|:-----|
Pilot and deployment planning | Phase 1: Identify 50 systems for pilot testing. <br> Focus on the security team, IT team and maybe Helpdesk.
Full scale pilot | Phase 2: 100  systems <br> 	Phase 3: 150 systems <br> Phase 4: 500 systems <br> Phase 5: 1000 systems <br><br> Review and assess if there required tweaks to deployment. 
Full deployment | Roll out service to the rest of environment in larger increments.



## In Scope

The following is in scope for this deployment guide:

-   Use of Microsoft Endpoint Configuration Manager to onboard endpoints into the service

-   Enabling Microsoft Defender ATP endpoint protection platform (EPP)
    capabilities

    -   Next-generation protection

    -   Attack surface reduction

-   Enabling Microsoft Defender ATP endpoint detection and response (EDR)
    capabilities including automatic investigation and remediation

-   Enabling Microsoft Defender ATP threat and vulnerability management (TVM)


## Out of scope

The following are out of scope of this deployment guide:

-   Configuration of third-party solutions that might integrate with Microsoft
    Defender ATP

-   Penetration testing in production environment
