---
title: Remediate vulnerabilities with threat and vulnerability management
description: Remediate security weaknesses discovered through security recommendations, and create exceptions if needed, in threat and vulnerability management. 
keywords: microsoft defender atp tvm remediation, mdatp tvm, threat and vulnerability management, threat & vulnerability management, threat & vulnerability management remediation, tvm remediation intune, tvm remediation sccm
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
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
---
# Remediate vulnerabilities with threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

## Request remediation

The threat and vulnerability management capability in Microsoft Defender for Endpoint bridges the gap between Security and IT administrators through the remediation request workflow. Security admins like you can request for the IT Administrator to remediate a vulnerability from the **Security recommendation** pages to Intune.

### Enable Microsoft Intune connection

To use this capability, enable your Microsoft Intune connections. In the Microsoft Defender Security Center, navigate to **Settings** > **General** > **Advanced features**. Scroll down and look for **Microsoft Intune connection**. By default, the toggle is turned off. Turn your **Microsoft Intune connection** toggle **On**.

**Note**: If you have the Intune connection enabled, you get an option to create an Intune security task when creating a remediation request. This option does not appear if the connection is not set.

See [Use Intune to remediate vulnerabilities identified by Microsoft Defender for Endpoint](https://docs.microsoft.com/intune/atp-manage-vulnerabilities) for details.

### Remediation request steps

1. Go to the threat and vulnerability management navigation menu in the Microsoft Defender Security Center, and select [**Security recommendations**](tvm-security-recommendation.md).

2. Select a security recommendation you would like to request remediation for, and then select **Remediation options**.

3. Fill out the form, including what you are requesting remediation for, applicable device groups, priority, due date, and optional notes.
    1. If you choose the "attention required" remediation option, selecting a due date will not be available since there is no specific action.

4. Select **Submit request**. Submitting a remediation request creates a remediation activity item within threat and vulnerability management, which can be used for monitoring the remediation progress for this recommendation. This will not trigger a remediation or apply any changes to devices.

5. Notify your IT Administrator about the new request and have them log into Intune to approve or reject the request and start a package deployment.

6. Go to the [**Remediation**](tvm-remediation.md) page to view the status of your remediation request.

If you want to check how the ticket shows up in Intune, see [Use Intune to remediate vulnerabilities identified by Microsoft Defender for Endpoint](https://docs.microsoft.com/intune/atp-manage-vulnerabilities) for details.

>[!NOTE]
>If your request involves remediating more than 10,000 devices, we can only send 10,000 devices for remediation to Intune.

After your organization's cybersecurity weaknesses are identified and mapped to actionable [security recommendations](tvm-security-recommendation.md), start creating security tasks. You can create tasks through the integration with Microsoft Intune where remediation tickets are created.

Lower your organization's exposure from vulnerabilities and increase your security configuration by remediating the security recommendations.

## View your remediation activities

When you submit a remediation request from the Security recommendations page, it kicks-off a remediation activity. A security task is created that can be tracked in the threat and vulnerability management **Remediation** page, and a remediation ticket is created in Microsoft Intune.

If you chose the "attention required" remediation option, there will be no progress bar, ticket status, or due date since there is no actual action we can monitor.

Once you are in the Remediation page, select the remediation activity that you want to view. You can follow the remediation steps, track progress, view the related recommendation, export to CSV, or mark as complete.
![Example of the Remediation page, with a selected remediation activity, and that activity's flyout listing the description, IT service and device management tools, and device remediation progress.](images/remediation_flyouteolsw.png)

>[!NOTE]
> There is a 180 day retention period for completed remediation activities. To keep the Remediation page performing optimally, the remediation activity will be removed 6 months after its completion.

### Completed by column

Track who closed the remediation activity with the "Completed by" column on the Remediation page.

- **Email address**: The email of the person who manually completed the task
- **System confirmation**: The task was automatically completed (all devices remediated)
- **N/A**: Information is not available because we don't know how this older task was completed

![Created by and completed by columns with two rows. One row for completed by has example of an email, the other row says system confirmation.](images/tvm-completed-by.png)

### Top remediation activities in the dashboard

View **Top remediation activities** in the [threat and vulnerability management dashboard](tvm-dashboard-insights.md). Select any of the entries to go to the **Remediation** page. You can mark the remediation activity as completed after the IT admin team remediates the task.

![Example of Top remediation activities card with a table that lists top activities that were generated from security recommendations.](images/tvm-remediation-activities-card.png)

## Related articles

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Dashboard](tvm-dashboard-insights.md)
- [Security recommendations](tvm-security-recommendation.md)