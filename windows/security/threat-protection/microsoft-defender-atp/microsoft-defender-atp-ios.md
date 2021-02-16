---
title: Microsoft Defender ATP for iOS overview
ms.reviewer: 
description: Describes how to install and use Microsoft Defender ATP for iOS
keywords: microsoft, defender, atp, ios, overview, installation, deploy, uninstallation, intune
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
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint for iOS

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

**Microsoft Defender for Endpoint for iOS** will offer protection against phishing and unsafe network connections from websites, emails, and apps. All alerts will be available through a single pane of glass in the Microsoft Defender Security Center. The portal gives security teams a centralized view of threats on
iOS devices along with other platforms.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Defender for Endpoint for iOS is likely to cause performance problems and unpredictable system errors.

## Pre-requisites

**For End Users**

- Microsoft Defender for Endpoint license assigned to the end user(s) of the app. See [Microsoft Defender for Endpoint licensing requirements](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements#licensing-requirements).

- Device(s) are [enrolled](https://docs.microsoft.com/mem/intune/user-help/enroll-your-device-in-intune-ios) via the Intune Company Portal app to enforce Intune device compliance policies. This requires the end user to be assigned a Microsoft Intune license.
    - Intune Company Portal app can be downloaded from the [Apple App Store](https://apps.apple.com/us/app/intune-company-portal/id719171358).

- For more information on how to assign licenses, see [Assign licenses to users](https://docs.microsoft.com/azure/active-directory/users-groups-roles/licensing-groups-assign).

**For Administrators**

- Access to the Microsoft Defender Security Center portal.

    > [!NOTE]
    > Microsoft Intune is the only supported Mobile Device Management (MDM) solution for deploying Microsoft Defender for Endpoint for iOS. Currently only enrolled devices are supported for enforcing Defender for Endpoint for iOS related device compliance policies in Intune.

- Access to [Microsoft Endpoint Manager admin center](https://go.microsoft.com/fwlink/?linkid=2109431), to deploy the app to enrolled user groups in your organization.

**System Requirements**

- iOS devices running iOS 11.0 and above.

- Device is enrolled with the [Intune Company Portal app](https://apps.apple.com/us/app/intune-company-portal/id719171358).

> [!NOTE]
> **Microsoft Defender ATP (Microsoft Defender for Endpoint) for iOS is now available on [Apple App Store](https://aka.ms/mdatpiosappstore).**

## Installation instructions

Deployment of Microsoft Defender for Endpoint for iOS is via Microsoft Intune (MDM) and both supervised and unsupervised devices are supported.
For more information, see [Deploy Microsoft Defender for Endpoint for iOS](ios-install.md).

## Resources

- Stay informed about upcoming releases by visiting our [blog](https://techcommunity.microsoft.com/t5/microsoft-defender-atp/bg-p/MicrosoftDefenderATPBlog/label-name/iOS).

- Provide feedback through in-app feedback system or through [SecOps portal](https://securitycenter.microsoft.com)

## Next steps

- [Deploy Microsoft Defender for Endpoint for iOS](ios-install.md)
- [Configure Microsoft Defender for Endpoint for iOS features](ios-configure-features.md)
