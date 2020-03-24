---
title: Exposure score
description: The Microsoft Defender ATP exposure score reflects how vulnerable your organization is to cybersecurity threats.
keywords: exposure score, mdatp exposure score, mdatp tvm exposure score, organization exposure score, tvm organization exposure score, threat and vulnerability management, Microsoft Defender Advanced Threat Protection
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
# Exposure score

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Your Exposure score is visible in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md) of the Microsoft Defender Security Center. It reflects how vulnerable your organization is to cybersecurity threats. Low exposure score means your machines are less vulnerable from exploitation.

The card gives you a high-level view of your exposure score trend over time. Any spikes in the chart gives you a visual indication of a high cybersecurity threat exposure that you can investigate further.

![Exposure score card](images/tvm_exp_score.png)

## How it works

Threat & Vulnerability Management introduces a new exposure score metric, which visually represents how exposed your machines are to imminent threats.

The exposure score is continuously calculated on each device in the organization and influenced by the following factors:

- Weaknesses, such as vulnerabilities discovered on the device
- External and internal threats such as public exploit code and security alerts
- Likelihood of the device to get breached given its current security posture
- Value of the device to the organization given its role and content

The exposure score is broken down into the following levels:

- 0–29: low exposure score
- 30–69: medium exposure score
- 70–100: high exposure score

You can remediate the issues based on prioritized [security recommendations](tvm-security-recommendation.md) to reduce the exposure score. Each software has weaknesses that are transformed into recommendations and prioritized based on risk to the organization.

## Reduce your threat and vulnerability exposure

To lower your threat and vulnerability exposure, follow these steps.

1. Review the **Top security recommendations** from your [**Threat & Vulnerability Management dashboard**](tvm-dashboard-insights.md) , and select the first item on the list. The **Security recommendation** page opens.  

   Always prioritize recommendations that are associated with ongoing threats:

   - ![Threat insight](images/tvm_bug_icon.png) Threat insight icon
   - ![Possible active alert](images/tvm_alert_icon.png) Active alert icon

   ![Screenshot of security recommendations page](images/top-security-recommendations350.png)

2. The **Security recommendations** page shows the list of items to remediate. Select the security recommendation that you need to investigate. When you select a recommendation from the list, a fly-out panel will display a description of what you need to remediate, number of vulnerabilities, associated exploits in machines, number of exposed machines and their machine names, business impact, and a list of CVEs. Click **Open software page** option from the flyout panel.  ![Details in security recommendations page](images/tvm_security_recommendations_page.png)

3. Select **Installed machines** and then the affected machine from the list. A flyout panel will open with the relevant machine details, exposure and risk levels, alert and incident activities. ![Details in software page ](images/tvm_software_page_details.png)

4. Click **Open machine page** to connect to the machine and apply the selected recommendation. See [Investigate machines in the Microsoft Defender ATP Machines list](investigate-machines.md) for details.  ![Details in machine page](images/tvm_machine_page_details.png)

5. Allow a few hours for the changes to propagate in the system.

6. Review the machine **Security recommendation** tab again. The recommendation you've chosen to remediate is removed from the security recommendation list, and the exposure score decreases.


## Related topics

- [Supported operating systems and platforms](tvm-supported-os.md)
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) 
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [Configure data access for Threat & Vulnerability Management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [Recommendation APIs](vulnerability.md)
- [Machine APIs](machine.md)
- [Score APIs](score.md)
- [Software APIs](software.md)
- [Vulnerability APIs](vulnerability.md)
