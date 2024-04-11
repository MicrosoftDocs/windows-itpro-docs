---
title: Taskbar policy settings
description: Learn about the policy settings to configure the Windows taskbar.
ms.topic: reference
ms.date: 04/10/2024
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Taskbar policy settings

This reference article outlines the policy settings available for customizing the Windows taskbar, using Configuration Service Provider (CSP) or group policy (GPO). For information about how to configure these settings, see [Configure the Windows taskbar](index.md).

The settings are categorized and presented in alphabetical order to facilitate navigation and configuration.

:::row:::
:::column span="2":::

1. **Taskbar layout**: settings to control the taskbar appearance and its behavior
1. **Quick Settings**: settings to control the Quick Settings area

:::column-end:::
:::column span="2":::
::: zone pivot="windows-10"
    :::image type="content" source="./images/windows-10-settings.png" alt-text="Sample start menu layout with its components highlighted." border="false" lightbox="./images/windows-10-settings.png":::
::: zone-end

::: zone pivot="windows-11"
    :::image type="content" source="./images/windows-11-settings.png" alt-text="Sample start menu layout with its components highlighted." border="false" lightbox="./images/windows-11-settings.png":::
::: zone-end

    :::column-end:::
:::row-end:::

<!-->
Select one of the tabs to see the list of available settings:

#### [:::image type="icon" source="../images/icons/start.svg"::: **Layout**](#tab/start)

::: zone pivot="windows-11"
|Policy name| CSP | GPO |
|-|-|-|
|[Configure Start pins](#configure-start-pins)|✅|❌|
|[Disable context menus](#disable-context-menus)|✅|✅|

::: zone-end

::: zone pivot="windows-10"
|Policy name| CSP | GPO |
|-|-|-|
|[Clear history of recently opened documents on exit](#clear-history-of-recently-opened-documents-on-exit)|❌|✅|
|[Clear tile notifications during log on](#clear-tile-notifications-during-log-on)|❌|✅|
::: zone-end

::: zone pivot="windows-11"
[!INCLUDE [hide-recommended-personalized-sites](includes/hide-recommended-personalized-sites.md)]
[!INCLUDE [hide-recommended-section](includes/hide-recommended-section.md)]
::: zone-end
::: zone pivot="windows-10"
[!INCLUDE [import-edge-assets](includes/import-edge-assets.md)]
::: zone-end

#### [:::image type="icon" source="../images/icons/allapps.svg"::: **All apps**](#tab/allapps)

|Policy name| CSP | GPO |
|-|-|-|
|[Clear the recent programs list for new users](#clear-the-recent-programs-list-for-new-users)|❌|✅|
|[Hide app list](#hide-app-list)|✅|✅|
|[Hide frequently used apps](#hide-frequently-used-apps)|✅|✅|
|[Hide most used lists](#hide-most-used-lists)|✅|✅|

[!INCLUDE [clear-the-recent-programs-list-for-new-users](includes/clear-the-recent-programs-list-for-new-users.md)]
[!INCLUDE [hide-app-list](includes/hide-app-list.md)]
[!INCLUDE [hide-frequently-used-apps](includes/hide-frequently-used-apps.md)]
[!INCLUDE [hide-most-used-lists](includes/hide-most-used-lists.md)]

---
-->

[!INCLUDE [file](includes/configures-the-chat-icon-on-the-taskbar-m.md)]
[!INCLUDE [file](includes/disable-editing-quick-settings.md)]
[!INCLUDE [file](includes/do-not-allow-pinning-items-in-jump-lists-u.md)]
[!INCLUDE [file](includes/do-not-allow-pinning-programs-to-the-taskbar-u.md)]
[!INCLUDE [file](includes/do-not-allow-pinning-store-app-to-the-taskbar-u.md)]
[!INCLUDE [file](includes/do-not-allow-taskbars-on-more-than-one-display-u.md)]
[!INCLUDE [file](includes/do-not-display-or-track-items-in-jump-lists-from-remote-locations-u.md)]
[!INCLUDE [file](includes/example-localized.md)]
[!INCLUDE [file](includes/hide-the-notification-area-u.md)]
[!INCLUDE [file](includes/hide-the-taskview-button-um.md)]
[!INCLUDE [file](includes/lock-all-taskbar-settings-u.md)]
[!INCLUDE [file](includes/lock-the-taskbar-u.md)]
[!INCLUDE [file](includes/prevent-changes-to-taskbar-and-start-menu-settings-um.md)]
[!INCLUDE [file](includes/prevent-grouping-of-taskbar-items-u.md)]
[!INCLUDE [file](includes/prevent-users-from-adding-or-removing-toolbars-u.md)]
[!INCLUDE [file](includes/prevent-users-from-moving-taskbar-to-another-screen-dock-location-u.md)]
[!INCLUDE [file](includes/prevent-users-from-rearranging-toolbars-u.md)]
[!INCLUDE [file](includes/prevent-users-from-resizing-the-taskbar-u.md)]
[!INCLUDE [file](includes/remove-access-to-the-context-menus-for-the-taskbar-um.md)]
[!INCLUDE [file](includes/remove-clock-from-the-system-notification-area-u.md)]
[!INCLUDE [file](includes/remove-notifications-and-action-center-u.md)]
[!INCLUDE [file](includes/remove-pinned-programs-from-the-taskbar-um.md)]
[!INCLUDE [file](includes/remove-quick-settings-u.md)]
[!INCLUDE [file](includes/remove-the-battery-meter-u.md)]
[!INCLUDE [file](includes/remove-the-meet-now-icon-u.md)]
[!INCLUDE [file](includes/remove-the-networking-icon-u.md)]
[!INCLUDE [file](includes/remove-the-people-bar-from-the-taskbar-u.md)]
[!INCLUDE [file](includes/remove-the-volume-control-icon-u.md)]
[!INCLUDE [file](includes/show-additional-calendar-u.md)]
[!INCLUDE [file](includes/simplify-quick-settings-layout-m.md)]
[!INCLUDE [file](includes/turn-off-automatic-promotion-of-notification-icons-to-the-taskbar-u.md)]
[!INCLUDE [file](includes/turn-off-notification-area-cleanup-u.md)]