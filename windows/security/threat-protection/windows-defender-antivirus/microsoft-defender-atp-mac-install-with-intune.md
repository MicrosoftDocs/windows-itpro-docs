---
title: Installing Microsoft Defender ATP for Mac with Microsoft Intune
ms.reviewer: 
description: Describes how to install Microsoft Defender ATP for Mac, using Microsoft Intune.
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamf, macos, mojave, high sierra, sierra
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

# Microsoft Intune-based deployment

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac](microsoft-defender-atp-mac.md)

This topic describes how to deploy Microsoft Defender ATP for Mac through Intune. A successful deployment requires the completion of all of the following steps:
- [Download installation and onboarding packages](#download-installation-and-onboarding-packages)
- [Client device setup](#client-device-setup)
- [Create System Configuration profiles](#create-system-configuration-profiles)
- [Publish application](#publish-application)

## Prerequisites and system requirements

Before you get started, see [the main Microsoft Defender ATP for Mac page](microsoft-defender-atp-mac.md) for a description of prerequisites and system requirements for the current software version.

## Download installation and onboarding packages

Download the installation and onboarding packages from Microsoft Defender Security Center:

1. In Microsoft Defender Security Center, go to **Settings** > **Device Management** > **Onboarding**.
2. In Section 1 of the page, set the operating system to **Linux, macOS, iOS, or Android** and the deployment method to **Mobile Device Management / Microsoft Intune**.
3. In Section 2 of the page, select **Download installation package**. Save it as _wdav.pkg_ to a local directory.
4. In Section 2 of the page, select **Download onboarding package**. Save it as _WindowsDefenderATPOnboardingPackage.zip_ to the same directory.
5. Download **IntuneAppUtil** from [https://docs.microsoft.com/intune/lob-apps-macos](https://docs.microsoft.com/intune/lob-apps-macos).

    ![Windows Defender Security Center screenshot](images/MDATP_2_DownloadPackages.png)

6. From a command prompt, verify that you have the three files.
    Extract the contents of the .zip files:

    ```bash
    mavel-macmini:Downloads test$ ls -l
    total 721688
    -rw-r--r--  1 test  staff     269280 Mar 15 11:25 IntuneAppUtil
    -rw-r--r--  1 test  staff      11821 Mar 15 09:23 WindowsDefenderATPOnboardingPackage.zip
    -rw-r--r--  1 test  staff  354531845 Mar 13 08:57 wdav.pkg
    mavel-macmini:Downloads test$ unzip WindowsDefenderATPOnboardingPackage.zip
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    warning:  WindowsDefenderATPOnboardingPackage.zip appears to use backslashes as path separators
      inflating: intune/kext.xml
      inflating: intune/WindowsDefenderATPOnboarding.xml
      inflating: jamf/WindowsDefenderATPOnboarding.plist
    mavel-macmini:Downloads test$
    ```

7. Make IntuneAppUtil an executable:

    ```mavel-macmini:Downloads test$ chmod +x IntuneAppUtil```

8. Create the wdav.pkg.intunemac package from wdav.pkg:

    ```bash
    mavel-macmini:Downloads test$ ./IntuneAppUtil -c wdav.pkg -o . -i "com.microsoft.wdav" -n "1.0.0"
    Microsoft Intune Application Utility for Mac OS X
    Version: 1.0.0.0
    Copyright 2018 Microsoft Corporation

    Creating intunemac file for /Users/test/Downloads/wdav.pkg
    Composing the intunemac file output
    Output written to ./wdav.pkg.intunemac.

    IntuneAppUtil successfully processed "wdav.pkg",
    to deploy refer to the product documentation.
    ```

## Client device setup

You need no special provisioning for a Mac device beyond a standard [Company Portal installation](https://docs.microsoft.com/intune-user-help/enroll-your-device-in-intune-macos-cp).

1. You are asked to confirm device management.

![Confirm device management screenshot](images/MDATP_3_ConfirmDeviceMgmt.png)

Select **Open System Preferences**, locate **Management Profile** on the list, and select **Approve...**. Your Management Profile would be displayed as **Verified**:

![Management profile screenshot](images/MDATP_4_ManagementProfile.png)

2. Select **Continue** and complete the enrollment.

You may now enroll more devices. You can also enroll them later, after you have finished provisioning system configuration and application packages.

3. In Intune, open **Manage** > **Devices** > **All devices**. Here you can see your device among those listed:

![Add Devices screenshot](images/MDATP_5_allDevices.png)

## Create System Configuration profiles

1. In Intune, open **Manage** > **Device configuration**. Select **Manage** > **Profiles** > **Create Profile**.
2. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Custom**. Select **Configure**.
3. Open the configuration profile and upload intune/kext.xml. This file was created in one of the preceding sections.
4. Select **OK**.

    ![System configuration profiles screenshot](images/MDATP_6_SystemConfigurationProfiles.png)

5. Select **Manage** > **Assignments**. In the **Include** tab, select **Assign to All Users & All devices**.
6. Repeat steps 1 through 5 for more profiles.
7. Create a new profile one more time, give it a name, and upload the intune/WindowsDefenderATPOnboarding.xml file.
8. Select **Manage > Assignments**.  In the **Include** tab, select **Assign to All Users & All devices**.

Once the Intune changes are propagated to the enrolled devices, you can see them listed under **Monitor** > **Device status**:

![System configuration profiles screenshot](images/MDATP_7_DeviceStatusBlade.png)

## Publish application

1. In Intune, open the **Manage > Client apps** blade. Select **Apps > Add**.
2. Select **App type=Other/Line-of-business app**.
3. Select **file=wdav.pkg.intunemac**. Select **OK** to upload.
4. Select **Configure** and add the required information.
5. Use **macOS Sierra 10.12** as the minimum OS and set *Ignore app version* to **Yes**. Other settings can be any arbitrary value.

    > [!CAUTION]
    > Failure to set *Ignore app version* to **Yes** impacts the ability of the application to receive updates through Microsoft AutoUpdate. See [Deploy updates for Microsoft Defender ATP for Mac](microsoft-defender-atp-mac-updates.md) for additional information about how the product is updated.

    ![Device status blade screenshot](images/MDATP_8_IntuneAppInfo.png)

6. Select **OK** and **Add**.

    ![Device status blade screenshot](images/MDATP_9_IntunePkgInfo.png)

7. It may take a few moments to upload the package. After it's done, select the package from the list and go to **Assignments** and **Add group**.

    ![Client apps screenshot](images/MDATP_10_ClientApps.png)

8. Change **Assignment type** to **Required**.
9. Select **Included Groups**. Select **Make this app required for all devices=Yes**. Click **Select group to include** and add a group that contains the users you want to target. Select **OK** and **Save**.

    ![Intune assignments info screenshot](images/MDATP_11_Assignments.png)

10. After some time the application will be published to all enrolled devices. You can see it listed in **Monitor** > **Device**, under **Device install status**:

    ![Intune device status screenshot](images/MDATP_12_DeviceInstall.png)

## Verify client device state

1. After the configuration profiles are deployed to your devices, open **System Preferences** > **Profiles** on your Mac device.

    ![System Preferences screenshot](images/MDATP_13_SystemPreferences.png)
    ![System Preferences Profiles screenshot](images/MDATP_14_SystemPreferencesProfiles.png)

2. Verify that the following configuration profiles are present and installed. The **Management Profile** should be the Intune system profile. _Wdav-config_ and _wdav-kext_ are system configuration profiles that were added in Intune:
    ![Profiles screenshot](images/MDATP_15_ManagementProfileConfig.png)

3. You should also see the Microsoft Defender icon in the top-right corner:

    ![Microsoft Defender icon in status bar screenshot](images/MDATP_Icon_Bar.png)

## Troubleshooting

Issue: No license found

Solution: Follow steps above to create a device profile using WindowsDefenderATPOnboarding.xml

## Logging installation issues

For more information on how to find the automatically generated log that is created by the installer when an error occurs, see [Logging installation issues](microsoft-defender-atp-mac-resources.md#logging-installation-issues) .

## Uninstallation

See [Uninstalling](microsoft-defender-atp-mac-resources.md#uninstalling) for details on how to remove Microsoft Defender ATP for Mac from client devices.
