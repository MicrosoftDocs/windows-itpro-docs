---
title: Onboard to the Microsoft Defender ATP service
description: Learn how to onboard endpoints to Microsoft Defender ATP service
keywords: 
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
- m365solution-scenario  
ms.topic: article
---

# Onboard to the Microsoft Defender for Endpoint service

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Deploying Defender for Endpoint is a three-phase process:

<br>
<table border="0" width="100%" align="center">
  <tr style="text-align:center;">
    <td align="center" style="width:25%; border:0;" >
      <a href= "https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/prepare-deployment"> 
        <img src="images/prepare.png" alt="Prepare to deploy Defender for Endpoint" title="Prepare" />
      <br/>Phase 1: Prepare </a><br>
    </td>
     <td align="center">
      <a href="https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/production-deployment">
        <img src="images/setup.png" alt="Setup the Defender for Endpoint service" title="Setup" />
      <br/>Phase 2: Set up </a><br>
    </td>
    <td align="center" bgcolor="#d5f5e3">
      <a href="https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/onboarding">
        <img src="images/onboard.png" alt="Onboard diagram" title="Onboard to the Defender for Endpoint service" />
      <br/>Phase 3: Onboard </a><br>
</td>


  </tr>
</table>

You are currently in the onboarding phase.

These are the steps you need to take to deploy Defender for Endpoint:

- Step 1: Onboard endpoints to the service 
- Step 2: Configure capabilities 

## Step 1: Onboard endpoints using any of the supported management tools
The [Plan deployment](deployment-strategy.md) topic outlines the general steps you need to take to deploy Defender for Endpoint.  

After identifying your architecture, you'll need to decide which deployment method to use. The deployment tool you choose influences how you onboard endpoints to the service. 

### Onboarding tool options

The following table lists the available tools based on the endpoint that you need to onboard.

| Endpoint     | Tool options                       |
|--------------|------------------------------------------|
| **Windows**  |  [Local script (up to 10 devices)](configure-endpoints-script.md) <br>  [Group Policy](configure-endpoints-gp.md) <br>  [Microsoft Endpoint Manager/ Mobile Device Manager](configure-endpoints-mdm.md) <br>   [Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md) <br> [VDI scripts](configure-endpoints-vdi.md)   |
| **macOS**    | [Local scripts](mac-install-manually.md) <br> [Microsoft Endpoint Manager](mac-install-with-intune.md) <br> [JAMF Pro](mac-install-with-jamf.md) <br> [Mobile Device Management](mac-install-with-other-mdm.md) |
| **Linux Server** | [Local script](linux-install-manually.md) <br> [Puppet](linux-install-with-puppet.md) <br> [Ansible](linux-install-with-ansible.md)|
| **iOS**      | [App-based](ios-install.md)                                |
| **Android**  | [Microsoft Endpoint Manager](android-intune.md)               | 


## Step 2: Configure capabilities
After onboarding the endpoints, you'll then configure the various capabilities such as endpoint detection and response, next-generation protection, and attack surface reduction. 


## Example deployments
In this deployment guide, we'll guide you through using two deployment tools to onboard endpoints and how to configure capabilities.

The tools in the example deployments are:
- [Onboarding using Microsoft Endpoint Configuration Manager](onboarding-endpoint-configuration-manager.md)
- [Onboarding using Microsoft Endpoint Manager](onboarding-endpoint-manager.md)

Using the mentioned deployment tools above, you'll then be guided in configuring the following Defender for Endpoint capabilities:
- Endpoint detection and response configuration
- Next-generation protection configuration
- Attack surface reduction configuration

## Related topics
- [Onboarding using Microsoft Endpoint Configuration Manager](onboarding-endpoint-configuration-manager.md)
- [Onboarding using Microsoft Endpoint Manager](onboarding-endpoint-manager.md)
