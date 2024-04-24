---
title: Configure Windows spotlight
description: Learn how to configure Windows spotlight, a Windows lock screen feature that displays different images.
ms.topic: how-to
ms.date: 04/23/2024
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Configure Windows spotlight

Windows spotlight is a Windows feature that displays different wallpapers and offers suggestions, fun facts, tips, or organizational messages:

- **Wallpapers**: Windows spotlight displays a new image on the lock screen and in the background every day
- **Suggestions, fun facts, tips**: recommendations on how to enhance the user's productivity of Microsoft products. They are displayed in different locations, such as the lock screen, the background, the taskbar, or the Get Started app
- **Organizational messages**: messages from your organization, which can be displayed in the taskbar, the notification area, or the Get Started app

::: zone pivot="windows-11"

:::image type="content" source="images/lockscreen-11.png" alt-text="Screenshot of the Windows 11 lock screen with Windows Spotlight enabled.":::

::: zone-end

::: zone pivot="windows-10"

:::image type="content" source="images/lockscreen-10.png" alt-text="Screenshot of the Windows 10 lock screen with Windows Spotlight enabled.":::

::: zone-end

>[!NOTE]
>You can use the [Personalization CSP](/windows/client-management/mdm/personalization-csp) settings to set lock screen and desktop background images.

## How do you turn off Windows spotlight locally?

To turn off Windows spotlight locally, go to **Settings** > **Personalization** > **Lock screen** > **Background** > **Windows spotlight** > select a different lock screen background

## How do you disable Windows spotlight for managed devices?

Windows spotlight is enabled by default. Windows 10 provides Group Policy and mobile device management (MDM) settings to help you manage Windows spotlight on enterprise computers.

>[!NOTE]
>These policies are in the **User Configuration \Policies\Administrative Templates\Windows Components\Cloud Content** path in the Group Policy Management Console, and in the **User Configuration \Administrative Templates\Windows Components\Cloud Content** path in the Local Group Policy Editor.


| **Turn off the Windows spotlight on Action Center** | **Experience/Allow Windows spotlight On Action Center** | Turn off Suggestions from Microsoft that show after each clean install, upgrade, or on an on-going basis to introduce users to what is new or changed | Windows 10 Enterprise and Education, version 1703 |
| **Do not use diagnostic data for tailored experiences** | **Experience/Allow Tailored Experiences With Diagnostic Data** | Prevent Windows from using diagnostic data to provide tailored experiences to the user | Windows 10 Pro, Enterprise, and Education, version 1703 |
| **Turn off the Windows Welcome Experience** | **Experience/Allow Windows spotlight Windows Welcome Experience** | Turn off the Windows spotlight Windows Welcome experience that helps introduce users to Windows, such as launching Microsoft Edge with a web page highlighting new features | Windows 10 Enterprise and Education, version 1703 |
| **Turn off the Windows spotlight on Settings** | **Experience/Allow Windows spotlight on Settings** | Turn off the Windows spotlight in the Settings app. | Windows 10 Enterprise and Education, version 1803 |

 In addition to the specific policy settings for Windows spotlight, administrators can replace Windows spotlight with a selected image using the Group Policy setting **Computer Configuration** > **Administrative Templates** > **Control Panel** > **Personalization** > **Force a specific default lock screen image** (Windows 10 Enterprise and Education).

 >[!TIP]
 >If you want to use a custom lock screen image that contains text, see [Resolution for custom lock screen image](#resolution-for-custom-lock-screen-image).

Pay attention to the checkbox in **Options**. In addition to providing the path to the lock screen image, administrators can choose to allow or **Turn off fun facts, tips, tricks, and more on lock screen**. If the checkbox isn't selected, users will see the lock screen image that is defined in the policy setting, and will also see occasional messages.

## Configuration options

There are several options to configure the Windows Start menu.

If you need to configure a device for a single user, you can pin/unpin applications to Start and rearrange them. Start can be further customized from Settings. Go to **Settings** > **Personalization** > **[Start](ms-settings:personalization-start)**.

For advanced customizations and when you need to configure multiple devices, you can use one of the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](../provisioning-packages/how-it-pros-can-use-configuration-service-providers.md#csps-in-windows-configuration-designer), which are used at deployment time or for unmanaged devices. To configure Start, use the [Start Policy CSP][WIN-1]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and not managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

> [!NOTE]
> While many of the Start menu policy settings can be configured using both CSP and GPO, there are some settings that are only available using the Start Policy CSP. To learn about the available policy settings to configure the Start menu via CSP and GPO, see [Start menu policy settings](policy-settings.md).

## User experience

## Considerations

### Resolution for custom lock screen image

A concern with custom lock screen images is how they'll appear on different screen sizes and resolutions.

A custom lock screen image created in 16:9 aspect ratio (1600x900) will scale properly on devices using a 16:9 resolution, such as 1280x720 or 1920x1080. On devices using other aspect ratios, such as 4:3 (1024x768) or 16:10 (1280x800), height scales correctly and width is cropped to a size equal to the aspect ratio. The image will remain centered on the screen

Lock screen images created at other aspect ratios may scale and center unpredictably on your device when changing aspect ratios.

The recommendation for custom lock screen images that include text (such as a legal statement) is to create the lock screen image in 16:9 resolution with text contained in the 4:3 region, allowing the text to remain visible at any aspect ratio.

<!--links-->

[CSP-1]: /windows/client-management/mdm/policy-csp-admx-windowsstore
[INT-1]: /mem/intune/configuration/settings-catalog