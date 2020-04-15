---
title: Threat & Vulnerability Management dashboard insights
description: The Threat & Vulnerability Management dashboard can help SecOps and security admins address cybersecurity threats and build their organization's security resilience.
keywords: mdatp-tvm, mdatp-tvm dashboard, threat & vulnerability management, risk-based threat & vulnerability management, security configuration, configuration score, exposure score    
search.appverid: met150
search.product: eADQiWindows 10XVcnh
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
# Threat & Vulnerability Management dashboard insights

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

Threat & Vulnerability Management is a component of Microsoft Defender ATP, and provides both security administrators and security operations teams with unique value, including:

- Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities
- Invaluable machine vulnerability context during incident investigations
- Built-in remediation processes through Microsoft Intune and Microsoft Endpoint Configuration Manager  
  
You can use the Threat & Vulnerability Management capability in [Microsoft Defender Security Center](https://securitycenter.windows.com/) to:

- View exposure and configuration scores side-by-side with top security recommendations, software vulnerability, remediation activities, and exposed machines
- Correlate EDR insights with endpoint vulnerabilities and process them
- Select remediation options, triage and track the remediation tasks
- Select exception options and track active exceptions

> [!NOTE]
> Machines that are not active in the last 30 days are not factored in on the data that reflects your organization's Threat & Vulnerability Management exposure score and configuration score.

Watch this video for a quick overview of what is in the Threat & Vulnerability Management dashboard.

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4r1nv]

## Threat & Vulnerability Management in Microsoft Defender Security Center

When you open the portal, you'll see the main areas of the capability:

- (1) Menu to open the navigation pane
- (2) Threat & Vulnerability Management navigation pane
- (3) Threat & Vulnerability Management dashboard

 ![Microsoft Defender Advanced Threat Protection portal](images/tvm_dashboard.png)

 ![Threat & Vulnerability Management menu](images/tvm-menu.png)

You can navigate through the portal using the menu options available in all sections. Refer to the following tables for a description of each section.

## Threat & Vulnerability Management navigation pane

Area | Description
:---|:---
**Dashboard**   | Get a high-level view of the organization exposure score, organization configuration score, machine exposure distribution, top security recommendations, top vulnerable software, top remediation activities, and top exposed machines data.
[**Security recommendations**](tvm-remediation.md) | See the list of security recommendations, their related components, whether software or software versions in your network have reached end-of-support, insights, number or exposed devices, impact, and request for remediation. When you select an item from the list, a flyout panel opens with vulnerability details, a link to open the software page, and remediation and exception options. You can also open a ticket in Intune if your machines are joined through Azure Active Directory and you have enabled your Intune connections in Microsoft Defender ATP.
[**Remediation**](tvm-remediation.md) | See the remediation activity, related component, remediation type, status, due date, option to export the remediation and process data to CSV, and active exceptions.
[**Software inventory**](tvm-software-inventory.md) | See the list of software, versions, weaknesses, whether there's an exploit found on the software, whether the software or software version has reached end-of-support, prevalence in the organization, how many were installed, how many exposed devices there are, and the numerical value of the impact. You can select each item in the list and opt to open the software page which shows the associated vulnerabilities, misconfigurations, affected machine, version distribution details, and missing KBs or security updates.
[**Weaknesses**](tvm-weaknesses.md) | See the list of common vulnerabilities and exposures, the severity, the common vulnerability scoring system (CVSS) V3 score, related software, age, when it was published, related threat alerts, and how many exposed machines there are. You can select each item in the list to see a flyout panel with the vulnerability description and other details.

## Threat & Vulnerability Management dashboard

Area | Description
:---|:---
**Selected machine groups (#/#)**   | Filter the Threat & Vulnerability Management data you want to see in the dashboard and cards by machine groups. What you select in the filter applies throughout the Threat & Vulnerability management pages.
[**Exposure score**](tvm-exposure-score.md)   | See the current state of your organization's device exposure to threats and vulnerabilities. Several factors affect your organization's exposure score: weaknesses discovered in your devices, likelihood of your devices to be breached, value of the devices to your organization, and relevant alerts discovered with your devices. The goal is to lower the exposure score of your organization to be more secure. To reduce the score, you need to remediate the related security configuration issues listed in the security recommendations.
[**Configuration score**](configuration-score.md) | See the security posture of the operating system, applications, network, accounts and security controls of your organization. The goal is to remediate the related security configuration issues to increase your configuration score. Selecting the bars will take you to the **Security recommendation** page.
**Machine exposure distribution** | See how many machines are exposed based on their exposure level. Select a section in the doughnut chart to go to the **Machines list** page and view the affected machine names, exposure level, risk level, and other details such as domain, operating system platform, its health state, when it was last seen, and its tags.
**Top security recommendations** | See the collated security recommendations which are sorted and prioritized based on your organization's risk exposure and the urgency that it requires. Select **Show more** to see the rest of the security recommendations in the list or **Show exceptions** for the list of recommendations that have an exception.
**Top vulnerable software** | Get real-time visibility into your organization's software inventory with a stack-ranked list of vulnerable software installed on your network's devices and how they impact your organizational exposure score. Select an item for details or **Show more** to see the rest of the vulnerable software list in the **Software inventory** page.
**Top remediation activities** | Track the remediation activities generated from the security recommendations. You can select each item on the list to see the details in the **Remediation** page or select **Show more** to view the rest of the remediation activities, and active exceptions.
**Top exposed machines** | View exposed machine names and their exposure level. Select a machine name from the list to go to the machine page where you can view the alerts, risks, incidents, security recommendations, installed software, and discovered vulnerabilities associated with the exposed machines. Select **Show more** to see the rest of the exposed machines list. From the machines list, you can manage tags, initiate automated investigations, initiate a live response session, collect an investigation package, run antivirus scan, restrict app execution, and isolate machine.

See [Microsoft Defender ATP icons](portal-overview.md#microsoft-defender-atp-icons) for more information on the icons used throughout the portal.

## Related topics

- [Threat & Vulnerability Management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Exposure score](tvm-exposure-score.md)
- [Configuration score](configuration-score.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [APIs](threat-and-vuln-mgt-scenarios.md#apis)
- [Configure data access for Threat & Vulnerability Management roles](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
