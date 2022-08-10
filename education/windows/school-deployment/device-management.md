---
title: # Microsoft Endpoint Manager support
description: # How to obtain Microsoft support from Microsoft Endpoint Manager admin center.
ms.date: 08/31/2022
ms.prod: windows
ms.technology: windows
ms.topic: conceptual #reference troubleshooting how-to end-user-help overview (more in contrib guide)
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
#ms.reviewer: 
manager: aaroncz
ms.collection: # education
# highpri - high priority, strategic, important, current, etc. articles
# openauth - the article is owned by PM or community for open authoring
appliesto:
- ✅ <b>Windows 10</b>
- ✅ <b>Windows 11</b>
---

# Set up device management

This section of the cookbook focuses on how to set up the device management environment. Managing hundreds of devices across a school environment can be complex and time-consuming without the proper tools and resources. Microsoft Endpoint Manager provides a collection of cloud-based device management services that can help to eliminate this complexity. Intune for Education is one such service provided by Microsoft Endpoint Manager for managing and configuring students’ and teachers’ devices.

![All services page in Microsoft Endpoint Manager admin center](./image4.png)

## Cloud-based device management

Microsoft Intune for Education is a cloud-based mobile device management service for schools. It is designed to enable common education scenarios and settings, such as the need for shared devices. Intune for Education supports an entire device lifecycle that begins when a device is enrolled and progresses through additional phases until the device is no longer used. IT administrators can easily manage classroom devices with bulk enrollment and streamlined deployment. At the end of the school year, they can also reset devices, wipe them, and prepare them for next year. For more information, see [Intune for Education documentation](https://docs.microsoft.com/en-us/intune-education/what-is-intune-for-education), and then return to this document to continue with the steps below. 

## Configuring management settings

With Intune for Education, you can configure group settings to manage how users and devices will interact in your school. Settings assigned to users will apply regardless of what devices they use. Similarly, settings assigned to devices will apply regardless of who is using them. There are two ways to manage group settings in Intune for Education:

- **Express Configuration.** Configure a selection of settings that are most used in school environments. 
- **Group settings.** Configure all settings for any group of devices or users.

**NOTE:** Express Configuration is ideal when you are just getting started. Settings are preconfigured to Microsoft-recommended values but can be changed to fit your school’s policies. We recommend using [Express Configuration](https://docs.microsoft.com/en-us/intune-education/express-configuration-intune-edu) to set up your Windows devices.

### Prerequisites

Before configuring settings with Intune for Education, consider these prerequisites: 

- **Microsoft subscription.** In most scenarios, [Microsoft 365](https://www.microsoft.com/licensing/product-licensing/microsoft-365-enterprise) may be the best option, as it provides [Enterprise Mobility + Security (EMS)](https://www.microsoft.com/microsoft-365/enterprise-mobility-security), [Microsoft Endpoint Manager](https://docs.microsoft.com/en-us/mem/endpoint-manager-overview), and common productivity apps. Intune for Education is included in Microsoft 365 Education A1 for Devices, A3, and A5. For more information, see this [this comparison sheet](https://edudownloads.azureedge.net/msdownloads/Microsoft-Modern-Work-Plan-Comparison-Education_11-2021.pdf), which includes a table detailing the Microsoft Modern Work Plan for Education. 
- **Intune subscription.** Intune is licensed in three ways—as a standalone Azure service, as part of [EMS](https://www.microsoft.com/microsoft-365/enterprise-mobility-security), and included with [Microsoft 365](https://www.microsoft.com/licensing/product-licensing/microsoft-365-enterprise). (For more information, see [Intune licensing](https://docs.microsoft.com/en-us/mem/intune/fundamentals/licenses).) You can also [sign up for a free trial account](https://docs.microsoft.com/en-us/mem/intune/fundamentals/free-trial-sign-up).
- **Supported device platform.** School devices running Windows 10 (1709 and later), Windows 11, Windows 11 SE, iOS (11.0 and later), and iPad OS (13.0 and later) are supported.
- **Optional requirements.** Microsoft 365 Education, Azure Active Directory Connect, School Data Sync, Set Up School PCs app, Windows Configuration Designer, and Windows Autopilot.

### Configure settings with Express Configuration

With Express Configuration, you can get Intune for Education up and running in just a few steps, all from a single console. You can select a group of Windows 11 SE devices or users, pick the specific apps that you want available, and choose key configuration settings from those most often used in schools. 

The [Intune for Education portal](https://intuneeducation.portal.azure.com/) provides a step-by-step walkthrough of how to use Express Configuration; you can access the demo from the home page. For more information, see [Express Configuration in Intune for Education](https://docs.microsoft.com/en-us/intune-education/express-configuration-intune-edu), and then return to this document to continue with the steps below. 

### Configure group settings

Groups are used to manage users and devices with similar management needs, allowing you to apply changes to many devices or users at once. To review the available group settings:

1. Go to the [Intune for Education portal](https://intuneeducation.portal.azure.com/), and then select the **Groups** tile. 
1. On the **Choose settings** screen, select **Group**.
1. Select the reverse caret to expand the group and review information about individual settings. 

For more information, see [Set up Intune for Education](https://docs.microsoft.com/en-us/microsoft-365/education/deploy/use-intune-for-education), and then return to this document to continue with the steps below. 

**NOTE:** For a fully interactive demo, see the [Microsoft Education Interactive Demos](https://www.microsoft.com/en-us/education/interactive-demos/deploy-apps-and-policies) site. The Intune for Education demo shows how IT administrators can deploy apps and policies designed for classroom directly from the cloud. It also explains how using Intune for Education helps to ensure that the right apps are delivered to the right devices at the right time.

## Managing Windows 11 SE apps

Windows 11 SE supports all web applications and a set of native applications. These apps can be deployed using the [Intune for Education portal](https://intuneeducation.portal.azure.com/). For the list of available desktop apps, see [Available apps](https://docs.microsoft.com/en-us/education/windows/windows-11-se-overview). If the apps you need aren’t included, anyone in your school district can submit an application request at [aka.ms/eduapprequest](https://aka.ms/eduapprequest). For more information, see [Windows 11 SE for Education](https://docs.microsoft.com/en-us/education/windows/windows-11-se-overview).

Intune for Education supports two types of Windows apps: web apps and desktop apps. For more information, see [Add desktop apps](https://docs.microsoft.com/en-us/intune-education/add-desktop-apps-edu) and [Add web apps](https://docs.microsoft.com/en-us/intune-education/add-web-apps-edu).

**NOTE:** You can prepare and add an app to Microsoft Intune as a Win32 app from the [approved app list](https://docs.microsoft.com/en-us/education/windows/windows-11-se-overview) in Windows 11 SE.

With Intune for Education, you can specify the groups for which apps should be installed. Specifically, apps can be deployed by assigning them to security groups. If you select a security group containing users, the apps will be installed on any managed device that the user signs into. If you select a security group containing devices, the apps will be installed on those devices and available to any user who signs in. For more information, see [Install apps for all users](https://docs.microsoft.com/en-us/microsoft-365/education/deploy/use-intune-for-education), and then return to this document to continue with the steps below. 

![Apps page in Intune for Education](./image5.png)

**NOTE:** For additional details about setting up the device management environment and managing devices using Intune for Education, see [Appendix: Device Management – Level 2](#) in this cookbook.

**UP NEXT:** After setting up the device management environment, it’s time to start enrolling devices.


### Set up the Enrollment Status Page

With the deployment profile completed, you’re ready to define the Enrollment Status Page (ESP), which is a greeting page for users signing in and enrolling Windows 11 SE devices. The ESP displays provisioning progress and shows app and profile installation status during device setup. Only Windows 11 SE-approved apps should be included as part of the ESP configuration and targeted to Windows 11 SE devices.

To deploy the ESP to devices, you need to create an ESP profile in Microsoft Endpoint Manager. For a complete list of steps on setting up the ESP in Intune for Education, see [Set up the Enrollment Status Page](https://docs.microsoft.com/en-us/mem/intune/enrollment/windows-enrollment-status), and then return to this document to continue with the steps below.

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

For more information, see [Create a device platform restriction](https://docs.microsoft.com/en-us/mem/intune/enrollment/enrollment-restrictions-set).