---
title: Supported CSP policies to customize the Taskbar on Windows 11 | Microsoft Docs
description: See a list of the Policy CSP - Start items that are supported on Windows 11 to customize the Taskbar.
ms.assetid: 
manager: dougeby
ms.author: aaroncz
ms.reviewer: chataylo
ms.prod: w11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: mobile
author: aczechowski
ms.localizationpriority: medium
---

# Supported configuration service provider (CSP) policies for Windows 11 taskbar

**Applies to**:

- Windows 11

The Windows OS exposes CSPs that are used by MDM providers, like [Microsoft Endpoint Manager](/mem/endpoint-manager-overview). In an MDM policy, these CSPs are settings that you configure. When the policy is ready, you deploy the policy to your devices.

This article lists the CSPs that are available to customize the Taskbar for Windows 11 devices. Windows 11 uses the [Policy CSP - Start](/windows/client-management/mdm/policy-csp-start).

For more general information, see [Configuration service provider (CSP) reference](/windows/client-management/mdm/configuration-service-provider-reference).

## Existing CSP policies that Windows 11 taskbar supports

- [Start/HideRecentJumplists CSP](/windows/client-management/mdm/policy-csp-start#start-hiderecentjumplists)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Do not keep history of recently opened documents`
  - Local setting: Settings > Personalization > Start > Show recently opened items in Jump Lists on Start or the taskbar

- [Start/NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#start-nopinningtotaskbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Do not allow pinning programs to the Taskbar`
  - Local setting: None

- [Experience/ConfigureChatIcon](/windows/client-management/mdm/policy-csp-experience#experience-configurechaticonvisibilityonthetaskbar)
  - Group policy: `Computer Configuration\Administrative Templates\Windows Components\Chat`
  - Local setting: Settings > Personalization > Taskbar > Chat

## Existing CSP policies that Windows 11 doesn't support

The following list includes some of the CSP policies that aren't supported on Windows 11:

- [TaskbarLockAll CSP](/windows/client-management/mdm/policy-csp-admx-taskbar#admx-taskbar-taskbarlockall)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Lock all taskbar settings`

- [TaskbarNoAddRemoveToolbar CSP](/windows/client-management/mdm/policy-csp-admx-taskbar#admx-taskbar-taskbarnoaddremovetoolbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from adding or removing toolbars`

- [TaskbarNoDragToolbar CSP](/windows/client-management/mdm/policy-csp-admx-taskbar#admx-taskbar-taskbarnodragtoolbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from rearranging toolbars`

- [TaskbarNoRedock CSP](/windows/client-management/mdm/policy-csp-admx-taskbar#admx-taskbar-taskbarnoredock)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from moving taskbar to another screen dock location`

- [TaskbarNoResize CSP](/windows/client-management/mdm/policy-csp-admx-taskbar#admx-taskbar-taskbarnoresize)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from resizing the taskbar`

- [NoToolbarsOnTaskbar CSP](/windows/client-management/mdm/policy-csp-admx-startmenu#admx-startmenu-notoolbarsontaskbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Do not display any custom toolbars in the taskbar`

- [NoTaskGrouping CSP](/windows/client-management/mdm/policy-csp-admx-startmenu#admx-startmenu-notaskgrouping)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent grouping of taskbar items`

- [HidePeopleBar CSP](/windows/client-management/mdm/policy-csp-start#start-hidepeoplebar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Remove the People Bar from the taskbar`

- [QuickLaunchEnabled CSP](/windows/client-management/mdm/policy-csp-admx-startmenu#admx-startmenu-quicklaunchenabled)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Show QuickLaunch on Taskbar`
