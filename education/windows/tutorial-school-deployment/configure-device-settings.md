---
title: Configure and secure devices with Microsoft Intune
description: Learn how to configure policies with Microsoft Intune in preparation for device deployment.
ms.date: 01/16/2024
ms.topic: tutorial
ms.collection: essentials-manage
---

# Configure and secure devices with Microsoft Intune

With Intune for Education, you can configure settings for devices in the school, to ensure that they comply with specific policies.
For example, you may need to secure your devices, ensuring that they are kept up to date. Or you may need to configure all the devices with the same look and feel.

Settings can be assigned to groups:

- If you target settings to a **group of users**, those settings will apply, regardless of what managed devices the targeted users sign in to
- If you target settings to a **group of devices**, those settings will apply regardless of who is using the devices

There are two ways to manage settings in Intune for Education:

- **Express Configuration.** This option is used to configure a selection of settings that are commonly used in school environments
- **Group settings.** This option is used to configure all settings that are offered by Intune for Education

> [!NOTE]
> Express Configuration is ideal when you are getting started. Settings are pre-configured to Microsoft-recommended values, but can be changed to fit your school's needs. It is recommended to use Express Configuration to initially set up your Windows devices.


> [!div class="checklist"]
>In this section you will:
>
> - Configure settings with Express Configuration
> - Configure group settings
> - Create Windows Update policies
> - Configure security policies

## Configure settings with Express Configuration

With Express Configuration, you can get Intune for Education up and running in just a few steps. You can select a group of devices or users, select applications to distribute, and choose settings from the most commonly used in schools.

> [!TIP]
> To learn more, and practice step-by-step Express Configuration in Intune for Education, try <a href="https://www.microsoft.com/en-us/education/interactive-demos/deploy-apps-and-policies" target="_blank"><u>this interactive demo</u></a>.

## Configure group settings

Groups are used to manage users and devices with similar management needs, allowing you to apply changes to many devices or users at once. To review the available group settings:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Groups** > Pick a group to manage
1. Select **Windows device settings**
1. Expand the different categories and review information about individual settings

Settings that are commonly configured for student devices include:

- Wallpaper and lock screen background. See: [Lock screen and desktop][INT-7]
- Wi-Fi connections. See: [Add Wi-Fi profiles][INT-8]
- Enablement of the integrated testing and assessment solution *Take a Test*. See: [Add Take a Test profile][INT-9]

For more information, see [Windows device settings in Intune for Education][INT-3].

## Create Windows Update policies

It is important to keep Windows devices up to date with the latest security updates. You can create Windows Update policies using Intune for Education.

To create a Windows Update policy:

1. Select **Groups** > Pick a group to manage
1. Select **Windows device settings**
1. Expand the category **Update and upgrade**
1. Configure the required settings as needed

For more information, see [Updates and upgrade][INT-6].

> [!NOTE]
> If you require a more complex Windows Update policy, you can create it in Microsoft Intune. For more information:
> - [<u>What is Windows Update for Business?</u>][WIN-1]
> - [<u>Manage Windows software updates in Intune</u>][MEM-1]

## Configure security policies

It is critical to ensure that the devices you manage are secured using the different security technologies available in Windows.
Intune for Education provides different settings to secure devices.

To create a security policy:

1. Select **Groups** > Pick a group to manage
1. Select **Windows device settings**
1. Expand the category **Security**
1. Configure the required settings as needed, including
    - Windows Defender
    - Windows Encryption
    - Windows SmartScreen

For more information, see [Security][INT-4].

> [!NOTE]
> If you require more sophisticated security policies, you can create them in Microsoft Intune. For more information:
> - [<u>Antivirus</u>][MEM-2]
> - [<u>Disk encryption</u>][MEM-3]
> - [<u>Firewall</u>][MEM-4]
> - [<u>Endpoint detection and response</u>][MEM-5]
> - [<u>Attack surface reduction</u>][MEM-6]
> - [<u>Account protection</u>][MEM-7]

---

## Next steps

With the Intune service configured, you can configure policies and applications to deploy to your students' and teachers' devices.

> [!div class="nextstepaction"]
> [Next: Configure applications >](configure-device-apps.md)

<!-- Reference links in article -->

[EDU-1]: /education/windows/windows-11-se-overview

[INT-2]: /intune-education/express-configuration-intune-edu
[INT-3]: /intune-education/all-edu-settings-windows
[INT-4]: /intune-education/all-edu-settings-windows#security
[INT-6]: /intune-education/all-edu-settings-windows#updates-and-upgrade
[INT-7]: /intune-education/all-edu-settings-windows#lock-screen-and-desktop
[INT-8]: /intune-education/add-wi-fi-profile
[INT-9]: /intune-education/take-a-test-profiles

[WIN-1]: /windows/deployment/update/waas-manage-updates-wufb

[MEM-1]: /mem/intune/protect/windows-update-for-business-configure
[MEM-2]: /mem/intune/protect/endpoint-security-antivirus-policy
[MEM-3]: /mem/intune/protect/encrypt-devices
[MEM-4]: /mem/intune/protect/endpoint-security-firewall-policy
[MEM-5]: /mem/intune/protect/endpoint-security-edr-policy
[MEM-6]: /mem/intune/protect/endpoint-security-asr-policy
[MEM-7]: /mem/intune/protect/endpoint-security-account-protection-policy