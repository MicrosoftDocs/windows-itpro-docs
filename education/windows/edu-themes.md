---
title: Configure education themes for Windows 11
description: Learn about education themes for Windows 11 and how to configure them via Intune and provisioning package.
ms.date: 09/11/2023
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
---

# Configure education themes for Windows 11

Starting in **Windows 11, version 22H2**, you can deploy education themes to your devices. The education themes are designed for students using devices in a school.

:::image type="content" source="./images/win-11-se-themes-1.png" alt-text="Screenshot of Windows 11 desktop with 3 stickers" border="true":::

Themes allow the end user to quickly configure the look and feel of the device, with preset wallpaper, accent color, and other settings.
Students can choose their own themes, making it feel the device is their own. When students feel more ownership over their device, they tend to take better care of it.

## Enable education themes

Education themes aren't enabled by default. The following instructions describe how to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name | Value |
|--|--|--|
| Education | Enable Edu Themes | Enabled |

[!INCLUDE [intune-settings-catalog-2](../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the following settings:

| Setting |
|--------|
| **OMA-URI**: `./Vendor/MSFT/Policy/Config/Education/EnableEduThemes`<br>**Data type**: int<br>**Value**: `1`|

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure devices using a provisioning package, [create a provisioning package][WIN-1] using Windows Configuration Designer (WCD), with the following settings:

| Setting |
|--------|
| <li> Path: **`Education/EnableEduThemes`** </li><li>Value: **True**</li>|

Follow the steps in [Apply a provisioning package][WIN-2] to apply the package that you created.

---

## How to use the education themes

Once the education themes are enabled, the device downloads them as soon as a user signs in to the device.

To change the theme, select **Settings** > **Personalization** > **Themes** > **Select a theme**

:::image type="content" source="./images/win-11-se-themes.png" alt-text="Screenshot of Windows 11 education themes selection" border="true":::

-----------

[INT-1]: /mem/intune/configuration/custom-settings-windows-10

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package
