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

Event insights is a "risk news feed" which will help you interpret how risk, through new vulnerabilities or exploits, is introduced into the organization.

With events insight, you can check which impactful events occurred in your organization. For example, new vulnerabilities that were introduced, vulnerabilities that became exploitable, the number of impacted machines, and more.

The goal of event insights is to tell the story of your [exposure score](tvm-exposure-score.md).

- Quickly understand and identify high-level takeaways about the state of security in your organization.
- Detect and respond to areas that require investigation or action to improve the current state.
- Determine the cause of large changes to your exposure score
- Communicate with peers and management about the impact of security efforts.

You can reduce you exposure score by addressing what needs to be remediated based on the prioritized security recommendations. See [Security recommendations](tvm-security-recommendation.md) for details.

## Navigate to the Event insights page

You can access Event insights mainly through three ways:

- In the Threat & Vulnerability Management navigation menu in the Microsoft Defender Security Center.
- Top events card in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md). The highest impact events (for example, affect the most machines or critical vulnerabilities)
- Hovering over the Exposure Score graph in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)

### Navigation menu

Go to the Threat & Vulnerability Management navigation menu and select **Event insights** to view impactful events.

### Top events card

In the Threat & Vulnerability Management dashboard, the Top events card displays the three most impactful events in the last 7 days. Select **Show more** to go to the Event insights page.

![Event insights page](images/tvm-top-events-card.png)

### Exposure score graph

In the Threat & Vulnerability Management dashboard, hover over the Exposure score graph to view top events from that day that impacted your machines. If there are no events, then no insights will be shown.

![Event insights page](images/tvm-event-insights-exposure-score400.png)

Selecting **Show all events from this day** will lead you to the Event insights page with a pre-populated custom date range for that day.

![Event insights page](images/tvm-event-insights-custom.png)

Select **Custom range** to change the date range to another custom one, or a pre-set time range.

![Event insights date range options](images/tvm-custom-event-insights-range.png)

## Event insights overview

On the Event insights page, you can view the date, event, related software component, number of impacted machines for when the event occurred, and type. You can also customize columns (like adding exposure score trend) and filter by type or percent of impacted machines.

The two large numbers at the top of the page show the number of new vulnerabilities and exploitable vulnerabilities, not events. Some events can have multiple vulnerabilities, and some vulnerabilities can have multiple events.

![Event insights page](images/event-insights-page.png)

### Icons and event types

The following icons show up next to events:

- ![bug icon](images/tvm_bug_icon.png) New public exploit
- ![report warning icon](images/report-warning-icon.png) New vulnerability was published
- ![exploit kit](images/bug-lightning-icon2.png) Exploit found in exploit kit
- ![bug icon](images/bug-caution-icon2.png) Exploit verified

The following event types reflect time-stamped events that impact the score:

- Exploit added to an exploit kit
- Exploit was verified
- New public exploit
- New vulnerability

### Drill down to a specific event

Once you select an event insight, a flyout will appear listing the details and current CVEs that affect your machines. Each CVE can be associated with multiple products. You can show more CVEs or view the related recommendation.

![Event insights page](images/event-insights-flyout500.png)

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
- [Score APIs](software.md)
- [Vulnerability APIs](vulnerability.md)