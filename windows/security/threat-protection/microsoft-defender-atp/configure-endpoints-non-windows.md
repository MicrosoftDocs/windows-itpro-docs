---
title: Onboard non-Windows machines to the Microsoft Defender ATP service
description: Configure non-Winodws machines so that they can send sensor data to the Microsoft Defender ATP service.
keywords: onboard non-Windows machines, macos, linux, machine management, configure Windows ATP machines, configure Microsoft Defender Advanced Threat Protection machines
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
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/en-us/WindowsForBusiness/windows-atp?ocid=docs-wdatp-nonwindows-abovefoldlink) 



Microsoft Defender ATP provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Microsoft Defender Security Center and better protect your organization's network. 

You'll need to know the exact Linux distros and macOS versions that are compatible with Microsoft Defender ATP for the integration to work. 



## Onboarding non-Windows machines
You'll need to take the following steps to onboard non-Windows machines:
1. Select your preferred method of onboarding:

   - For macOS devices, you can choose to onboard through Microsoft Defender ATP or through a third-party solution. For more information, see [Microsoft Defender ATP for Mac](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-antivirus/microsoft-defender-atp-mac).
   - For other non-Windows devices choose **Onboard non-Windows machines through third-party integration**.   
       
     1. In the navigation pane, select **Interoperability** > **Partners**. Make sure the third-party solution is listed.

        2. In the **Partner Applications** tab, select the partner that supports your non-Windows devices.

        3. Select **Open partner page** to open the partner's page. Follow the instructions provided on the page.

        4. After creating an account or subscribing to the partner solution, you should get to a stage where a tenant Global Admin in your organization is asked to accept a permission request from the partner application. Read the permission request carefully to make sure that it is aligned with the service that you require. 

        
2. Run a detection test by following the instructions of the third-party solution.

## Offboard non-Windows machines

1. Follow the third-party's documentation to disconnect the third-party solution from Microsoft Defender ATP.

2. Remove permissions for the third-party solution in your Azure AD tenant.
   1. Sign in to the [Azure portal](https://portal.azure.com).
   2. Select **Azure Active Directory > Enterprise Applications**.
   3. Select the application you'd like to offboard.
   4. Select the **Delete** button.


## Related topics
- [Onboard Windows 10 machines](configure-endpoints.md)
- [Onboard servers](configure-server-endpoints.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Troubleshooting Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)