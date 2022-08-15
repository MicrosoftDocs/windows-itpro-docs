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
#appliesto:
---

# Set up device management

Without the proper tools and resources, managing hundreds or thousands of devices in a school environment can be a complex and time-consuming task. Microsoft Endpoint Manager provides a collection of services that simplifies the management of devices at scale.

Microsoft Intune is one of the services provided by Microsoft Endpoint Manager. The Microsoft Intune service can be managed in different ways, and one of them is **Intune for Education**, a web portal specifically designed for education environments.

:::image type="content" source="./intune-education-portal.png" alt-text="Intune for Education dashboard" border="true":::

Intune for Education supports the entire device lifecycle, from the enrollment phase through retirement. IT administrators can start managing classroom devices with bulk enrollment options and a streamlined deployment. At the end of the school year, IT admins can reset or wipe devices, ensuring they are ready for the next year.

For more information, see [Intune for Education documentation](/intune-education/what-is-intune-for-education).

## Prerequisites

Before configuring settings with Intune for Education, consider the following prerequisites:

- **Intune subscription.** Microsoft Intune is licensed in three ways:
  - As a standalone service
  - As part of [EMS](https://www.microsoft.com/microsoft-365/enterprise-mobility-security)
  - As part of a [Microsoft 365 Education subscription](https://www.microsoft.com/licensing/product-licensing/microsoft-365-education)
    In most scenarios, a <a href="https://www.microsoft.com/licensing/product-licensing/microsoft-365-education" target="_blank"><b>Microsoft 365 Education subscription</b></a> may be the best option, as it includes [Enterprise Mobility + Security (EMS)](https://www.microsoft.com/microsoft-365/enterprise-mobility-security), [Microsoft Endpoint Manager](/mem/endpoint-manager-overview), and common productivity apps.
    > [!NOTE]
        > Intune for Education is included in Microsoft 365 Education A1 for Devices, A3, and A5.
        >
        > For more information, see this [this comparison sheet](https://edudownloads.azureedge.net/msdownloads/Microsoft-Modern-Work-Plan-Comparison-Education_11-2021.pdf), which includes a table detailing the Microsoft Modern Work Plan for Education.
- **Device platform.** Devices running a supported version of Windows 10, Windows 11, Windows 11 SE, iOS, and iPad OS

For more information, see [Intune licensing](/mem/intune/fundamentals/licenses).
## Configure device management settings

With Intune for Education, you can configure settings for users and devices in the school. Settings can be assigned to groups:

- If you target settings to a group of users, those settings will apply, regardless of what managed devices the targeted users log in to
- If you target settings to a group of managed devices, those settings will apply regardless of who is using the devices

There are two ways to manage settings in Intune for Education:

- **Express Configuration.** Configure a selection of settings that are most used in school environments
- **Group settings.** Configure all settings for any group of devices or users

**NOTE:** Express Configuration is ideal when you are just getting started. Settings are pre-configured to Microsoft-recommended values but can be changed to fit your school's needs. We recommend using Express Configuration to initially set up your Windows devices.

### Configure settings with Express Configuration

With Express Configuration, you can get Intune for Education up and running in just a few steps. You can select a group of devices or users, pick applications that you want to distribute, and choose key settings from those most commonly used in schools.

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

## Manage Windows 11 SE applications

Windows 11 SE supports all web applications and a set of native applications. These applications can be deployed using the Intune for Education portal. For a list of available desktop apps, see [Available apps](/education/windows/windows-11-se-overview). If the applications you need aren't included in the list, anyone in your school district can submit an application request at <a href="https://edusupport.microsoft.com/support?product_id=win11se" target="_blank"><b>Microsoft Education Support</b></a>.

For more information, see [Windows 11 SE for Education](/education/windows/windows-11-se-overview).

Intune for Education supports two types of Windows apps: web apps and desktop apps. For more information, see [Add desktop apps](/intune-education/add-desktop-apps-edu) and [Add web apps](/intune-education/add-web-apps-edu).

**NOTE:** You can prepare and add an app to Microsoft Intune as a Win32 app from the [approved app list](/education/windows/windows-11-se-overview) in Windows 11 SE.

With Intune for Education, you can specify the groups for which apps should be installed. Specifically, apps can be deployed by assigning them to security groups. If you select a security group containing users, the apps will be installed on any managed device that the user signs into. If you select a security group containing devices, the apps will be installed on those devices and available to any user who signs in.
For more information, see [Install apps for all users](/microsoft-365/education/deploy/use-intune-for-education).

![Apps page in Intune for Education](./image5.png)

**NOTE:** For additional details about setting up the device management environment and managing devices using Intune for Education, see [Appendix: Device Management – Level 2](#) in this cookbook.

**UP NEXT:** After setting up the device management environment, it’s time to start enrolling devices.


### Set up the Enrollment Status Page

With the deployment profile completed, you’re ready to define the Enrollment Status Page (ESP), which is a greeting page for users signing in and enrolling Windows 11 SE devices. The ESP displays provisioning progress and shows app and profile installation status during device setup. Only Windows 11 SE-approved apps should be included as part of the ESP configuration and targeted to Windows 11 SE devices.

To deploy the ESP to devices, you need to create an ESP profile in Microsoft Endpoint Manager. For a complete list of steps on setting up the ESP in Intune for Education, see [Set up the Enrollment Status Page](/mem/intune/enrollment/windows-enrollment-status).

### Set enrollment restrictions for personally owned devices

To block personally owned devices from enrolling, use restrictions for device platform and OS version.

1. In the Microsoft Endpoint Manager admin center, select **Devices** → **Enroll devices** → **Enrollment device platform restrictions**. 
1. Select the Windows tab you are configuring, and then select **Create restriction**. 
1. On the **Basics** page, give the restriction a name and optional description. 
1. On the **Platform settings** page, in the **Personally owned devices** field, select **Block**.

:::image type="content" source="./image16.png" alt-text="Device enrollment restriction page in Microsoft Endpoint Manager admin center" border="true":::

5. Optionally, on the **Scope tags** page, add scope tags to the restriction. 
1. On the **Assignments** page, select **Add groups**, and then use the search box to find and choose groups. 
1. To assign the restriction to all device users, select **Add all users**.
1. On the **Review + create**, select **Create** to save the restriction.

For more information, see [Create a device platform restriction](/mem/intune/enrollment/enrollment-restrictions-set).