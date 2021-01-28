---
title: View details and results of automated investigations
description: Use the action center to view details and results following an automated investigation
keywords: action, center, autoir, automated, investigation, response, remediation
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance
- m365initiative-defender-endpoint
ms.topic: article
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
ms.date: 01/28/2021
ms.technology: mde
---

# View details and results of automated investigations

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

During and after an automated investigation, remediation actions for threat detections are identified. Depending on the particular threat and how [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection) is configured for your organization, some remediation actions are taken automatically, and others require approval. 

If you're part of your organization's security operations team, you can view pending and completed [remediation actions](manage-auto-investigation.md#remediation-actions) in the **Action center** ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)). 

## The Action center

:::image type="content" source="images/mde-action-center-unified.png" alt-text="Action center in Microsoft 365 security center":::


The Action center consists of two main tabs: **Pending actions** and **History**.


|Tab  |Description  |
|---------|---------|
|**Pending**     | Displays a list of ongoing investigations that require attention. Recommended actions are presented that your security operations team can approve or reject. The **Pending** tab appears only if there are pending actions to be approved (or rejected).   |
|**History**     | Serves as an audit log for all of the following actions: <br/>- Remediation actions that were taken as a result of an automated investigation <br>- Remediation actions that were approved by your security operations team (some actions, such as sending a file to quarantine, can be undone) <br/>- Commands that were run and remediation actions that were applied in Live Response sessions (some actions can be undone) <br/>- Remediation actions that were applied by Microsoft Defender Antivirus (some actions can be undone)        |

Use the **Customize columns** menu to select columns that you'd like to show or hide. 

You can also download the entire list in CSV format using the **Export** feature, specify the number of items to show per page, and navigate between pages.

## (NEW!) A unified Action center


The former Action center for Microsoft Defender for Endpoint is located at [https://securitycenter.windows.com/action-center](https://securitycenter.windows.com/action-center). 

The new, improved Action center is located at [https://security.microsoft.com/action-center](https://security.microsoft.com/action-center).

As part of the improved Microsoft 365 security center, the improved Action center unifies automated investigations across [Microsoft Defender for Endpoint](microsoft-defender-advanced-threat-protection.md) and [Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp). It defines a common language for all remediation actions, and provides a unified investigation experience. You can use the improved Action center, regardless of whether you are using Defender for Endpoint, Defender for Office 365, or Microsoft 365 Defender. 

In addition, the improved Microsoft 365 security center includes details for all automated investigations, including the alerts that were triggered, any impacted assets, pieces of evidence with their verdicts and remediation status, entities, and investigation logs. The improved Action center gives you the ability to approve pending actions in one central location. 

## Automated investigation status

An automated investigation can have one of the following status values:

|Status  |Description  |
|---------|---------|
| Running    | The investigation process has started and is underway. Malicious artifacts that are found are remediated.    |
| Partially investigated      | Entities directly related to the alert have been investigated. However, a problem stopped the investigation of collateral entities.  |
| No threats found | The investigation has finished and no threats were identified. <br/>If you suspect something was missed (such as a false negative), you can use [advanced hunting](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/advanced-hunting-overview). |
| Pending action  | The investigation has found a threat, and an action to remediate that threat is awaiting approval. The Pending Action state is triggered when any threat with a corresponding action is found. However, the list of pending actions can increase as an investigation runs.   |
| Remediated   | The investigation finished and all actions were approved (fully remediated). |
| Partially remediated  | The investigation resulted in remediation actions, and some were approved and completed. Other actions are still pending. |
| Terminated by system  | The investigation stopped. An investigation can stop for several reasons:<br/>- The investigation's pending actions expired. Pending actions can time out after awaiting approval for an extended period of time. <br/>- There are too many actions in the list.<p>Visit the Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)) to view and approve any pending actions.     |
| Failed  | At least one investigation analyzer ran into a problem where it could not complete properly. <br/><br/>If an investigation fails after remediation actions were approved, the remediation actions might still have succeeded.      |
| Queued    | An investigation is being held in a queue. When other investigations complete, queued investigations begin.  |
| Waiting for device | Investigation paused. The investigation will resume as soon as the device is available. |
| Terminated by user    | A user stopped the investigation before it could complete.  |

## Next steps

- [View and approve remediation actions](manage-auto-investigation.md)
- [See the interactive guide: Investigate and remediate threats with Microsoft Defender for Endpoint](https://aka.ms/MDATP-IR-Interactive-Guide)
 
## See also

- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)