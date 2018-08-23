---
title: Overview of management and APIs
description: 
keywords: 
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: high
ms.date: 09/03/2018
---

# Overview of management and APIs 

Windows Defender ATP supports a wide variety of options to ensure that customers can easily adopt the platform. 

Acknowledging that customer environments and structures can vary, Windows Defender ATP was created with flexibility and granular control to fit varying customer requirements. 

Machine onboarding is fully integrated into System Center Configuration Manager and Microsoft Intune for client machines and Azure Security Center for server machines, providing complete end-to-end experience of configuration, deployment, and monitoring. In addition, Windows Defender ATP supports Group Policy and other third-party tools used for machines management.

Windows Defender ATP provides fine-grained control over what users with access to the portal can see and do through the flexibility of role-based access control (RBAC). The RBAC model supports all flavors of security teams structure:
- Globally distributed organizations and security teams
- Tiered model security operations teams
- Fully segregated devisions with single centralized global security operations teams 

The Windows Defender ATP solution is built on top of an integration-ready platform:
- It supports integration with a number of security information and event management (SIEM) solutions and also exposes APIs to fully support pulling all the alerts and detection information into any SIEM solution. 
- It supports a rich set of application programming interface (APIs) providing flexibility for those who are already heavily invested in data enrichment and automation:
   - Enriching events coming from other security systems with foot print or prevalence information
   - Triggering file or machine level response actions through APIs
   - Keeping systems in-sync such as importing machine tags from asset management systems into Windows Defender ATP, synchronize alerts and incidents status cross ticketing systems with Windows Defender ATP.

An important aspect of machine management is the ability to analyze the environment from varying and broad perspectives. This often helps drive new insights and proper priority identification: 
- The Secure score dashboard provides metrics based method of prioritizing the most important proactive security measures.
- Windows Defender ATP includes a built-in PowerBI based reporting solution to quickly review trends and details related to Windows Defender ATP alerts and secure score of  machines. The platform also supports full customization of the reports, including mashing of Windows Defender ATP data with your own data stream to produce business specific reports.

