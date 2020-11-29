---
title: Configure Microsoft Defender ATP for iOS features
ms.reviewer:
description: Describes how to deploy Microsoft Defender ATP for iOS features
keywords: microsoft, defender, atp, ios, configure, features, ios
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
---

# Configure Microsoft Defender for Endpoint for iOS features

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

> [!NOTE]
> Defender for Endpoint for iOS would use a VPN in order to provide the Web Protection feature. This is not a regular VPN and is a local/self-looping VPN that does not take traffic outside the device.

## Configure compliance policy against jailbroken devices

To protect corporate data from being accessed on jailbroken iOS devices, we recommend that you setup the following compliance policy on Intune.

> [!NOTE]
> Currently Defender for Endpoint for iOS does not provide protection against jailbreak scenarios. Some data like your corporate email id and corporate profile picture (if available) will be exposed to the attacker on the jailbroken device.

Follow the steps below to create a compliance policy against jailbroken devices.

1. In [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), go to **Devices** -> **Compliance policies** -> click on **Create Policy**. Select "iOS/iPadOS" as platform and click **Create**.

    > [!div class="mx-imgBorder"]
    > ![Image of Microsoft Endpoint Manager Admin Center](images/ios-jb-policy.png)

1. Specify a name of the policy, example "Compliance Policy for Jailbreak".
1. In the compliance settings page, click to expand **Device Health** section and click **Block** for **Jailbroken devices** field.

    > [!div class="mx-imgBorder"]
    > ![Image of Microsoft Endpoint Manager Admin Center](images/ios-jb-settings.png)

1. In the *Action for noncompliance* section, select the actions as per your requirements and click **Next**.

    > [!div class="mx-imgBorder"]
    > ![Image of Microsoft Endpoint Manager Admin Center](images/ios-jb-actions.png)

1. In the *Assignments* section, select the user groups that you want to include for this policy and then click **Next**.
1. In the **Review+Create** section, verify that all the information entered is correct and then select **Create**.

## Configure custom indicators

Defender for Endpoint for iOS enables admins to configure custom indicators on iOS devices as well. Refer to [Manage indicators](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/manage-indicators) on how to configure custom indicators.

> [!NOTE]
> Defender for Endpoint for iOS supports creating custom indicators only for IP addresses and URLs/domains.

## Web Protection

By default, Defender for Endpoint for iOS includes and enables the web protection feature. [Web protection](web-protection-overview.md) helps to secure devices against web threats and protect users from phishing attacks.
