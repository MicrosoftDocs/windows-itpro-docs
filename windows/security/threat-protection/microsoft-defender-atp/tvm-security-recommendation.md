---
title: Security recommendation
description: The weaknesses identified in the environment are mapped to actionable security recommendations and prioritized by their impact on the organizational exposure score.
keywords: threat and vulnerability management, mdatp tvm security recommendation, cybersecurity recommendation, actionable security recommendation
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
ms.date: 04/11/2019
---
# Security recommendation
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

> [!TIP]
> Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink) 

[!include[Prerelease information](../../includes/prerelease.md)]

The cyber security weaknesses identified in your organization are mapped to actionable security recommendations and prioritized by their impact on the security recommendation list. Prioritized recommendation helps shorten the mean time to mitigate or remediate vulnerabilities and drive compliance.

Each security recommendation includes an actionable remediation recommendation which can be pushed into the IT task queue through a built-in integration with Microsoft Intune and Microsoft Endpoint Configuration Manager. It is also dynamic in the sense that when the threat landscape changes, the recommendation also changes as it continuously collects information from your environment. 

## The basis of the security recommendation
Each machine in the organization is scored based on three important factors: threat, likelihood to be breached, and value, to help customers to focus on the right things at the right time.

- Threat - Characteristics of the vulnerabilities and exploits in your organizations' devices and breach history. Based on these factors, the security recommendations shows the corresponding links to active alerts, ongoing threat campaigns, and their corresponding threat analytic reports. 

- Breach likelihood - Your organization's security posture and resilience against threats

- Business value - Your organization's assets, critical processes, and intellectual properties


## Navigate through your security recommendations

You can access the security recommendation from the Microsoft Defender ATP Threat & Vulnerability Management menu, dashboard, software page, and machine page, to give you the context that you need, as you require it. 

*Security recommendations option from the left navigation menu* 

1. Go to the Threat & Vulnerability Management navigation menu and select **Security recommendations** to open up the list of security recommendations for the threats and vulnerabilities found in your organization. It gives you an overview of the security recommendation context: weaknesses found, related components, the application and operating system where the threat or vulnerabilities were found, network, accounts, and security controls, associated breach, threats, and recommendation insights, exposed machine trends, status, remediation type and activities. 
![Screenshot of Security recommendations page](images/tvmsecrec-updated.png)

    >[!NOTE]
    > The color of the **Exposed machines** graph changes as the trend changes. If the number of exposed machines is on the rise, the color changes into red. If there's a decrease in the amount of exposed machines, the color of the graph will change into green. This happens when the numbers on the right hand side is greater than what’s on the left,  which means an increase or decrease at the end of even a single machine will change the graph's color.

    You can filter your view based on related components, status, and remediation type. If you want to see the remediation activities of software and software versions which have reached their end-of-life, select **Active**, then select **Software update** from the **Remediation Type** filter, and click **Apply**.
    <br></br>![Screenshot of the remediation type filters for software update and uninstall](images/remediationtype-swupdatefilter.png)

2. Select the security recommendation that you need to investigate or process. 
<br></br>![Screenshot of the security recommendation page flyout for a software which reached its end-of-life](images/secrec-flyouteolsw.png)

    
*Top security recommendations from the dashboard*

In a given day as a Security Administrator, you can take a look at the dashboard to see your exposure score side-by-side with your configuration score. The goal is to lower down your organization's exposure from vulnerabilities, and increase your organization's security configuration to be more resilient against cybersecurity threat attacks. The top security recommendations list can help you achieve that goal. 

The top security recommendations lists down the improvement opportunities prioritized based on the three important factors mentioned in the previous section - threat, likelihood to be breached, and value.   

You can click on each one of them and see the details, the description, the potential risk if you don't act on or remediate it, insights, vulnerabilities, other threats found, how many exposed devices are associated with the security recommendation, and business impact of each security recommendation on the organizational exposure and configuration score.

From that page, you can do any of the following depending on what you need to do:

- Open software page - Drill down and open the software page to get more context of the software details, prevalence in the organization, weaknesses discovered, version distribution, software or software version end-of-life, and charts so you can see the exposure trend over time. 

- Choose from remediation options - Submit a remediation request to open a ticket in Microsoft Intune for your IT Administrator to pick up and address.

- Choose from exception options - Submit an exception, provide justification, and set exception duration if you can't remediate the issue just yet due to specific business reasons, compensation controls, or if it is a false positive. 

## Report inaccuracy

You can report a false positive when you see any vague, inaccurate, incomplete, or already remediated security recommendation information in the machine page.

1. Select the **Security recommendation** tab.

2. Click **:** beside the security recommendation that you want to report about,  then select **Report inaccuracy**. 
![Screenshot of Report inaccuracy control from the machine page under the Security recommendation column](images/tvm-report-inaccuracy.png)
<br>A flyout pane opens.</br>
![Screenshot of Report inaccuracy flyout pane](images/tvm-report-inaccuracyflyout.png)

3. From the flyout pane, select the inaccuracy category from the drop-down menu. 
<br>![Screenshot of Report inaccuracy categories drop-down menu](images/tvm-report-inaccuracyoptions.png)</br>

4. Include your email address so Microsoft can send you feedback regarding the inaccuracy you reported.

5. Include your machine name for investigation context.

    >[!TIP]
    > You can also provide details regarding the inaccuracy you reported in the **Tell us more (optional)** field to give the threat and vulnerability management investigators context. 

6. Click **Submit**. Your feedback is immediately sent to the Threat & Vulnerability Management experts with its context.


## Related topics
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) 
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Configuration score](configuration-score.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md) 
- [Configure data access for Threat & Vulnerability Management roles](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [Recommendation APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/vulnerability)
- [Machine APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/machine)
- [Score APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/score)
- [Software APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/software)
- [Vulnerability APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/vulnerability)
