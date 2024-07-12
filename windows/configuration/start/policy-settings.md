---
title: Start policy settings
description: Learn about the policy settings to configure the Windows Start menu.
ms.topic: reference
ms.date: 07/10/2024
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Start menu policy settings

This reference article outlines the policy settings available for customizing the Start menu experience, using Configuration Service Provider (CSP) or group policy (GPO). For information about how to configure these settings, see [Configure the Start menu](index.md).

The settings are categorized and presented in alphabetical order to facilitate navigation and configuration.

:::row:::
:::column span="2":::

1. **Start layout**: settings to control the Start menu appearance and its behavior
1. **All apps options**: settings to control the All apps list
1. **Account options**: settings to control the options exposed when selecting the user account icon
1. **Pinned folders**: settings to control the folders pinned for quick access
1. **Power options**: settings to control the options exposed when selecting the power button

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
|Policy name| CSP | GPO |
|-|-|-|
|[Configure Start pins](#configure-start-pins)|✅|❌|
|[Disable context menus](#disable-context-menus)|✅|✅|
|[Disable search](#disable-search)|✅|✅|
|[Don't use the search-based method when resolving shell shortcuts](#dont-use-the-search-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Don't use the tracking-based method when resolving shell shortcuts](#dont-use-the-tracking-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent users from customizing their Start](#prevent-users-from-customizing-their-start)|❌|✅|
|[Prevent users from uninstalling applications from Start](#prevent-users-from-uninstalling-applications-from-start)|❌|✅|
|[Remove common program groups](#remove-common-program-groups)|❌|✅|
|[Show **Run as different user** command](#show-run-as-different-user-command)|❌|✅|

### Recommended section

|Policy name| CSP | GPO |
|-|-|-|
|[Clear history of recently opened documents on exit](#clear-history-of-recently-opened-documents-on-exit)|❌|✅|
|[Hide recently added apps](#hide-recently-added-apps)|✅|✅|
|[Hide recent jumplists](#hide-recent-jumplists)|✅|✅|
|[Hide recommended personalized sites](#hide-recommended-personalized-sites)|✅|✅|
|[Hide recommended section](#hide-recommended-section)|✅|✅|

::: zone-end

::: zone pivot="windows-10"
|Policy name| CSP | GPO |
|-|-|-|
|[Clear history of recently opened documents on exit](#clear-history-of-recently-opened-documents-on-exit)|❌|✅|
|[Clear tile notifications during log on](#clear-tile-notifications-during-log-on)|❌|✅|
|[Configure Start layout](#configure-start-layout)|✅|✅|
|[Disable context menus](#disable-context-menus)|✅|✅|
|[Don't use the search-based method when resolving shell shortcuts](#dont-use-the-search-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Don't use the tracking-based method when resolving shell shortcuts](#dont-use-the-tracking-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Force Start size](#force-start-size)|✅|✅|
|[Hide recently added apps](#hide-recently-added-apps)|✅|✅|
|[Import Edge assets](#import-edge-assets)|✅|❌|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent users from customizing their Start](#prevent-users-from-customizing-their-start)|❌|✅|
|[Prevent users from uninstalling applications from Start](#prevent-users-from-uninstalling-applications-from-start)|❌|✅|
|[Remove common program groups](#remove-common-program-groups)|❌|✅|
|[Show **Run as different user** command](#show-run-as-different-user-command)|❌|✅|
::: zone-end

[!INCLUDE [clear-history-of-recently-opened-documents-on-exit](includes/clear-history-of-recently-opened-documents-on-exit.md)]
::: zone pivot="windows-10"
[!INCLUDE [clear-tile-notifications-during-log-on](includes/clear-tile-notifications-during-log-on.md)]
[!INCLUDE [configure-start-layout](includes/configure-start-layout.md)]
::: zone-end
::: zone pivot="windows-11"
[!INCLUDE [configure-start-pins](includes/configure-start-pins.md)]
::: zone-end
[!INCLUDE [disable-context-menus](includes/disable-context-menus.md)]
::: zone pivot="windows-11"
[!INCLUDE [disable-search](includes/disable-search.md)]
::: zone-end
[!INCLUDE [do-not-use-the-search-based-method-when-resolving-shell-shortcuts](includes/do-not-use-the-search-based-method-when-resolving-shell-shortcuts.md)]
[!INCLUDE [do-not-use-the-tracking-based-method-when-resolving-shell-shortcuts](includes/do-not-use-the-tracking-based-method-when-resolving-shell-shortcuts.md)]
::: zone pivot="windows-10"
[!INCLUDE [force-start-size](includes/force-start-size.md)]
::: zone-end
[!INCLUDE [hide-recently-added-apps](includes/hide-recently-added-apps.md)]
[!INCLUDE [hide-recent-jumplists](includes/hide-recent-jumplists.md)]
::: zone pivot="windows-11"
[!INCLUDE [hide-recommended-personalized-sites](includes/hide-recommended-personalized-sites.md)]
[!INCLUDE [hide-recommended-section](includes/hide-recommended-section.md)]
::: zone-end
::: zone pivot="windows-10"
[!INCLUDE [import-edge-assets](includes/import-edge-assets.md)]
::: zone-end
[!INCLUDE [prevent-changes-to-taskbar-and-start-menu-settings](includes/prevent-changes-to-taskbar-and-start-menu-settings.md)]
[!INCLUDE [prevent-users-from-customizing-their-start](includes/prevent-users-from-customizing-their-start.md)]
[!INCLUDE [prevent-users-from-uninstalling-applications-from-start](includes/prevent-users-from-uninstalling-applications-from-start.md)]
[!INCLUDE [remove-common-program-groups](includes/remove-common-program-groups.md)]
[!INCLUDE [show-run-as-different-user-command](includes/show-run-as-different-user-command.md)]

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

#### [:::image type="icon" source="../images/icons/user.svg"::: **Account options**](#tab/user)

::: zone pivot="windows-11"
|Policy name| CSP | GPO |
|-|-|-|
|[Hide **Change account settings**](#hide-change-account-settings)|✅|❌|
|[Hide **Sign out**](#hide-sign-out)|✅|✅|
|[Hide **Switch user**](#hide-switch-user)|✅|❌|
|[Hide entry points for Fast User Switching](#hide-entry-points-for-fast-user-switching)|✅|✅|
|[Hide user tile](#hide-user-tile)|✅|❌|
::: zone-end

::: zone pivot="windows-10"
|Policy name| CSP | GPO |
|-|-|-|
|[Hide **Change account settings**](#hide-change-account-settings)|✅|❌|
|[Hide **Lock**](#hide-lock)|✅|❌|
|[Hide **Sign out**](#hide-sign-out)|✅|✅|
|[Hide **Switch user**](#hide-switch-user)|✅|❌|
|[Hide entry points for Fast User Switching](#hide-entry-points-for-fast-user-switching)|✅|✅|
|[Hide user tile](#hide-user-tile)|✅|❌|
::: zone-end

[!INCLUDE [hide-change-account-settings](includes/hide-change-account-settings.md)]

::: zone pivot="windows-10"
[!INCLUDE [hide-lock](includes/hide-lock.md)]
::: zone-end

[!INCLUDE [hide-signout](includes/hide-signout.md)]
[!INCLUDE [hide-switch-user](includes/hide-switch-user.md)]
[!INCLUDE [hide-lock](includes/hide-entry-points-for-fast-user-switching.md)]
[!INCLUDE [hide-user-tile](includes/hide-user-tile.md)]

#### [:::image type="icon" source="../images/icons/folder.svg"::: **Pinned folders**](#tab/folders)

|Policy name| CSP | GPO |
|-|-|-|
|[Allow pinned folder Documents](#allow-pinned-folder-documents)|✅|❌|
|[Allow pinned folder Downloads](#allow-pinned-folder-downloads)|✅|❌|
|[Allow pinned folder File Explorer](#allow-pinned-folder-file-explorer)|✅|❌|
|[Allow pinned folder Home Group](#allow-pinned-folder-home-group)|✅|❌|
|[Allow pinned folder Music](#allow-pinned-folder-music)|✅|❌|
|[Allow pinned folder Network](#allow-pinned-folder-network)|✅|❌|
|[Allow pinned folder Personal Folder](#allow-pinned-folder-personal-folder)|✅|❌|
|[Allow pinned folder Pictures](#allow-pinned-folder-pictures)|✅|❌|
|[Allow pinned folder Settings](#allow-pinned-folder-settings)|✅|❌|
|[Allow pinned folder Videos](#allow-pinned-folder-videos)|✅|❌|

[!INCLUDE [allow-pinned-folder-documents](includes/allow-pinned-folder-documents.md)]
[!INCLUDE [allow-pinned-folder-downloads](includes/allow-pinned-folder-downloads.md)]
[!INCLUDE [allow-pinned-folder-file-explorer](includes/allow-pinned-folder-file-explorer.md)]
[!INCLUDE [allow-pinned-folder-home-group](includes/allow-pinned-folder-home-group.md)]
[!INCLUDE [allow-pinned-folder-music](includes/allow-pinned-folder-music.md)]
[!INCLUDE [allow-pinned-folder-network](includes/allow-pinned-folder-network.md)]
[!INCLUDE [allow-pinned-folder-personal-folder](includes/allow-pinned-folder-personal-folder.md)]
[!INCLUDE [allow-pinned-folder-pictures](includes/allow-pinned-folder-pictures.md)]
[!INCLUDE [allow-pinned-folder-settings](includes/allow-pinned-folder-settings.md)]
[!INCLUDE [allow-pinned-folder-videos](includes/allow-pinned-folder-videos.md)]

#### [:::image type="icon" source="../images/icons/power.svg"::: **Power options**](#tab/power)


::: zone pivot="windows-11"
|Policy name| CSP | GPO |
|-|-|-|
|[Hide **Hibernate** ](#hide-hibernate)|✅|❌|
|[Hide **Lock**](#hide-lock)|✅|❌|
|[Hide **Power** button](#hide-power-button)|✅|❌|
|[Hide **Restart**](#hide-restart)|✅|❌|
|[Hide **Shut down**](#hide-shut-down)|✅|❌|
|[Hide **Sleep**](#hide-sleep)|✅|❌|
|[Remove and prevent access to the shut down restart sleep and hibernate commands](#remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands)|❌|✅|
::: zone-end

::: zone pivot="windows-10"

|Policy name| CSP | GPO |
|-|-|-|
|[Hide **Hibernate** ](#hide-hibernate)|✅|❌|
|[Hide **Power** button](#hide-power-button)|✅|❌|
|[Hide **Restart**](#hide-restart)|✅|❌|
|[Hide **Shut down**](#hide-shut-down)|✅|❌|
|[Hide **Sleep**](#hide-sleep)|✅|❌|
|[Remove and prevent access to the shut down restart sleep and hibernate commands](#remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands)|❌|✅|

::: zone-end

[!INCLUDE [hide-hibernate](includes/hide-hibernate.md)]
::: zone pivot="windows-11"
[!INCLUDE [hide-lock](includes/hide-lock.md)]
::: zone-end
[!INCLUDE [hide-power-button](includes/hide-power-button.md)]
[!INCLUDE [hide-restart](includes/hide-restart.md)]
[!INCLUDE [hide-shut-down](includes/hide-shut-down.md)]
[!INCLUDE [hide-sleep](includes/hide-sleep.md)]

[!INCLUDE [remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands](includes/remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands.md)]

---
