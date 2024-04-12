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

Select one of the tabs to see the list of available settings:

#### [:::image type="icon" source="../images/icons/start.svg"::: **Layout**](#tab/start)

::: zone pivot="windows-11"
|Setting Name|CSP|GPO|
|-|-|-|
|[Allow widgets](#allow-widgets)|✅|✅|
|[Configures search on the taskbar](#configures-search-on-the-taskbar)|✅|✅|
|[Configures the Chat icon on the taskbar](#configures-the-chat-icon-on-the-taskbar)|✅|✅|
|[Do not allow pinning items in Jump Lists](#do-not-allow-pinning-items-in-jump-lists)|❌|✅|
|[Do not allow pinning programs to the Taskbar](#do-not-allow-pinning-programs-to-the-taskbar)|✅|✅|
|[Do not allow pinning Store app to the Taskbar](#do-not-allow-pinning-store-app-to-the-taskbar)|❌|✅|
|[Do not allow taskbars on more than one display](#do-not-allow-taskbars-on-more-than-one-display)|❌|✅|
|[Do not display or track items in Jump Lists from remote locations](#do-not-display-or-track-items-in-jump-lists-from-remote-locations)|❌|✅|
|[Hide the notification area](#hide-the-notification-area)|❌|✅|
|[Hide the TaskView button](#hide-the-taskview-button)|✅|✅|
|[Lock all taskbar settings](#lock-all-taskbar-settings)|❌|✅|
|[Lock the Taskbar](#lock-the-taskbar)|❌|✅|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent grouping of taskbar items](#prevent-grouping-of-taskbar-items)|❌|✅|
|[Prevent users from adding or removing toolbars](#prevent-users-from-adding-or-removing-toolbars)|❌|✅|
|[Prevent users from moving taskbar to another screen dock location](#prevent-users-from-moving-taskbar-to-another-screen-dock-location)|❌|✅|
|[Prevent users from rearranging toolbars](#prevent-users-from-rearranging-toolbars)|❌|✅|
|[Prevent users from resizing the taskbar](#prevent-users-from-resizing-the-taskbar)|❌|✅|
|[Remove access to the context menus for the taskbar](#remove-access-to-the-context-menus-for-the-taskbar)|❌|✅|
|[Remove Clock from the system notification area](#remove-clock-from-the-system-notification-area)|❌|✅|
|[Remove Notifications and Action Center](#remove-notifications-and-action-center)|❌|✅|
|[Remove pinned programs from the Taskbar](#remove-pinned-programs-from-the-taskbar)|❌|✅|
|[Remove Quick Settings](#remove-quick-settings)|✅|✅|
|[Remove the battery meter](#remove-the-battery-meter)|❌|✅|
|[Remove the Meet Now icon](#remove-the-meet-now-icon)|❌|✅|
|[Remove the networking icon](#remove-the-networking-icon)|❌|✅|
|[Remove the People Bar from the taskbar](#remove-the-people-bar-from-the-taskbar)|✅|✅|
|[Remove the volume control icon](#remove-the-volume-control-icon)|❌|✅|
|[Show additional calendar](#show-additional-calendar)|❌|✅|
|[Simplify Quick Settings Layout](#simplify-quick-settings-layout)|✅|✅|
|[Turn off automatic promotion of notification icons to the taskbar](#turn-off-automatic-promotion-of-notification-icons-to-the-taskbar)|❌|✅|
|[Turn off notification area cleanup](#turn-off-notification-area-cleanup)|❌|✅|
|[Turn off Windows Copilot](#turn-off-windows-copilot)|✅|✅|

::: zone-end

::: zone pivot="windows-10"
|Setting Name|CSP|GPO|
|-|-|-|
|[Allow widgets](#allow-widgets)|✅|✅|
|[Configures search on the taskbar](#configures-search-on-the-taskbar)|✅|✅|
|[Configures the Chat icon on the taskbar](#configures-the-chat-icon-on-the-taskbar)|✅|✅|
|[Do not allow pinning items in Jump Lists](#do-not-allow-pinning-items-in-jump-lists)|❌|✅|
|[Do not allow pinning programs to the Taskbar](#do-not-allow-pinning-programs-to-the-taskbar)|✅|✅|
|[Do not allow pinning Store app to the Taskbar](#do-not-allow-pinning-store-app-to-the-taskbar)|❌|✅|
|[Do not allow taskbars on more than one display](#do-not-allow-taskbars-on-more-than-one-display)|❌|✅|
|[Do not display or track items in Jump Lists from remote locations](#do-not-display-or-track-items-in-jump-lists-from-remote-locations)|❌|✅|
|[Hide the notification area](#hide-the-notification-area)|❌|✅|
|[Hide the TaskView button](#hide-the-taskview-button)|✅|✅|
|[Lock all taskbar settings](#lock-all-taskbar-settings)|❌|✅|
|[Lock the Taskbar](#lock-the-taskbar)|❌|✅|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent grouping of taskbar items](#prevent-grouping-of-taskbar-items)|❌|✅|
|[Prevent users from adding or removing toolbars](#prevent-users-from-adding-or-removing-toolbars)|❌|✅|
|[Prevent users from moving taskbar to another screen dock location](#prevent-users-from-moving-taskbar-to-another-screen-dock-location)|❌|✅|
|[Prevent users from rearranging toolbars](#prevent-users-from-rearranging-toolbars)|❌|✅|
|[Prevent users from resizing the taskbar](#prevent-users-from-resizing-the-taskbar)|❌|✅|
|[Remove access to the context menus for the taskbar](#remove-access-to-the-context-menus-for-the-taskbar)|❌|✅|
|[Remove Clock from the system notification area](#remove-clock-from-the-system-notification-area)|❌|✅|
|[Remove Notifications and Action Center](#remove-notifications-and-action-center)|❌|✅|
|[Remove pinned programs from the Taskbar](#remove-pinned-programs-from-the-taskbar)|❌|✅|
|[Remove Quick Settings](#remove-quick-settings)|✅|✅|
|[Remove the battery meter](#remove-the-battery-meter)|❌|✅|
|[Remove the Meet Now icon](#remove-the-meet-now-icon)|❌|✅|
|[Remove the networking icon](#remove-the-networking-icon)|❌|✅|
|[Remove the People Bar from the taskbar](#remove-the-people-bar-from-the-taskbar)|✅|✅|
|[Remove the volume control icon](#remove-the-volume-control-icon)|❌|✅|
|[Show additional calendar](#show-additional-calendar)|❌|✅|
|[Simplify Quick Settings Layout](#simplify-quick-settings-layout)|✅|✅|
|[Turn off automatic promotion of notification icons to the taskbar](#turn-off-automatic-promotion-of-notification-icons-to-the-taskbar)|❌|✅|
|[Turn off notification area cleanup](#turn-off-notification-area-cleanup)|❌|✅|
|[Turn off Windows Copilot](#turn-off-windows-copilot)|✅|✅|
::: zone-end

[!INCLUDE [allow-widgets](includes/allow-widgets.md)]
[!INCLUDE [configures-search-on-the-taskbar](includes/configures-search-on-the-taskbar.md)]
[!INCLUDE [configures-the-chat-icon-on-the-taskbar](includes/configures-the-chat-icon-on-the-taskbar.md)]
[!INCLUDE [do-not-allow-pinning-items-in-jump-lists](includes/do-not-allow-pinning-items-in-jump-lists.md)]
[!INCLUDE [do-not-allow-pinning-programs-to-the-taskbar](includes/do-not-allow-pinning-programs-to-the-taskbar.md)]
[!INCLUDE [do-not-allow-pinning-store-app-to-the-taskbar](includes/do-not-allow-pinning-store-app-to-the-taskbar.md)]
[!INCLUDE [do-not-allow-taskbars-on-more-than-one-display](includes/do-not-allow-taskbars-on-more-than-one-display.md)]
[!INCLUDE [do-not-display-or-track-items-in-jump-lists-from-remote-locations](includes/do-not-display-or-track-items-in-jump-lists-from-remote-locations.md)]
[!INCLUDE [hide-the-notification-area](includes/hide-the-notification-area.md)]
[!INCLUDE [hide-the-taskview-button](includes/hide-the-taskview-button.md)]
[!INCLUDE [lock-all-taskbar-settings](includes/lock-all-taskbar-settings.md)]
[!INCLUDE [lock-the-taskbar](includes/lock-the-taskbar.md)]
[!INCLUDE [prevent-changes-to-taskbar-and-start-menu-settings](includes/prevent-changes-to-taskbar-and-start-menu-settings.md)]
[!INCLUDE [prevent-grouping-of-taskbar-items](includes/prevent-grouping-of-taskbar-items.md)]
[!INCLUDE [prevent-users-from-adding-or-removing-toolbars](includes/prevent-users-from-adding-or-removing-toolbars.md)]
[!INCLUDE [prevent-users-from-moving-taskbar-to-another-screen-dock-location](includes/prevent-users-from-moving-taskbar-to-another-screen-dock-location.md)]
[!INCLUDE [prevent-users-from-rearranging-toolbars](includes/prevent-users-from-rearranging-toolbars.md)]
[!INCLUDE [prevent-users-from-resizing-the-taskbar](includes/prevent-users-from-resizing-the-taskbar.md)]
[!INCLUDE [remove-access-to-the-context-menus-for-the-taskbar](includes/remove-access-to-the-context-menus-for-the-taskbar.md)]
[!INCLUDE [remove-clock-from-the-system-notification-area](includes/remove-clock-from-the-system-notification-area.md)]
[!INCLUDE [remove-notifications-and-action-center](includes/remove-notifications-and-action-center.md)]
[!INCLUDE [remove-pinned-programs-from-the-taskbar](includes/remove-pinned-programs-from-the-taskbar.md)]
[!INCLUDE [remove-quick-settings](includes/remove-quick-settings.md)]
[!INCLUDE [remove-the-battery-meter](includes/remove-the-battery-meter.md)]
[!INCLUDE [remove-the-meet-now-icon](includes/remove-the-meet-now-icon.md)]
[!INCLUDE [remove-the-networking-icon](includes/remove-the-networking-icon.md)]
[!INCLUDE [remove-the-people-bar-from-the-taskbar](includes/remove-the-people-bar-from-the-taskbar.md)]
[!INCLUDE [remove-the-volume-control-icon](includes/remove-the-volume-control-icon.md)]
[!INCLUDE [show-additional-calendar](includes/show-additional-calendar.md)]
[!INCLUDE [simplify-quick-settings-layout](includes/simplify-quick-settings-layout.md)]
[!INCLUDE [turn-off-automatic-promotion-of-notification-icons-to-the-taskbar](includes/turn-off-automatic-promotion-of-notification-icons-to-the-taskbar.md)]
[!INCLUDE [turn-off-notification-area-cleanup](includes/turn-off-notification-area-cleanup.md)]
[!INCLUDE [turn-off-windows-copilot](includes/turn-off-windows-copilot.md)]

#### [:::image type="icon" source="../images/icons/allapps.svg"::: **All apps**](#tab/allapps)

::: zone pivot="windows-11"
|Setting Name|CSP|GPO|
|-|-|-|
|[Allow widgets](#allow-widgets)|✅|✅|
|[Configures search on the taskbar](#configures-search-on-the-taskbar)|✅|✅|
|[Configures the Chat icon on the taskbar](#configures-the-chat-icon-on-the-taskbar)|✅|✅|
|[Do not allow pinning items in Jump Lists](#do-not-allow-pinning-items-in-jump-lists)|❌|✅|
|[Do not allow pinning programs to the Taskbar](#do-not-allow-pinning-programs-to-the-taskbar)|✅|✅|
|[Do not allow pinning Store app to the Taskbar](#do-not-allow-pinning-store-app-to-the-taskbar)|❌|✅|
|[Do not allow taskbars on more than one display](#do-not-allow-taskbars-on-more-than-one-display)|❌|✅|
|[Do not display or track items in Jump Lists from remote locations](#do-not-display-or-track-items-in-jump-lists-from-remote-locations)|❌|✅|
|[Hide the notification area](#hide-the-notification-area)|❌|✅|
|[Hide the TaskView button](#hide-the-taskview-button)|✅|✅|
|[Lock all taskbar settings](#lock-all-taskbar-settings)|❌|✅|
|[Lock the Taskbar](#lock-the-taskbar)|❌|✅|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent grouping of taskbar items](#prevent-grouping-of-taskbar-items)|❌|✅|
|[Prevent users from adding or removing toolbars](#prevent-users-from-adding-or-removing-toolbars)|❌|✅|
|[Prevent users from moving taskbar to another screen dock location](#prevent-users-from-moving-taskbar-to-another-screen-dock-location)|❌|✅|
|[Prevent users from rearranging toolbars](#prevent-users-from-rearranging-toolbars)|❌|✅|
|[Prevent users from resizing the taskbar](#prevent-users-from-resizing-the-taskbar)|❌|✅|
|[Remove access to the context menus for the taskbar](#remove-access-to-the-context-menus-for-the-taskbar)|❌|✅|
|[Remove Clock from the system notification area](#remove-clock-from-the-system-notification-area)|❌|✅|
|[Remove Notifications and Action Center](#remove-notifications-and-action-center)|❌|✅|
|[Remove pinned programs from the Taskbar](#remove-pinned-programs-from-the-taskbar)|❌|✅|
|[Remove Quick Settings](#remove-quick-settings)|✅|✅|
|[Remove the battery meter](#remove-the-battery-meter)|❌|✅|
|[Remove the Meet Now icon](#remove-the-meet-now-icon)|❌|✅|
|[Remove the networking icon](#remove-the-networking-icon)|❌|✅|
|[Remove the People Bar from the taskbar](#remove-the-people-bar-from-the-taskbar)|✅|✅|
|[Remove the volume control icon](#remove-the-volume-control-icon)|❌|✅|
|[Show additional calendar](#show-additional-calendar)|❌|✅|
|[Simplify Quick Settings Layout](#simplify-quick-settings-layout)|✅|✅|
|[Turn off automatic promotion of notification icons to the taskbar](#turn-off-automatic-promotion-of-notification-icons-to-the-taskbar)|❌|✅|
|[Turn off notification area cleanup](#turn-off-notification-area-cleanup)|❌|✅|
|[Turn off Windows Copilot](#turn-off-windows-copilot)|✅|✅|

::: zone-end

::: zone pivot="windows-10"
|Setting Name|CSP|GPO|
|-|-|-|
|[Allow widgets](#allow-widgets)|✅|✅|
|[Configures search on the taskbar](#configures-search-on-the-taskbar)|✅|✅|
|[Configures the Chat icon on the taskbar](#configures-the-chat-icon-on-the-taskbar)|✅|✅|
|[Do not allow pinning items in Jump Lists](#do-not-allow-pinning-items-in-jump-lists)|❌|✅|
|[Do not allow pinning programs to the Taskbar](#do-not-allow-pinning-programs-to-the-taskbar)|✅|✅|
|[Do not allow pinning Store app to the Taskbar](#do-not-allow-pinning-store-app-to-the-taskbar)|❌|✅|
|[Do not allow taskbars on more than one display](#do-not-allow-taskbars-on-more-than-one-display)|❌|✅|
|[Do not display or track items in Jump Lists from remote locations](#do-not-display-or-track-items-in-jump-lists-from-remote-locations)|❌|✅|
|[Hide the notification area](#hide-the-notification-area)|❌|✅|
|[Hide the TaskView button](#hide-the-taskview-button)|✅|✅|
|[Lock all taskbar settings](#lock-all-taskbar-settings)|❌|✅|
|[Lock the Taskbar](#lock-the-taskbar)|❌|✅|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent grouping of taskbar items](#prevent-grouping-of-taskbar-items)|❌|✅|
|[Prevent users from adding or removing toolbars](#prevent-users-from-adding-or-removing-toolbars)|❌|✅|
|[Prevent users from moving taskbar to another screen dock location](#prevent-users-from-moving-taskbar-to-another-screen-dock-location)|❌|✅|
|[Prevent users from rearranging toolbars](#prevent-users-from-rearranging-toolbars)|❌|✅|
|[Prevent users from resizing the taskbar](#prevent-users-from-resizing-the-taskbar)|❌|✅|
|[Remove access to the context menus for the taskbar](#remove-access-to-the-context-menus-for-the-taskbar)|❌|✅|
|[Remove Clock from the system notification area](#remove-clock-from-the-system-notification-area)|❌|✅|
|[Remove Notifications and Action Center](#remove-notifications-and-action-center)|❌|✅|
|[Remove pinned programs from the Taskbar](#remove-pinned-programs-from-the-taskbar)|❌|✅|
|[Remove Quick Settings](#remove-quick-settings)|✅|✅|
|[Remove the battery meter](#remove-the-battery-meter)|❌|✅|
|[Remove the Meet Now icon](#remove-the-meet-now-icon)|❌|✅|
|[Remove the networking icon](#remove-the-networking-icon)|❌|✅|
|[Remove the People Bar from the taskbar](#remove-the-people-bar-from-the-taskbar)|✅|✅|
|[Remove the volume control icon](#remove-the-volume-control-icon)|❌|✅|
|[Show additional calendar](#show-additional-calendar)|❌|✅|
|[Simplify Quick Settings Layout](#simplify-quick-settings-layout)|✅|✅|
|[Turn off automatic promotion of notification icons to the taskbar](#turn-off-automatic-promotion-of-notification-icons-to-the-taskbar)|❌|✅|
|[Turn off notification area cleanup](#turn-off-notification-area-cleanup)|❌|✅|
|[Turn off Windows Copilot](#turn-off-windows-copilot)|✅|✅|
::: zone-end

[!INCLUDE [allow-widgets](includes/allow-widgets.md)]
[!INCLUDE [configures-search-on-the-taskbar](includes/configures-search-on-the-taskbar.md)]
[!INCLUDE [configures-the-chat-icon-on-the-taskbar](includes/configures-the-chat-icon-on-the-taskbar.md)]
[!INCLUDE [do-not-allow-pinning-items-in-jump-lists](includes/do-not-allow-pinning-items-in-jump-lists.md)]
[!INCLUDE [do-not-allow-pinning-programs-to-the-taskbar](includes/do-not-allow-pinning-programs-to-the-taskbar.md)]
[!INCLUDE [do-not-allow-pinning-store-app-to-the-taskbar](includes/do-not-allow-pinning-store-app-to-the-taskbar.md)]
[!INCLUDE [do-not-allow-taskbars-on-more-than-one-display](includes/do-not-allow-taskbars-on-more-than-one-display.md)]
[!INCLUDE [do-not-display-or-track-items-in-jump-lists-from-remote-locations](includes/do-not-display-or-track-items-in-jump-lists-from-remote-locations.md)]
[!INCLUDE [hide-the-notification-area](includes/hide-the-notification-area.md)]
[!INCLUDE [hide-the-taskview-button](includes/hide-the-taskview-button.md)]
[!INCLUDE [lock-all-taskbar-settings](includes/lock-all-taskbar-settings.md)]
[!INCLUDE [lock-the-taskbar](includes/lock-the-taskbar.md)]
[!INCLUDE [prevent-changes-to-taskbar-and-start-menu-settings](includes/prevent-changes-to-taskbar-and-start-menu-settings.md)]
[!INCLUDE [prevent-grouping-of-taskbar-items](includes/prevent-grouping-of-taskbar-items.md)]
[!INCLUDE [prevent-users-from-adding-or-removing-toolbars](includes/prevent-users-from-adding-or-removing-toolbars.md)]
[!INCLUDE [prevent-users-from-moving-taskbar-to-another-screen-dock-location](includes/prevent-users-from-moving-taskbar-to-another-screen-dock-location.md)]
[!INCLUDE [prevent-users-from-rearranging-toolbars](includes/prevent-users-from-rearranging-toolbars.md)]
[!INCLUDE [prevent-users-from-resizing-the-taskbar](includes/prevent-users-from-resizing-the-taskbar.md)]
[!INCLUDE [remove-access-to-the-context-menus-for-the-taskbar](includes/remove-access-to-the-context-menus-for-the-taskbar.md)]
[!INCLUDE [remove-clock-from-the-system-notification-area](includes/remove-clock-from-the-system-notification-area.md)]
[!INCLUDE [remove-notifications-and-action-center](includes/remove-notifications-and-action-center.md)]
[!INCLUDE [remove-pinned-programs-from-the-taskbar](includes/remove-pinned-programs-from-the-taskbar.md)]
[!INCLUDE [remove-quick-settings](includes/remove-quick-settings.md)]
[!INCLUDE [remove-the-battery-meter](includes/remove-the-battery-meter.md)]
[!INCLUDE [remove-the-meet-now-icon](includes/remove-the-meet-now-icon.md)]
[!INCLUDE [remove-the-networking-icon](includes/remove-the-networking-icon.md)]
[!INCLUDE [remove-the-people-bar-from-the-taskbar](includes/remove-the-people-bar-from-the-taskbar.md)]
[!INCLUDE [remove-the-volume-control-icon](includes/remove-the-volume-control-icon.md)]
[!INCLUDE [show-additional-calendar](includes/show-additional-calendar.md)]
[!INCLUDE [simplify-quick-settings-layout](includes/simplify-quick-settings-layout.md)]
[!INCLUDE [turn-off-automatic-promotion-of-notification-icons-to-the-taskbar](includes/turn-off-automatic-promotion-of-notification-icons-to-the-taskbar.md)]
[!INCLUDE [turn-off-notification-area-cleanup](includes/turn-off-notification-area-cleanup.md)]
[!INCLUDE [turn-off-windows-copilot](includes/turn-off-windows-copilot.md)]

---


|Setting Name|CSP|GPO|
|-|-|-|
|[Allow widgets](#allow-widgets)|✅|✅|
|[Configure Start layout](#configure-start-layout)|✅|✅|
|[Configures search on the taskbar](#configures-search-on-the-taskbar)|✅|✅|
|[Configures the Chat icon on the taskbar](#configures-the-chat-icon-on-the-taskbar)|✅|✅|
|[Do not allow pinning items in Jump Lists](#do-not-allow-pinning-items-in-jump-lists)|❌|✅|
|[Do not allow pinning programs to the Taskbar](#do-not-allow-pinning-programs-to-the-taskbar)|✅|✅|
|[Do not allow pinning Store app to the Taskbar](#do-not-allow-pinning-store-app-to-the-taskbar)|❌|✅|
|[Do not allow taskbars on more than one display](#do-not-allow-taskbars-on-more-than-one-display)|❌|✅|
|[Do not display or track items in Jump Lists from remote locations](#do-not-display-or-track-items-in-jump-lists-from-remote-locations)|❌|✅|
|[Hide the notification area](#hide-the-notification-area)|❌|✅|
|[Hide the TaskView button](#hide-the-taskview-button)|✅|✅|
|[Lock all taskbar settings](#lock-all-taskbar-settings)|❌|✅|
|[Lock the Taskbar](#lock-the-taskbar)|❌|✅|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent grouping of taskbar items](#prevent-grouping-of-taskbar-items)|❌|✅|
|[Prevent users from adding or removing toolbars](#prevent-users-from-adding-or-removing-toolbars)|❌|✅|
|[Prevent users from moving taskbar to another screen dock location](#prevent-users-from-moving-taskbar-to-another-screen-dock-location)|❌|✅|
|[Prevent users from rearranging toolbars](#prevent-users-from-rearranging-toolbars)|❌|✅|
|[Prevent users from resizing the taskbar](#prevent-users-from-resizing-the-taskbar)|❌|✅|
|[Remove access to the context menus for the taskbar](#remove-access-to-the-context-menus-for-the-taskbar)|❌|✅|
|[Remove Clock from the system notification area](#remove-clock-from-the-system-notification-area)|❌|✅|
|[Remove Notifications and Action Center](#remove-notifications-and-action-center)|❌|✅|
|[Remove pinned programs from the Taskbar](#remove-pinned-programs-from-the-taskbar)|❌|✅|
|[Remove Quick Settings](#remove-quick-settings)|✅|✅|
|[Remove the battery meter](#remove-the-battery-meter)|❌|✅|
|[Remove the Meet Now icon](#remove-the-meet-now-icon)|❌|✅|
|[Remove the networking icon](#remove-the-networking-icon)|❌|✅|
|[Remove the People Bar from the taskbar](#remove-the-people-bar-from-the-taskbar)|✅|✅|
|[Remove the volume control icon](#remove-the-volume-control-icon)|❌|✅|
|[Show additional calendar](#show-additional-calendar)|❌|✅|
|[Simplify Quick Settings Layout](#simplify-quick-settings-layout)|✅|✅|
|[Turn off automatic promotion of notification icons to the taskbar](#turn-off-automatic-promotion-of-notification-icons-to-the-taskbar)|❌|✅|
|[Turn off notification area cleanup](#turn-off-notification-area-cleanup)|❌|✅|
|[Turn off Windows Copilot](#turn-off-windows-copilot)|✅|✅|

[!INCLUDE [allow-widgets](includes/allow-widgets.md)]
[!INCLUDE [configure-start-layout](includes/configure-start-layout.md)]
[!INCLUDE [configures-search-on-the-taskbar](includes/configures-search-on-the-taskbar.md)]
[!INCLUDE [configures-the-chat-icon-on-the-taskbar](includes/configures-the-chat-icon-on-the-taskbar.md)]
[!INCLUDE [do-not-allow-pinning-items-in-jump-lists](includes/do-not-allow-pinning-items-in-jump-lists.md)]
[!INCLUDE [do-not-allow-pinning-programs-to-the-taskbar](includes/do-not-allow-pinning-programs-to-the-taskbar.md)]
[!INCLUDE [do-not-allow-pinning-store-app-to-the-taskbar](includes/do-not-allow-pinning-store-app-to-the-taskbar.md)]
[!INCLUDE [do-not-allow-taskbars-on-more-than-one-display](includes/do-not-allow-taskbars-on-more-than-one-display.md)]
[!INCLUDE [do-not-display-or-track-items-in-jump-lists-from-remote-locations](includes/do-not-display-or-track-items-in-jump-lists-from-remote-locations.md)]
[!INCLUDE [hide-the-notification-area](includes/hide-the-notification-area.md)]
[!INCLUDE [hide-the-taskview-button](includes/hide-the-taskview-button.md)]
[!INCLUDE [lock-all-taskbar-settings](includes/lock-all-taskbar-settings.md)]
[!INCLUDE [lock-the-taskbar](includes/lock-the-taskbar.md)]
[!INCLUDE [prevent-changes-to-taskbar-and-start-menu-settings](includes/prevent-changes-to-taskbar-and-start-menu-settings.md)]
[!INCLUDE [prevent-grouping-of-taskbar-items](includes/prevent-grouping-of-taskbar-items.md)]
[!INCLUDE [prevent-users-from-adding-or-removing-toolbars](includes/prevent-users-from-adding-or-removing-toolbars.md)]
[!INCLUDE [prevent-users-from-moving-taskbar-to-another-screen-dock-location](includes/prevent-users-from-moving-taskbar-to-another-screen-dock-location.md)]
[!INCLUDE [prevent-users-from-rearranging-toolbars](includes/prevent-users-from-rearranging-toolbars.md)]
[!INCLUDE [prevent-users-from-resizing-the-taskbar](includes/prevent-users-from-resizing-the-taskbar.md)]
[!INCLUDE [remove-access-to-the-context-menus-for-the-taskbar](includes/remove-access-to-the-context-menus-for-the-taskbar.md)]
[!INCLUDE [remove-clock-from-the-system-notification-area](includes/remove-clock-from-the-system-notification-area.md)]
[!INCLUDE [remove-notifications-and-action-center](includes/remove-notifications-and-action-center.md)]
[!INCLUDE [remove-pinned-programs-from-the-taskbar](includes/remove-pinned-programs-from-the-taskbar.md)]
[!INCLUDE [remove-quick-settings](includes/remove-quick-settings.md)]
[!INCLUDE [remove-the-battery-meter](includes/remove-the-battery-meter.md)]
[!INCLUDE [remove-the-meet-now-icon](includes/remove-the-meet-now-icon.md)]
[!INCLUDE [remove-the-networking-icon](includes/remove-the-networking-icon.md)]
[!INCLUDE [remove-the-people-bar-from-the-taskbar](includes/remove-the-people-bar-from-the-taskbar.md)]
[!INCLUDE [remove-the-volume-control-icon](includes/remove-the-volume-control-icon.md)]
[!INCLUDE [show-additional-calendar](includes/show-additional-calendar.md)]
[!INCLUDE [simplify-quick-settings-layout](includes/simplify-quick-settings-layout.md)]
[!INCLUDE [turn-off-automatic-promotion-of-notification-icons-to-the-taskbar](includes/turn-off-automatic-promotion-of-notification-icons-to-the-taskbar.md)]
[!INCLUDE [turn-off-notification-area-cleanup](includes/turn-off-notification-area-cleanup.md)]
[!INCLUDE [turn-off-windows-copilot](includes/turn-off-windows-copilot.md)]

DisableEditingQuickSettings

`./Device/Vendor/MSFT/Policy/Config/Start/`[DisableEditingQuickSettings](/windows/client-management/mdm/policy-csp-start#disableeditingquicksettings)

HideRecentJumplists
`./User/Vendor/MSFT/Policy/Config/Start/`[HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists)
`./Device/Vendor/MSFT/Policy/Config/Start/`[HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists)