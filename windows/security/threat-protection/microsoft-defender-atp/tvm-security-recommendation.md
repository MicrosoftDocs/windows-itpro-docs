---
title: Security recommendations
description: Get actionable security recommendations prioritized by threat, likelihood to be breached, and value.
keywords: threat and vulnerability management, mdatp tvm security recommendation, cybersecurity recommendation, actionable security recommendation
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
# Security recommendations

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> [!TIP]
> Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

[!include[Prerelease information](../../includes/prerelease.md)]

Cybersecurity weaknesses identified in your organization are mapped to actionable security recommendations and prioritized by their impact. Prioritized recommendations help shorten the time to mitigate or remediate vulnerabilities and drive compliance.

Each security recommendation includes an actionable remediation recommendation which can be pushed into the IT task queue through a built-in integration with Microsoft Intune and Microsoft Endpoint Configuration Manager. When the threat landscape changes, the recommendation also changes as it continuously collects information from your environment.

## How it works

Each machine in the organization is scored based on three important factors to help customers to focus on the right things at the right time.

- **Threat** - Characteristics of the vulnerabilities and exploits in your organizations' devices and breach history. Based on these factors, the security recommendations shows the corresponding links to active alerts, ongoing threat campaigns, and their corresponding threat analytic reports.

- **Breach likelihood** - Your organization's security posture and resilience against threats

- **Business value** - Your organization's assets, critical processes, and intellectual properties

## Navigate to the Security recommendations page

Access the Security recommendations page a few different ways:

- Threat & Vulnerability Management navigation menu in the [Microsoft Defender Security Center](portal-overview.md)
- Top security recommendations in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)

View related security recommendations in the following places:

- Software page
- Machine page

### Navigation menu

Go to the Threat & Vulnerability Management navigation menu and select **Security recommendations** to open the list of security recommendations for the threats and vulnerabilities found in your organization.

### Top security recommendations in the Threat & Vulnerability Management dashboard

In a given day as a Security Administrator, you can take a look at the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md) to see your [exposure score](tvm-exposure-score.md) side-by-side with your [configuration score](configuration-score.md). The goal is to **lower** your organization's exposure from vulnerabilities, and **increase** your organization's security configuration to be more resilient against cybersecurity threat attacks. The top security recommendations list can help you achieve that goal.

![Example of Top security recommendations card, with four security recommendations.](images/top-security-recommendations350.png)

The top security recommendations lists the improvement opportunities prioritized based on the important factors mentioned in the previous section - threat, likelihood to be breached, and value. Selecting a recommendation will take you to the security recommendations page with more details about the recommendation.

## Security recommendations overview

View recommendations, the number of weaknesses found, related components, threat insights, number of exposed machines, status, remediation type, remediation activities, impact to your exposure and configuration scores, and associated tags.

The color of the **Exposed machines** graph changes as the trend changes. If the number of exposed machines is on the rise, the color changes into red. If there's a decrease in the number of exposed machines, the color of the graph will change into green.

![Example of the landing page for security recommendations.](images/tvmsecrec-updated.png)

### Icons

Useful icons also quickly calls your attention to: <ul><li> ![arrow hitting a target](images/tvm_alert_icon.png) possible active alerts</li><li>![red bug](images/tvm_bug_icon.png) associated public exploits</li><li>![light bulb](images/tvm_insight_icon.png) recommendation insights</li></ul><br>

### Explore security recommendation options

Select the security recommendation that you want to investigate or process.

![Example of a security recommendation flyout page.](images/secrec-flyouteolsw.png)

From the flyout, you can do any of the following:

- **Open software page** - Open the software page to get more context of the software details, prevalence in the organization, weaknesses discovered, version distribution, software or software version end-of-support, and charts of the exposure trend over time.

- **Remediation options** - Submit a remediation request to open a ticket in Microsoft Intune for your IT Administrator to pick up and address.

- **Exception options** - Submit an exception, provide justification, and set exception duration if you can't remediate the issue just yet.

>[!NOTE]
>When a change is made on a machine, it may take up to two hours for the data to be reflected in the Microsoft Defender Security Center.

### Investigate changes in machine exposure or impact

If there is a large jump in the number of exposed machines, or a sharp increase in the impact on your organization exposure score and configuration score, then that security recommendation is worth investigating.

