---
title: Visit the Action center to see remediation actions
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
ms.topic: how-to
ms.reviewer: ramarom, evaldm, isco, mabraitm, chriggs
ms.date: 01/28/2021
ms.technology: mde
---

# Visit the Action center to see remediation actions

During and after an automated investigation, remediation actions for threat detections are identified. Depending on the particular threat and how [Microsoft Defender for Endpoint](https://docs.microsoft.com/windows/security/threat-protection) is configured for your organization, some remediation actions are taken automatically, and others require approval. If you're part of your organization's security operations team, you can view pending and completed [remediation actions](manage-auto-investigation.md#remediation-actions) in the **Action center**. 


**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

## (NEW!) A unified Action center


We are pleased to announce a new, unified Action center ([https://security.microsoft.com/action-center](https://security.microsoft.com/action-center))!

:::image type="content" source="images/mde-action-center-unified.png" alt-text="Action center in Microsoft 365 security center":::

The following table compares the new, unified Action center to the previous Action center.

|The new, unified Action center  |The previous Action center  |
|---------|---------|
|Lists pending and completed actions for devices and email in one location <br/>([Microsoft Defender for Endpoint](microsoft-defender-advanced-threat-protection.md) plus [Microsoft Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp))|Lists pending and completed actions for devices <br/> ([Microsoft Defender for Endpoint](microsoft-defender-advanced-threat-protection.md) only)   |
|Is located at:<br/>[https://security.microsoft.com/action-center](https://security.microsoft.com/action-center)         |Is located at:<br/>[https://securitycenter.windows.com/action-center](https://securitycenter.windows.com/action-center)     |
| In the Microsoft 365 security center, choose **Action center**. <p>:::image type="content" source="images/action-center-nav-new.png" alt-text="Navigating to the Action Center in the Microsoft 365 security center"::: | In the Microsoft Defender Security Center, choose **Automated investigations** > **Action center**. <p>:::image type="content" source="images/action-center-nav-old.png" alt-text="Navigating to the Action center from the Microsoft Defender Security Center":::  |

The unified Action center brings together remediation actions across Defender for Endpoint and Defender for Office 365. It defines a common language for all remediation actions, and provides a unified investigation experience. 

You can use the unified Action center if you have appropriate permissions and one or more of the following subscriptions:
- [Defender for Endpoint](microsoft-defender-advanced-threat-protection.md)
- [Defender for Office 365](https://docs.microsoft.com/microsoft-365/security/office-365-security/office-365-atp)
- [Microsoft 365 Defender](https://docs.microsoft.com/microsoft-365/security/mtp/microsoft-threat-protection) 

> [!TIP]
> To learn more, see [Requirements](https://docs.microsoft.com/microsoft-365/security/mtp/prerequisites).

## Using the Action center

To get to the unified Action center in the improved Microsoft 365 security center:
1. Go to the Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)) and sign in.
2. In the navigation pane, select **Action center**. 

When you visit the Action center, you see two tabs: **Pending actions** and **History**. The following table summarizes what you'll see on each tab:

|Tab  |Description  |
|---------|---------|
|**Pending**     | Displays a list of actions that require attention. You can approve or reject actions one at a time, or select multiple actions if they have the same type of action (such as **Quarantine file**). <br/>**TIP**: Make sure to [review and approve (or reject) pending actions](manage-auto-investigation.md) as soon as possible so that your automated investigations can complete in a timely manner. |
|**History**     | Serves as an audit log for actions that were taken, such as: <br/>- Remediation actions that were taken as a result of automated investigations <br>- Remediation actions that were approved by your security operations team  <br/>- Commands that were run and remediation actions that were applied during Live Response sessions  <br/>- Remediation actions that were taken by threat protection features in Microsoft Defender Antivirus  <p>Provides a way to undo certain actions (see [Undo completed actions](manage-auto-investigation.md#undo-completed-actions)).       |

You can customize, sort, filter, and export data in the Action center.

:::image type="content" source="images/new-action-center-columnsfilters.png" alt-text="Columns and filters in the Action center":::

- Select a column heading to sort items in ascending or descending order.
- Use the time period filter to view data for the past day, week, 30 days, or 6 months.
- Choose the columns that you want to view.
- Specify how many items to include on each page of data.
- Use filters to view just the items you want to see.
- Select **Export** to export results to a .csv file. 

## Next steps

- [View and approve remediation actions](manage-auto-investigation.md)
- [See the interactive guide: Investigate and remediate threats with Microsoft Defender for Endpoint](https://aka.ms/MDATP-IR-Interactive-Guide)
 
## See also

- [Address false positives/negatives in Microsoft Defender for Endpoint](defender-endpoint-false-positives-negatives.md)