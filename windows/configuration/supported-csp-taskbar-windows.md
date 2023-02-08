---
title: Supported CSP policies to customize the Taskbar on Windows 11 | Microsoft Docs
description: See a list of the Policy CSP - Start items that are supported on Windows 11 to customize the Taskbar.
manager: aaroncz
ms.author: lizlong
ms.reviewer: chataylo
ms.prod: windows-client
author: lizgt2000
ms.localizationpriority: medium
ms.technology: itpro-configure
ms.date: 12/31/2017
ms.topic: article
---

# Supported configuration service provider (CSP) policies for Windows 11 taskbar

**Applies to**:

- Windows 11

The Windows OS exposes CSPs that are used by MDM providers, like [Microsoft Intune](/mem/intune/fundamentals/what-is-intune). In an MDM policy, these CSPs are settings that you configure. When the policy is ready, you deploy the policy to your devices. This article lists the CSPs that are available to customize the Taskbar for Windows 11 devices.

For more general information, see [Configuration service provider (CSP) reference](/windows/client-management/mdm/configuration-service-provider-reference).

## CSP policies to customize Windows 11 taskbar buttons

- [Search/ConfigureSearchOnTaskbarMode](/windows/client-management/mdm/policy-csp-search#configuresearchontaskbarmode)
  - Group policy: `Computer Configuration\Administrative Templates\Windows Components\Search\Configures search on the taskbar`
  - Local setting: Settings > Personalization > Taskbar > Search

- [Start/HideTaskViewButton](/windows/client-management/mdm/policy-csp-start#hidetaskviewbutton)
  - Group policy: `Computer and User Configuration\Administrative Templates\Start Menu and Taskbar\Hide the TaskView button`
  - Local setting: Settings > Personalization > Taskbar > Task view

- [NewsAndInterests/AllowNewsAndInterests](/windows/client-management/mdm/policy-csp-newsandinterests#allownewsandinterests)
  - Group policy: `Computer Configuration\Administrative Templates\Windows Components\Widgets\Allow widgets`
  - Local setting: Settings > Personalization > Taskbar > Widgets

- [Experience/ConfigureChatIcon](/windows/client-management/mdm/policy-csp-experience#configurechaticonvisibilityonthetaskbar)
  - Group policy: `Computer Configuration\Administrative Templates\Windows Components\Chat\Configure the Chat icon setting`
  - Local setting: Settings > Personalization > Taskbar > Chat

## Existing CSP policies that Windows 11 taskbar supports

- [Start/HideRecentJumplists](/windows/client-management/mdm/policy-csp-start#hiderecentjumplists)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Do not keep history of recently opened documents`
  - Local setting: Settings > Personalization > Start > Show recently opened items in Jump Lists on Start or the taskbar

- [Start/NoPinningToTaskbar](/windows/client-management/mdm/policy-csp-start#nopinningtotaskbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Do not allow pinning programs to the Taskbar`
  - Local setting: None

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
