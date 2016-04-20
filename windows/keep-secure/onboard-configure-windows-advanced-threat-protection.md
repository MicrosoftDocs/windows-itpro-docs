---
title: Onboard endpoints and set up the Windows Defender ATP user access
description: Set up user access in Azure Active Directory and use Group Policy or do manual registry changes to onboard endpoints to the service.
keywords: onboarding, windows defender advanced threat protection onboarding, windows atp onboarding
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl:
ms.sitesec: library
author: mjcaparas
---

# Onboard endpoints and set up the Windows Defender ATP user access 

**Applies to**

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You need to onboard to Windows Defender ATP before you can use the service.

There are two stages to onboarding:

1.  Set up user access in AAD and use a wizard to create a dedicated
    cloud instance for your network (known as “service onboarding”).

2.  Add endpoints to the service with scheduled GP updates or manual
    registry changes (known as “endpoint onboarding”).

## In this section
Topic | Description 
:---|:---
[Windows Defender ATP service onboarding](service-onboarding-windows-advanced-threat-protection.md) | Learn about managing user access to the Windows Defender ATP portal by assigning users to the Windows Defender ATP service application in ADD.
[Configure Windows Defender ATP endpoints (client onboarding)](configure-endpoints-windows-advanced-threat-protection.md) | You'll need to configure endpoints for it to report to the Windows Defender ATP service. Learn how you can use the configuration package to configure endpoints in your enterprise.
[Monitor the Windows Defender ATP onboarding](monitor-onboarding-windows-advanced-threat-protection.md) | Learn how you can monitor the onboarding to ensure your endpoints are correctly configured and are sending telemetry reports. 
[Additional Windows Defender ATP configuration settings](additional-configuration-windows-advanced-threat-protection.md) | This topic describes the steps you need to take to configure settings for sample sharing used in the deep analysis feature.
[Troubleshoot Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-advanced-threat-protection.md) | This topic contains information on how you can resolve issues that might arise during onboarding.
