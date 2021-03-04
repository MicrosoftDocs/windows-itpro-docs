---
title: Plan your Microsoft Defender for Endpoint deployment
description: Select the best Microsoft Defender for Endpoint deployment strategy for your environment
keywords: deploy, plan, deployment strategy, cloud native, management, on prem, evaluation, onboarding, local, group policy, gp, endpoint manager, mem
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---

# Plan your Microsoft Defender for Endpoint deployment 

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-secopsdashboard-abovefoldlink) 


Plan your Microsoft Defender for Endpoint deployment so that you can maximize the security capabilities within the suite and better protect your enterprise from cyber threats.


This solution provides guidance on how to identify your environment architecture, select the type of deployment tool that best fits your needs, and guidance on how to configure capabilities.


![Image of deployment flow](images/deployment-guide-plan.png)


## Step 1: Identify architecture
We understand that every enterprise environment is unique, so we've provided several options to give you the flexibility in choosing how to deploy the service.

Depending on your environment, some tools are better suited for certain architectures. 

Use the following material to select the appropriate Defender for Endpoint architecture that best suites your organization.

| Item | Description |
|:-----|:-----|
|[![Thumb image for Defender for Endpoint deployment strategy](images/mdatp-deployment-strategy.png)](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)<br/> [PDF](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)  \| [Visio](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.vsdx) | The architectural material helps you plan your deployment for the following architectures: <ul><li> Cloud-native </li><li> Co-management </li><li> On-premise</li><li>Evaluation and local onboarding</li>



## Step 2: Select deployment method
Defender for Endpoint supports a variety of endpoints that you can onboard to the service. 

The following table lists the supported endpoints and the corresponding deployment tool that you can use so that you can plan the deployment appropriately.

| Endpoint     | Deployment tool                       |
|--------------|------------------------------------------|
| **Windows**  |  [Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Endpoint Manager/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)   |
| **macOS**    | [Local script](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| **Linux Server** | [Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md)|
| **iOS**      | [App-based](ios-install.md)                                |
| **Android**  | [Microsoft Endpoint Manager](android-intune.md)               | 



## Step 3: Configure capabilities
After onboarding endpoints, configure the security capabilities in Defender for Endpoint so that you can maximize the robust security protection available in the suite. Capabilities include:

- Endpoint detection and response
- Next-generation protection
- Attack surface reduction


  
## Related topics
- [Deployment phases](deployment-phases.md)
