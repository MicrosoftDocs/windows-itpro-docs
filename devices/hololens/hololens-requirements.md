---
title: HoloLens in the enterprise requirements (HoloLens)
description: Requirements for general use, Wi-Fi, and device management for HoloLens in the enterprise.
ms.prod: w10
ms.mktglfcycl: manage
ms.pagetype: hololens, devices
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
---

# Microsoft HoloLens in the enterprise: requirements

When you develop for HoloLens, there are [system requirements and tools](https://developer.microsoft.com/windows/holographic/install_the_tools) that you need. In an enterprise environment, there are also a few requirements to use and manage HoloLens which are listed below.

## General use
- Microsoft account or Azure Active Directory (Azure AD) account
- Wi-Fi network to set up HoloLens

>[!NOTE]
>After you set up HoloLens, you can use it offline [with some limitations](https://support.microsoft.com/help/12645/hololens-use-hololens-offline).


## Supported wireless network EAP methods 
- PEAP-MS-CHAPv2
- PEAP-TLS
- TLS 
- TTLS-CHAP
- TTLS-CHAPv2
- TTLS-MS-CHAPv2
- TTLS-PAP
- TTLS-TLS

## Device management 
   - Users have Azure AD accounts with [Intune license assigned](https://docs.microsoft.com/intune/get-started/start-with-a-paid-subscription-to-microsoft-intune-step-4)
   - Wi-Fi network
   - Intune or a 3rd party mobile device management (MDM) provider that uses Microsoft MDM APIs
   
## Upgrade to Windows Holographic Enterprise 
- HoloLens Enterprise license XML file





## Related resources

[Getting started with Azure Active Directory Premium](https://azure.microsoft.com/en-us/documentation/articles/active-directory-get-started-premium/)

[Get started with Intune](https://docs.microsoft.com/en-us/intune/understand-explore/get-started-with-a-30-day-trial-of-microsoft-intune)

[Enroll devices for management in Intune](https://docs.microsoft.com/en-us/intune/deploy-use/enroll-devices-in-microsoft-intune#supported-device-platforms)

[Azure AD editions](https://azure.microsoft.com/en-us/documentation/articles/active-directory-editions/)

