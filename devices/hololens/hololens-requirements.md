---
title: HoloLens in the enterprise requirements and FAQ (HoloLens)
description: Requirements and FAQ for general use, Wi-Fi, and device management for HoloLens in the enterprise.
ms.prod: hololens
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 06/04/2018
ms.reviewer: 
manager: dansimp
---

# Microsoft HoloLens in the enterprise: requirements and FAQ

When you develop for HoloLens, there are [system requirements and tools](https://developer.microsoft.com/windows/mixed-reality/install_the_tools) that you need. In an enterprise environment, there are also a few requirements to use and manage HoloLens which are listed below.

## Requirements

### General use
- Microsoft account or Azure Active Directory (Azure AD) account
- Wi-Fi network to set up HoloLens

>[!NOTE]
>After you set up HoloLens, you can use it offline [with some limitations](https://support.microsoft.com/help/12645/hololens-use-hololens-offline).


### Supported wireless network EAP methods 
- PEAP-MS-CHAPv2
- PEAP-TLS
- TLS 
- TTLS-CHAP
- TTLS-CHAPv2
- TTLS-MS-CHAPv2
- TTLS-PAP
- TTLS-TLS

### Device management 
- Users have Azure AD accounts with [Intune license assigned](https://docs.microsoft.com/intune/get-started/start-with-a-paid-subscription-to-microsoft-intune-step-4)
- Wi-Fi network
- Intune or a 3rd party mobile device management (MDM) provider that uses Microsoft MDM APIs

### Upgrade to Windows Holographic for Business 
- HoloLens Enterprise license XML file


## FAQ for HoloLens

<span id="pin"/>
#### Is Windows Hello for Business supported on HoloLens?

Windows Hello for Business (using a PIN to sign in) is supported for HoloLens. To allow Windows Hello for Business PIN sign-in on HoloLens:

1. The HoloLens device must be [managed by MDM](hololens-enroll-mdm.md).
2. You must enable Windows Hello for Business for the device. ([See instructions for Microsoft Intune.](https://docs.microsoft.com/intune/windows-hello))
3. On HoloLens, the user can then set up a PIN from **Settings** > **Sign-in Options** > **Add PIN**.

>[!NOTE]
>Users who sign in with a Microsoft account can also set up a PIN in **Settings** > **Sign-in Options** > **Add PIN**. This PIN is associated with [Windows Hello](https://support.microsoft.com/help/17215/windows-10-what-is-hello), rather than [Windows Hello for Business](https://docs.microsoft.com/windows/security/identity-protection/hello-for-business/hello-overview).

#### Does the type of account change the sign-in behavior?

Yes, the behavior for the type of account impacts the sign-in behavior. If you apply policies for sign-in, the policy is always respected. If no policy for sign-in is applied, these are the default behaviors for each account type.

- Microsoft account: signs in automatically
- Local account: always asks for password, not configurable in **Settings**
- Azure AD: asks for password by default; configurable by **Settings** to no longer ask for password. 

>[!NOTE]
>Inactivity timers are currently not supported, which means that the **AllowIdleReturnWithoutPassword** policy is respected only when the device goes into StandBy. 


#### How do I remove a HoloLens device from the Intune dashboard?

You cannot [unenroll](https://docs.microsoft.com/intune-user-help/unenroll-your-device-from-intune-windows) HoloLens from Intune remotely. If the administrator unenrolls the device using MDM, the device will age out of the Intune dashboard.


## Related resources

[Getting started with Azure Active Directory Premium](https://azure.microsoft.com/documentation/articles/active-directory-get-started-premium/)

[Get started with Intune](https://docs.microsoft.com/intune/understand-explore/get-started-with-a-30-day-trial-of-microsoft-intune)

[Enroll devices for management in Intune](https://docs.microsoft.com/intune/deploy-use/enroll-devices-in-microsoft-intune#supported-device-platforms)

[Azure AD editions](https://azure.microsoft.com/documentation/articles/active-directory-editions/)

