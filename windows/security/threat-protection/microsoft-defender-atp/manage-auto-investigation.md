---
title: Review and approve actions following automated investigations in the Microsoft Defender Security Center
description: Review and approve (or reject) remediation actions following an automated investigation.
keywords: autoir, automated, investigation, detection, dashboard, source, threat types, id, tags, devices, duration, filter export
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

## Remediation actions

When an automated investigation runs, a verdict is generated for each piece of evidence investigated. Verdicts can be *Malicious*, *Suspicious*, or *No threats found*. Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization’s security operations team. For example, some actions, such as removing malware, are taken automatically. Other actions require review and approval to proceed.  

When a verdict of *Malicious* is reached for a piece of evidence, Microsoft Defender Advanced Threat Protection takes one of the following remediation actions automatically:
- Quarantine a file
- Remove a registry key
- Kill a process
- Stop a service
- Remove a registry key
- Disable a driver
- Remove a scheduled task

Evidence determined as *Suspicious* results in pending actions that require approval. As a best practice, make sure to [approve (or reject) pending actions](#review-pending-actions) as soon as possible so that you automated investigations complete in a timely manner. 

No actions are taken when a verdict of *No threats found* is reached for a piece of evidence. 

In Microsoft Defender Advanced Threat Protection, all verdicts are [tracked and viewable in the Microsoft Defender Security Center](#review-completed-actions).

## Review pending actions

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. You'll see the Security dashboard.

2. On the Security dashboard, in the navigation pane on the left, choose **Automated investigations** > **Action center**.

3. Review any items on the **Pending** tab. 

    Select an investigation from any of the categories to open a panel where you can approve or reject remediation actions. Other details such as file or service details, investigation details, and alert details are displayed. From the panel, you can click on the **Open investigation page** link to see the investigation details.

    You can also select multiple investigations to approve or reject actions on multiple investigations. 


## Review completed actions

1. Go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in. You'll see the Security dashboard.

2. On the Security dashboard, in the navigation pane on the left, choose **Automated investigations** > **Action center**.

3. Select the **History** tab. (If need be, expand the time period to display more data.)

4. Select an item to view more details about that remediation action.
 
## Next steps

- [See the interactive guide: Investigate and remediate threats with Microsoft Defender ATP](https://aka.ms/MDATP-IR-Interactive-Guide)(https://aka.ms/MDATP-IR-Interactive-Guide)

- [View details and results of automated investigations](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/auto-investigation-action-center)

- [Get an overview of live response](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/live-response)

## Related articles

- [Automated investigation and response in Office 365 Advanced Threat Protection](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-air)

- [Automated investigation and response in Microsoft Threat Protection](https://docs.microsoft.com/microsoft-365/security/mtp/mtp-autoir)