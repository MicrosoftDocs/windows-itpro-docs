---
title: Configure devices with Microsoft Intune
description: Configure devices with Microsoft Intune
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

# Configure devices with Microsoft Intune

Before distributing devices to a school, you must ensure that the devices are configured with the correct policies, settings and applications.
Microsoft Intune uses Azure AD groups to assign policies and applications to devices.
With Microsoft Intune for Education, you can conveniently create groups and assign policies and applications to them.

In this section you will:
> [!div class="checklist"]
> * Create groups
> * Create and assign policies to groups
> * Create and assign applications to groups

## Create groups

By organizing students, classrooms, or learning curricula into groups, you can provide students with the resources they need, as well as manage several student devices all at once.

**NOTE:** Before you begin creating groups, it is a good idea to plan them out to determine what students may need from their devices. For example:

- For all devices, block apps from using location services.
- For AP Computer Science, assign students apps to edit code.
- For 12th grade History, enable web browsing to access academic articles.
- For all Photography students, enable the device's camera.

*Out of the box, Intune for Education comes with default groups that enable you to manage All devices and All users. There are also two additional groups if you use Microsoft SDS: All teachers and All students.  SDS also creates individual groups for students and teachers of specific schools, which fold under the All teachers and All students groups. Beyond the defaults, groups can be customized to suit various needs. For example, if you have both Windows and iOS devices in your school, you can create groups, such as All iPads and All Windows 10 PCs.* 

Finally, two group types can be created: assigned groups and dynamic groups. Assigned groups are used when you want to manually add users or devices to a group. Dynamic groups reference rules that you create to assign students or devices to groups and then automate the assignment of devices to those groups.

For more information, see:

- [Create groups in Intune for Education](/intune-education/create-groups) 
- [Edit a group name](/intune-education/edit-groups-intune-for-edu)
- [Move a group up or down within your existing group list](/intune-education/edit-groups-intune-for-edu)
- Delete a group to remove apps and settings from devices 
- [Assign and delegate group admins](/intune-education/group-admin-delegate)
- [Manually add or remove users and devices to an existing assigned group](/intune-education/edit-groups-intune-for-edu)
- [Edit dynamic group rules to accommodate for new devices, locations, or school years](/intune-education/edit-groups-intune-for-edu)

### Create Windows Update policies

Create update rings that specify how and when [feature and quality updates](/windows/deployment/update/get-started-updates-channels-tools) are applied to your Windows 10 and later devices. With Windows 11 SE, new features and quality updates include the content of all previous updates. If you have installed the latest update, you know your Windows devices are up to date.

1. In the Microsoft Endpoint Manager admin center, select **Devices** → **Windows** → **Update rings for Windows 10 and later** → **Create Profile**. 

## [PICTURE HERE] Create Update rings page in Microsoft Endpoint Manager admin center

1. Under **Basics**, specify a name and description (optional).
1. Under **Update ring settings**, configure settings for your school needs. For more information, see [Windows Update settings](/mem/intune/protect/windows-update-settings) and [Creating and assigning update rings](/mem/intune/protect/windows-10-update-rings).

**NOTE:** You can also create expedited quality updates for Windows 10 and later. This policy lets you expedite the installation of the most recent Windows security updates on Intune-managed devices. For more information, see [Create and assign an expedited quality update](/mem/intune/protect/windows-10-expedite-updates).

## Managing apps and settings

With Intune for Education, school IT administrators have access to diverse apps to help students unlock their learning potential. This section discusses tools and resources for adding apps to Intune for Education, assigning apps to groups, and managing device policies. 

### Add apps to Intune for Education

Multiple apps can be added to Intune for Education. Devices running Windows 11 SE are preinstalled with Office apps. During [Express Configuration](/intune-education/express-configuration-intune-edu), all Office desktop apps are available in a single app called Microsoft 365.

#### Popular school apps

With Intune for Education, you can add popular school apps from the web. Keep in mind that only approved apps can be installed from the list found [here](/education/windows/windows-11-se-overview). For more information, see [Add popular apps to Intune for Education](/intune-education/add-popular-apps-edu).

#### Desktop apps

Intune for Education makes it easy to add desktop apps to your deployment. You can upload and add desktop apps to your Intune for Education inventory and then assign them to groups and install them on Windows. Note that only approved apps can be installed from the list found [here](/education/windows/windows-11-se-overview). For more information, see [Add desktop apps in Intune for Education](/intune-education/add-desktop-apps-edu).

#### Web apps

**Using Intune for Education, you can also add websites to your app inventory. Again, keep in mind that only approved apps can be installed from the list found** [**here**](/education/windows/windows-11-se-overview)**. For more information, see Add web apps to Intune for Education.**

### Assign apps to groups

**With Intune for Education, you can make certain apps only available to select groups. For more information, see Assign apps to install them on school devices.**

**NOTE:** If you assign an app to a device running Windows 11 SE and receive the **0x87D300D9** error code with a **Failed** state:

- Be sure the app is on the [available apps list](/education/windows/windows-11-se-overview), or add your own app.
- If you submitted a request to add your own app and it was approved, check that the app meets package requirements.
- If the app is not approved, it will not run on Windows 11 SE. Add your own app or use an app that runs in a web browser, such as a web app or PWA.

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

## [PICTURE HERE] Endpoint security overview page in Microsoft Endpoint Manager


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

## Configure applications

Intune for Education supports the deployment of two types of Windows applications: web apps and desktop apps.

:::image type="content" source="./images/intune-education-apps.png" alt-text="Intune for Education - Apps" border="true":::

Applications can be deployed to groups:

- If you target apps to a **group of users**, the apps will be installed on any managed devices that the users sign into
- If you target apps to a **group of devices**, the apps will be installed on those devices and available to any user who signs in

For more information:

- [Add desktop apps][INT-4]
- [Add web apps][INT-5]

### Considerations for Windows 11 SE

Windows 11 SE supports all web applications and a set of native applications.
You can prepare and add an app to Microsoft Intune as a Win32 app from the [approved app list]EDU-1].

> [!NOTE]
> If the applications you need aren't included in the list, anyone in your school district can submit an application request at <a href="https://edusupport.microsoft.com/support?product_id=win11se" target="_blank"><b>Microsoft Education Support</b></a>.
