---
title: Microsoft Defender ATP for Android
ms.reviewer:
description: Describes how to install and use Microsoft Defender ATP for Android
keywords: microsoft, defender, atp, android, installation, deploy, uninstallation, intune
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
---

# Microsoft Defender Advanced Threat Protection for Android

This topic describes how to install, configure, update, and use Microsoft Defender ATP for Android.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender ATP for Android is likely to cause performance problems and unpredictable system errors.


## How to install Microsoft Defender ATP for Android

### Prerequisites

-   **For end users**

    -   Microsoft Defender ATP license assigned to the end user(s) of the app. See [Microsoft Defender ATP licensing requirements](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/minimum-requirements#licensing-requirements)

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
        > Microsoft Intune is the only supported Mobile Device Management (MDM) solution for deploying Microsoft Defender ATP for Android. Currently only enrolled devices are supported for enforcing Microsoft Defender ATP for Android related device compliance policies in Intune. 

    -   Access [Microsoft Endpoint Manager admin
        center](https://go.microsoft.com/fwlink/?linkid=2109431), to deploy the
        app to enrolled user groups in your organization.

### System Requirements

-   Android devices running Android 6.0 and above.
-   Intune Company Portal app is downloaded from [Google
    Play](https://play.google.com/store/apps/details?id=com.microsoft.windowsintune.companyportal)
    and installed. Device enrollment is required for Intune device compliance policies to be enforced.

### Installation instructions

Microsoft Defender ATP for Android supports installation on both modes of
enrolled devices - the legacy Device Administrator and Android Enterprise modes.
**Currently, only Work Profile enrolled devices are supported in Android Enterprise. Support for other Android Enterprise modes will be announced when ready.**

Deployment of Microsoft Defender ATP for Android is via Microsoft Intune (MDM).
For more information, see [Deploy Microsoft Defender ATP for Android with Microsoft Intune](android-intune.md).


> [!NOTE]
> **Microsoft Defender ATP for Android is available on [Google Play](https://play.google.com/store/apps/details?id=com.microsoft.scmx) now.** <br> You can connect to Google Play from Intune to deploy Microsoft Defender ATP app, across Device Administrator and Android Enterprise entrollment modes. 

## How to Configure Microsoft Defender ATP for Android

Guidance on how to configure Microsoft Defender ATP for Android features is available in [Configure Microsoft Defender ATP for Android features](android-configure.md).



## Related topics
- [Deploy Microsoft Defender ATP for with Microsoft Intune](android-intune.md)
- [Configure Microsoft Defender ATP for Android features](android-configure.md)

