---
title: Deploy Microsoft Defender ATP in rings
description: Learn how deploy Microsoft Defender ATP in rings
keywords: deploy, rings, setup, onboard, phase, deployment, deploying, adoption, configuring
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

# Deploy Microsoft Defender ATP in rings

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2146631)


Deploying Microsoft Defender ATP can be done using a ring-based deployment approach. 

![Image of deployment rings](images/deployment-rings.png)


A ring-based approach is a method of identifying a set of endpoints to onboard and verifying that certain criteria is met before proceeding to deploy the service to a larger set of devices. You can define the exit criteria for each ring and ensure that they are satisfied before moving on to the next ring.

Adopting a ring-based deployment helps reduce potential issues that could arise while rolling out the service. By piloting a certain number of devices first, you can identify potential issues and mitigate potential risks that might arise. 


Table 1 provides an example of the deployment rings you might use. 

**Table 1**

|**Deployment ring**|**Description**|
|:-----|:-----|
Evaluate | Ring 1: Identify 50 systems for pilot testing 
Pilot | Ring 2: 50-100  systems <br> 	
Full deployment | Roll out service to the rest of environment in larger increments.


## Evaluate
You can use the [evaluation lab](evaluation-lab.md) to gain full access to the capabilities of the suite without the complexities of environment configuration. 

You'll be able to add Windows 10 or Windows Server 2019 devices to the lab environment, install threat simulators, and run scenarios to instantly see how the platform performs.

### Exit criteria?
- Able to run simulation
- Able to install threat simulator
- Results from simulation is displayed in dashboard


## Pilot
Microsoft Defender ATP supports a variety of endpoints that you can onboard to the service. In this ring, identify several devices to onboard and based on the exit criteria you define, decide to proceed to the next deployment ring.

The following table shows the supported endpoints and the corresponding tool you can use to onboard devices to the service. 

| Endpoint     | Deployment tool                       |
|--------------|------------------------------------------|
| **Windows**  |  [Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Endpoint Manager/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)   |
| **macOS**    | [Local script](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| **Linux Server** | [Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md)|
| **iOS**      | [App-based](ios-install.md)                                |
| **Android**  | [Microsoft Endpoint Manager](android-intune.md)               | 


### Exit criteria?
- [Run a detection test](run-detection-test.md)
- [Run a simulated attack on a device](attack-simulations.md)


## Full deployment
At this stage, you can use the [Plan deployment](deployment-strategy.md) material to help you plan your deployment. 


Use the following material to select the appropriate Microsoft Defender ATP architecture that best suites your organization.

|**Item**|**Description**|
|:-----|:-----|
|[![Thumb image for Microsoft Defender ATP deployment strategy](images/mdatp-deployment-strategy.png)](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)<br/> [PDF](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.pdf)  \| [Visio](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/security/threat-protection/microsoft-defender-atp/downloads/mdatp-deployment-strategy.vsdx) | The architectural material helps you plan your deployment for the following architectures: <ul><li> Cloud-native </li><li> Co-management </li><li> On-premise</li><li>Evaluation and local onboarding</li>

### Exit criteria?
- Devices show up in the device inventory list