---
title: Investigate Windows Defender Advanced Threat Protection domains
description: Use the investigation options to see if machines and servers have been communicating with malicious domains. 
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: mjcaparas
---
# Investigate a domain associated with a Windows Defender ATP alert

**Applies to:**

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

Investigate a domain to see if machines and servers in your enterprise network have been communicating with a known malicious domain. 

You can see information from the following sections in the URL view:

- URL details
- URL in organization
- Prevalence in organization
- Communication with URL from organization

The URL address details section shows attributes of the URL such as its contacts and nameservers.

The **URL in organization** section provides details on the prevalence of the URL in the organization. 

The **Communication with URL in organization** section provides a chronological view on the events and associated alerts that were observed on the URL.

**Investigate a domain:**

1. Select **URL** from the **Search bar** drop-down menu. 
2. Enter the URL in the **Search** field. 
3. Click the search icon   or press **Enter**. Details about the URL are displayed. Note: search results will only be returned for URLs observed in communications from machines in the organization.
4. Use the search filters to define the search criteria. You can also use the timeline search box to filter the displayed results of all machines in the organization observed communicating with the URL, the file associated with the communication and the last date observed.
5. Clicking any of the machine names will take you to that machine's view, where you can continue investigate reported alerts, behaviors, and events.

## Related topics
- [View the Windows Defender Advanced Threat Protection Dashboard](dashboard-windows-defender-advanced-threat-protection.md)
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate machines in the Windows Defender ATP Machines view](investigate-machines-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate an IP address](investigate-ip-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)