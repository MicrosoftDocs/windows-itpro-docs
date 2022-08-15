---
title: Set up device management
description: How to configure the Intune service and set up the environment for education.
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual
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

# Set up Microsoft Intune

Without the proper tools and resources, managing hundreds or thousands of devices in a school environment can be a complex and time-consuming task. Microsoft Endpoint Manager provides a collection of services that simplifies the management of devices at scale.

Microsoft Intune is one of the services provided by Microsoft Endpoint Manager. The Microsoft Intune service can be managed in different ways, and one of them is **Intune for Education**, a web portal designed for education environments.

:::image type="content" source="./images/intune-education-portal.png" alt-text="Intune for Education dashboard" border="true":::

Intune for Education supports the entire device lifecycle, from the enrollment phase through retirement. IT administrators can start managing classroom devices with bulk enrollment options and a streamlined deployment. At the end of the school year, IT admins can reset or wipe devices, ensuring they're ready for the next year.

For more information, see [Intune for Education documentation](/intune-education/what-is-intune-for-education).

In this section, you'll configure the Intune service to enroll and configure devices in your school.

## Prerequisites

Before configuring settings with Intune for Education, consider the following prerequisites:

- **Intune subscription.** Microsoft Intune is licensed in three ways:
  - As a standalone service
  - As part of [Enterprise Mobility + Security](https://www.microsoft.com/microsoft-365/enterprise-mobility-security)
  - As part of a [Microsoft 365 Education subscription](https://www.microsoft.com/licensing/product-licensing/microsoft-365-education)
- **Device platform.** Devices running a supported version of Windows 10, Windows 11, Windows 11 SE, iOS, and iPad OS

For more information, see [Intune licensing](/mem/intune/fundamentals/licenses) and [this comparison sheet](https://edudownloads.azureedge.net/msdownloads/Microsoft-Modern-Work-Plan-Comparison-Education_11-2021.pdf), which includes a table detailing the Microsoft Modern Work Plan for Education.

## Configure the Intune service for education devices

The Intune service can be configured in different ways, depending on the needs of your school. In this section, you'll configure the Intune service using settings commonly implemented by K-12 school districts.

### Configure enrollment restrictions

With enrollment restrictions, you can prevent certain types of devices from being enrolled and therefore managed by Intune. For example, you can prevent the enrollment of devices that are not owned by the school.

To block personally owned Windows devices from enrolling:

1. Sign in to the <a href="https://endpoint.microsoft.com/" target="_blank"><b>Microsoft Endpoint Manager admin center</b></a>
1. Select **Devices** > **Enroll devices** > **Enrollment device platform restrictions**
1. Select the **Windows restrictions** tab
1. Select **Create restriction**
1. On the **Basics** page, provide a name for the restriction and, optionally, a description > **Next**
1. On the **Platform settings** page, in the **Personally owned devices** field, select **Block** > **Next**
    :::image type="content" source="./images/enrollment-restrictions.png" alt-text="Device enrollment restriction page in Microsoft Endpoint Manager admin center" border="true":::
1. Optionally, on the **Scope tags** page, add scope tags > **Next**
1. On the **Assignments** page, select **Add groups**, and then use the search box to find and choose groups to which you want to apply the restriction > **Next**
1. On the **Review + create** page, select **Create** to save the restriction

For more information, see [Create a device platform restriction](/mem/intune/enrollment/enrollment-restrictions-set).

### Configure an Enrollment Status Page

An Enrollment Status Page (ESP) is a greeting page displayed to users while enrolling or signing in for the first time to Windows devices. The ESP displays provisioning progress, showing applications and profiles installation status.

To deploy the ESP to devices, you need to create an ESP profile in Microsoft Endpoint Manager.

For more information, see [Set up the Enrollment Status Page](/mem/intune/enrollment/windows-enrollment-status).

> [!CAUTION]
> When targeting an ESP to **Windows 11 SE devices**, only approved apps should be included as part of the ESP configuration.

### Disable Windows Hello for Business

Windows Hello for Business is a biometric authentication feature that allows users to sign in to their devices using a PIN, password, or fingerprint. Windows Hello for Business is enabled by default on Windows devices, and to set it up, users must perform for multi-factor authentication (MFA). As a result, this feature may not be ideal for students, who may not have MFA enabled.
It's suggested to disable Windows Hello for Business on Windows devices at the tenant level, and enabling it only for devices that need it, for example for teachers and staff devices.
To disable Windows Hello for Business at the tenant level:

1. Sign in to the <a href="https://endpoint.microsoft.com/" target="_blank"><b>Microsoft Endpoint Manager admin center</b></a>
1. Select **Devices** > **Windows** > **Windows Enrollment**
1. Select **Windows Hello for Business**
1. Ensure that **Configure Windows Hello for Business** is set to **disabled**
1. Select **Save**

:::image type="content" source="./images/whfb-disable.png" alt-text="Disablement of Windows Hello for Business from Microsoft Endpoint Manager admin center" border="true":::

For more information how to enable Windows Hello for Business on specific devices, see [Create a Windows Hello for Business policy](/mem/intune/protect/windows-hello#create-a-windows-hello-for-business-policy).

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

For more information, see [Express Configuration in Intune for Education](/intune-education/express-configuration-intune-edu).

> [!TIP]
> To learn more, and practice step-by-step Express Configuration in Intune for Education, try <a href="https://www.microsoft.com/en-us/education/interactive-demos/deploy-apps-and-policies" target="_blank"><b>this interactive demo</b></a>.

### Configure group settings

Groups are used to manage users and devices with similar management needs, allowing you to apply changes to many devices or users at once. To review the available group settings:

1. Sign in to the <a href="https://intuneeducation.portal.azure.com/" target="_blank"><b>Intune for Education portal</b></a>
1. Select **Groups** > Pick a group to manage
1. Select **Windows device settings**
1. Expand the different categories and review information about individual settings

For more information, see [Set up Intune for Education](/microsoft-365/education/deploy/use-intune-for-education).

## Configure applications

Intune for Education supports the deployment of two types of Windows applications: web apps and desktop apps.

:::image type="content" source="./images/intune-education-apps.png" alt-text="Intune for Education - Apps" border="true":::

Applications can be deployed to groups:

- If you target apps to a **group of users**, the apps will be installed on any managed devices that the users sign into
- If you target apps to a **group of devices**, the apps will be installed on those devices and available to any user who signs in

For more information:

- [Install apps for all users](/microsoft-365/education/deploy/use-intune-for-education)
- [Add desktop apps](/intune-education/add-desktop-apps-edu) 
- [Add web apps](/intune-education/add-web-apps-edu)

### Considerations for Windows 11 SE

Windows 11 SE supports all web applications and a set of native applications.
You can prepare and add an app to Microsoft Intune as a Win32 app from the [approved app list](/education/windows/windows-11-se-overview).

> [!NOTE]
> If the applications you need aren't included in the list, anyone in your school district can submit an application request at <a href="https://edusupport.microsoft.com/support?product_id=win11se" target="_blank"><b>Microsoft Education Support</b></a>.

________________________________________________________

## Section review and next steps

> [!div class="checklist"]
> * Prerequisites
> * Configure the Intune service for education devices
> * Configure device settings
> * Configure applications

With the Intune service configured, you can start enrolling and managing students' and teachers' devices.
> [!div class="nextstepaction"]
> [< Set up your tenant](set-up-your-tenant.md)
> [Enroll devices >](enrollment-overview.md)