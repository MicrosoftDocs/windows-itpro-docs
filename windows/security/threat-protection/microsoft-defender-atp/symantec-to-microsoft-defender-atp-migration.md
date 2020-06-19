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

If you are planning to switch from Symantec Endpoint Protection (Symantec) to [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://docs.microsoft.com/windows/security/threat-protection), you're in the right place. Use this article as a guide to plan your migration.  

## The migration process

The process of switching from Symantec to Microsoft Defender ATP can be divided into three phases or parts, as listed in the following table. 

|Phase |Description |
|--|--|
|[![Phase 1: Prepare](images/prepare.png)](symantec-to-microsoft-defender-atp-prepare.md)<br/>[Prepare for your migration](symantec-to-microsoft-defender-atp-prepare.md) |During this phase, you get Microsoft Defender ATP, plan your roles and permissions, and grant access to the Microsoft Defender Security Center. You also configure your device proxy and internet settings to enable communication between your organization's devices and Microsoft Defender ATP. |
|[![Phase 2: Set up](images/setup.png)](symantec-to-microsoft-defender-atp-setup.md)<br/>[Set up Microsoft Defender ATP](symantec-to-microsoft-defender-atp-setup.md) |During this phase, you configure settings and exclusions for Microsoft Defender Antivirus (Microsoft Defender AV), Microsoft Defender ATP, and Symantec Endpoint Protection. You also create device groups, collections, and organizational units. Finally, you configure your antimalware policies and real-time protection settings.|
|[![Phase 3: Onboard](images/onboard.png)](symantec-to-microsoft-defender-atp-onboard.md)<br/>[Onboard to Microsoft Defender ATP](symantec-to-microsoft-defender-atp-onboard.md) |During this phase, you onboard your devices to Microsoft Defender ATP and then uninstall Symantec. |

After you have Microsoft Defender ATP set up and deployed, you can [manage the various features and capabilities](microsoft-defender-atp-post-migration-management.md).

## What's included in Microsoft Defender ATP?

Microsoft Defender ATP is more than endpoint protection and antivirus. Microsoft Defender ATP is a unified platform for preventative protection, post-breach detection, automated investigation, and response. 

Watch the following video to get an overview:

>[!VIDEO https://www.microsoft.com/videoplayer/embed/RE4obJq]


**Want to learn more? See [Microsoft Defender ATP](https://docs.microsoft.com/windows/security/threat-protection).**

## Next step

- When you are ready to begin your migration, proceed to [Prepare for your migration](symantec-to-microsoft-defender-atp-prepare.md).
