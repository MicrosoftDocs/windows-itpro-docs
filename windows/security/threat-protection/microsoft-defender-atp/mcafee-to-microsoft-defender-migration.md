---
title: Migrate from McAfee to Microsoft Defender for Endpoint
description: Make the switch from McAfee to Microsoft Defender for Endpoint. Read this article for an overview.
keywords: migration, windows defender advanced threat protection, atp, edr
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.technology: windows
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
- m365solution-mcafeemigrate
- m365solution-overview 
ms.topic: conceptual
ms.custom: migrationguides
ms.date: 09/22/2020
ms.reviewer: jesquive, chventou, jonix, chriggs, owtho
---

# Migrate from McAfee to Microsoft Defender Advanced Threat Protection

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


If you are planning to switch from McAfee Endpoint Security (McAfee) to [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection) (Microsoft Defender for Endpoint), you're in the right place. Use this article as a guide to plan your migration.  

## The migration process

When you switch from McAfee to Microsoft Defender for Endpoint, you follow a process that can be divided into three phases, as described in the following table:

|Phase |Description |
|--|--|
|[![Phase 1: Prepare](images/prepare.png)](mcafee-to-microsoft-defender-prepare.md)<br/>[Prepare for your migration](mcafee-to-microsoft-defender-prepare.md) |During [the **Prepare** phase](mcafee-to-microsoft-defender-prepare.md), you update your organization's devices, get Microsoft Defender for Endpoint, plan your roles and permissions, and grant access to the Microsoft Defender Security Center. You also configure your device proxy and internet settings to enable communication between your organization's devices and Microsoft Defender for Endpoint. |
|[![Phase 2: Set up](images/setup.png)](mcafee-to-microsoft-defender-setup.md)<br/>[Set up Microsoft Defender for Endpoint](mcafee-to-microsoft-defender-setup.md) |During [the **Setup** phase](mcafee-to-microsoft-defender-setup.md), you enable Microsoft Defender Antivirus and make sure it's in passive mode, and you configure settings & exclusions for Microsoft Defender Antivirus, Microsoft Defender for Endpoint, and McAfee. You also create device groups, collections, and organizational units. Finally, you configure your antimalware policies and real-time protection settings.|
|[![Phase 3: Onboard](images/onboard.png)](mcafee-to-microsoft-defender-onboard.md)<br/>[Onboard to Microsoft Defender for Endpoint](mcafee-to-microsoft-defender-onboard.md) |During [the **Onboard** phase](mcafee-to-microsoft-defender-onboard.md), you onboard your devices to Microsoft Defender for Endpoint and verify that those devices are communicating with Microsoft Defender for Endpoint. Last, you uninstall McAfee and make sure that protection through Microsoft Defender Antivirus & Microsoft Defender for Endpoint is in active mode. |

## What's included in Microsoft Defender for Endpoint?

In this migration guide, we focus on [next-generation protection](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10) and [endpoint detection and response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/overview-endpoint-detection-response) capabilities as a starting point for moving to Microsoft Defender for Endpoint. However, Microsoft Defender for Endpoint includes much more than antivirus and endpoint protection. Microsoft Defender for Endpoint is a unified platform for preventative protection, post-breach detection, automated investigation, and response. The following table summarizes features and capabilities in Microsoft Defender for Endpoint. 

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

**Want to learn more? See [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection).**

## Next step

- Proceed to [Prepare for your migration](mcafee-to-microsoft-defender-prepare.md).
