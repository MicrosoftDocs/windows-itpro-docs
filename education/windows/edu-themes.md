---
title: Configure education themes for Windows 11
description: Description of education themes for Windows 11 and how to configure them via MDM
ms.date: 09/15/2022
ms.prod: windows
ms.technology: windows
ms.topic: how-to
ms.localizationpriority: medium
author: paolomatarazzo
ms.author: paoloma
ms.reviewer:
manager: aaroncz
ms.collection: education
appliesto:
- ✅ <b>Windows 11 22H2</b>
- ✅ <b>Windows 11 SE 22H2</b>
---

# Configure education themes for Windows 11

Starting in **Windows 11, version 22H2**, you can deploy education themes to your devices. The education themes are designed for students using devices in a school.

:::image type="content" source="./images/win-11-se-themes-1.png" alt-text="Windows 11 desktop with 3 stickers" border="true":::

Themes allow the end user to quickly configure the look and feel of the device, with preset wallpaper, accent color, and other settings.
Students can choose their own themes, making it feel the device is their own. When students feel more ownership over their device, they tend to take better care of it. This is great news for schools looking to give that same device to a new student the next year.

## Enable education themes

Education themes aren't enabled by default. IT administrators can configure devices to download the education themes using Microsoft Intune.

1. Sign in to the <a href="https://endpoint.microsoft.com/" target="_blank"><b>Microsoft Endpoint Manager admin center</b></a>
1. Select **Devices** > **Configuration profiles** > **Create profile**
1. Enter the following properties:
    - **Platform**: select **Windows 10 and later**
    - **Profile type**: select **Templates**
    - **Template name**: select **Custom**
1. Select **Create**
1. In **Basics**, enter the following properties:
    - **Name**: enter a descriptive name for the profile
    - **Description**: enter a description for the profile. This setting is optional, but recommended
1. Select **Next**
1. In **Configuration settings**, select **Add**
1. In **Add Row**, enter the following properties:
    - Name: enter **EnableEduThemes**
    - OMA-URI: `./Vendor/MSFT/Policy/Config/Stickers/EnableEduThemes`
    - Data type: **Integer**
    - Value: **1**
1. Select **Save**
1. Select **Next**
1. In **Scope tags**, assign any applicable tags (optional)
1. Select **Next**
1. In **Assignments**, select the security groups that will receive the policy
1. Select **Next**
1. In **Applicability Rules**, select **Next**
1. In **Review + create**, review your settings and select **Create**

## How to use the education themes

Once the education themes are enabled, the device will download them as soon as a user signs in to the device.

To change the theme, select **Settings** > **Personalization** > **Themes** > **Select a theme**

:::image type="content" source="./images/win-11-se-themes.png" alt-text="Windows 11 education themes selection" border="true":::
