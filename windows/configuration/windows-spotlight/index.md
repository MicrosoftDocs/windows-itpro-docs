---
title: Configure Windows spotlight
description: Learn how to configure Windows spotlight using Group Policy and mobile device management (MDM) settings.
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

:::image type="content" source="images/lockscreen-11.png" alt-text="Screenshot of the Windows 11 lock screen with Windows Spotlight enabled." border="false":::

::: zone-end

::: zone pivot="windows-10"

:::image type="content" source="images/lockscreen-10.png" alt-text="Screenshot of the Windows 10 lock screen with Windows Spotlight enabled." border="false":::

::: zone-end

## Configuration options

There are several options to configure the Windows spotlight.

If you need to configure a device for a single user, go to:

- **Settings** > **Personalization** > **[Background](ms-settings:personalization-background)**. To change the background image to Windows spotlight, select **Windows spotlight** from the **Personalize your background** drop-down menu
- **Settings** > **Personalization** > **[Lock screen](ms-settings:personalization-lockscreen)**. To change the lock screen image to Windows spotlight, select **Windows spotlight** from the **Personalize your lock screen** drop-down menu

For advanced customizations and when you need to configure multiple devices, you can use one of the following options:

- Configuration Service Provider (CSP): commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. CSPs can also be configured with [provisioning packages](../provisioning-packages/how-it-pros-can-use-configuration-service-providers.md#csps-in-windows-configuration-designer), which are used at deployment time or for unmanaged devices. To configure Start, use the [Experience Policy CSP][WIN-1]
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

## Considerations

In addition to the specific policy settings for Windows spotlight, administrators can replace Windows spotlight with a selected image using the Group Policy setting **Computer Configuration** > **Administrative Templates** > **Control Panel** > **Personalization** > **Force a specific default lock screen image** (Windows 10 Enterprise and Education).

>[!TIP]
>If you want to use a custom lock screen image that contains text, see [Resolution for custom lock screen image](#resolution-for-custom-lock-screen-image).

>[!NOTE]
>You can use the [Personalization CSP](/windows/client-management/mdm/personalization-csp) settings to set lock screen and desktop background images.

Pay attention to the checkbox in **Options**. In addition to providing the path to the lock screen image, administrators can choose to allow or **Turn off fun facts, tips, tricks, and more on lock screen**. If the checkbox isn't selected, users will see the lock screen image that is defined in the policy setting, and will also see occasional messages.

### Resolution for custom lock screen image

A concern with custom lock screen images is how they'll appear on different screen sizes and resolutions.

A custom lock screen image created in 16:9 aspect ratio (1600x900) will scale properly on devices using a 16:9 resolution, such as 1280x720 or 1920x1080. On devices using other aspect ratios, such as 4:3 (1024x768) or 16:10 (1280x800), height scales correctly and width is cropped to a size equal to the aspect ratio. The image will remain centered on the screen

Lock screen images created at other aspect ratios may scale and center unpredictably on your device when changing aspect ratios.

The recommendation for custom lock screen images that include text (such as a legal statement) is to create the lock screen image in 16:9 resolution with text contained in the 4:3 region, allowing the text to remain visible at any aspect ratio.

::: zone pivot="windows-11"

:::image type="content" source="images/contoso-lockscreen-11.png" alt-text="Screenshot of the Windows 11 lock screen with Windows spotlight enabled over an organization wallpaper." border="false":::

::: zone-end

::: zone pivot="windows-10"

:::image type="content" source="images/contoso-lockscreen-10.png" alt-text="Screenshot of the Windows 10 lock screen with Windows spotlight enabled over an organization wallpaper." border="false":::

::: zone-end

## Next steps

To learn more about organizational messages, see [Organizational messages in Microsoft Intune][INT-2].

<!--links-->

[CSP-1]: /windows/client-management/mdm/policy-csp-experience
[INT-1]: /mem/intune/configuration/settings-catalog
[INT-2]: /mem/intune/remote-actions/organizational-messages-overview