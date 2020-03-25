---
title: Event insights
description: Event insights is a "risk news feed" which will help you interpret how risk is introduced into the organization and which mitigations happened to reduce it.
keywords: event insights, mdatp event insights, mdatp tvm event insights, threat and vulnerability management, Microsoft Defender Advanced Threat Protection
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
# Event insights

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Event insights is a "risk news feed" which will help you interpret how risk is introduced into the organization and which mitigations happened to reduce it.

With events insight, you can check which impactful events occurred in your organization. For example, new vulnerabilities that were introduced, vulnerabilities that became exploitable, the number of impacted machines, and more.

The goal of event insights is to tell the story of your [exposure score](tvm-exposure-score.md).

- Quickly understand and identify high-level takeaways about the state of security in your organization.
- Detect and respond to areas that require investigation or action to improve the current state.
- Communicate with peers and management about the impact of security efforts.

You can reduce you exposure score by addressing what needs to be remediated based on the prioritized security recommendations. See [Security recommendations](tvm-security-recommendation.md) for details.

## Navigation

You can access Event insights mainly through two ways:

- In the Threat & Vulnerability Management navigation menu in the Microsoft Defender Security Center.
- Hovering over the Exposure Score graph in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)

In the Threat & Vulnerability Management dashboard, hover over the Exposure score graph to view top events from that day that impacted your machines. If there are no events, then no insights will be shown.

![Event insights page](images/event-insights-exposure-score-events.png)

Selecting **Show all events from this day** will lead you to the Event insights page with a pre-populated custom date range for that day.

![Event insights page](images/event-insights-custom-range.png)

## Event insights page

On the Event insights page, you can view the date, event, related component, number of impacted machines, and type. You can also filter by type, or percent impacted machines.

![Event insights page](images/event-insights-page.png)

Once you select an event insight, a flyout will appear listing the details and related CVEs. You can show more CVEs or view the related recommendation.

![Event insights page](images/event-insights-flyout500.png)

## Event types

The following event types reflect time-stamped events that impact the score:

- Exploit added to an exploit kit
- Exploit was verified
- New public exploit
- New vulnerability

## Icons

The following icons show up next to events:

- ![bug icon](images/tvm_bug_icon.png) New public exploit. A vulnerability became exploitable.
- [page with caution symbol] New vulnerability was published.

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
- [Configure data access for Threat & Vulnerability Management roles](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
- [Score APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/score)
- [Software APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/software)
- [Vulnerability APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/vulnerability)
- [Recommendation APIs](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/vulnerability)
