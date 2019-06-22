---
title: Onboard machines to the Microsoft Defender ATP service
description: Onboard Windows 10 machines, servers, non-Windows machines and learn how to run a detection test.
keywords: onboarding, windows defender advanced threat protection onboarding, windows atp onboarding, sccm, group policy, mdm, local script, detection test
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

# Onboard machines to the Microsoft Defender ATP service

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](prerelease.md)]

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

You'll need to go the onboarding section of the Microsoft Defender ATP portal to onboard any of the supported devices. Depending on the device, you'll be guided with appropriate steps and provided management and deployment tool options suitable for the device. 

In general, to onboard devices to the service:

- Verify that the device fulfills the [minimum requirements](minimum-requirements.md)
- Depending on the device, follow the configuration steps provided in the onboarding section of the Microsoft Defender ATP portal
- Use the appropriate management tool and deployment method for your devices
- Run a detection test to verify that the devices are properly onboarded and reporting to the service

## In this section
Topic | Description
:---|:---
[Onboard previous versions of Windows](onboard-downlevel.md)| Onboard Windows 7 and Windows 8.1 machines to Microsoft Defender ATP. 
[Onboard Windows 10 machines](configure-endpoints.md) | You'll need to onboard machines for it to report to the Microsoft Defender ATP service. Learn about the tools and methods you can use to configure machines in your enterprise.
[Onboard servers](configure-server-endpoints.md) |  Onboard Windows Server 2012 R2 and Windows Server 2016 to Microsoft Defender ATP 
[Onboard non-Windows machines](configure-endpoints-non-windows.md) | Microsoft Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Microsoft Defender Security Center and better protect your organization's network. This experience leverages on a third-party security products' sensor data. 
[Run a detection test on a newly onboarded machine](run-detection-test.md) | Run a script on a newly onboarded machine to verify that it is properly reporting to the Microsoft Defender ATP service.
[Configure proxy and Internet settings](configure-proxy-internet.md)| Enable communication with the Microsoft Defender ATP cloud service by configuring the proxy and Internet connectivity settings.
[Troubleshoot onboarding issues](troubleshoot-onboarding.md) | Learn about resolving issues that might arise during onboarding.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-belowfoldlink)




