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
---

# Configure non-Windows endpoints

**Applies to:**

- Windows 10 Enterprise
- Windows 10 Education
- Windows 10 Pro
- Windows 10 Pro Education
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

Windows Defender Security Center provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Windows Defender Security Center and better protect your organization's network. This experience leverages on a third-party security products’ sensor data. 

### Supported non-Windows endpoints
Windows Defender Security Center supports the following non-Windows endpoints:

- Mac OS (DAN, ARE THERE SPECIFIC VERSIONS THAT WE SUPPORT?)
- Linux  (DAN, ARE THERE SPECIFIC VERSIONS THAT WE SUPPORT?)

### Pre-requisites
The endpoints need to be running Bitdefender [ANY REQUIRED VERSION?]

## Onboard non-Windows endpoints

1. In Windows Defender Security Center portal, select **Endpoint management** > **Clients** > **Non-Windows endpoints**. Make sure the third-party solution is listed.

2. 	Toggle the Bitdefender switch button to turn on the third-party solution integration.

3. 	Click **Generate access token** button and then **Copy**.

4. 	Depending on the third-party implementation you're using, the implementation might vary. Refer to the third-party solution documentation for guidance on how to use the token.

>[!WARNING]
> The access token is only displayed once. Make sure you keep a copy of it in a safe place. If needed, regenerate the token close to the time you need to share it with the third-party solution.

## Offboard non-Windows endpoints
To effectively offboard the endpoints from the service, you'll need to disable the data push on the third-party portal then switch the toggle to off in Windows Defender Security Center to block the data inbound flow.

1. Follow the third-party documentation to opt-out on the third-party service side.

2. In Windows Defender Security Center portal, select **Endpoint management**> **Non-Windows endpoint management**.

3. Toggle the switch button to turn off the third-party solution integration. 

