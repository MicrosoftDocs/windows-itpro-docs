---
title: Configure Stickers for Windows 11 SE
description: Learn about the Stickers feature and how to configure it via Intune and provisioning package.
ms.date: 09/15/2022
ms.topic: how-to
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 11 SE</a>
ms.collection:
  - highpri
  - education
  - tier2
---

# Configure Stickers for Windows 11 SE

Starting in **Windows 11 SE, version 22H2**, *Stickers* is a new feature that allows students to decorate their desktop with digital stickers. Students can choose from over 500 cheerful, education-friendly digital stickers. Stickers can be arranged, resized, and customized on top of the desktop background. Each student's stickers remain, even when the background changes.

Similar to the [education theme packs](edu-themes.md "my tooltip example that opens in a new tab"), Stickers is a personalization feature that helps the device feel like it was designed for students.

:::image type="content" source="./images/win-11-se-stickers.png" alt-text="Windows 11 SE desktop with 3 stickers" border="true":::

Stickers are simple to use, and give students an easy way to express themselves by decorating their desktop, helping to make learning fun.

## Benefits of Stickers

When students feel like they can express themselves at school, they pay more attention and learn, which benefits students, teachers, and the school community. Self-expression is critical to well-being and success at school. Customizing a device is one way to express a personal brand.

With Stickers, students feel more attached to the device as they feel as if it's their own, they take better care of it, and it's more likely to last.

## Enable Stickers

Stickers aren't enabled by default. Follow the instructions below to configure your devices using either Microsoft Intune or a provisioning package (PPKG).

#### [:::image type="icon" source="images/icons/intune.svg"::: **Intune**](#tab/intune)

[!INCLUDE [intune-custom-settings-1](includes/configure/intune-custom-settings-1.md)]

| Setting |
|--------|
| <li> OMA-URI: **`./Vendor/MSFT/Policy/Config/Stickers/EnableStickers`** </li><li>Data type: **Integer** </li><li>Value: **1**</li>|

[!INCLUDE [intune-custom-settings-2](includes/configure/intune-custom-settings-2.md)]
[!INCLUDE [intune-custom-settings-info](includes/configure/intune-custom-settings-info.md)]

> [!TIP]
> Use the following Graph call to automatically create the custom policy in your tenant without assignments nor scope tags. <sup>[1](#footnote1)</sup>

```msgraph-interactive
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
Content-Type: application/json

{"id":"00-0000-0000-0000-000000000000","displayName":"_MSLearn_Stickers","roleScopeTagIds":["0"],"@odata.type":"#microsoft.graph.windows10CustomConfiguration","omaSettings":[{"omaUri":"./Vendor/MSFT/Policy/Config/Stickers/EnableStickers","displayName":"EnableStickers","@odata.type":"#microsoft.graph.omaSettingInteger","value":1}]}
```

<sup><a name="footnote1"></a>1</sup> When using this call, authenticate to your tenant in the Graph Explorer window. If it's the first time using Graph Explorer, you may need to authorize the application to access your tenant or to modify the existing permissions. This graph call requires *DeviceManagementConfiguration.ReadWrite.All* permissions.

#### [:::image type="icon" source="images/icons/provisioning-package.svg"::: **PPKG**](#tab/ppkg)

To configure devices using a provisioning package, [create a provisioning package][WIN-1] using Windows Configuration Designer (WCD) with the following settings:

| Setting |
|--------|
| <li> Path: **`Education/AllowStickers`** </li><li>Value: **True**</li>|

Follow the steps in [Apply a provisioning package][WIN-2] to apply the package that you created.

---

## How to use Stickers

Once the Stickers feature is enabled, the sticker editor can be opened by either:

- using the contextual menu on the desktop and selecting the option **Add or edit stickers**
- opening the Settings app > **Personalization** > **Background** > **Add stickers**

:::image type="content" source="./images/win-11-se-stickers-menu.png" alt-text="Windows 11 SE desktop contextual menu to open the sticker editor" border="true":::

Multiple stickers can be added from the picker by selecting them. The stickers can be resized, positioned or deleted from the desktop by using the mouse, keyboard, or touch.

:::image type="content" source="./images/win-11-se-stickers-animation.gif" alt-text="animation showing Windows 11 SE desktop with 4 pirate stickers being resized and moved" border="true":::

Select the *X button* at the top of the screen to save your progress and close the sticker editor.

[MEM-1]: /mem/intune/configuration/custom-settings-windows-10

[WIN-1]: /windows/configuration/provisioning-packages/provisioning-create-package
[WIN-2]: /windows/configuration/provisioning-packages/provisioning-apply-package