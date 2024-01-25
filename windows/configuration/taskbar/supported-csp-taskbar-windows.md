---
title: Supported CSP policies to customize the Taskbar on Windows 11
description: See a list of the Policy CSP - Start items that are supported on Windows 11 to customize the Taskbar.
ms.date: 12/31/2017
ms.topic: article
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
--- 

# Supported configuration service provider (CSP) policies for Windows 11 taskbar 

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

- [ADMX_Taskbar/TaskbarLockAll](/windows/client-management/mdm/policy-csp-admx-taskbar#taskbarlockall)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Lock all taskbar settings` 

- [ADMX_Taskbar/TaskbarNoAddRemoveToolbar](/windows/client-management/mdm/policy-csp-admx-taskbar#taskbarnoaddremovetoolbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from adding or removing toolbars` 

- [ADMX_Taskbar/TaskbarNoDragToolbar](/windows/client-management/mdm/policy-csp-admx-taskbar#taskbarnodragtoolbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from rearranging toolbars` 

- [ADMX_Taskbar/TaskbarNoRedock](/windows/client-management/mdm/policy-csp-admx-taskbar#taskbarnoredock)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from moving taskbar to another screen dock location` 

- [ADMX_Taskbar/TaskbarNoResize](/windows/client-management/mdm/policy-csp-admx-taskbar#taskbarnoresize)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent users from resizing the taskbar` 

- [ADMX_StartMenu/NoToolbarsOnTaskbar](/windows/client-management/mdm/policy-csp-admx-startmenu#notoolbarsontaskbar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Do not display any custom toolbars in the taskbar` 

- [ADMX_StartMenu/NoTaskGrouping](/windows/client-management/mdm/policy-csp-admx-startmenu#notaskgrouping)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Prevent grouping of taskbar items` 

- [ADMX_StartMenu/QuickLaunchEnabled](/windows/client-management/mdm/policy-csp-admx-startmenu#quicklaunchenabled)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Show QuickLaunch on Taskbar` 

- [Start/HidePeopleBar](/windows/client-management/mdm/policy-csp-start#hidepeoplebar)
  - Group policy: `User Configuration\Administrative Templates\Start Menu and Taskbar\Remove the People Bar from the taskbar`