1. Select the recommendation and **Open software page**
2. Select the **Event timeline** tab to view all the impactful events related to that software, such as new vulnerabilities or new public exploits. [Learn more about event timeline](threat-and-vuln-mgt-event-timeline.md)
3. Decide how to address the increase or your organization's exposure, such as submitting a remediation request

## Request remediation

The Threat & Vulnerability Management capability in Microsoft Defender ATP bridges the gap between Security and IT administrators through the remediation request workflow. Security admins like you can request for the IT Administrator to remediate a vulnerability from the **Security recommendation** pages to Intune.

### Enable Microsoft Intune connection

To use this capability, enable your Microsoft Intune connections. In the Microsoft Defender Security Center, navigate to **Settings** > **General** > **Advanced features**. Scroll down and look for **Microsoft Intune connection**. By default, the toggle is turned off. Turn your **Microsoft Intune connection** toggle **On**.

See [Use Intune to remediate vulnerabilities identified by Microsoft Defender ATP](https://docs.microsoft.com/intune/atp-manage-vulnerabilities) for details.

### Remediation request steps

1. Select a security recommendation you would like to request remediation for, and then select **Remediation options**.

2. Fill out the form, including what you are requesting remediation for, priority, due date, and optional notes. Select **Submit request**. Submitting a remediation request creates a remediation activity item within Threat & Vulnerability Management, which can be used for monitoring the remediation progress for this recommendation. This will not trigger a remediation or apply any changes to machines.

3. Notify your IT Administrator about the new request and have them log into Intune to approve or reject the request and start a package deployment.

4. Go to the [**Remediation**](tvm-remediation.md) page to view the status of your remediation request.

If you want to check how the ticket shows up in Intune, see [Use Intune to remediate vulnerabilities identified by Microsoft Defender ATP](https://docs.microsoft.com/intune/atp-manage-vulnerabilities) for details.

>[!NOTE]
>If your request involves remediating more than 10,000 machines, we can only send 10,000 machines for remediation to Intune.

## File for exception

As an alternative to a remediation request, you can create exceptions for recommendations.

There are many reasons why organizations create exceptions for a recommendation. For example, if there's a business justification that prevents the company from applying the recommendation, the existence of a compensating or alternative control that provides as much protection than the recommendation would, a false positive, among other reasons.

Exceptions can be created for both Security update and Configuration change recommendations.

When an exception is created for a recommendation, the recommendation is no longer active. The recommendation state changes to **Exception**, and it no longer shows up in the security recommendations list.

1. Select a security recommendation you would like create an exception for, and then **Exception options**.
![Showing where the button for "exception options" is location in a security recommendation flyout.](images/tvm-exception-option.png)

2. Select your justification for the exception you need to file instead of remediating the security recommendation in question. Fill out the justification context, then set the exception duration.

    The following list details the justifications behind the exception options:

    - **Compensating/alternate control** - A 3rd party control that mitigates this recommendation exists, for example, if Network Firewall -   -   prevents access to a machine, third party antivirus
    - **Productivity/business need** - Remediation will impact productivity or interrupt business-critical workflow
    - **Accept risk** - Poses low risk and/or implementing a compensating control is too expensive
    - **Planned remediation (grace)** - Already planned but is awaiting execution or authorization
    - **Other** - False positive

3. Select **Submit**. A confirmation message at the top of the page indicates that the exception has been created.

4. Navigate to the [**Remediation**](tvm-remediation.md) page under the **Threat & Vulnerability Management** menu and select the **Exceptions** tab to view all your exceptions (current and past).

## Report inaccuracy

You can report a false positive when you see any vague, inaccurate, incomplete, or already remediated security recommendation information.

1. Open the Security recommendation.

2. Select the three dots beside the security recommendation that you want to report,  then select **Report inaccuracy**.

![Showing where the "Report inaccuracy" button is in a security recommendation flyout.](images/report-inaccuracy500.png)

3. From the flyout pane, select the inaccuracy category from the drop-down menu, fill in your email address, and details regarding the inaccuracy.

4. Select **Submit**. Your feedback is immediately sent to the Threat & Vulnerability Management experts.

## Related topics

- [Threat & Vulnerability Management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Configuration score](configuration-score.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [APIs](threat-and-vuln-mgt-scenarios.md#apis)
- [Configure data access for Threat & Vulnerability Management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)