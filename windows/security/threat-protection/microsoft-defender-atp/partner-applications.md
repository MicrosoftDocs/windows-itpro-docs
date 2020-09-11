---
title: Partner applications in Microsoft Defender ATP   
ms.reviewer: 
description: View supported partner applications to enhance the detection, investigation, and threat intelligence capabilities of the platform
keywords: partners, applications, third-party, connections, sentinelone, lookout, bitdefender, corrata, morphisec, paloalto, ziften, better mobile
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
ms.topic: conceptual
---

# Partner applications in Microsoft Defender ATP 
**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)


Microsoft Defender ATP supports third-party applications to help enhance the detection, investigation, and threat intelligence capabilities of the platform.


The support for third-party solutions help to further streamline, integrate, and orchestrate defenses from other vendors with Microsoft Defender ATP; enabling security teams to effectively respond better to modern threats.

Microsoft Defender ATP seamlessly integrates with existing security solutions - providing out of the box integration with SIEM, ticketing and IT service management solutions, managed security service providers (MSSP), IoC indicators ingestions and matching, automated device investigation and remediation based on external alerts, and integration with Security orchestration and automation response (SOAR) systems. 

## Supported applications

Partner name   | Description |Category 
:---|:---|:---
|AzureSentinel | Stream alerts from Microsoft Defender Advanced Threat Protection into Azure Sentinel |Security information and analytics 
|Elastic Security | Elastic Security is a free and open solution for preventing, detecting, and responding to threats.|Security information and analytics 
|AttackIQ Platform | AttackIQ Platform validates MDATP is configured properly by launching continuous attacks safely on production assets|Security information and analytics 
|Skybox Vulnerability Control | Skybox Vulnerability Control cuts through the noise of vulnerability management, correlating business, network threat context to uncover your riskiest vulnerabilities.|Security information and analytics
| Splunk | The Microsoft Defender ATP Add-on allows Splunk users to ingest all of the alerts and supporting information to their Splunk |Security information and analytics 
|IBM QRadar | Configure IBM QRadar to collect detections from Microsoft Defender ATP |Security information and analytics 
|Cymulate | Correlate Defender ATP findings with simulated attacks to validate accurate detection and effective response actions |Security information and analytics 
| HP ArcSight |Use HP ArcSight to pull Microsoft Defender ATP detections |Security information and analytics 
|SafeBreach | Gain visibility into Microsoft Defender ATP security events that are automatically correlated with SafeBreach simulations|Security information and analytics 
| RSA NetWitness| Steam Microsoft Defender ATP Alerts to RSA NetWitness leveraging Microsoft Graph Security API|Security information and analytics 
| XM Cyber| Prioritize your response to an alert based on risk factors and high value assets.|Security information and analytics 
 Demisto, a Palo Alto Networks Company|Demisto integrates with Microsoft Defender ATP to enable security teams to orchestrate and automate endpoint security monitoring, enrichment and response|Orchestration and automation
 |||Orchestration and automation
 |||Orchestration and automation
 |||Orchestration and automation
 |||Orchestration and automation
 |||Orchestration and automation
 |||Orchestration and automation
Palo Alto Networks |Enrich your endpoint protection by extending Autofocus and other threat feeds to Microsoft Defender ATP using MineMeld|Threat intelligence  
ThreatConnect | Alert and/or block on custom threat intelligence from ThreatConnect Playbooks using Microsoft Defender ATP connectors |Threat intelligence  
MISP (Malware Information Sharing Platform) | Integrate threat indicators from the Open Source Threat Intelligence Sharing Platform into your Microsoft Defender ATP environment| Threat intelligence  
 |||Network security
 ||| Cross platform
||| Additional integrations 
 ||| Manages security service providers

## SIEM integration
Microsoft Defender ATP supports SIEM integration through a variety of methods - specialized SIEM system interface with out of the box connectors, a generic alert API enabling custom implementations, and an action API enabling alert status management.  For more information, see [Enable SIEM integration](enable-siem-integration.md).

## Ticketing and IT service management 
Ticketing solution integration helps to implement manual and automatic response processes. Microsoft Defender ATP can help to create tickets automatically when an alert is generated and resolve the alerts when tickets are closed using the alerts API. 

## Security orchestration and automation response (SOAR) integration 
Orchestration solutions can help build playbooks and integrate the rich data model and actions that Microsoft Defender ATP APIs expose to orchestrate responses, such as query for device data, trigger device isolation, block/allow, resolve alert and others. 

## External alert correlation and Automated investigation and remediation  
Microsoft Defender ATP offers unique automated investigation and remediation capabilities to drive incident response at scale.
  
Integrating the automated investigation and response capability with other solutions such as IDS and firewalls help to address alerts and minimize the complexities surrounding network and device signal correlation, effectively streamlining the investigation and threat remediation actions on devices.  

External alerts can be pushed into Microsoft Defender ATP and is presented side-by-side with additional device-based alerts from Microsoft Defender ATP. This view provides a full context of the alert - with the real process and the full story of attack.  

## Indicators matching
You can use threat-intelligence from providers and aggregators to maintain and use indicators of compromise (IOCs).

Microsoft Defender ATP allows you to integrate with such solutions and act on IoCs by correlating its rich telemetry and creating alerts when there's a match; leveraging prevention and automated response capabilities to block execution and take remediation actions when there's a match.

Microsoft Defender ATP currently supports IOC matching and remediation for file and network indicators. Blocking is supported for file indicators.  

## Support for non-Windows platforms
Microsoft Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in the portal and better protect your organization's network. 
