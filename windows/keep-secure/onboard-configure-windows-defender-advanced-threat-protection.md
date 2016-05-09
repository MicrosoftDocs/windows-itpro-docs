---
title: Onboard endpoints and set up the Windows Defender ATP user access
description: Set up user access in Azure Active Directory and use Group Policy or do manual registry changes to onboard endpoints to the service.
keywords: onboarding, windows defender advanced threat protection onboarding, windows atp onboarding
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: iaanw
---

# Onboard and set up Windows Defender Advanced Threat Protection 

**Applies to:**

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You need to onboard to Windows Defender ATP before you can use the service.

There are two stages to onboarding:

1.  Set up user access in AAD and use a wizard to create a dedicated
    cloud instance for your network (known as “service onboarding”).

2.  Add endpoints to the service with System Center Configuration Manager, scheduled GP updates, or manual
    registry changes.

## In this section
Topic | Description 
:---|:---
[Service onboarding](service-onboarding-windows-defender-advanced-threat-protection.md) | Learn about managing user access to the Windows Defender ATP portal by assigning users to the Windows Defender ATP service application in Azure Active Directory (AAD).
[Configure endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md) | You'll need to configure endpoints for it to report to the Windows Defender ATP service. Learn how you can use the configuration package to configure endpoints in your enterprise.
[Configure proxy and Internet settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md)| Enable communication with the Windows Defender ATP cloud service by configuring the proxy and Internet connectivity settings.
[Additional configuration settings] (additional-configuration-windows-defender-advanced-threat-protection.md) | Learn how to configure settings for sample sharing used in the deep analysis feature.
[Monitor onboarding](monitor-onboarding-windows-defender-advanced-threat-protection.md) | Learn how you can monitor the onboarding to ensure your endpoints are correctly configured and are sending telemetry reports. 
[Troubleshoot onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md) | Learn about resolving issues that might arise during onboarding.
