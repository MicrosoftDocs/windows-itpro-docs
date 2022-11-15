---
title: Documenting the Zones (Windows)
description: Learn how to document the zone placement of devices in your design for Windows Defender Firewall with Advanced Security.
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/07/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Documenting the Zones


Generally, the task of determining zone membership isn't complex, but it can be time-consuming. Use the information generated during the [Designing a Windows Defender Firewall with Advanced Security Strategy](designing-a-windows-firewall-with-advanced-security-strategy.md) section of this guide to determine the zone in which to put each host. You can document this zone placement by adding a Group column to the inventory table shown in the Designing a Windows Defender Firewall with Advanced Security Strategy section. A sample is shown here:

| Host name | Hardware reqs met | Software reqs met | Configuration required | Details | Projected cost | Group |
| - | - | - | - | - | - |
| CLIENT001 | No| No| Upgrade hardware and software.| Current operating system is Windows XP. Old hardware not compatible with newer versions of Windows.| $??| Isolated domain| 
| SERVER002 | Yes| No| Join trusted domain, upgrade from Windows Server 2008 to at least Windows Server 2012| No antivirus software present.| $??| Encryption| 
| SENSITIVE001 | Yes| Yes| Not required.| Running Windows Server 2012. Ready for inclusion.| $0| Isolated server (in zone by itself)| 
| PRINTSVR1 | Yes| Yes| Not required.| Running Windows Server 2008 R2. Ready for inclusion.| $0| Boundary| 

**Next:** [Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md)
