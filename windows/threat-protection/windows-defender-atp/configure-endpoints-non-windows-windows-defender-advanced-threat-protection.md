---
title: Configure non-Windows endpoints in Windows Defender ATP
description: Configure non-Winodws endpoints so that they can send sensor data to the Windows Defender ATP service.
keywords: configure endpoints non-Windows endpoints, macos, linux, endpoint management, configure Windows ATP endpoints, configure Windows Defender Advanced Threat Protection endpoints
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
localizationpriority: high
ms.date: 11/08/2017
---

# Configure non-Windows endpoints

**Applies to:**

- Mac OS X
- Linux
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-nonwindows-abovefoldlink) 

[!include[Prerelease information](prerelease.md)]

Windows Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in the Windows Defender ATP portal and better protect your organization's network. This experience leverages on a third-party security products’ sensor data. 

You'll need to know the exact Linux distros and Mac OS X versions that are compatible with Windows Defender ATP for the integration to work. 

## Onboard non-Windows endpoints
You'll need to take the following steps to oboard non-Windows endpoints:
1. Turn on third-party integration
2. Run a detection test

### Turn on third-party integration

1. In Windows Defender Security Center portal, select **Endpoint management** > **Clients** > **Non-Windows**. Make sure the third-party solution is listed.

2. 	Toggle the third-party provider switch button to turn on the third-party solution integration.

3. 	Click **Generate access token** button and then **Copy**.

4. 	Depending on the third-party implementation you're using, the implementation might vary. Refer to the third-party solution documentation for guidance on how to use the token.


>[!WARNING] 
>The access token has a limited validity period. If needed, regenerate the token close to the time you need to share it with the third-party solution.

### Run detection test
Create an EICAR test file by saving the string displayed on the portal in an empty text file. Then, introduce the test file to a machine running the third-party antivirus solution. 

The file should trigger a detection and a corresponding alert on Windows Defender ATP.

### Offboard non-Windows endpoints
To effectively offboard the endpoints from the service, you'll need to disable the data push on the third-party portal first then switch the toggle to off in Windows Defender Security Center. The toggle in the portal only blocks the data inbound flow.


1. Follow the third-party documentation to opt-out on the third-party service side.

2. In Windows Defender Security Center portal, select **Endpoint management**> **Non-Windows**.

3. Toggle the third-party provider switch button to turn stop telemetry from endpoints. 

>[!WARNING]
>If you decide to turn on the third-party integration again after disabling the integration, you'll need to regenerate the token and reapply it on endpoints. 

## Related topics
- [Configure Windows Defender ATP client endpoints](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Configure server endpoints](configure-server-endpoints-windows-defender-advanced-threat-protection.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md)
- [Troubleshooting Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)