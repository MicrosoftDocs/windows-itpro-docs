---
title: Threat & Vulnerability Management scenarios
description: 
keywords: 
search.product: Windows 10
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: Dolcita Montemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Threat & Vulnerability Management scenarios
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease�information](prerelease.md)]

## Before you begin
Ensure that your machines:
- Are onboarded to Microsoft Defender Advanced Threat Protection
- Running with Windows 10 1709 (Fall Creators Update) or later
- Have at least one security recommendation that can be viewed in the machine page
- Are onboarded to Microsoft Intune or Microsoft System Center Configuration Manager (SCCM). If you are using SCCM, update your console to April version 1904
- Are tagged or marked as co-managed

## Lower down your threat and vulnerability exposure
Threat & Vulnerability Management introduces a new exposure score metric which visually represents how exposed your machines are to imminent threats.

The exposure score is continuously calculated on each device in the organization and influenced by the following factors:
- Weaknesses, such as vulnerabilities and misconfigurations discovered on the device
- External and internal threats such as public exploit code and security alerts
- Likelihood of the device getting breached given its current security posture
- Value of the device to the organization given its role and content

The exposure score is broken down into the following levels:
- 0 to 29: low exposure score
- 30 to 69: medium exposure score
- 70 to 100: high exposure score

You can reduce the exposure score by remediating issues based on prioritized security recommendations. Each software has weaknesses that are transformed into recommendations and prioritized based on risk to the organization.

To lower down your threat and vulnerability exposure through remediation via Microsoft Intune:

1. Go through the **Top security recommendations** list from your Threat & Vulnerability Management dashboard, and select the first item on the list.

2. In the **Security recommendations** page, you will see the description of what needs to be done and why. It will also show you the vulnerability details, such as the associated exploits affecting what machines and its business impact. Select **Request remediation**.. 

3. Select **Open a ticket in Intune** and indicate the remediation due date.
    
4.	Add a note for the IT administrator who will pick up the remediation task for more context. 

5.	Click **Submit request**. This will take you to the Intune portal.

6.	<Add Intune portal workflow here>


## Improve your security configuration
1. Step

2. Step


## Request for remediation and monitor its progress

1. Step

2. Step


## File for and manage exception

1. Step

2. Step

## Related topics
- [Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Configure Threat & Vulnerability Management](configure-and-manage-tvm.md)
