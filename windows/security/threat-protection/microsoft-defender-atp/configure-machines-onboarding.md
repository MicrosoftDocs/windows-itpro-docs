---
title: Get devices onboarded to Microsoft Defender ATP
description: Track onboarding of Intune-managed devices to Microsoft Defender ATP and increase onboarding rate.
keywords: onboard, Intune management, MDATP, WDATP, Microsoft Defender, Windows Defender, advanced threat protection, configuration management
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: lomayor
author: lomayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Get devices onboarded to Microsoft Defender for Endpoint

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-onboardconfigure-abovefoldlink)

Each onboarded device adds an additional endpoint detection and response (EDR) sensor and increases visibility over breach activity in your network. Onboarding also ensures that a device can be checked for vulnerable components as well security configuration issues and can receive critical remediation actions during attacks.

Before you can track and manage onboarding of devices:
- [Enroll your devices to Intune management](configure-machines.md#enroll-devices-to-intune-management)
- [Ensure you have the necessary permissions](configure-machines.md#obtain-required-permissions)

## Discover and track unprotected devices

The **Onboarding** card provides a high-level overview of your onboarding rate by comparing the number of Windows 10 devices that have actually onboarded to Defender for Endpoint against the total number of Intune-managed Windows 10 devices.

![Device configuration management Onboarding card](images/secconmgmt_onboarding_card.png)<br>
*Card showing onboarded devices compared to the total number of Intune-managed Windows 10 device*

>[!NOTE]
>If you used Security Center Configuration Manager, the onboarding script, or other onboarding methods that don’t use Intune profiles, you might encounter data discrepancies. To resolve these discrepancies, create a corresponding Intune configuration profile for Defender for Endpoint onboarding and assign that profile to your devices.

## Onboard more devices with Intune profiles

Defender for Endpoint provides several convenient options for [onboarding Windows 10 devices](onboard-configure.md). For Intune-managed devices, however, you can leverage Intune profiles to conveniently deploy the Defender for Endpoint sensor to select devices, effectively onboarding these devices to the service.

From the **Onboarding** card, select **Onboard more devices** to create and assign a profile on Intune. The link takes you to the device compliance page on Intune, which provides a similar overview of your onboarding state.

![Microsoft Defender ATP device compliance page on Intune device management](images/secconmgmt_onboarding_1deviceconfprofile.png)<br>
   *Microsoft Defender ATP device compliance page on Intune device management*

>[!TIP]
>Alternatively, you can navigate to the Defender for Endpoint onboarding compliance page in the [Microsoft Azure portal](https://portal.azure.com/) from **All services > Intune > Device compliance > Microsoft Defender ATP**.

>[!NOTE]
> If you want to view the most up-to-date device data, click on **List of devices without ATP sensor**.

From the device compliance page, create a configuration profile specifically for the deployment of the Defender for Endpoint sensor and assign that profile to the devices you want to onboard. To do this, you can either:

- Select **Create a device configuration profile to configure ATP sensor** to start with a predefined device configuration profile.
- Create the device configuration profile from scratch.

For more information, [read about using Intune device configuration profiles to onboard devices to Defender for Endpoint](https://docs.microsoft.com/intune/advanced-threat-protection#onboard-devices-by-using-a-configuration-profile).

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-onboardconfigure-belowfoldlink)

## Related topics
- [Ensure your devices are configured properly](configure-machines.md)
- [Increase compliance to the Defender for Endpoint security baseline](configure-machines-security-baseline.md)
- [Optimize ASR rule deployment and detections](configure-machines-asr.md)
