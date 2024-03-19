---
title: Start menu policy settings
description: Learn about the policy settings to configure the Windows Start menu.
ms.topic: reference
ms.date: 03/15/2024
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Start menu policy settings

This reference article provides a comprehensive list of policy settings for Start menu.

:::row:::
:::column span="2":::
The list of settings is sorted alphabetically and organized in four categories:

1. **Start layout**: settings to control the Start menu layout and its behavior
1. **All apps options**: settings to control the All apps list
1. **User options**: settings to control the options exposed when selecting the user icon
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

For information about how to configure these settings, see [Configure the Start menu](configure.md).

Select one of the tabs to see the list of available settings:

#### [:::image type="icon" source="../images/icons/start.svg"::: **Pinned**](#tab/start)

The following table lists the policies that control the Start menu layout. Select the policy name for more details.

::: zone pivot="windows-11"
|Policy name| CSP | GPO |
|-|-|-|
|[Clear history of recently opened documents on exit](#clear-history-of-recently-opened-documents-on-exit)|❌|✅|
|[Configure Start pins](/windows/client-management/mdm/policy-csp-start#configurestartpins)|✅|❌|
|[Disable context menus](#disable-context-menus)|✅|✅|
|[Disable search](#disable-search)|✅|✅|
|[Don't use the search-based method when resolving shell shortcuts](#dont-use-the-search-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Don't use the tracking-based method when resolving shell shortcuts](#dont-use-the-tracking-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Hide frequently used apps](#hide-frequently-used-apps)|✅|✅|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent users from customizing their Start](#prevent-users-from-customizing-their-start)|❌|✅|
|[Prevent users from uninstalling applications from Start](#prevent-users-from-uninstalling-applications-from-start)|❌|✅|
|[Remove common program groups](#remove-common-program-groups)|❌|✅|
|[Show "Run as different user" command](#show-run-as-different-user-command)|❌|✅|

### Recommended area

|Policy name| CSP | GPO |
|-|-|-|
|[Clear history of recently opened documents on exit](#clear-history-of-recently-opened-documents-on-exit)|❌|✅|
|[Hide recently added apps](#hide-recently-added-apps)|✅|✅|
|[Hide recent jumplists](#hiderecentjumplists)|✅|✅|
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
|[Hide frequently used apps](#hide-frequently-used-apps)|✅|✅|
|[Hide recently added apps](#hide-recently-added-apps)|✅|✅|
|[Import Edge assets](/windows/client-management/mdm/policy-csp-start#importedgeassets)|✅|❌|
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|
|[Prevent users from customizing their Start](#prevent-users-from-customizing-their-start)|❌|✅|
|[Prevent users from uninstalling applications from Start](#prevent-users-from-uninstalling-applications-from-start)|❌|✅|
|[Remove common program groups](#remove-common-program-groups)|❌|✅|
|[Show "Run as different user" command](#show-run-as-different-user-command)|❌|✅|
::: zone-end

[!INCLUDE [clear-history-of-recently-opened-documents-on-exit](includes/clear-history-of-recently-opened-documents-on-exit.md)]

::: zone pivot="windows-10"
[!INCLUDE [clear-tile-notifications-during-log-on](includes/clear-tile-notifications-during-log-on.md)]
[!INCLUDE [configure-start-layout](includes/configure-start-layout.md)]
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

[!INCLUDE [prevent-changes-to-taskbar-and-start-menu-settings](includes/prevent-changes-to-taskbar-and-start-menu-settings.md)]
[!INCLUDE [prevent-users-from-customizing-their-start](includes/prevent-users-from-customizing-their-start.md)]
[!INCLUDE [prevent-users-from-uninstalling-applications-from-start](includes/prevent-users-from-uninstalling-applications-from-start.md)]
[!INCLUDE [remove-common-program-groups](includes/remove-common-program-groups.md)]
[!INCLUDE [show-run-as-different-user-command](includes/show-run-as-different-user-command.md)]

#### [:::image type="icon" source="../images/icons/allapps.svg"::: **All apps**](#tab/allapps)

|Policy name| CSP | GPO |
|-|-|-|
|[Clear the recent programs list for new users](#clear-the-recent-programs-list-for-new-users)|❌|✅|
|[Hide **All Programs** list](#hide-all-programs-list)|✅|✅|
|[Hide frequently used apps](#hide-frequently-used-apps)|✅|✅|
|[Hide most used lists](#hide-most-used-lists)|✅|✅|

[!INCLUDE [clear-the-recent-programs-list-for-new-users](includes/clear-the-recent-programs-list-for-new-users.md)]
[!INCLUDE [hide-all-programs-list](includes/hide-all-programs-list.md)]
[!INCLUDE [hide-frequently-used-apps](includes/hide-frequently-used-apps.md)]
[!INCLUDE [hide-most-used-lists](includes/hide-most-used-lists.md)]

#### [:::image type="icon" source="../images/icons/user.svg"::: **User options**](#tab/user)

|Policy name| CSP | GPO |
|-|-|-|
|[Hide **Change sccount settings** button](/windows/client-management/mdm/policy-csp-start#hidechangeaccountsettings)|✅|❌|
|[Hide **Lock** button](/windows/client-management/mdm/policy-csp-start#hidelock)|✅|❌|
|[Hide **Sign out** button](#hide-sign-out-button)|✅|✅|
|[Hide **Switch User** button](/windows/client-management/mdm/policy-csp-start#hideswitchaccount)|✅|❌|
|[Hide user tile](/windows/client-management/mdm/policy-csp-start#hideusertile)|✅|❌|

[!INCLUDE [hide-signout-button](includes/hide-signout-button.md)]

#### [:::image type="icon" source="../images/icons/folder.svg"::: **Pinned folders**](#tab/folders)

|Policy name| CSP | GPO |
|-|-|-|
|[Allow pinned folder Documents](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderdocuments)|✅|❌|
|[Allow pinned folder Downloads](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderdownloads)|✅|❌|
|[Allow pinned folder File Explorer](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderfileexplorer)|✅|❌|
|[Allow pinned folder Home Group](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderhomegroup)|✅|❌|
|[Allow pinned folder Music](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldermusic)|✅|❌|
|[Allow pinned folder Network](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldernetwork)|✅|❌|
|[Allow pinned folder Personal Folder](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderpersonalfolder)|✅|❌|
|[Allow pinned folder Pictures](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderpictures)|✅|❌|
|[Allow pinned folder Settings](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldersettings)|✅|❌|
|[Allow pinned folder Videos](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldervideos)|✅|❌|

#### [:::image type="icon" source="../images/icons/power.svg"::: **Power options**](#tab/power)

|Policy name| CSP | GPO |
|-|-|-|
|[Hide **Hibernate** button](/windows/client-management/mdm/policy-csp-start#hidehibernate)|✅|❌|
|[Hide **Power** button](/windows/client-management/mdm/policy-csp-start#hidepowerbutton)|✅|❌|
|[Hide **Restart** button](/windows/client-management/mdm/policy-csp-start#hiderestart)|✅|❌|
|[Hide **Shutdown** button](/windows/client-management/mdm/policy-csp-start#hideshutdown)|✅|❌|
|[Hide **Sleep** button](/windows/client-management/mdm/policy-csp-start#hidesleep)|✅|❌|
|[Remove and prevent access to the shut down restart sleep and hibernate commands](#remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands)|❌|✅|

[!INCLUDE [remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands-um](includes/remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands-um.md)]

---

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp-start


<!--

## Taskbar

[DisableControlCenter](/windows/client-management/mdm/policy-csp-start#disablecontrolcenter)
[HidePeopleBar](/windows/client-management/mdm/policy-csp-start#hidepeoplebar)
[HideTaskViewButton](/windows/client-management/mdm/policy-csp-start#hidetaskviewbutton)
[NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#nopinningtotaskbar)
[SimplifyQuickSettings](/windows/client-management/mdm/policy-csp-start#simplifyquicksettings)
|[Prevent changes to Taskbar and Start Menu Settings](#prevent-changes-to-taskbar-and-start-menu-settings)|❌|✅|

[!INCLUDE [disable-editing-quick-settings](includes/disable-editing-quick-settings.md)]

::: zone pivot="windows-11"
|Policy name| CSP | GPO |
|-|-|-|
|[Disable editing quick settings](#disable-editing-quick-settings)|✅|✅|
::: zone-end

::: zone pivot="windows-10"
|Policy name| CSP | GPO |
|-|-|-|

::: zone-end
