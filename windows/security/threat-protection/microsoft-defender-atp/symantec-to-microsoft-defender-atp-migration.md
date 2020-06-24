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

# Migrate from Symantec to Microsoft Defender Advanced Threat Protection

If you are planning to switch from Symantec Endpoint Protection (Symantec) to [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection) (Microsoft Defender ATP), you're in the right place. Use this article as a guide to plan your migration.  

## The migration process

When you switch from Symantec to Microsoft Defender ATP, you follow a process that can be divided into three phases. The following table lists the three phases and what happens during each phase. 

|Phase |Description |
|--|--|
|[![Phase 1: Prepare](images/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Prepare for your migration](symantec-to-microsoft-defender-atp-prepare.md) |During this phase, you get Microsoft Defender ATP, plan your roles and permissions, and grant access to the Microsoft Defender Security Center. You also configure your device proxy and internet settings to enable communication between your organization's devices and Microsoft Defender ATP. |
|[![Phase 2: Set up](images/setup.png)](symantec-to-microsoft-defender-atp-setup.md)<br/>[Set up Microsoft Defender ATP](symantec-to-microsoft-defender-atp-setup.md) |During this phase, you configure settings and exclusions for Microsoft Defender Antivirus, Microsoft Defender ATP, and Symantec Endpoint Protection. You also create device groups, collections, and organizational units. Finally, you configure your antimalware policies and real-time protection settings.|
|[![Phase 3: Onboard](images/onboard.png)](symantec-to-microsoft-defender-atp-onboard.md)<br/>[Onboard to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-onboard.md) |During this phase, you onboard your devices to Microsoft Defender ATP and verify that those devices are communicating with Microsoft Defender ATP. Last, you uninstall Symantec. |

## What's included in Microsoft Defender ATP?

In this migration guide, we focus on endpoint protection and antivirus as a starting point. However, Microsoft Defender ATP is more than those capabilities. Microsoft Defender ATP is a unified platform for preventative protection, post-breach detection, automated investigation, and response. 

The following table lists features and capabilities of Microsoft Defender ATP:

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

<br/>

Watch the following video to get an overview:

>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4obJq]


**Want to learn more? See [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection).**

## Next step

- When you are ready to begin, proceed to [Prepare for your migration](symantec-to-microsoft-defender-atp-prepare.md).
