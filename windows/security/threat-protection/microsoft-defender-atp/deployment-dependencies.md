---
title: Deployment dependencies
description: Learn about Defender ATP deployment dependencies on each platform OS
keywords: deploy, prepare, setup, onboard, phase, deployment, deploying, adoption, configuring, dependancies, dependancy
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: jospaid
author: jospaid
ms.localizationpriority: medium
manager: ayhusain
audience: ITPro
ms.collection: 
- M365-security-compliance
- m365solution-endpointprotect
- m365solution-overview  
ms.topic: article
---

# Deployment dependancies
## Table of dependancies
When deploying Defender for Endpoints, each operating system may require the Defender ATP agent, app, the Microsoft Monitoring Agent (MMA) or some combination of them. The following table outlines the requirements for each platform:

|Operating System | Defender Agent/App | MMA Agent | Onboarding Process | 
|:-------|:-----|:----|:----|
| Windows 7 SP1 and 8.1 | No | Yes | [Options](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/onboard-configure#onboarding-tool-options) |
| Windows 10 | No | No | [Options](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/onboard-configure#onboarding-tool-options) |
| Windows Server 2008 R2 SP1, 2012 R2, and 2016 | No | Yes | [Options](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/onboard-configure#onboarding-tool-options) |
| Windows Server 1803 and 2019 | No | No | [Options](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/onboard-configure#onboarding-tool-options) |
| macOS | Yes | No | [Options](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/onboard-configure#onboarding-tool-options) |
| Linux Server | Yes | No | [Options](https://docs.microsoft.com/en-us/windows/security/threat-protection/microsoft-defender-atp/onboard-configure#onboarding-tool-options) |
| iOS | Yes | N/A | [App](https://apps.apple.com/us/app/microsoft-defender-atp/id1526737990) |
| Android | Yes | N/A | [Microsoft Endpoint Manager](https://docs.microsoft.com/en-us/mem/endpoint-manager-overview) |


## See also
- [Phase 3: Onboard](onboarding.md)
- [Plan deployment](deployment-strategy.md)
- [Defender compatibility](defender-compatibility.md)
