---
title: View details and results of automated investigations
description: Use the action center to view details and results following an automated investigation
keywords: action, center, autoir, automated, investigation, response, remediation
search.product: eADQiWindows 10XVcnh
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

# View details and results of automated investigations

When an automated investigation runs, a verdict is generated for each piece of evidence investigated. Verdicts can be *Malicious*, *Suspicious*, or *Clean*. Depending on the type of threat and resulting verdict, remediation actions occur automatically or upon approval by your organization’s security operations team. 

Pending and completed actions are listed in the Action center ([https://securitycenter.windows.com/action-center](https://securitycenter.windows.com/action-center)) and the Investigations list ([https://securitycenter.windows.com/investigations](https://securitycenter.windows.com/investigations)).

>[!NOTE]
>If your organization has implemented role-based access to manage portal access, only authorized users or user groups who have permission to view the machine or machine group will be able to view the entire investigation. 

## The Action center

![Action center page](images/action-center.png)

The action center consists of two main tabs, as described in the following table.

|Tab  |Description  |
|---------|---------|
|Pending actions     |Displays a list of ongoing investigations that require attention. Recommended actions are presented that your security operations team can approve or reject. <br/><br/>**NOTE**: The Pending tab appears only if there are pending actions to be approved (or rejected).        |
|History     |Acts as an audit log for all of the following: <br/>- All actions taken by automated investigation and remediation in Microsoft Defender ATP <br/>Actions that were approved by your security operations team (some actions, such as sending a file to quarantine, can be undone) <br/>- All commands ran and remediation actions that were applied in Live Response sessions (some actions can be undone) <br/>- Remediation actions that were applied by Windows Defender Antivirus (some actions can be undone) |

Use the **Customize columns** menu to select columns that you'd like to show or hide. 

You can also download the entire list in CSV format using the **Export** feature, specify the number of items to show per page, and navigate between pages.

## Investigations page

![Image of Auto investigations page](images/atp-auto-investigations-list.png)

On the **Investigations** page, you'll find a list of all automated investigations. Select an item in the list to view additional information about that automated investigation.

By default, the automated investigations list displays investigations initiated in the last week. You can also choose to select other time ranges from the drop-down menu or specify a custom range. 

Use the **Customize columns** menu to select columns that you'd like to show or hide. 

From this view, you can also download the entire list in CSV format using the **Export** feature, specify the number of items to show per page, and navigate between pages.

### Filters and details

On the **Investigations** page, you can view details and use filters to focus on specific information. Filters include the following:
- **Status** (see the details below)
- **Triggering alert** (The alert that initiated the automated investigation)
- **Detection source** (The source of the alert that initiated the automated investigation.)
- **Entities** (these can include device or machines, and machine groups. You can filter the automated investigations list to zone in a specific machine to see other investigations related to the machine, or to see specific machine groups that you might have created.)
- **Threat** (The category of threat detected during the automated investigation.)
- **Tags** (Filter using manually added tags that capture the context of an automated investigation.)
- **Comments** (Select between filtering the list between automated investigations that have comments and those that don't.)


## Automated investigation status

An automated investigation can be have one of the following status values:

|Status  |Description  |
|---------|---------|
| No threats found | No malicious entities found during the investigation. |
| Failed  | A problem has interrupted the investigation, preventing it from completing.       |
| Partially remediated  | A problem prevented the remediation of some malicious entities.  |
| Pending action  | Remediation actions require review and approval.   |
| Waiting for machine | Investigation paused. The investigation will resume as soon as the machine is available. |
| Queued    |   Investigation has been queued and will resume as soon as other remediation activities are completed.      |
| Running    | Investigation ongoing. Malicious entities found will be remediated.    |
| Remediated   | Malicious entities found were successfully remediated.       |
| Terminated by system  | Investigation was stopped by the system.                 |
| Terminated by user    | A user stopped the investigation before it could complete.  |
| Partially investigated      | Entities directly related to the alert have been investigated. However, a problem stopped the investigation of collateral entities. |

## Next steps

[View and approve remediation actions](manage-auto-investigation.md)
