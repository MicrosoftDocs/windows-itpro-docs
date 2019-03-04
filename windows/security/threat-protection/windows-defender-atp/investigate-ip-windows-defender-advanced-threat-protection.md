---
title: Investigate an IP address associated with an alert
description: Use the investigation options to examine possible communication between machines and external IP addresses.
keywords: investigate, investigation, IP address, alert, windows defender atp, external IP
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
# Investigate an IP address associated with a Windows Defender ATP alert

**Applies to:**


- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)



>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-investigateip-abovefoldlink)

Examine possible communication between your machines and external internet protocol (IP) addresses.

Identifying all machines in the organization that communicated with a suspected or known malicious IP address, such as Command and Control (C2) servers, helps determine the potential scope of breach, associated files, and infected machines.

You can find information from the following sections in the IP address view:

- IP worldwide, Reverse DNS names
- Alerts related to this IP
- IP in organization
- Most recent observed machines with IP

## IP Worldwide and Reverse DNS names
The IP address details section shows attributes of the IP address such as its ASN and its Reverse DNS names.

## Alerts related to this IP
The **Alerts related to this IP** section provides a list of alerts that are associated with the IP. 

## IP in organization
The **IP in organization** section provides details on the prevalence of the IP address in the organization.

## Most recent observed machines with IP
The **Most recent observed machines with IP** section provides a chronological view on the events and associated alerts that were observed on the IP address.

**Investigate an external IP:**

1. Select **IP** from the **Search bar** drop-down menu.
2. Enter the IP address in the **Search** field.
3. Click the search icon or press **Enter**.

Details about the IP address are displayed, including: registration details (if available), reverse IPs (for example, domains), prevalence of machines in the organization that communicated with this IP Address (during selectable time period), and the machines in the organization that were observed communicating with this IP address.

> [!NOTE]
> Search results will only be returned for IP addresses observed in communication with machines in the organization.

Use the search filters to define the search criteria. You can also use the timeline search box to filter the displayed results of all machines in the organization observed communicating with the IP address, the file associated with the communication and the last date observed.

Clicking any of the machine names will take you to that machine's view, where you can continue investigate reported alerts, behaviors, and events.

## Related topics
- [View and organize the Windows Defender Advanced Threat Protection Alerts queue ](alerts-queue-windows-defender-advanced-threat-protection.md)
- [Manage Windows Defender Advanced Threat Protection alerts](manage-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate Windows Defender Advanced Threat Protection alerts](investigate-alerts-windows-defender-advanced-threat-protection.md)
- [Investigate a file associated with a Windows Defender ATP alert](investigate-files-windows-defender-advanced-threat-protection.md)
- [Investigate machines in the Windows Defender ATP Machines list](investigate-machines-windows-defender-advanced-threat-protection.md)
- [Investigate a domain associated with a Windows Defender ATP alert](investigate-domain-windows-defender-advanced-threat-protection.md)
- [Investigate a user account in Windows Defender ATP](investigate-user-windows-defender-advanced-threat-protection.md)
