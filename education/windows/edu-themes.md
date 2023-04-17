---
title: Configure education themes for Windows 11
description: Learn about education themes for Windows 11 and how to configure them via Intune and provisioning package.
ms.date: 09/15/2022
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
---

# Configure education themes for Windows 11

Starting in **Windows 11, version 22H2**, you can deploy education themes to your devices. The education themes are designed for students using devices in a school.

:::image type="content" source="./images/win-11-se-themes-1.png" alt-text="Windows 11 desktop with 3 stickers" border="true":::

Themes allow the end user to quickly configure the look and feel of the device, with preset wallpaper, accent color, and other settings.
Students can choose their own themes, making it feel the device is their own. When students feel more ownership over their device, they tend to take better care of it. This is great news for schools looking to give that same device to a new student the next year.

## Enable education themes

Education themes aren't enabled by default. Follow the instructions below to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-custom-settings-1](includes/intune-custom-settings-1.md)]

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Education/EnableEduThemes`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|

[!INCLUDE [intune-custom-settings-2](includes/intune-custom-settings-2.md)]
[!INCLUDE [intune-custom-settings-info](includes/intune-custom-settings-info.md)]

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure devices using a provisioning package, [create a provisioning package][WIN-1] using Windows Configuration Designer (WCD), with the following settings:

| Setting |
|--------|
| <li> Path: **`Education/EnableEduThemes`** </li><li>Value: **True**</li>|

Follow the steps in [Apply a provisioning package][WIN-2] to apply the package that you created.

---

## How to use the education themes

Once the education themes are enabled, the device will download them as soon as a user signs in to the device.

To change the theme, select **Settings** > **Personalization** > **Themes** > **Select a theme**

:::image type="content" source="./images/win-11-se-themes.png" alt-text="Windows 11 education themes selection" border="true":::

-----------

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package