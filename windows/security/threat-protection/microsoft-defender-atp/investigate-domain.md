---
title: Investigate Microsoft Defender Advanced Threat Protection domains
description: Use the investigation options to see if machines and servers have been communicating with malicious domains.
keywords: investigate domain, domain, malicious domain, windows defender atp, alert, URL
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
ms.date: 04/24/2018
---
# Investigate a domain associated with a Microsoft Defender ATP alert

**Applies to:**


- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-investigatedomain-abovefoldlink) 

Investigate a domain to see if machines and servers in your enterprise network have been communicating with a known malicious domain.

You can investigate a domain by using the search feature or by clicking on a domain link from the **Machine timeline**.

You can see information from the following sections in the URL view:

- URL details, Contacts, Nameservers
- Alerts related to this URL 
- URL in organization
- Most recent observed machines with URL

## URL worldwide

The **URL Worldwide** section lists the URL, a link to further details at Whois, the number of related open incidents, and the number of active alerts.

## Incident

The **Incident** card displays a bar chart of all active alerts in incidents over the past 180 days.

## Prevalence

The **Prevalence** card provides details on the prevalence of the URL within the organization, over a specified period of time.

Although the default time period is the past 30 days, you can customize the range by selecting the downward-pointing arrow in the corner of the card. The shortest range available is for prevalence over the past day, while the longest range is over the past 6 months.

## Alerts

The **Alerts** tab provides a list of alerts that are associated with the URL. The table shown here is a filtered version of the alerts visible on the Alert queue screen, showing only alerts associated with the domain, their severity, status, the associated incident, classification, investigation state, and more.

The Alerts tab can be adjusted to show more or less information, by selecting **Customize columns** from the action menu above the column headers. The number of items displayed can also be adjusted, by selecting **items per page** on the same menu.

## Observed in organization

The **Observed in organization** tab provides a chronological view on the events and associated alerts that were observed on the URL. This tab includes a timeline and a customizable table listing event details, such as the time, machine, and a brief description of what happened. 

You can view events from different periods of time by entering the dates into the text fields above the table headers. You can also customize the time range by selecting different areas of the timeline.

**Investigate a domain:**

1. Select **URL** from the **Search bar** drop-down menu.
2. Enter the URL in the **Search** field.
3. Click the search icon   or press **Enter**. Details about the URL are displayed. Note: search results will only be returned for URLs observed in communications from machines in the organization.
4. Use the search filters to define the search criteria. You can also use the timeline search box to filter the displayed results of all machines in the organization observed communicating with the URL, the file associated with the communication and the last date observed.
5. Clicking any of the machine names will take you to that machine's view, where you can continue investigate reported alerts, behaviors, and events.

## Related topics
- [View and organize the Microsoft Defender Advanced Threat Protection Alerts queue](alerts-queue.md)
- [Manage Microsoft Defender Advanced Threat Protection alerts](manage-alerts.md)
- [Investigate Microsoft Defender Advanced Threat Protection alerts](investigate-alerts.md)
- [Investigate a file associated with a Microsoft Defender ATP alert](investigate-files.md)
- [Investigate machines in the Microsoft Defender ATP Machines list](investigate-machines.md)
- [Investigate an IP address associated with a Microsoft Defender ATP alert](investigate-ip.md)
- [Investigate a user account in Microsoft Defender ATP](investigate-user.md)
