---
title: Onboard non-Windows machines to the Windows Defender ATP service
description: Configure non-Winodws machines so that they can send sensor data to the Windows Defender ATP service.
keywords: onboard non-Windows machines, macos, linux, machine management, configure Windows ATP machines, configure Windows Defender Advanced Threat Protection machines
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Onboard non-Windows machines

**Applies to:**

- macOS
- Linux
- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

>Want to experience Windows Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-nonwindows-abovefoldlink) 



Windows Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Windows Defender Security Center and better protect your organization's network. This experience leverages on a third-party security products’ sensor data. 

You'll need to know the exact Linux distros and macOS versions that are compatible with Windows Defender ATP for the integration to work. 

You'll need to take the following steps to onboard non-Windows machines:
1. Turn on third-party integration
2. Run a detection test

## Turn on third-party integration

1. In the navigation pane, select **Settings** > **Onboarding**. Make sure the third-party solution is listed.

2. 	Select **Linux, macOS, iOS and Android** as the operating system.

3. Turn on the third-party solution integration.

4. 	Click **Generate access token** button and then **Copy**.

5. 	You’ll need to copy and paste the token to the third-party solution you’re using. The implementation may vary depending on the solution. 


>[!WARNING] 
>The access token has a limited validity period. If needed, regenerate the token close to the time you need to share it with the third-party solution.

### Run detection test
Create an EICAR test file by saving the string displayed on the portal in an empty text file. Then, introduce the test file to a machine running the third-party antivirus solution. 

The file should trigger a detection and a corresponding alert on Windows Defender ATP.

## Offboard non-Windows machines
To effectively offboard the machine from the service, you'll need to disable the data push on the third-party portal first then switch the toggle to off in Windows Defender Security Center. The toggle in the portal only blocks the data inbound flow.


1. Follow the third-party documentation to opt-out on the third-party service side.

2. In the navigation pane, select **Settings** > **Onboarding**.

3. Turn off the third-party solution integration. 

>[!WARNING]
>If you decide to turn on the third-party integration again after disabling the integration, you'll need to regenerate the token and reapply it on machines. 

## Related topics
- [Onboard Windows 10 machines](configure-endpoints-windows-defender-advanced-threat-protection.md)
- [Onboard servers](configure-server-endpoints-windows-defender-advanced-threat-protection.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet-windows-defender-advanced-threat-protection.md)
- [Troubleshooting Windows Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding-windows-defender-advanced-threat-protection.md)