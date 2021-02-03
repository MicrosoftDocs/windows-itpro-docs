---
title: Onboard non-Windows devices to the Microsoft Defender ATP service
description: Configure non-Windows devices so that they can send sensor data to the Microsoft Defender ATP service.
keywords: onboard non-Windows devices, macos, linux, device management, configure Windows ATP devices, configure Microsoft Defender Advanced Threat Protection devices
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Onboard non-Windows devices

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**

- macOS
- Linux
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)

>Want to experience Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-nonwindows-abovefoldlink) 

Defender for Endpoint provides a centralized security operations experience for Windows as well as non-Windows platforms. You'll be able to see alerts from various supported operating systems (OS) in Microsoft Defender Security Center and better protect your organization's network. 

You'll need to know the exact Linux distros and macOS versions that are compatible with Defender for Endpoint for the integration to work. For more information, see:
- [Microsoft Defender for Endpoint for Linux system requirements](microsoft-defender-atp-linux.md#system-requirements)  
- [Microsoft Defender for Endpoint for Mac system requirements](microsoft-defender-atp-mac.md#system-requirements).

## Onboarding non-Windows devices
You'll need to take the following steps to onboard non-Windows devices:
1. Select your preferred method of onboarding:

   - For macOS devices, you can choose to onboard through Microsoft Defender ATP or through a third-party solution. For more information, see [Microsoft Defender for Endpoint for Mac](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/microsoft-defender-atp-mac).
   - For other non-Windows devices choose **Onboard non-Windows devices through third-party integration**.   
       
     1. In the navigation pane, select **Interoperability** > **Partners**. Make sure the third-party solution is listed.

        2. In the **Partner Applications** tab, select the partner that supports your non-Windows devices.

        3. Select **Open partner page** to open the partner's page. Follow the instructions provided on the page.

        4. After creating an account or subscribing to the partner solution, you should get to a stage where a tenant Global Admin in your organization is asked to accept a permission request from the partner application. Read the permission request carefully to make sure that it is aligned with the service that you require. 

        
2. Run a detection test by following the instructions of the third-party solution.

## Offboard non-Windows devices

1. Follow the third-party's documentation to disconnect the third-party solution from Microsoft Defender for Endpoint.

2. Remove permissions for the third-party solution in your Azure AD tenant.
   1. Sign in to the [Azure portal](https://portal.azure.com).
   2. Select **Azure Active Directory > Enterprise Applications**.
   3. Select the application you'd like to offboard.
   4. Select the **Delete** button.


## Related topics
- [Onboard Windows 10 devices](configure-endpoints.md)
- [Onboard servers](configure-server-endpoints.md)
- [Configure proxy and Internet connectivity settings](configure-proxy-internet.md)
- [Troubleshooting Microsoft Defender for Endpoint onboarding issues](troubleshoot-onboarding.md)
