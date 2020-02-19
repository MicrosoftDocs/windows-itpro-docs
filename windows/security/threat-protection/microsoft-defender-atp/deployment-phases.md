---
title: Deployment phases
description: 
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
ms.collection: M365-security-compliance  
ms.topic: article
---

# Deployment phases

There are three phases in deploying Microsoft Defender ATP:


<br>
<table border="0" width="100%" align="center">
  <tr style="text-align:center;">
    <td align="center" style="width:25%; border:0;">
      <a href= "prepare-deployment"> 
        <img src="images/prepare.png" alt="Prepare to deploy Microsoft Defender ATP" title="Prepare" />
      <br/>Prepare </a><br>
    </td>
     <td align="center">
      <a href="production-deployment">
        <img src="images/setup.png" alt="Onboard to the Microsoft Defender ATP service" title="Setup" />
      <br/>Setup </a><br>
    </td>
    <td align="center">
      <a href="onboarding">
        <img src="images/onboard.png" alt="Onboard" title="Onboard" />
      <br/>Onboard </a><br>
</td>
  </tr>
  <tr>
    <td style="width:25%; border:0;">
    This phase guides you through what you need to consider when deploying Microsoft Defender ATP:

- Stakeholders and sign-off
- Environment considerations
- Access 
- Adoption order

 
    </td>
    <td valign="top" style="width:25%; border:0;">
     The setup phase covers the initial steps you'll take as you first access Microsoft Defender Security Center. You'll be guided on:


- Validating the licensing
- Completing the setup wizard within the portal
- Network configuration

</td>
    <td valign="top" style="width:25%; border:0;">
Onboard devices to the service so the Microsoft Defender ATP service can get sensor data from them. You'll be guided on:


- Using Microsoft Endpoint Configuration Manager to onboard devices
- Configure capabilities 
</td>    
  </tr>
</table>

 The deployment guide will walk you through the recommended path in deploying Microsoft Defender ATP. 

There are several methods you can use to onboard to the service. The deployment guide will only cover the recommended path. For details on other ways to onboard, see [Onboard machines to Microsoft Defender ATP](onboard-configure.md).

## In Scope

The following is in scope for this deployment guide:
-   Use of Microsoft Endpoint Configuration Manager to onboard endpoints into the service
-   Enabling Microsoft Defender ATP endpoint protection platform (EPP)
    capabilities

    -   Next Generation Protection

    -   Attack Surface Reduction

-   Enabling Microsoft Defender ATP endpoint detection and response (EDR)
    capabilities including automatic investigation and remediation

-   Enabling Microsoft Defender ATP threat and vulnerability management (TVM)


## Out of scope

The following are out of scope of this deployment guide:

-   Configuration of third-party solutions that might integrate with Microsoft
    Defender ATP

-   Penetration testing in production environment
