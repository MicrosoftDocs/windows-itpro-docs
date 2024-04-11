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
