---
title: Configure the Start menu
description: Learn about the available options to configure the Windows Start menu and how to configure them via Configuration Service Providers (CSP) or group policy (GPO).
ms.topic: how-to
ms.date: 03/15/2024
appliesto:
zone_pivot_groups: windows-versions-11-10
---

# Configure the Start menu

To configure the Start menu, you can use one of the following options:

- Configuration Service Provider (CSP): this option is commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. The [Start Policy CSP][WIN-1] is used to configure the Start menu.
- Group policy (GPO): this option can be used for devices that are joined to an Active Directory domain and aren't managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

> [!NOTE]
> While many of the Start menu policy settings can be configured using both CSP and GPO, there are some settings that are only available using the Start Policy CSP.

## Policy settings

This section describes the policy settings to configure the Start menu via configuration service provider (CSP) and group policy (GPO).

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


Select one of the tabs to see the list of available settings:

#### [:::image type="icon" source="../images/icons/start.svg"::: **Start layout**](#tab/start)

The following table lists the policies that control the Start menu layout. Select the policy name for more details.

|Policy name| CSP | GPO |
|-|-|-|
|[ConfigureStartPins](/windows/client-management/mdm/policy-csp-start#configurestartpins)|✅||
|[DisableContextMenus](/windows/client-management/mdm/policy-csp-start#disablecontextmenus)|✅||
|[ForceStartSize](/windows/client-management/mdm/policy-csp-start#forcestartsize)|✅||
|[HideAppList](/windows/client-management/mdm/policy-csp-start#hideapplist)|✅||
|[HideFrequentlyUsedApps](/windows/client-management/mdm/policy-csp-start#hidefrequentlyusedapps)|✅||
|[HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists)|✅||
|[HideRecentlyAddedApps](/windows/client-management/mdm/policy-csp-start#hiderecentlyaddedapps)|✅||
|[HideRecommendedPersonalizedSites](/windows/client-management/mdm/policy-csp-start#hiderecommendedpersonalizedsites)|✅||
|[HideRecommendedSection](/windows/client-management/mdm/policy-csp-start#hiderecommendedsection)|✅||
|[ImportEdgeAssets](/windows/client-management/mdm/policy-csp-start#importedgeassets)|✅||
|[ShowOrHideMostUsedApps](/windows/client-management/mdm/policy-csp-start#showorhidemostusedapps)|✅||
|[StartLayout](/windows/client-management/mdm/policy-csp-start#startlayout)|✅||



#### [:::image type="icon" source="../images/icons/user.svg"::: **User options**](#tab/user)

#### [:::image type="icon" source="../images/icons/folder.svg"::: **Pinned folders**](#tab/folders)

#### [:::image type="icon" source="../images/icons/power.svg"::: **Power options**](#tab/power)

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

## Start

[ConfigureStartPins](/windows/client-management/mdm/policy-csp-start#configurestartpins)
[DisableContextMenus](/windows/client-management/mdm/policy-csp-start#disablecontextmenus)
[ForceStartSize](/windows/client-management/mdm/policy-csp-start#forcestartsize)
[HideAppList](/windows/client-management/mdm/policy-csp-start#hideapplist)
[HideFrequentlyUsedApps](/windows/client-management/mdm/policy-csp-start#hidefrequentlyusedapps)
[HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists)
[HideRecentlyAddedApps](/windows/client-management/mdm/policy-csp-start#hiderecentlyaddedapps)
[HideRecommendedPersonalizedSites](/windows/client-management/mdm/policy-csp-start#hiderecommendedpersonalizedsites)
[HideRecommendedSection](/windows/client-management/mdm/policy-csp-start#hiderecommendedsection)
[ImportEdgeAssets](/windows/client-management/mdm/policy-csp-start#importedgeassets)
[ShowOrHideMostUsedApps](/windows/client-management/mdm/policy-csp-start#showorhidemostusedapps)
[StartLayout](/windows/client-management/mdm/policy-csp-start#startlayout)

### Pinned folders

[AllowPinnedFolderDocuments](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderdocuments)
[AllowPinnedFolderDownloads](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderdownloads)
[AllowPinnedFolderFileExplorer](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderfileexplorer)
[AllowPinnedFolderHomeGroup](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderhomegroup)
[AllowPinnedFolderMusic](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldermusic)
[AllowPinnedFolderNetwork](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldernetwork)
[AllowPinnedFolderPersonalFolder](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderpersonalfolder)
[AllowPinnedFolderPictures](/windows/client-management/mdm/policy-csp-start#allowpinnedfolderpictures)
[AllowPinnedFolderSettings](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldersettings)
[AllowPinnedFolderVideos](/windows/client-management/mdm/policy-csp-start#allowpinnedfoldervideos)

### User

[HideChangeAccountSettings](/windows/client-management/mdm/policy-csp-start#hidechangeaccountsettings)
[HideLock](/windows/client-management/mdm/policy-csp-start#hidelock)
[HideSignOut](/windows/client-management/mdm/policy-csp-start#hidesignout)
[HideSwitchAccount](/windows/client-management/mdm/policy-csp-start#hideswitchaccount)
[HideUserTile](/windows/client-management/mdm/policy-csp-start#hideusertile)

### Power

[HideHibernate](/windows/client-management/mdm/policy-csp-start#hidehibernate)
[HidePowerButton](/windows/client-management/mdm/policy-csp-start#hidepowerbutton)
[HideRestart](/windows/client-management/mdm/policy-csp-start#hiderestart)
[HideShutDown](/windows/client-management/mdm/policy-csp-start#hideshutdown)
[HideSleep](/windows/client-management/mdm/policy-csp-start#hidesleep)

## Taskbar

[DisableControlCenter](/windows/client-management/mdm/policy-csp-start#disablecontrolcenter)
[DisableEditingQuickSettings](/windows/client-management/mdm/policy-csp-start#disableeditingquicksettings)
[HidePeopleBar](/windows/client-management/mdm/policy-csp-start#hidepeoplebar)
[HideTaskViewButton](/windows/client-management/mdm/policy-csp-start#hidetaskviewbutton)
[NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#nopinningtotaskbar)
[SimplifyQuickSettings](/windows/client-management/mdm/policy-csp-start#simplifyquicksettings)



###


# Supported configuration service provider (CSP) policies for Windows 11 Start menu

The Windows OS exposes CSPs that are used by MDM providers, like [Microsoft Intune](/mem/intune/fundamentals/what-is-intune). In an MDM policy, these CSPs are settings that you configure in a policy. When the policy is ready, you deploy the policy to your devices.

This article lists the CSPs that are available to customize the Start menu for Windows 11 devices. Windows 11 uses the [Policy CSP - Start](/windows/client-management/mdm/policy-csp-start). For more general information, see [Configuration service provider (CSP) reference](/windows/client-management/mdm/configuration-service-provider-reference).

For information on customizing the Start menu layout using policy, see [Customize the Start menu layout](customize-and-export-start-layout.md).

## Existing Windows CSP policies that Windows 11 supports

- **Start/ShowOrHideMostUsedApps**: This policy enforces always showing Most Used Apps, or always hiding Most Used Apps in the Start menu. If you use this policy, the [Start/HideFrequentlyUsedApps](/windows/client-management/mdm/policy-csp-start#start-hidefrequentlyusedapps) policy is ignored.

  The [Start/HideFrequentlyUsedApps](/windows/client-management/mdm/policy-csp-start#start-hidefrequentlyusedapps) policy enforces hiding Most Used Apps on the Start menu. You can't use this policy to enforce always showing Most Used Apps on the Start menu.

**The following policies are supported starting with Windows 11, version 22H2:**

- [Start/HideAppList](/windows/client-management/mdm/policy-csp-start#start-hideapplist)
- [Start/DisableContextMenus](/windows/client-management/mdm/policy-csp-start#start-disablecontextmenus)

## Existing CSP policies that Windows 11 doesn't support

- [Start/StartLayout](/windows/client-management/mdm/policy-csp-start#start-startlayout)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Start Layout`

- [Start/HideRecentlyAddedApps](/windows/client-management/mdm/policy-csp-start#start-hiderecentlyaddedapps)
- Group policy: `Computer Configuration\Administrative Templates\Start Menu and Taskbar\Remove "Recently added" list from Start Menu`

> [!NOTE]
> The following two policies are supported starting in Windows 11, version 22H2

- [Start/HideAppList](/windows/client-management/mdm/policy-csp-start#start-hideapplist)
  - Group policy:
    - `Computer Configuration\Administrative Templates\Start Menu and Taskbar\Remove All Programs list from the Start menu`
    - `User Configuration\Administrative Templates\Start Menu and Taskbar\Remove All Programs list from the Start menu`

- [Start/DisableContextMenus](/windows/client-management/mdm/policy-csp-start#start-disablecontextmenus)
  - Group policy:

    - `Computer Configuration\Administrative Templates\Start Menu and Taskbar\Disable context menus in the Start Menu`
    - `User Configuration\Administrative Templates\Start Menu and Taskbar\Disable context menus in the Start Menu`

:::image type="content" source="images/windows-11.png" alt-text="Screenshot of the Windows 11 Start menu." border="false":::

:::image type="content" source="images/windows-11-no-recommended.png" alt-text="Screenshot of the Windows 11 Start menu without recommendations." border="false":::
