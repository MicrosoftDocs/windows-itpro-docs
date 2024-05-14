---
title: Configure Windows spotlight
description: Learn how to configure Windows spotlight using Group Policy and mobile device management (MDM) settings.
ms.topic: how-to
ms.date: 04/23/2024
ms.author: paoloma
author: paolomatarazzo
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Configure Windows spotlight

Windows spotlight is a feature that displays different wallpapers and offers suggestions, fun facts, tips, or organizational messages:

::: zone pivot="windows-11"

- **Wallpapers**: Windows spotlight displays a new image on the lock screen and in the background every day
- **Suggestions, fun facts, tips**: recommendations on how to enhance the user's productivity of Microsoft products. They're displayed in different locations, such as the lock screen, the background, the taskbar, or the Get Started app
- **Organizational messages**: messages from your organization, which can be displayed in the lock screen, taskbar, the notification area, or the Get Started app

:::image type="content" source="images/lockscreen-11.png" alt-text="Screenshot of the Windows 11 lock screen with Windows Spotlight enabled." border="false":::

::: zone-end

::: zone pivot="windows-10"

- **Wallpapers**: Windows spotlight displays a new image on the lock screen every day
- **Suggestions, fun facts, tips**: recommendations on how to enhance the user's productivity of Microsoft products. They're displayed in different locations, such as the lock screen, the background, the taskbar, or the Get Started app
- **Organizational messages**: messages from your organization, which can be displayed in the lock screen, taskbar, the notification area, or the Get Started app

:::image type="content" source="images/lockscreen-10.png" alt-text="Screenshot of the Windows 10 lock screen with Windows Spotlight enabled." border="false":::

::: zone-end

## Windows edition and licensing requirements

Windows spotlight is available on Windows Enterprise and Education editions only.

## Configuration options

Windows spotlight is enabled by default, but you can customize it to meet your organization's needs. There are several options to configure Windows spotlight.

If you need to configure a device for a single user, go to:

::: zone pivot="windows-11"

- **Settings** > **Personalization** > **[Background](ms-settings:personalization-background)**. To change the background image to Windows spotlight, select **Windows spotlight** from the **Personalize your background** drop-down menu

::: zone-end

- **Settings** > **Personalization** > **[Lock screen](ms-settings:personalization-lockscreen)**. To change the lock screen image to Windows spotlight, select **Windows spotlight** from the **Personalize your lock screen** drop-down menu

For advanced customizations and when you need to configure multiple devices, you can use one of the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](../provisioning-packages/how-it-pros-can-use-configuration-service-providers.md#csps-in-windows-configuration-designer), which are used at deployment time or for unmanaged devices. To configure Windows spotlight, use the [Experience Policy CSP][CSP-1]
- Group policy (GPO): used for devices that are Active Directory joined or Microsoft Entra hybrid joined, and not managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

## Policy settings

Here's a sorted list of the policy settings to configure Windows spotlight:

::: zone pivot="windows-11"
|Policy name| CSP | GPO |
|-|-|-|
|[AllowSpotlightCollection](/windows/client-management/mdm/policy-csp-experience#allowspotlightcollection)|✅|❌|
|[AllowThirdPartySuggestionsInWindowsSpotlight](/windows/client-management/mdm/policy-csp-experience#allowthirdpartysuggestionsinwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlight](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlightOnActionCenter](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonactioncenter)|✅|✅|
|[AllowWindowsSpotlightOnSettings](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonsettings)|✅|✅|
|[AllowWindowsSpotlightWindowsWelcomeExperience](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightwindowswelcomeexperience)|✅|✅|
|[ConfigureWindowsSpotlightOnLockScreen](/windows/client-management/mdm/policy-csp-experience#configurewindowsspotlightonlockscreen)|✅|✅|

::: zone-end

::: zone pivot="windows-10"

|Policy name| CSP | GPO |
|-|-|-|
|[AllowThirdPartySuggestionsInWindowsSpotlight](/windows/client-management/mdm/policy-csp-experience#allowthirdpartysuggestionsinwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlight](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlight)|✅|✅|
|[AllowWindowsSpotlightOnActionCenter](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonactioncenter)|✅|✅|
|[AllowWindowsSpotlightOnSettings](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightonsettings)|✅|✅|
|[AllowWindowsSpotlightWindowsWelcomeExperience](/windows/client-management/mdm/policy-csp-experience#allowwindowsspotlightwindowswelcomeexperience)|✅|✅|
|[ConfigureWindowsSpotlightOnLockScreen](/windows/client-management/mdm/policy-csp-experience#configurewindowsspotlightonlockscreen)|✅|✅|

::: zone-end

## Custom lock screen and background images

You can replace the Windows spotlight lock screen and background images with a custom image. When you do so, users can still see suggestions, fun facts, tips, or organizational messages on the lock screen, but the background image is replaced with the custom image.

To configure the lock screen and background images, use the [Personalization CSP][CSP-2].

|Policy name| CSP | GPO |
|-|-|-|
|[DesktopImageUrl](/windows/client-management/mdm/personalization-csp#desktopimageurl)|✅|✅|
|[LockScreenImageUrl](/windows/client-management/mdm/personalization-csp#lockscreenimageurl)|✅|✅|

>[!NOTE]
> A concern with custom images is how they'll appear on different screen sizes and resolutions. A custom image created in `16:9` aspect ratio (for example, `1600x900`) scales properly on devices using a `16:9` resolution, such as `1280x720` or `1920x1080`. On devices using other aspect ratios, such as `4:3` (`1024x768`) or `16:10` (`1280x800`), height scales correctly and width is cropped to a size equal to the aspect ratio. The image remains centered on the screen.
>
> Lock screen images created at other aspect ratios might scale and center unpredictably on your device when changing aspect ratios. The recommendation for custom images that include text (such as a legal statement), is to create the lock screen image in `16:9` resolution with text contained in the `4:3` region, allowing the text to remain visible at any aspect ratio.

> [!TIP]
> You also have the option to configure a custom lock screen image using [organizational messages in the Microsoft 365 admin center][M365-1].

## User experience

When Windows spotlight is enabled, devices apply a new image on the lock screen and in the background every day. The image is displayed in the background when the user signs in, and on the lock screen when the user locks the device. Users can still receive suggestions, fun facts, tips, or organizational messages. If you deploy a custom lock screen or background image, devices apply the custom image instead of the Windows spotlight image:

::: zone pivot="windows-11"

:::image type="content" source="images/contoso-lockscreen-11.png" alt-text="Screenshot of the Windows 11 lock screen with Windows spotlight enabled over an organization wallpaper." border="false":::

::: zone-end

::: zone pivot="windows-10"

:::image type="content" source="images/contoso-lockscreen-10.png" alt-text="Screenshot of the Windows 10 lock screen with Windows spotlight enabled over an organization wallpaper." border="false":::

::: zone-end

## Next steps

To learn more about organizational messages, see:

- [Organizational messages in the Microsoft 365 admin center][M365-1]
- [Organizational messages in Microsoft Intune][INT-1]

<!--links-->

[CSP-1]: /windows/client-management/mdm/policy-csp-experience
[CSP-2]: /windows/client-management/mdm/personalization-csp
[INT-1]: /mem/intune/remote-actions/organizational-messages-overview
[M365-1]: /microsoft-365/admin/misc/organizational-messages-microsoft-365?view=o365-worldwide
