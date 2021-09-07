---
title: Supported CSP policies to customize start menu layout on Windows 11 | Microsoft Docs
description: See a list of the Policy CSP - Start items that are supported on Windows 11 to customize the Start menu layout.
ms.assetid: 
ms.reviewer: 
manager: dougeby
ms.author: mandia
ms.reviewer: ericpapa
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: MandiOhlinger
ms.date: 09/07/2021
ms.localizationpriority: medium
---

# Supported configuration service provider (CSP) policies for Windows 11 Start menu layout

**Applies to**:

- Windows 11

The Windows OS exposes CSPs that are used by MDM providers, like [Microsoft Endpoint Manager](/mem/endpoint-manager-overview). In an MDM policy, these CSPs are settings that you configure in a policy. When the policy is ready, you deploy the policy to your devices.

This article lists the CSPs that are available to customize the Start menu layout for Windows 11 and later devices. Windows 11 uses the [Policy CSP - Start](../client-management/mdm/policy-csp-start.md).

For more general information, see [Configuration service provider reference](../client-management/mdm/configuration-service-provider-reference.md).

## Existing Windows CSP policies that support Windows 11

- [Start/AllowPinnedFolderDocuments](../client-management/mdm/policy-csp-start.md#start-allowpinnedfolderdocuments)
- [Start/AllowPinnedFolderDownloads](../client-management/mdm/policy-csp-start.md#start-allowpinnedfolderfileexplorer)
- [Start/AllowPinnedFolderFileExplorer](../client-management/mdm/policy-csp-start.md#start-allowpinnedfolderhomegroup)
- [Start/AllowPinnedFolderHomeGroup](../client-management/mdm/policy-csp-start.md#start-allowpinnedfolderhomegroup)
- [Start/AllowPinnedFolderMusic](../client-management/mdm/policy-csp-start.md#start-allowpinnedfoldermusic)
- [Start/AllowPinnedFolderNetwork](../client-management/mdm/policy-csp-start.md#start-allowpinnedfoldernetwork)
- [Start/AllowPinnedFolderPersonalFolder](../client-management/mdm/policy-csp-start.md#start-allowpinnedfolderpersonalfolder)
- [Start/AllowPinnedFolderPictures](../client-management/mdm/policy-csp-start.md#start-allowpinnedfolderpictures)
- [Start/AllowPinnedFolderSettings](../client-management/mdm/policy-csp-start.md#start-allowpinnedfoldersettings)
- [Start/AllowPinnedFolderVideos](../client-management/mdm/policy-csp-start.md#start-allowpinnedfoldervideos)
- [Start/DisableContextMenus](../client-management/mdm/policy-csp-start.md#start-disablecontextmenus): Doesn't work for Pinned app lists or Recommended app lists. Works for all other apps list.
- [Start/HideChangeAccountSettings](../client-management/mdm/policy-csp-start.md#start-hidechangeaccountsettings)
- [Start/HideHibernate](../client-management/mdm/policy-csp-start.md#start-hidehibernate)
- [Start/HideLock](../client-management/mdm/policy-csp-start.md#start-hidelock)
- [Start/HidePowerButton](../client-management/mdm/policy-csp-start.md#start-hidepowerbutton)
- [Start/HideRestart](../client-management/mdm/policy-csp-start.md#start-hiderestart)
- [Start/HideShutDown](../client-management/mdm/policy-csp-start.md#start-hideshutdown)
- [Start/HideSignOut](../client-management/mdm/policy-csp-start.md#start-hidesignout)
- [Start/HideSleep](../client-management/mdm/policy-csp-start.md#start-hidesleep)
- [Start/HideSwitchAccount](../client-management/mdm/policy-csp-start.md#start-hideswitchaccount)
- [Start/HideUserTile](../client-management/mdm/policy-csp-start.md#start-hideusertile)
- [Start/HideRecentJumplists](../client-management/mdm/policy-csp-start.md#start-hiderecentjumplists): Also hides files from the Recommended section.

  Note: Recent JLs never appear in Pinned (because the feature isn’t supported yet)

- [Start/NoPinningToTaskbar](../client-management/mdm/policy-csp-start.md#start-nopinningtotaskbar)
- Start/ShowOrHideMostUsedApps --> Need CSP link

## Untested policies

- [Start/HideFrequentlyUsedApps](../client-management/mdm/policy-csp-start.md#start-hidefrequentlyusedapps): What does this configure on Windows 10? How is it different than ShowOrHideMostUsedApps? 

## Existing CSP policies that don't support Windows 11

- [Start/StartLayout](../client-management/mdm/policy-csp-start.md#start-startlayout)
- [Start/HideRecentlyAddedApps](../client-management/mdm/policy-csp-start.md#start-hiderecentlyaddedapps)
- [Start/HideAppList](../client-management/mdm/policy-csp-start.md#start-hideapplist)
