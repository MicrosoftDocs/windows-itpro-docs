---
title: Ensure your machines are configured properly
description: Properly configure machines to boost overall resilience against threats and enhance your capability to detect and respond to attacks.
keywords: onboard, Intune management, MDATP, WDATP, Microsoft Defender, Windows Defender, advanced threat protection, attack surface reduction, ASR, security baseline
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: procedural
---

# Ensure your machines are configured properly

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](prerelease.md)]

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

With properly configured machines, you can boost overall resilience against threats and enhance your capability to detect and respond to attacks. Security configuration management helps ensure that your machines:

- Onboard to Microsoft Defender ATP
- Meet or exceed the Microsoft Defender ATP security baseline configuration
- Have strategic attack surface mitigations in place

![Security configuration management page](images/secconmgmt_main.png)
*Machine configuration management page*

You can track configuration status at an organizational level and quickly take action in response to poor onboarding coverage, compliance issues, and poorly optimized attack surface mitigations through direct, deep links to device management pages on Microsoft Intune and Microsoft 365 security center.

In doing so, you benefit from:
- Comprehensive visibility of the events on your machines
- Robust threat intelligence and powerful machine learning technologies for processing raw events and identifying the breach activity and threat indicators
- A full stack of security features configured to efficiently stop the installation of malicious implants, hijacking of system files and process, data exfiltration, and other threat activities
- Optimized attack surface mitigations, maximizing strategic defenses against threat activity while minimizing impact to productivity

## Enroll machines to Intune management

Machine configuration management works closely with Intune device management to establish the inventory of the machines in your organization and the baseline security configuration. You will be able to track and manage configuration issues on Intune-managed Windows 10 machines.

Before you can ensure your machines are configured properly, enroll them to Intune management. Intune enrollment is robust and has several enrollment options for Windows 10 machines. For more information about Intune enrollment options, read [Set up enrollment for Windows devices](https://docs.microsoft.com/en-us/intune/windows-enroll).

>[!TIP]
>- To optimize machine management through Intune, [connect Intune to Microsoft Defender ATP](https://docs.microsoft.com/en-us/intune/advanced-threat-protection#enable-windows-defender-atp-in-intune).

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




