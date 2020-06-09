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

> [!IMPORTANT]
> **PUBLIC PREVIEW EDITION**
> 
> This documentation is for a pre-release solution. The guidelines and the solution are subject to change between now and its general availability.
> 
> As with any pre-release solution, remember to exercise caution when determining the target population for your deployments.
> 
> If you have preview features turned on in the Microsoft Defender Security Center, you should be able to access the Linux onboarding page immediately. If you have not yet opted into previews, we encourage you to [turn on preview features](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/preview) in the Microsoft Defender Security Center today.

This topic describes how to install, configure, update, and use Microsoft Defender ATP for Android.

> [!CAUTION]
> Running other third-party endpoint protection products alongside Microsoft Defender ATP for Android is likely to cause performance problems and unpredictable system errors.



## How to install Microsoft Defender ATP for Android

### Prerequisites

-   **For end users**

    -   Microsoft Defender ATP license assigned to the end user(s) of the app.

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
    and installed . Device enrollment is required for Intune device compliance policies to be enforced.

### Installation instructions

Microsoft Defender ATP for Android supports installation on both modes of
enrolled devices - the legacy Device Administrator and Android Enterprise modes

Deployment of Microsoft Defender ATP for Android is via Microsoft Intune (MDM).
Refer *Deploy Microsoft Defender ATP for Android with Microsoft Intune*

## How to Configure Microsoft Defender ATP for Android

Guidance on how to configure Microsoft Defender ATP for Android features is available in [Configure Microsoft Defender ATP for Android features].

> [!NOTE]
> During public preview, instructions to deploy Microsoft Defender ATP for Android on Intune enrolled Android devices are different across Device Administrator and Android Enterprise entrollment modes. <br>
> When Microsoft Defender ATP for Android reacher General Availability (GA), the app will be available on Google Play. 

## Related topics
- [Deploy Microsoft Defender ATP for with Microsoft Intune](android-intune.md)
- [Configure Microsoft Defender ATP for Android features](android-configure.md)

