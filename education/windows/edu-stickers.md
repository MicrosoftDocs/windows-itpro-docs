---
title: Configure Stickers for Windows 11 SE
description: Description of Stickers for Windows 11 SE and how to configure them via MDM
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
- ✅ <b>Windows 11 SE 22H2</b>
---

# Configure Stickers for Windows 11 SE

Starting in **Windows 11 SE, version 22H2**, *Stickers* is a new feature that allows students to decorate their desktop with digital stickers. Students can choose from over 500 cheerful, education-friendly digital stickers. Stickers can be arranged, resized, and customized on top of the desktop background. Each student's stickers remain, even when the background change.

Similar to the [education theme packs](edu-themes.md), Stickers is a personalization feature that helps the device feel like it was designed for students.

:::image type="content" source="./images/win-11-se-stickers.png" alt-text="Windows 11 SE desktop with 3 stickers" border="true":::

Stickers are simple to use, and give students an easy way to express themselves by decorating their desktop, helping to make learning fun.

## Benefits of Stickers

When students feel like they can express themselves at school, they pay more attention and learn, which benefits students, teachers, and the school community. Self-expression is critical to well-being and success at school. Customizing a device is one way to express a personal brand.

With Stickers, students feel more attached to the device as they feel as if it's their own, they take better care of it, and it's more likely to last.

## Enable Stickers

Stickers aren't enabled by default. IT administrators can allow students to personalize their devices without losing control over apps or device performance using Microsoft Intune.

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
    - Name: enter **EnableStickers**
    - OMA-URI: `./Vendor/MSFT/Policy/Config/Stickers/EnableStickers`
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

## How to use Stickers

Once the Stickers feature is enabled, the sticker editor can be opened by either:

- using the contextual menu on the desktop and selecting the option **Add or edit stickers**
- opening the Settings app > **Personalization** > **Background** > **Add stickers**

:::image type="content" source="./images/win-11-se-stickers-menu.png" alt-text="Windows 11 SE desktop contextual menu to open the sticker editor" border="true":::

Multiple stickers can be added from the picker by selecting them. The stickers can be resized, positioned or deleted from the desktop by using the mouse, keyboard, or touch.

:::image type="content" source="./images/win-11-se-stickers-animation.gif" alt-text="animation showing Windows 11 SE desktop with 4 pirate stickers being resized and moved" border="true":::

Select the *X button* at the top of the screen to save your progress and close the sticker editor.
