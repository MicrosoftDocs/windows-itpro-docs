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

1. **Start layout**: settings to control the Start menu layout
1. **User options**: settings to control the options exposed when selecting the user icon
1. **Pinned folders**: settings to control the folders pinned for quick access
1. **Power options**: settings to control the options exposed when selecting the power icon

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

#### [:::image type="icon" source="../images/icons/start.svg"::: **Start layout**](#tab/start)

The following table lists the policies that control the Start menu layout. Select the policy name for more details.

|Policy name| CSP | GPO |
|-|-|-|
|[Clear the recent programs list for new users](#clear-the-recent-programs-list-for-new-users)|❌|✅|
|[Clear tile notifications during log on](#clear-tile-notifications-during-log-on)|❌|✅|
|[Disable context menus](#disable-context-menus-in-the-start-menu)|✅|✅|
|[Disable editing quick settings](disable-editing-quick-settings)|✅|✅|
|[Do not use the search-based method when resolving shell shortcuts](#do-not-use-the-search-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Do not use the tracking-based method when resolving shell shortcuts](#do-not-use-the-tracking-based-method-when-resolving-shell-shortcuts)|❌|✅|
|[Force Start size](#force-tart-size)|✅|✅|
|[Hide *All Programs* list](#hide-all-programs)|✅|✅|
|[Hide *Recently Added* apps](#hide-recently-added-apps)|✅|✅|
|[Hide frequently used apps](#hide-frequently-used-apps)|✅|✅|
|[Hide most used lists](#hide-most-used-lists)|✅|✅|
|[Hide recent jumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists)|✅||
|[Hide recommended personalized sites](#hide-recommended-personalized-sites)|✅|✅|
|[Hide recommended section](#hide-recommended-section)|✅|✅|
|[Import Edge assets](/windows/client-management/mdm/policy-csp-start#importedgeassets)|✅|❌|
|[Start layout](/windows/client-management/mdm/policy-csp-start#startlayout)|✅|✅|
|[Start pins](/windows/client-management/mdm/policy-csp-start#configurestartpins)|✅|❌|


[!INCLUDE [clear-history-of-recently-opened-documents-on-exit-u](includes/clear-history-of-recently-opened-documents-on-exit-u.md)]
[!INCLUDE [clear-the-recent-programs-list-for-new-users](includes/clear-the-recent-programs-list-for-new-users-u.md)]

::: zone pivot="windows-10"
[!INCLUDE [clear-tile-notifications-during-log-on](includes/clear-tile-notifications-during-log-on-u.md)]
::: zone-end

::: zone pivot="windows-10"
[!INCLUDE [start-layout](includes/start-layout-um.md)]
::: zone-end


[!INCLUDE [disable-context-menus-in-the-start-menu-um](includes/disable-context-menus-in-the-start-menu-um.md)]

::: zone pivot="windows-11"
[!INCLUDE [disable-editing-quick-settings-m](includes/disable-editing-quick-settings-m.md)]
::: zone-end

[!INCLUDE [do-not-keep-history-of-recently-opened-documents-um](includes/do-not-keep-history-of-recently-opened-documents-um.md)]
[!INCLUDE [do-not-use-the-search-based-method-when-resolving-shell-shortcuts-u](includes/do-not-use-the-search-based-method-when-resolving-shell-shortcuts-u.md)]
[!INCLUDE [do-not-use-the-tracking-based-method-when-resolving-shell-shortcuts-u](includes/do-not-use-the-tracking-based-method-when-resolving-shell-shortcuts-u.md)]

::: zone pivot="windows-10"
[!INCLUDE [force-start-size](includes/force-start-to-be-either-full-screen-size-or-menu-size-um.md)]
::: zone-end

[!INCLUDE [prevent-changes-to-taskbar-and-start-menu-settings-um](includes/prevent-changes-to-taskbar-and-start-menu-settings-um.md)]
[!INCLUDE [prevent-users-from-customizing-their-start-screen-u](includes/prevent-users-from-customizing-their-start-screen-u.md)]
[!INCLUDE [prevent-users-from-uninstalling-applications-from-start-um](includes/prevent-users-from-uninstalling-applications-from-start-um.md)]
[!INCLUDE [remove-all-programs-list-from-the-start-menu-um](includes/remove-all-programs-list-from-the-start-menu-um.md)]
[!INCLUDE [remove-common-program-groups-from-start-menu-u](includes/remove-common-program-groups-from-start-menu-u.md)]

::: zone pivot="windows-11"
[!INCLUDE [remove-personalized-website-recommendations-from-the-recommended-section-in-the-start-menu-um](includes/remove-personalized-website-recommendations-from-the-recommended-section-in-the-start-menu-um.md)]
::: zone-end

::: zone pivot="windows-11"
[!INCLUDE [remove-recommended-section-from-start-menu-um](includes/remove-recommended-section-from-start-menu-um.md)]
::: zone-end

[!INCLUDE [remove-recently-added-list-from-start-menu-um](includes/remove-recently-added-list-from-start-menu-um.md)]
[!INCLUDE [show-run-as-different-user-command-on-start-u](includes/show-run-as-different-user-command-on-start-u.md)]
[!INCLUDE [show-or-hide-most-used-list-from-start-menu-um](includes/show-or-hide-most-used-list-from-start-menu-um.md)]
[!INCLUDE [hide-frequently-used-apps](includes/hide-frequently-used-apps.md)]

#### [:::image type="icon" source="../images/icons/user.svg"::: **User options**](#tab/user)

|Policy name| CSP | GPO |
|-|-|-|
|[HideChangeAccountSettings](/windows/client-management/mdm/policy-csp-start#hidechangeaccountsettings)|✅|❌|
|[HideLock](/windows/client-management/mdm/policy-csp-start#hidelock)|✅|❌|
|[HideSignOut](/windows/client-management/mdm/policy-csp-start#hidesignout)|✅|✅|
|[HideSwitchAccount](/windows/client-management/mdm/policy-csp-start#hideswitchaccount)|✅|❌|
|[HideUserTile](/windows/client-management/mdm/policy-csp-start#hideusertile)|✅|❌|

[!INCLUDE [remove-logoff-on-the-start-menu-u](includes/remove-logoff-on-the-start-menu-u.md)]

#### [:::image type="icon" source="../images/icons/folder.svg"::: **Pinned folders**](#tab/folders)

|Policy name| CSP | GPO |
|-|-|-|
|[Allow pinned folder Documents](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderdocuments)|✅|❌|
|[Allow pinned folder Downloads](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderdownloads)|✅|❌|
|[Allow pinned folder FileExplorer](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderfileexplorer)|✅|❌|
|[Allow pinned folder HomeGroup](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderhomegroup)|✅|❌|
|[Allow pinned folder Music](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldermusic)|✅|❌|
|[Allow pinned folder Network](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldernetwork)|✅|❌|
|[Allow pinned folder PersonalFolder](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderpersonalfolder)|✅|❌|
|[Allow pinned folder Pictures](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderpictures)|✅|❌|
|[Allow pinned folder Settings](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldersettings)|✅|❌|
|[Allow pinned folder Videos](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldervideos)|✅|❌|

#### [:::image type="icon" source="../images/icons/power.svg"::: **Power options**](#tab/power)

|Policy name| CSP | GPO |
|-|-|-|
|[Hide hibernate button](/windows/client-management/mdm/policy-csp-start#hidehibernate)|✅|❌|
|[Hide power button](/windows/client-management/mdm/policy-csp-start#hidepowerbutton)|✅|❌|
|[Hide restart button](/windows/client-management/mdm/policy-csp-start#hiderestart)|✅|❌|
|[Hide shutdown button](/windows/client-management/mdm/policy-csp-start#hideshutdown)|✅|❌|
|[Hide sleep button](/windows/client-management/mdm/policy-csp-start#hidesleep)|✅|❌|
|[Remove and prevent access to the shut down restart sleep and hibernate commands](#remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands-um)|❌|✅|

[!INCLUDE [remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands-um](includes/remove-and-prevent-access-to-the-shut-down-restart-sleep-and-hibernate-commands-um.md)]
---

## Next steps

> [!div class="nextstepaction"]
> Review the .
>
>
> [guide >](guide.md)

<!--links-->

[WIN-1]: /windows/client-management/mdm/policy-csp-start


<!--

## Taskbar

[DisableControlCenter](/windows/client-management/mdm/policy-csp-start#disablecontrolcenter)
[HidePeopleBar](/windows/client-management/mdm/policy-csp-start#hidepeoplebar)
[HideTaskViewButton](/windows/client-management/mdm/policy-csp-start#hidetaskviewbutton)
[NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#nopinningtotaskbar)
[SimplifyQuickSettings](/windows/client-management/mdm/policy-csp-start#simplifyquicksettings)

###
