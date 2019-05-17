---
title: Microsoft Defender Advanced Threat Protection Threat analytics
description: Get a tailored organizational risk evaluation and actionable steps you can take to minimize risks in your organization.
keywords: threat analytics, risk evaluation, OS mitigation, microcode mitigation, mitigation status 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Threat analytics 
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Cyberthreats are emerging more frequently and prevalently. It is critical for organizations to be able to quickly assess their security posture, including impact, and organizational resilience in the context of specific emerging threats. 

Threat Analytics is a set of interactive reports published by the Microsoft Defender ATP research team as soon as emerging threats and outbreaks are identified. The reports help you the assess impact of threats in your environment and provides recommended actions to contain, increase organizational resilience, and prevent specific threats.
 

>[!NOTE]
>The number of resolved alerts indicates how quickly your organization responds to alerts associated with a threat. Ideally, the chart should be showing alerts being resolved within a few days.

Each threat report provides a summary to describe details such as where the threat is coming from, where it's been seen, or techniques and tools that were used by the threat. 

The dashboard shows the impact in your organization through the following tiles:
- Machines with alerts - shows the current distinct number of impacted machines in your organization 
- Machines with alerts over time - shows the distinct number of impacted over time
- Mitigation recommendations - lists the measurable mitigations and the number of machines that do not have each of the mitigations in place 
- Mitigation status - shows the number of mitigated and unmitigated machines. Machines are considered mitigated if they have all the measurable mitigations in place.
- Mitigation status over time - shows the distinct number of machines that have been mitigated, unmitigated, and unavailable over time

![Image of a threat analytics report](images/ta.png)

## Organizational impact
You can assess the organizational impact of a threat using the **Machines with alerts** and **Machines with alerts over time** tiles.

A machine is categorized as **Active** if there is at least 1 alert associated with that threat and **Resolved** if *all* alerts associated with the threat on the machine are resolved.


The **Machine with alerts over time**, shows the number of distinct machines with **Active** and **Resolved alerts over time**. The number of resolved alerts indicates how quickly your organization responds to alerts associated with a threat. Ideally, the chart should be showing alerts being resolved within a few days.
## Organizational resilience
The **Mitigation recommendations** section provides specific actionable recommendations to improve your visibility into this threat and increase your organizational resilience.

The **Mitigation status** and **Mitigation status over time** shows the endpoint configuration status assessed based on the recommended mitigations.

>[!IMPORTANT]
>- The chart only reflects mitigations that are measurable and where an evaluation can be made on the machine state as being compliant or non-compliant. There can be additional mitigations or compliance actions that currently cannot be computed or measured that are not reflected in the charts and are covered in the threat description under **Mitigation recommendations** section.
>- Even if all mitigations were measurable, there is no absolute guarantee of complete resilience but reflects the best possible actions that need to be taken to improve resiliency.



>[!NOTE]
>The Unavailable category indicates that there is no data available from the specific machine yet. 


