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
ms.date: 07/01/2018
---

# Overview of management and APIs 

TODO: Raviv
Integrate Windows Defender Advanced Threat Protection into your existing workflows.
- [Configuration](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/preferences-setup-windows-defender-advanced-threat-protection)
- [Onboarding](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/onboard-configure-windows-defender-advanced-threat-protection)
- [RBAC](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/rbac-windows-defender-advanced-threat-protection)
- [SIEM connectors](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/configure-siem-windows-defender-advanced-threat-protection) 
- [Exposed APIs](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-defender-atp/exposed-apis-windows-defender-advanced-threat-protection)
- [Operating system baseline compliance](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/secure-score-dashboard-windows-defender-advanced-threat-protection)
- [Reporting and trends](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/powerbi-reports-windows-defender-advanced-threat-protection)


================

Scratch paper / thoughts:

*** TomerB ***

NOTE: I changed the order of the sections above - need to also ensure this is align with how the rest of the content is orgenized 

Windows Defender ATP supports a wide variety of options to ensure a smooth and effective adotpion by a wide range of customers profile. 
We acknoledge that each environment is different in how it is structure and operats, and the Windwos Defender ATP solution was created with the much needed flexability & granularity to address just that.

Machine onboarding is fully integrate into SCCM & Intune for client machines and ASC for server machines, providing complete E2E experience of configuraiton, deployment and monitoring. In additonal Windows Defender ATP support GP and any 3rd party tool used for machines management 

Windows Defender ATP provides unparallel powerfull and flexible role based access control - defining who can see which properties, and who can performs which tasks / action. The RBAC model supports all flavors of security teams strucutre 
- Globally distributed organizations and security teams
- Tiered model SOC
- Fully segregated devisions with single centralized global SOC 

Windows Defender ATP is not a closed and isolated solution.
[1] It support integration with a number of SIEMs solutions and also exposes APIs to fully support any pulling all the alerts underline detection information into any SIEM solutions. 
[2] For those who are already heavily invested in data enrichment and automation Windows Defender ATP rich set of APIs enbales just that 
    * Enriching events coming from other security systems with footpring / prevelance information 
    * Triggering file or machine level response actions via APIs 
    * Keeping systems sync-ed (Import machines tags from assets management systems into ATP, Syncronizing alerts and incidents status cross ticketing systems and ATP) 

An important aspects of machines management is the ability to analyze the environment from different, broad, perspective. This often help drive new insights and proper priority of the next "go do" item 
[1] Secure score dashboard provides metrics based method of prioritizing the most important proactive security measures.
[2] Windows Defender ATP includes a built-in PowerBI based reporting solution to quickly review trends and details related to ATP alerts and secure score of your machines. ATP also supports full customization of the reports, including mesh ATP data with you own data strem to produce buisness specific report 

*** TomerB ***

Windows Defender ATP supports a wide variety of tools to help you manage and interact with the platform so that you can integrate the service into your existing workflows.

There's a wide variety of supported management tools you can use to onboard machines to the service. The platform also supports various security information and events management (SIEM) tools that allows you to pull alerts to. The application programming interface (APIs) provides the flexibility of pulling or creating alerts programmatically. 


Talk about all the tools that you can use with WDATP 

OR one liner

wdatp allows you to interact with the platform and other systems

enable to manage and interact with the system

APIs, SIEM connectors, Reporting, powerbi, etc

## In this section 
