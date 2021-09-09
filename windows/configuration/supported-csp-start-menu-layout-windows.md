---
title: Supported CSP policies to customize Start menu on Windows 11 | Microsoft Docs
description: See a list of the Policy CSP - Start items that are supported on Windows 11 to customize the Start menu.
ms.assetid: 
manager: dougeby
ms.author: mandia
ms.reviewer: ericpapa
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: MandiOhlinger
ms.date: 09/09/2021
ms.localizationpriority: medium
---

# Supported configuration service provider (CSP) policies for Windows 11 Start menu

**Applies to**:

- Windows 11

The Windows OS exposes CSPs that are used by MDM providers, like [Microsoft Endpoint Manager](/mem/endpoint-manager-overview). In an MDM policy, these CSPs are settings that you configure in a policy. When the policy is ready, you deploy the policy to your devices.

This article lists the CSPs that are available to customize the Start menu for Windows 11 devices. Windows 11 uses the [Policy CSP - Start](/windows/client-management/mdm/policy-csp-start).

For more general information, see [Configuration service provider (CSP) reference](/windows/client-management/mdm/configuration-service-provider-reference).

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

## Existing CSP policies that Windows 11 doesn't support

- [Start/StartLayout](/windows/client-management/mdm/policy-csp-start#start-startlayout)
- [Start/HideRecentlyAddedApps](/windows/client-management/mdm/policy-csp-start#start-hiderecentlyaddedapps)
- [Start/HideAppList](/windows/client-management/mdm/policy-csp-start#start-hideapplist)
- [Start/DisableContextMenus](/windows/client-management/mdm/policy-csp-start#start-disablecontextmenus)
