---
title: Supported CSP policies to customize Start menu on Windows 11 | Microsoft Docs
description: See a list of the Policy CSP - Start items that are supported on Windows 11 to customize the Start menu.
ms.reviewer: ericpapa 

ms.date: 12/31/2017
ms.topic: article
--- 

# Supported configuration service provider (CSP) policies for Windows 11 Start menu 

**Applies to**: 

- Windows 11
- Windows 11, version 22H2 

The Windows OS exposes CSPs that are used by MDM providers, like [Microsoft Intune](/mem/intune/fundamentals/what-is-intune). In an MDM policy, these CSPs are settings that you configure in a policy. When the policy is ready, you deploy the policy to your devices. 

This article lists the CSPs that are available to customize the Start menu for Windows 11 devices. Windows 11 uses the [Policy CSP - Start](/windows/client-management/mdm/policy-csp-start). For more general information, see [Configuration service provider (CSP) reference](/windows/client-management/mdm/configuration-service-provider-reference). 

For information on customizing the Start menu layout using policy, see [Customize the Start menu layout on Windows 11](customize-start-menu-layout-windows-11.md). 

## Existing Windows CSP policies that Windows 11 supports 

- [Start/AllowPinnedFolderDocuments](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderdocuments)
- [Start/AllowPinnedFolderDownloads](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderfileexplorer)
- [Start/AllowPinnedFolderFileExplorer](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderhomegroup)
- [Start/AllowPinnedFolderHomeGroup](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderhomegroup)
- [Start/AllowPinnedFolderMusic](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldermusic)
- [Start/AllowPinnedFolderNetwork](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldernetwork)
- [Start/AllowPinnedFolderPersonalFolder](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderpersonalfolder)
- [Start/AllowPinnedFolderPictures](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfolderpictures)
- [Start/AllowPinnedFolderSettings](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldersettings)
- [Start/AllowPinnedFolderVideos](/windows/client-management/mdm/policy-csp-start#start-allowpinnedfoldervideos)
- [Start/HideChangeAccountSettings](/windows/client-management/mdm/policy-csp-start#start-hidechangeaccountsettings)
- [Start/HideHibernate](/windows/client-management/mdm/policy-csp-start#start-hidehibernate)
- [Start/HideLock](/windows/client-management/mdm/policy-csp-start#start-hidelock)
- [Start/HidePowerButton](/windows/client-management/mdm/policy-csp-start#start-hidepowerbutton)
- [Start/HideRestart](/windows/client-management/mdm/policy-csp-start#start-hiderestart)
- [Start/HideShutDown](/windows/client-management/mdm/policy-csp-start#start-hideshutdown)
- [Start/HideSignOut](/windows/client-management/mdm/policy-csp-start#start-hidesignout)
- [Start/HideSleep](/windows/client-management/mdm/policy-csp-start#start-hidesleep)
- [Start/HideSwitchAccount](/windows/client-management/mdm/policy-csp-start#start-hideswitchaccount)
- [Start/HideUserTile](/windows/client-management/mdm/policy-csp-start#start-hideusertile)
- [Start/HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#start-hiderecentjumplists)
- [Start/NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#start-nopinningtotaskbar)
- **Start/ShowOrHideMostUsedApps**: New policy starting with Windows 11. This policy enforces always showing Most Used Apps, or always hiding Most Used Apps in the Start menu. If you use this policy, the [Start/HideFrequentlyUsedApps](/windows/client-management/mdm/policy-csp-start#start-hidefrequentlyusedapps) policy is ignored. 

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
