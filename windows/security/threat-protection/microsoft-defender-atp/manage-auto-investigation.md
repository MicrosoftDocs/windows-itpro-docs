---
title: Review and approve actions following automated investigations in the Microsoft Defender Security Center
description: Review and approve (or reject) remediation actions following an automated investigation.
keywords: autoir, automated, investigation, detection, dashboard, source, threat types, id, tags, machines, duration, filter export
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
ms.topic: conceptual
---

# Review and approve actions following an automated investigation

When an automated investigation runs, a verdict is generated for each piece of evidence investigated. Verdicts can be *Malicious*, *Suspicious*, or *Clean*. Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization’s security operations team. For example, some actions, such as removing malware, are taken automatically. Other actions require review and approval to proceed.  

As a best practice, make sure to approve (or reject) pending actions as soon as possible. This helps your automated investigations complete in a timely manner. 

1. 


You'll need to manually approve or reject pending actions on each of these categories for the automated actions to proceed.

Selecting an investigation from any of the categories opens a panel where you can approve or reject the remediation. Other details such as file or service details, investigation details, and alert details are displayed.

From the panel, you can click on the Open investigation page link to see the investigation details.

You also have the option of selecting multiple investigations to approve or reject actions on multiple investigations. 

 
## Related articles

[Advanced Hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview)