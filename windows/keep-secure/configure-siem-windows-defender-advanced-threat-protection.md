---
title: Consume alerts and create custom indicators in Windows Defender Advanced Threat Protection
description: Learn how to configure supported security information and events management tools to receive and consume alerts and create custom indicators using REST API.
keywords: configure siem, security information and events management tools, splunk, arcsight, custom indicators, rest api, alert definitions, indicators of compromise
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Consume alerts and create custom indicators

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

## Consume alerts using supported security information and events management (SIEM) tools
Windows Defender ATP supports (SIEM) tools to consume alerts. Windows Defender ATP exposes alerts through an HTTPS endpoint hosted in Azure. The endpoint can be configured to get alerts from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for an AAD application that represents the specific SIEM connector installed in your environment.


Windows Defender ATP currently supports the following SIEM tools:

- Splunk
- HP ArcSight

To use either of these supported SIEM tools you'll need to:

- [Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md)
- Configure the supported SIEM tool:
    - [Configure Splunk to consume alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
    - [Configure HP ArcSight to consume alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)

## Create custom threat indicators in Windows Defender ATP
You can also create custom threat indicators using the available REST API so that you can create specific alerts that are applicable to your organization.

For more information, see [Create custom threat indicators (TI) using REST API](custom-ti-api-windows-defender-advanced-threat-protection.md).

## In this section

Topic | Description
:---|:---
[Enable SIEM integration in Windows Defender ATP](enable-siem-integration-windows-defender-advanced-threat-protection.md)| Learn about enabling the SIEM integration feature in the **Preferences setup** page in the portal so that you can use and generate the required information to configure supported SIEM tools.
 [Configure Splunk](configure-splunk-windows-defender-advanced-threat-protection.md)| Learn about installing the REST API Modular Input app and other configuration settings to enable Splunk to consume Windows Defender ATP alerts.
 [Configure ArcSight](configure-arcsight-windows-defender-advanced-threat-protection.md)| Learn about installing the HP ArcSight REST FlexConnector package and the files you need to configure ArcSight to consume Windows Defender ATP alerts.
 [Generic API] | Learn how to use a generic API to consume alerts from Windows Defender ATP. 
