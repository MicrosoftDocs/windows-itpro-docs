---
title: Plan your Microsoft Defender ATP deployment strategy
description: Select the best Microsoft Defender ATP deployment strategy for your environment
keywords: deploy, plan, deployment strategy, cloud native, management, on prem, evaluation, onboarding, local, group policy, gp, endpoint manager, mem
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
ms.collection: M365-security-compliance  
ms.topic: article
---

# Plan your Microsoft Defender ATP deployment strategy

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-secopsdashboard-abovefoldlink) 

Depending on the requirements of your environment, we've put together material to help guide you through the various options you can adopt to deploy Microsoft Defender ATP. 


You can deploy Microsoft Defender ATP using various management tools. In general the following management tools are supported:

- Group policy
- Microsoft Endpoint Configuration Manager
- Mobile Device Management tools
- Local script


## Microsoft Defender ATP deployment strategy

Depending on your environment, some tools are better suited for certain architectures.


|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for Microsoft Defender ATP deployment strategy](images/mdatp-deployment-strategy.png)](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)<br/> [PDF](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)  \| [Visio](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.vsdx) | The architectural material helps you plan your deployment for the following architectures: <ul><li> Cloud-native </li><li> Co-management </li><li> On-premise</li><li>Evaluation and local onboarding</li>


## Phased deployment approach
Regardless of the deployment strategy you decide to implement, deploying Microsoft Defender ATP can be done in a phased approach. 

Enterprises can deploy the service on a pilot collection, and then incrementally roll the service out to a larger set of devices.

Adopting a phased approach helps reduce potential issues or conflicts that could arise while rolling the service out.

|**Pilot and deployment phases**|**Description**|
|:-----|:-----|
Pilot and deployment planning | Phase 1: Identify 50 systems for pilot testing - Focus on the security team, IT team and maybe Helpdesk
Full scale pilot | Phase 2: 100  systems <br> 	Phase 3: 150 systems <br> Phase 4: 500 systems <br> Phase 5: 1000 systems <br><br> Review and assess if there required tweaks to deployment. 
Full deployment | Roll out service to the rest of environment in larger increments.




  
## Related topics
- [Deployment phases](deployment-phases.md)
