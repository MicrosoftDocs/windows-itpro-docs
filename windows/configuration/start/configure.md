---
title: Configure the Start menu
description: Learn about the available options to configure the Windows Start menu and how to configure them via Configuration Service Providers (CSP) or group policy (GPO).
ms.topic: how-to
ms.date: 03/15/2024
---

# Configure the Start menu

To configure the Start menu, you can use one of the following options:

- Configuration Service Provider (CSP): this option is commonly used for devices managed by a Mobile Device Management (MDM) solution, like Microsoft Intune. The [Start Policy CSP][WIN-1] is used to configure the Start menu.
- Group policy (GPO): this option can be used for devices that are joined to an Active Directory domain and aren't managed by a device management solution. Group policy can also be used for devices that aren't joined to an Active Directory domain, using the local group policy editor

> [!NOTE]
> While many of the Start menu policy settings can be configured using both CSP and GPO, there are some settings that are only available using the Start Policy CSP.

## Policy settings

This section describes the policy settings to configure the Start menu via configuration service provider (CSP) and group policy (GPO).

### Policy settings list

The list of settings is sorted alphabetically and organized in four categories:

- **Start layout**: settings to control the Start menu layout
- **Pinned folders**: settings to control the folders pinned for quick access
- **User options**: settings to control the options exposed when selecting the user icon
- **Power options**: settings to control the options exposed when selecting the power icon

Select one of the tabs to see the list of available settings:

#### [:::image type="icon" source="../images/icons/start.svg"::: **Start layout**](#tab/start)

The following table lists the policies that control the Start menu layout. Select the policy name for more details.

<!-->
|Policy name| CSP | GPO |
|-|-|-|
|[Allow standard user encryption](#allow-standard-user-encryption)|✅|❌|
|[Choose default folder for recovery password](#choose-default-folder-for-recovery-password)|❌|✅|
|[Choose drive encryption method and cipher strength](#choose-drive-encryption-method-and-cipher-strength)|✅|✅|
|[Configure recovery password rotation](#configure-recovery-password-rotation)|✅|❌|
|[Disable new DMA devices when this computer is locked](#disable-new-dma-devices-when-this-computer-is-locked)|❌|✅|
|[Prevent memory overwrite on restart](#prevent-memory-overwrite-on-restart)|❌|✅|
|[Provide the unique identifiers for your organization](#provide-the-unique-identifiers-for-your-organization)|✅|✅|
|[Require device encryption](#require-device-encryption)|✅|❌|
|[Validate smart card certificate usage rule compliance](#validate-smart-card-certificate-usage-rule-compliance)|❌|✅|

[!INCLUDE [allow-standard-user-encryption](includes/allow-standard-user-encryption.md)]
[!INCLUDE [choose-default-folder-for-recovery-password](includes/choose-default-folder-for-recovery-password.md)]
[!INCLUDE [choose-drive-encryption-method-and-cipher-strength](includes/choose-drive-encryption-method-and-cipher-strength.md)]
[!INCLUDE [configure-recovery-password-rotation](includes/configure-recovery-password-rotation.md)]
[!INCLUDE [disable-new-dma-devices-when-this-computer-is-locked](includes/disable-new-dma-devices-when-this-computer-is-locked.md)]
[!INCLUDE [prevent-memory-overwrite-on-restart](includes/prevent-memory-overwrite-on-restart.md)]
[!INCLUDE [provide-the-unique-identifiers-for-your-organization](includes/provide-the-unique-identifiers-for-your-organization.md)]
[!INCLUDE [require-device-encryption](includes/require-device-encryption.md)]
[!INCLUDE [validate-smart-card-certificate-usage-rule-compliance](includes/validate-smart-card-certificate-usage-rule-compliance.md)]
-->

#### [:::image type="icon" source="../images/icons/folder.svg"::: **Pinned folders**](#tab/folders)

#### [:::image type="icon" source="../images/icons/user.svg"::: **User options**](#tab/user)

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
>