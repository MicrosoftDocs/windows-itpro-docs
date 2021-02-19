---
title: Dashboard insights - threat and vulnerability management
description: The threat and vulnerability management dashboard can help SecOps and security admins address cybersecurity threats and build their organization's security resilience.
keywords: mdatp-tvm, mdatp-tvm dashboard, threat & vulnerability management, threat and vulnerability management, risk-based threat & vulnerability management, security configuration, Microsoft Secure Score for Devices, exposure score
search.appverid: met150
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
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
ms.technology: mde
---
# Dashboard insights - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

Threat and vulnerability management is a component of Defender for Endpoint, and provides both security administrators and security operations teams with unique value, including:


- Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities
- Invaluable device vulnerability context during incident investigations
- Built-in remediation processes through Microsoft Intune and Microsoft Endpoint Configuration Manager  
  
You can use the threat and vulnerability management capability in [Microsoft Defender Security Center](https://securitycenter.windows.com/) to:

- View you exposure score and Microsoft Secure Score for Devices, along with top security recommendations, software vulnerability, remediation activities, and exposed devices
- Correlate EDR insights with endpoint vulnerabilities and process them
- Select remediation options to triage and track the remediation tasks
- Select exception options and track active exceptions

> [!NOTE]
> Devices that are not active in the last 30 days are not factored in on the data that reflects your organization's threat and vulnerability management exposure score and Microsoft Secure Score for Devices.

Watch this video for a quick overview of what is in the threat and vulnerability management dashboard.

>[!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4r1nv]

## Threat and vulnerability management dashboard

 ![Microsoft Defender for Endpoint portal](images/tvm-dashboard-devices.png)

Area | Description
:---|:---
**Selected device groups (#/#)**   | Filter the threat and vulnerability management data you want to see in the dashboard and cards by device groups. What you select in the filter applies throughout the threat and vulnerability management pages.
[**Exposure score**](tvm-exposure-score.md)   | See the current state of your organization's device exposure to threats and vulnerabilities. Several factors affect your organization's exposure score: weaknesses discovered in your devices, likelihood of your devices to be breached, value of the devices to your organization, and relevant alerts discovered with your devices. The goal is to lower the exposure score of your organization to be more secure. To reduce the score, you need to remediate the related security configuration issues listed in the security recommendations.
[**Microsoft Secure Score for Devices**](tvm-microsoft-secure-score-devices.md) | See the security posture of the operating system, applications, network, accounts, and security controls of your organization. The goal is to remediate the related security configuration issues to increase your score for devices. Selecting the bars will take you to the **Security recommendation** page.
**Device exposure distribution** | See how many devices are exposed based on their exposure level. Select a section in the doughnut chart to go to the **Devices list** page and view the affected device names, exposure level, risk level, and other details such as domain, operating system platform, its health state, when it was last seen, and its tags.
**Top security recommendations** | See the collated security recommendations that are sorted and prioritized based on your organization's risk exposure and the urgency that it requires. Select **Show more** to see the rest of the security recommendations in the list. Select **Show exceptions** for the list of recommendations that have an exception.
**Top vulnerable software** | Get real-time visibility into your organization's software inventory with a stack-ranked list of vulnerable software installed on your network's devices and how they impact your organizational exposure score. Select an item for details or **Show more** to see the rest of the vulnerable software list in the **Software inventory** page.
**Top remediation activities** | Track the remediation activities generated from the security recommendations. You can select each item on the list to see the details in the **Remediation** page or select **Show more** to view the rest of the remediation activities, and active exceptions.
**Top exposed devices** | View exposed device names and their exposure level. Select a device name from the list to go to the device page where you can view the alerts, risks, incidents, security recommendations, installed software, and discovered vulnerabilities associated with the exposed devices. Select **Show more** to see the rest of the exposed devices list. From the devices list, you can manage tags, initiate automated investigations, initiate a live response session, collect an investigation package, run antivirus scan, restrict app execution, and isolate device.

For more information on the icons used throughout the portal, see [Microsoft Defender for Endpoint icons](portal-overview.md#microsoft-defender-for-endpoint-icons).


## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Software inventory](tvm-software-inventory.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)

