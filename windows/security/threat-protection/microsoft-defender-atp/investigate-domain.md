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

## URL Worldwide 
The URL details, contacts, and nameservers sections display various attributes about the URL. 

## Alerts related to this URL
The **Alerts related to this URL** section provides a list of alerts that are associated with the URL. 

## URL in organization
The **URL in organization** section provides details on the prevalence of the URL in the organization.

## Most recent observed machinew with URL
The **Most recent observed machinew with URL** section provides a chronological view on the events and associated alerts that were observed on the URL.

**Investigate a domain:**

1. Select **URL** from the **Search bar** drop-down menu.
2. Enter the URL in the **Search** field.
3. Click the search icon   or press **Enter**. Details about the URL are displayed. Note: search results will only be returned for URLs observed in communications from machines in the organization.
4. Use the search filters to define the search criteria. You can also use the timeline search box to filter the displayed results of all machines in the organization observed communicating with the URL, the file associated with the communication and the last date observed.
5. Clicking any of the machine names will take you to that machine's view, where you can continue investigate reported alerts, behaviors, and events.

## Related topics
- [View and organize the Microsoft Defender Advanced Threat Protection Alerts queue ](alerts-queue.md)
- [Manage Microsoft Defender Advanced Threat Protection alerts](manage-alerts.md)
- [Investigate Microsoft Defender Advanced Threat Protection alerts](investigate-alerts.md)
- [Investigate a file associated with a Microsoft Defender ATP alert](investigate-files.md)
- [Investigate machines in the Microsoft Defender ATP Machines list](investigate-machines.md)
- [Investigate an IP address associated with a Microsoft Defender ATP alert](investigate-ip.md)
- [Investigate a user account in Microsoft Defender ATP](investigate-user.md)
