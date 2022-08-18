---
title: Configure and secure devices with Microsoft Intune
description: Configure policies with Microsoft Intune in preparation to device deployment
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
- ✅ <b>Windows 11 SE</b>
---

# Configure and secure devices with Microsoft Intune



## Configure device settings

With Intune for Education, you can configure settings for users and devices in the school. Settings can be assigned to groups:

- If you target settings to a **group of users**, those settings will apply, regardless of what managed devices the targeted users sign in to
- If you target settings to a **group of devices**, those settings will apply regardless of who is using the devices

There are two ways to manage settings in Intune for Education:

- **Express Configuration.** Configure a selection of settings that are most used in school environments
- **Group settings.** Configure all settings for any group of devices or users

> [!NOTE]
> Express Configuration is ideal when you are getting started. Settings are pre-configured to Microsoft-recommended values, but can be changed to fit your school's needs. It is recommended to use Express Configuration to initially set up your Windows devices.

### Configure settings with Express Configuration

With Express Configuration, you can get Intune for Education up and running in just a few steps. You can select a group of devices or users, select applications to distribute, and choose settings from the most commonly used in schools.


> [!TIP]
> To learn more, and practice step-by-step Express Configuration in Intune for Education, try <a href="https://www.microsoft.com/en-us/education/interactive-demos/deploy-apps-and-policies" target="_blank"><b>this interactive demo</b></a>.

### Configure group settings

Groups are used to manage users and devices with similar management needs, allowing you to apply changes to many devices or users at once. To review the available group settings:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Groups** > Pick a group to manage
1. Select **Windows device settings**
1. Expand the different categories and review information about individual settings

For more information, see [Set up Intune for Education][INT-3].

## Create Windows Update policies

Create update rings that specify how and when [feature and quality updates](/windows/deployment/update/get-started-updates-channels-tools) are applied to your Windows 10 and later devices. With Windows 11 SE, new features and quality updates include the content of all previous updates. If you have installed the latest update, you know your Windows devices are up to date.

1. In the Microsoft Endpoint Manager admin center, select **Devices** → **Windows** → **Update rings for Windows 10 and later** → **Create Profile**. 

#### [PICTURE HERE] Create Update rings page in Microsoft Endpoint Manager admin center

1. Under **Basics**, specify a name and description (optional).
1. Under **Update ring settings**, configure settings for your school needs. For more information, see [Windows Update settings](/mem/intune/protect/windows-update-settings) and [Creating and assigning update rings](/mem/intune/protect/windows-10-update-rings).

**NOTE:** You can also create expedited quality updates for Windows 10 and later. This policy lets you expedite the installation of the most recent Windows security updates on Intune-managed devices. For more information, see [Create and assign an expedited quality update](/mem/intune/protect/windows-10-expedite-updates).

### Manage device policies

You can manage the settings of several devices from a single touch point. For more information, see:

- [Add Wi-Fi profiles](/intune-education/add-wi-fi-profile) 
- [Add Take a Test profile](/intune-education/take-a-test-profiles) 
- [View all Windows device settings ](/intune-education/all-edu-settings-windows)

## Endpoint security

Intune for Education helps protect devices and school data with tools like security baselines and Windows Update policies. Through the Endpoint security node, you can configure device security and manage security tasks for devices at risk. The node configures and deploys Microsoft Defender for Endpoint to help prevent security breaches and gain visibility into your school's security posture. 

### Create security policies

To create security policies in Intune for Education:

1. In the [Microsoft Endpoint Manager admin center](https://intuneeducation.portal.azure.com/), select the **Endpoint security** node. 
1. Under **Manage**, choose the policies you want to set from the included list. For more information, see [Antivirus](/mem/intune/protect/endpoint-security-antivirus-policy), [Disk encryption](/mem/intune/protect/endpoint-security-disk-encryption-policy), [Firewall](/mem/intune/protect/endpoint-security-firewall-policy), [Endpoint detection and response](/mem/intune/protect/endpoint-security-edr-policy), [Attack surface reduction](/mem/intune/protect/endpoint-security-asr-policy), and [Account protection](/mem/intune/protect/endpoint-security-account-protection-policy).
1. Select **Create policy**. For more information, see [Creating an endpoint security policy](/mem/intune/protect/endpoint-security-policy).

### [PICTURE HERE] Endpoint security overview page in Microsoft Endpoint Manager

## Next steps

With the Intune service configured, you can configure policies and applications to deploy to your students' and teachers' devices.

> [!div class="nextstepaction"]
> [Next: Configure devices >](configure-devices.md)

<!-- Reference links in article -->

[EDU-1]: /education/windows/windows-11-se-overview

[INT-2]: /intune-education/express-configuration-intune-edu
[INT-3]: /microsoft-365/education/deploy/use-intune-for-education
[INT-4]: /intune-education/add-desktop-apps-edu
[INT-5]: /intune-education/add-web-apps-edu