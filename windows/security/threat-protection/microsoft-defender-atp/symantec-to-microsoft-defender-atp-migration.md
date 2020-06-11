---
title: Migrate from Symantec to Microsoft Defender ATP
description: Make the switch from Symantec to Microsoft Defender ATP
keywords: migration, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Migrate from Symantec to Microsoft Defender Advanced Threat Protection - Overview and Planning

If you are planning to switch from Symantec Endpoint Protection to [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection), you're in the right place. Use this article as a guide to plan your migration.  

## Planning for migration: The process at a high level

The process of switching from Symantec to Microsoft Defender ATP can be divided into three phases or parts, as listed in the following table. 

|Phase |Steps |
|--|--|
|[Part 1: Get Microsoft Defender ATP started](symantec-to-microsoft-defender-atp-part1.md) |Step 1: Get Microsoft Defender ATP<br/><br/>Step 2: Grant access to the Microsoft Defender Security Center<br/><br/>Step 3: Configure device proxy and internet connectivity settings |
|[Part 2: Configure settings and exclusions for Microsoft Defender ATP and Symantec Endpoint Protection](symantec-to-microsoft-defender-atp-part2.md) |Step 4: Set Microsoft Defender ATP to passive mode<br/><br/>Step 5: Re-enable Microsoft Defender Antivirus <br/><br/>Step 6: Add Microsoft Defender ATP EDR to the exclusion list for Symantec<br/><br/>Step 7: Add Symantec to your Microsoft Defender ATP EDR exclusion list |
|[Part 3: Finish making the switch to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-part3.md) | Step 8: Set up your device groups, device collections, and organizational units<br/><br/>Step 9: Deploy Microsoft Defender ATP and uninstall Symantec<br/><br/>Step 10: Onboard devices to Microsoft Defender ATP |

After you have Microsoft Defender ATP set up and deployed, you can [manage the various features and capabilities](microsoft-defender-atp-post-migration-management.md).

## Overview of Microsoft Defender ATP

If you are new to Microsoft Defender ATP, you might be wondering what all is included. Microsoft Defender ATP is a unified platform for preventative protection, post-breach detection, automated investigation, and response. Microsoft Defender ATP includes the features and capabilities listed in the following table:

| Feature/Capability | Description |
|---|---|
| [Threat & Vulnerability Management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) | Threat & Vulnerability Management capabilities helps identify, assess, and remediate weaknesses across your endpoints (such as devices). |
| [Attack surface reduction](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-attack-surface-reduction) | Attack surface reduction rules help protect your organization's devices and applications from cyberthreats and attacks. |
| [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) | Next-generation protection includes Microsoft Defender Antivirus to help block threats and malware. |
| [Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) | Endpoint detection and response capabilities detect, investigate, and respond to intrusion attempts and active breaches.  |
| [Advanced hunting](advanced-hunting-overview.md) | Advanced hunting capabilities enable your security operations team to locate indicators and entities of known or potential threats. |
| [Behavioral blocking and containment](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment) | Behavioral blocking and containment capabilities help identify and stop threats, based on their behaviors and process trees even when the threat has started execution. |
| [Automated investigation and remediation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) | Automated investigation and response capabilities examine alerts and take immediate remediation action to resolve breaches. |
| [Threat hunting service](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts) (Microsoft Threat Experts) | Threat hunting services provide security operations teams with expert level monitoring and analysis, and to help ensure that critical threats aren't missed. |

As you can see, Microsoft Defender ATP includes a wide range of threat protection capabilities. Want to learn more? See [about Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection).

## Next step

When you are ready to begin your migration, proceed to [Migrate from Symantec - Part 1: Get Microsoft Defender ATP started](symantec-to-microsoft-defender-atp-part1.md).
