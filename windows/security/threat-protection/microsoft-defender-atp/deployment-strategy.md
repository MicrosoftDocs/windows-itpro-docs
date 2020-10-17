---
title: Plan your Microsoft Defender ATP deployment 
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

# Plan your Microsoft Defender ATP deployment 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-secopsdashboard-abovefoldlink) 

Depending on the requirements of your environment, we've put together material to help guide you through the various options you can adopt to deploy Microsoft Defender ATP. 

These are the general steps you need to take to deploy Microsoft Defender ATP:

![Image of deployment flow](images/onboarding-flow-diagram.png)

- Identify architecture
- Select deployment method
- Configure capabilities


## Step 1: Identify architecture
We understand that every enterprise environment is unique, so we've provided several options to give you the flexibility in choosing how to deploy the service.

Depending on your environment, some tools are better suited for certain architectures. 

Use the following material to select the appropriate Microsoft Defender ATP architecture that best suites your organization.

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for Microsoft Defender ATP deployment strategy](images/mdatp-deployment-strategy.png)](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)<br/> [PDF](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)  \| [Visio](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.vsdx) | The architectural material helps you plan your deployment for the following architectures: <ul><li> Cloud-native </li><li> Co-management </li><li> On-premise</li><li>Evaluation and local onboarding</li>



## Step 2: Select deployment method
Microsoft Defender ATP supports a variety of endpoints that you can onboard to the service. 

The following table lists the supported endpoints and the corresponding deployment tool that you can use so that you can plan the deployment appropriately.

| Endpoint     | Deployment tool                       |
|--------------|------------------------------------------|
| **Windows**  |  [Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Endpoint Manager/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)   |
| **macOS**    | [Local scripts](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| **Linux Server** | [Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible)|
| **iOS**      | [App-based](ios-install.md)                                |
| **Android**  | [Microsoft Endpoint Manager](android-intune.md)               | 



## Step 3: Configure capabilities
After onboarding endpoints, configure the security capabilities in Microsoft Defender ATP so that you can maximize the robust security protection available in the suite.

You'll be guided in configuring capabilities such as:

- Endpoint detection and response
- Next-generation protection
- Attack surface reduction



  
## Related topics
- [Deployment phases](deployment-phases.md)
