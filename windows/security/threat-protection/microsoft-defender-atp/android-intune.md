---
title: Deploy Microsoft Defender ATP for Android with Microsoft Intune
ms.reviewer:
description: Describes how to deploy Microsoft Defender ATP for Android with Microsoft Intune
keywords: microsoft, defender, atp, android, installation, deploy, uninstallation,
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

# Deploy Microsoft Defender ATP for with Microsoft Intune 

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Android](microsoft-defender-atp-android.md)

This topic describes deploying Microsoft Defender ATP for Android on Intune
Company Portal enrolled devices. For more information about Intune device enrollment, see  [Enroll your
device](https://microsoft.sharepoint.com/teams/WDATPIndia/Shared%20Documents/General/PM%20Docs/External%20Documentation/aka.ms/enrollAndroid).

## Deploy on Device Administrator enrolled devices

**Deploy Microsoft Defender ATP for Android on Intune Company Portal - Device
Administrator enrolled devices**

This topic describes how to deploy Microsoft Defender ATP for Android on Intune Company Portal - Device Administrator enrolled devices. Upgrade from the Preview APK to the GA version on Google Play would be supported.

### Download the onboarding package

Download the onboarding package from Microsoft Defender Security Center.

1. In [Microsoft Defender Security
Center](https://microsoft.sharepoint.com/teams/WDATPIndia/Shared%20Documents/General/PM%20Docs/External%20Documentation/securitycenter.microsoft.com), go to **Settings** \> **Machine Management** \> **Onboarding**.

2. In the first drop down, select **Android** as the Operating system.

3. Select **Download Onboarding package** and save the downloaded .APK file.

### Add as Line of Business (LOB) App

The downloaded Microsoft Defender ATP for Android onboarding package which is a
.APK file can be deployed to user groups as a Line of Business app during the
preview from Microsoft Endpoint Manager Admin Center.

1. In [Microsoft Endpoint Manager admin
center](https://go.microsoft.com/fwlink/?linkid=2109431) , go to **Apps** \>
**Android Apps** \> **Add \> Line-of-business app** and click **Select**.

    ![Image of Microsoft Endpoint Manager Admin Center](images/eba67e1a3adfec2c77c35a34cb030fba.png)


2. On the **Add app** page and in the *App Information* section, click **Select
add package file** and then click the ![Icon](images/1a62eac0222a9ba3c2fd62744bece76e.png) icon and select the MDATP Universal APK file that was downloaded from the *Download Onboarding package* step.

    ![Image of Microsoft Endpoint Manager Admin Center](images/e78d36e06495c2f70eb14230de6f7429.png)


3. Select **OK**.

4. In the *App Information* section that comes up, enter the **Publisher** as
Microsoft. Other fields are optional and then select **Next**.

    ![Image of Microsoft Endpoint Manager Admin Center](images/190a979ec5b6a8f57c9067fe1304cda8.png)

5. In the *Assignments* section, go to the **Required** section and select **Add
group.** You can then choose the user group(s) that you would like to target
Microsoft Defender ATP for Android app. Click **Select** and then **Next**.

   >[!NOTE] The selected user group should consist of Intune enrolled users.

    ![Image of Microsoft Endpoint Manager Admin Center](images/363bf30f7d69a94db578e8af0ddd044b.png)


6. In the **Review+Create** section, verify that all the information entered is
correct and then select **Create**.

    In a few moments, the Microsoft Defender ATP app would be created successfully,
and a notification would show up at the top right corner of the page.

    ![Image of Microsoft Endpoint Manager Admin Center](images/86cbe56f88bb6e93e9c63303397fc24f.png)


7. In the app information page that is displayed, in the **Monitor** section,
click on **Device install status** to verify that the device installation has
completed successfully.

    ![Image of Microsoft Endpoint Manager Admin Center](images/513cf5d59eaaef5d2b5bc122715b5844.png)


During Public Preview, to **update** Microsoft Defender ATP for Android deployed
as a Line of Business app, download the latest APK by following the steps in
*Download the onboarding package* page and follow instructions on how to [update
a Line of Business
App](https://docs.microsoft.com/mem/intune/apps/lob-apps-android#step-5-update-a-line-of-business-app).

### Complete onboarding and check status

1. Once Microsoft Defender ATP for Android has been installed on the device, you
should be able to see the app icon.

    ![Icon on mobile device](images/7cf9311ad676ec5142002a4d0c2323ca.jpg)

2. Tap the Microsoft Defender ATP app icon and follow the on-screen instructions
to complete onboarding the app that includes end user acceptance of Android
permissions required by Microsoft Defender ATP for Android.

3. Upon successful onboarding, the device will start showing up on the Devices
list in Microsoft Defender Security Center.

    ![Image of device in Microsoft Defender ATP portal](images/9fe378a1dce0f143005c3aa53d8c4f51.png)

## Deploy on Android Enterprise enrolled devices

Microsoft Defender ATP for Android supports Android Enterprise enrolled devices.
For more information on the enrollment options supported by Intune, refer to
[Enrollment
Options](https://docs.microsoft.com/mem/intune/enrollment/android-enroll) .

As Microsoft Defender ATP for Android is deployed via managed Google Play,
updates to the app are automatic via Google Play.

Currently only Work Profile, Fully Managed devices are supported for deployment.

## Related topics
- [Overview of Microsoft Defender ATP for Android](microsoft-defender-atp-android.md)
- [Configure Microsoft Defender ATP for Android features](android-configure.md)