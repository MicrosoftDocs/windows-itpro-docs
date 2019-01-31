---
title: Threat analytics for Spectre and Meltdown
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
ms.date: 09/03/2018
---

# Threat analytics for Spectre and Meltdown
**Applies to:**
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

The **Threat analytics** dashboard provides insight on how emerging threats affect your organization. It provides information that's specific for your organization.

[Spectre and Meltdown](https://cloudblogs.microsoft.com/microsoftsecure/2018/01/09/understanding-the-performance-impact-of-spectre-and-meltdown-mitigations-on-windows-systems/) is a new class of exploits that take advantage of critical vulnerabilities in the CPU processors, allowing attackers running user-level, non-admin code to steal data from kernel memory. These exploits can potentially allow arbitrary non-admin code running on a host machine to harvest sensitive data belonging to other apps or system processes, including apps on guest VMs.

Mitigating these vulnerabilities involves a complex multivendor update. It requires updates to Windows and Microsoft browsers using the [January 2018 Security Updates from Microsoft](https://portal.msrc.microsoft.com/en-us/security-guidance/releasenotedetail/858123b8-25ca-e711-a957-000d3a33cf99) and updates to processor microcode using fixes released by OEM and CPU vendors.

## Prerequisites
Note the following requirements and limitations of the charts and what you might be able to do to improve visibility of the mitigation status of machines in your network:

- Only active machines running Windows 10 are checked for OS mitigations.
- When checking for microcode mitgations, Windows Defender ATP currently checks for updates applicable to Intel CPU processors only.
- To determine microcode mitigation status, machines must enable Windows Defender Antivirus and update to Security intelligence version 1.259.1545.0 or above.
- To be covered under the overall mitigation status, machines must have both OS and microcode mitigation information.

## Assess organizational risk with Threat analytics

Threat analytics helps you continually assess and control risk exposure to Spectre and Meltdown. Use the charts to quickly identify machines for the presence or absence of the following mitigations:

- **OS mitigation**: Identifies machines that have installed the January 2018 Security Updates from Microsoft and have not explicitly disabled any of the OS mitigations provided with these updates
- **Microcode mitigation**: Identifies machines that have installed the necessary microcode updates or those that do not require them
- **Overall mitigation status**: Identifies the completeness by which machines have mitigated against the Spectre and Meltdown exploits 


To access Threat analytics, from the navigation pane select **Dashboards** > **Threat analytics**.

Click a section of each chart to get a list of the machines in the corresponding mitigation status.

## Related topics
- [Threat analytics](threat-analytics.md)
- [Overview of Secure Score in Windows Defender Security Center](overview-secure-score-windows-defender-advanced-threat-protection.md)
- [Configure the security controls in Secure score](secure-score-dashboard-windows-defender-advanced-threat-protection.md)


