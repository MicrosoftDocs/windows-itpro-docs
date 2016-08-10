---
title: Configure security information and events management tools
description: Configure supported security information and events management tools to receive and consume alerts.
keywords: configure siem, security information and events management tools, splunk, arcsight
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
---

# Configure security information and events management (SIEM) tools to consume alerts

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Enterprise for Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender ATP supports security information and events management (SIEM) tools to consume alerts. Windows Defender ATP exposes alerts through an HTTPS endpoint hosted in Azure. The endpoint can be configured to get alerts from your enterprise tenant in Azure Active Directory (AAD) using the OAuth 2.0 authentication protocol for an AAD application that represents the specific SIEM connector installed in your environment.

Windows Defender ATP currently supports the following SIEM tools:

- Splunk
- HP ArcSight

To use either of these supported SIEM tools you'll need to:

- [Configure an Azure Active Directory application for SIEM integration in your tenant](configure-aad-windows-defender-advanced-threat-protection.md)
- Configure the supported SIEM tool:
    - [Configure Splunk to consume alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
    - [Configure HP ArcSight to consume alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)

## In this section

Topic | Description
:---|:---
[Configure an Azure Active Directory application](configure-aad-windows-defender-advanced-threat-protection.md)| Learn about configuring an Azure Active Directory application to integrate with supported security information and events management (SIEM) tools.
 [Configure Splunk](configure-splunk-windows-defender-advanced-threat-protection.md)| Learn about installing the REST API Modular Input app and other configuration settings to enable Splunk to consume Windows Defender ATP alerts.
 [Configure ArcSight](configure-arcsight-windows-defender-advanced-threat-protection.md)| Learn about installing the HP ArcSight REST FlexConnector package and the files you need to configure ArcSight to consume Windows Defender ATP alerts.
