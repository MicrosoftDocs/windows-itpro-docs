---
title: Querying Application Control events centrally using Advanced hunting   (Windows 10)
description: Learn about Windows Defender Application Guard and how it helps to combat malicious content and malware out on the Internet.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mdsakibMSFT
ms.author: justinha
ms.date: 12/06/2018
---

# Querying Application Control events centrally using Advanced hunting  

A Windows Defender Application Control (WDAC) policy logs events locally in Windows Event Viewer in either enforced or audit mode. 
While Event Viewer helps to see the impact on a single system, IT Pros want to gauge the impact across many systems. 

In November 2018, we added functionality in Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) that makes it easy to view WDAC events centrally from all systems that are connected to Microsoft Defender ATP. 

Advanced hunting in Microsoft Defender ATP allows customers to query data using a rich set of capabilities. WDAC events can be queried with using an ActionType that starts with “AppControl”. 
This capability is supported beginning with Windows version 1607.

Here is a simple example query that shows all the WDAC events generated in the last seven days from machines being monitored by Microsoft Defender ATP:

```
MiscEvents
| where EventTime > ago(7d) and
ActionType startswith "AppControl"
| summarize Machines=dcount(ComputerName) by ActionType
| order by Machines desc
```

The query results can be used for several important functions related to managing WDAC including:

- Assessing the impact of deploying policies in audit mode 
  Since applications still run in audit mode, it is an ideal way to see the impact and correctness of the rules included in the policy. Integrating the generated events with Advanced hunting makes it much easier to have broad deployments of audit mode policies and see how the included rules would impact those systems in real world usage. This audit mode data will help streamline the transition to using policies in enforced mode.
- Monitoring blocks from policies in enforced mode
  Policies deployed in enforced mode may block executables or scripts that fail to meet any of the included allow rules. Legitimate new applications and updates or potentially unwanted or malicious software could be blocked. In either case, the Advanced hunting queries report the blocks for further investigation. 
