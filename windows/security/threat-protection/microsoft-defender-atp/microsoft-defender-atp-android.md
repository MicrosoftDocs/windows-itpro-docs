---
title: Microsoft Defender ATP for Android
ms.reviewer: 
description: Describes how to install and use Microsoft Defender ATP for Android
keywords: microsoft, defender, atp, android, installation, deploy, uninstallation, intune
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: 
  - m365-security-compliance
  - m365initiative-defender-endpoint
ms.topic: conceptual
ms.technology: mde
---

# Microsoft Defender for Endpoint for Android

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/p/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink)

This topic describes how to install, configure, update, and use Defender for Endpoint for Android.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Defender for Endpoint for Android is likely to cause performance problems and unpredictable system errors.


## How to install Microsoft Defender for Endpoint for Android

### Prerequisites

-   **For end users**

    -   Microsoft Defender for Endpoint license assigned to the end user(s) of the app. See [Microsoft Defender for Endpoint licensing requirements](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements#licensing-requirements)

    -   Intune Company Portal app can be downloaded from [Google
        Play](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal)
        and is available on the Android device.

        -   Additionally, device(s) can be
            [enrolled](https://docs.microsoft.com/mem/intune/user-help/enroll-device-android-company-portal)
            via the Intune Company Portal app to enforce Intune device compliance
            policies. This requires the end user to be assigned a Microsoft Intune license.

    -   For more information on how to assign licenses, see [Assign licenses to
        users](https://docs.microsoft.com/azure/active-directory/users-groups-roles/licensing-groups-assign).
        

-   **For Administrators**

    -   Access to the Microsoft Defender Security Center portal.

        > [!NOTE]
        > Microsoft Intune is the only supported Mobile Device Management (MDM) solution for deploying Microsoft Defender for Endpoint for Android. Currently only enrolled devices are supported for enforcing Defender for Endpoint for Android related device compliance policies in Intune. 

    -   Access [Microsoft Endpoint Manager admin
        center](https://go.microsoft.com/fwlink/?linkid=2109431), to deploy the
        app to enrolled user groups in your organization.

### System Requirements

-   Android devices running Android 6.0 and above.
-   Intune Company Portal app is downloaded from [Google
    Play](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal)
    and installed. Device enrollment is required for Intune device compliance policies to be enforced.

### Installation instructions

Microsoft Defender for Endpoint for Android supports installation on both modes of
enrolled devices - the legacy Device Administrator and Android Enterprise modes.
**Currently, Personally-owned devices with work profile and Corporate-owned fully managed user device enrolments are supported in Android Enterprise. Support for other Android Enterprise modes will be announced when ready.**

Deployment of Microsoft Defender for Endpoint for Android is via Microsoft Intune (MDM).
For more information, see [Deploy Microsoft Defender for Endpoint for Android with Microsoft Intune](android-intune.md).


> [!NOTE]
> **Microsoft Defender for Endpoint for Android is available on [Google Play](https://play.google.com/store/apps/details?id=com.microsoft.scmx) now.** <br> You can connect to Google Play from Intune to deploy Microsoft Defender for Endpoint app, across Device Administrator and Android Enterprise entrollment modes. 

## How to Configure Microsoft Defender for Endpoint for Android

Guidance on how to configure Microsoft Defender for Endpoint for Android features is available in [Configure Microsoft Defender for Endpoint for Android features](android-configure.md).



## Related topics
- [Deploy Microsoft Defender for Endpoint for with Microsoft Intune](android-intune.md)
- [Configure Microsoft Defender for Endpoint for Android features](android-configure.md)

