---
title: Configure non-Windows endpoints in Windows Defender ATP
description: Configure non-Winodws endpoints to see sensor data and get alerts from them
keywords: configure endpoints non-Windows endpoints, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
ms.date: 09/01/2017
---

# Configure non-Windows endpoints

**Applies to:**

- Mac OS X
- Linux
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

[!include[Prerelease information](prerelease.md)]

Windows Defender Security Center provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Windows Defender Security Center and better protect your organization's network. This experience leverages on a third-party security products’ sensor data. 

You'll need to know the exact Linux distros and Mac OS X versions that are compatible with Windows Defender ATP for the integration to work. 

## Onboard non-Windows endpoints

1. In Windows Defender Security Center portal, select **Endpoint management** > **Clients** > **Non-Windows endpoints**. Make sure the third-party solution is listed.

2. 	Toggle the Bitdefender switch button to turn on the third-party solution integration.

3. 	Click **Generate access token** button and then **Copy**.

4. 	Depending on the third-party implementation you're using, the implementation might vary. Refer to the third-party solution documentation for guidance on how to use the token.

5. Click **Save preferences**.

>[!WARNING] 
>The access token has a limited validity period. If needed, regenerate the token close to the time you need to share it with the third-party solution.

## Offboard non-Windows endpoints
To effectively offboard the endpoints from the service, you'll need to disable the data push on the third-party portal first then switch the toggle to off in Windows Defender Security Center. The toggle in the portal only blocks the data inbound flow.


1. Follow the third-party documentation to opt-out on the third-party service side.

2. In Windows Defender Security Center portal, select **Endpoint management**> **Non-Windows endpoint management**.

3. Toggle the Bitdefender switch button to turn stop telemetry from endpoints with Bitdefender antivirus. 

>[!WARNING]
>If you decide to turn on the third-party integration again after disabling the integration, you'll need to regenerate the token and reapply it on endpoints. 
