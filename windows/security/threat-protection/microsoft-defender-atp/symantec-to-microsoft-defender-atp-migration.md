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
ms.collection: 
- M365-security-compliance
- m365solution-symantecmigrate
- m365solution-overview 
ms.topic: conceptual
ms.date: 09/04/2020
ms.reviewer: depicker, yongrhee, chriggs
---

# Migrate from Symantec to Microsoft Defender Advanced Threat Protection

If you are planning to switch from Symantec Endpoint Protection (Symantec) to [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection) (Microsoft Defender ATP), you're in the right place. Use this article as a guide to plan your migration.  

## The migration process

When you switch from Symantec to Microsoft Defender ATP, you follow a process that can be divided into three phases, as described in the following table:

|Phase |Description |
|--|--|
|[![Phase 1: Prepare](images/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Prepare for your migration](symantec-to-microsoft-defender-atp-prepare.md) |During the **Prepare** phase, you get Microsoft Defender ATP, plan your roles and permissions, and grant access to the Microsoft Defender Security Center. You also configure your device proxy and internet settings to enable communication between your organization's devices and Microsoft Defender ATP. |
|[![Phase 2: Set up](images/setup.png)](symantec-to-microsoft-defender-atp-setup.md)<br/>[Set up Microsoft Defender ATP](symantec-to-microsoft-defender-atp-setup.md) |During the **Setup** phase, you configure settings and exclusions for Microsoft Defender Antivirus, Microsoft Defender ATP, and Symantec Endpoint Protection. You also create device groups, collections, and organizational units. Finally, you configure your antimalware policies and real-time protection settings.|
|[![Phase 3: Onboard](images/onboard.png)](symantec-to-microsoft-defender-atp-onboard.md)<br/>[Onboard to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-onboard.md) |During the **Onboard** phase, you onboard your devices to Microsoft Defender ATP and verify that those devices are communicating with Microsoft Defender ATP. Last, you uninstall Symantec and make sure protection through Microsoft Defender ATP is in active mode. |

## What's included in Microsoft Defender ATP?

In this migration guide, we focus on [next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) and [endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) capabilities as a starting point for moving to Microsoft Defender ATP. However, Microsoft Defender ATP includes much more than antivirus and endpoint protection. Microsoft Defender ATP is a unified platform for preventative protection, post-breach detection, automated investigation, and response. The following table summarizes features and capabilities in Microsoft Defender ATP. 

| Feature/Capability | Description |
|---|---|
| [Threat & vulnerability management](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/next-gen-threat-and-vuln-mgt) | Threat & vulnerability management capabilities help identify, assess, and remediate weaknesses across your endpoints (such as devices). |
| [Attack surface reduction](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-attack-surface-reduction) | Attack surface reduction rules help protect your organization's devices and applications from cyberthreats and attacks. |
| [Next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/windows-defender-antivirus-in-windows-10) | Next-generation protection includes Microsoft Defender Antivirus to help block threats and malware. |
| [Endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) | Endpoint detection and response capabilities detect, investigate, and respond to intrusion attempts and active breaches.  |
| [Advanced hunting](advanced-hunting-overview.md) | Advanced hunting capabilities enable your security operations team to locate indicators and entities of known or potential threats. |
| [Behavioral blocking and containment](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/behavioral-blocking-containment) | Behavioral blocking and containment capabilities help identify and stop threats, based on their behaviors and process trees even when the threat has started execution. |
| [Automated investigation and remediation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) | Automated investigation and response capabilities examine alerts and take immediate remediation action to resolve breaches. |
| [Threat hunting service](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-threat-experts) (Microsoft Threat Experts) | Threat hunting services provide security operations teams with expert level monitoring and analysis, and to help ensure that critical threats aren't missed. |

**Want to learn more? See [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection).**

## Next step

- Proceed to [Prepare for your migration](symantec-to-microsoft-defender-atp-prepare.md).
