---
title: Remediation and exception
description: Remediate security weaknesses and fill exceptions by integrating Microsoft Intune and Microsoft Endpoint Configuration Manager. 
keywords: microsoft defender atp tvm remediation, mdatp tvm, threat & vulnerability management, threat & vulnerability management remediation, tvm remediation intune, tvm remediation sccm
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---
# Remediation activities and exceptions

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

>[!NOTE]
>To use this capability, enable your Microsoft Intune connections. Navigate to **Settings** > **General** > **Advanced features**. Scroll down and look for **Microsoft Intune connection**. By default, the toggle is turned off. Turn your **Microsoft Intune connection** toggle on.

After your organization's cybersecurity weaknesses are identified and mapped to actionable [security recommendations](tvm-security-recommendation.md), you can start creating security tasks through the integration with Microsoft Intune where remediation tickets are created.

Lower your organization's exposure from vulnerabilities and increase your security configuration by remediating the security recommendations.

## Remediation

## How remediation requests work

When you submit a remediation request from Threat & Vulnerability Management, it kicks-off a remediation activity. A security task is created which will be tracked in the Threat & Vulnerability Management **Remediation** page, and a remediation ticket is created in Microsoft Intune.

The dashboard will show the status of your top remediation activities. Select any of the entries to go to the **Remediation** page. You can mark the remediation activity as completed after the IT admin team remediates the task.

## Accessing the Remediation page

You can access the Remediation page in a few places in the portal:

- Security recommendations flyout panel
- Navigation menu
- Top remediation activities in the dashboard

### Security recommendation flyout page

You'll see remediation options when you select one of the security recommendations in the [Security recommendations page](tvm-security-recommendation.md).

1. From the flyout panel, you'll see the security recommendation details including next steps. Select **Remediation options**.
2. In the **Remediation options** page, select **Open a ticket in Intune (for AAD joined devices)**.
3. Select a remediation due date.
4. Add notes to give your IT administrator a context of your remediation request. For example, you can indicate urgency of the remediation request to avoid potential exposure to a recent exploit activity, or if the request is a part of compliance.

>[!NOTE]
>If your request involves remediating more than 10,000 machines, we will only send 10,000 machines for remediation to Intune.

If you want to check how the ticket shows up in Intune, see [Use Intune to remediate vulnerabilities identified by Microsoft Defender ATP](https://docs.microsoft.com/intune/atp-manage-vulnerabilities) for details.

### Navigation menu

1. Go to the Threat & Vulnerability Management navigation menu and select **Remediation** to open up the list of remediation activities and exceptions found in your organization.
      
      To see software which has reached end-of-support, select **Software uninstall** from the **Remediation type** filter. For specific software versions which have reached end-of-support, select **Software update** from the **Remediation type** filter. Select **In progress** then **Apply**.
![Screenshot of the remediation page filters for software update and uninstall](images/remediation_swupdatefilter.png)

2. Select the remediation activity that you want to view.
![Screenshot of the remediation page flyout for a software which reached end-of-support](images/remediation_flyouteolsw.png)

### Top remediation activities card the dashboard

1. Go to the Threat & Vulnerability Management dashboard and scroll down to the **Top remediation activities** card. The list is sorted and prioritized based on what is listed in the **Top security recommendations**.
2. Select the remediation activity that you want to view.


## Exception options

You can file exceptions to exclude certain recommendation from showing up in reports and affecting your [configuration score](configuration-score.md).

When you select a [security recommendation](tvm-security-recommendation.md), it opens a flyout screen with details and options for your next steps. Select **Exception options** to fill out the justification and context.

![Screenshot of exception flyout screen](images/tvm-exception-flyout.png)

### Exception justification

If the security recommendation stemmed from a false positive report, or if there are existing business justification that blocks the remediation, such as compensating control, productivity needs, compliance, or if there's already a planned remediation grace period, you can file an exception and indicate the reason. The following list details the justifications behind the exception options:

- **Compensating/alternate control** - A 3rd party control that mitigates this recommendation exists, for example, if Network Firewall -   -   prevents access to a machine, third party antivirus
- **Productivity/business need** - Remediation will impact productivity or interrupt business-critical workflow
- **Accept risk** - Poses low risk and/or implementing a compensating control is too expensive
- **Planned remediation (grace)** - Already planned but is awaiting execution or authorization
- **Other** - False positive

![Screenshot of exception reason dropdown menu](images/tvm-exception-dropdown.png)

### Where to find exceptions

The exceptions you've filed will show up in the **Remediation** page, in the **Exceptions** tab. You can filter your view based on exception justification, type, and status.  

![Screenshot of exception tab and filters](images/tvm-exception-filters.png)

You can also select **Show exceptions** at the bottom of the **Top security recommendations** card in the dashboard. Selecting the link opens a filtered view in the **Security recommendations** page of recommendations with an "Exception" status.

![Screenshot of Show exceptions link in the  Top security recommendations card in the dashboard](images/tvm-exception-dashboard.png)

### Exception actions and statuses

You can take the following actions on an exception:

- Cancel - You can cancel the exceptions you've filed any time
- Resurface - Your exception automatically becomes void and resurfaces in the security recommendation list when dynamic environmental factors change, which adversely affect the exposure impact associated with a recommendation that had previously been excluded

The following statuses will be a part of an exception:

- **Canceled** - The exception has been canceled and is no longer in effect  
- **Expired** - The exception that you've filed is no longer in effect
- **In effect** - The exception that you've filed is in progress

### Exception impact on scores

Creating an exception can potentially affect the Exposure Score (for both types of weaknesses) and Configuration Score (for configurations) of your organization in the following manner:

- **No impact** - Removes the recommendation from the lists (which can be reverse through filters), but will not affect the scores
- **Mitigation-like impact** - As if the recommendation was mitigated (and scores will be adjusted accordingly) when you select it as a compensating control.
- **Hybrid** - Provides visibility on both No impact and Mitigation-like impact. It shows both the Exposure Score and Configuration Score results out of the exception option that you made

The exception impact shows on both the Security recommendations page column and in the flyout pane.

![Screenshot of where to find the exception impact](images/tvm-exception-impact.png)

## Related topics

- [Supported operating systems and platforms](tvm-supported-os.md)
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) 
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Configuration score](configuration-score.md)
- [Security recommendation](tvm-security-recommendation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [Configure data access for Threat & Vulnerability Management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [Recommendation APIs](vulnerability.md)
- [Machine APIs](machine.md)
- [Score APIs](score.md)
- [Software APIs](software.md)
- [Vulnerability APIs](vulnerability.md)
