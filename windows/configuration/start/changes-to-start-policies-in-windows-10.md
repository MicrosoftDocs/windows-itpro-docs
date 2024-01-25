---
title: Changes to Group Policy settings for Windows 10 Start menu
description: Learn about changes to Group Policy settings for the Windows 10 Start menu. Also, learn about the new Windows 10 Start experience.
ms.topic: whats-new
appliesto:
- ✅ <a href=/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
ms.date: 08/18/2023
---

# Changes to Group Policy settings for Windows 10 Start

Windows 10 has a brand new Start experience. As a result, there are changes to the Group Policy settings that you can use to manage Start. Some policy settings are new or changed, and some old Start policy settings still apply. Other Start policy settings no longer apply and are deprecated.

## Start policy settings supported for Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education

These policy settings are available in **Administrative Templates\\Start Menu and Taskbar** under **User Configuration**.

|Policy|Notes|
|--- |--- |
|Clear history of recently opened documents on exit|Documents that the user opens are tracked during the session. When the user signs off, the history of opened documents is deleted.|
|Don't allow pinning items in Jump Lists|Jump Lists are lists of recently opened items, such as files, folders, or websites, organized by the program that you use to open them. This policy prevents users from pinning items to any Jump List.|
|Don't display or track items in Jump Lists from remote locations|When this policy is applied, only items local on the computer are shown in Jump Lists.|
|Don't keep history of recently opened documents|Documents that the user opens aren't tracked during the session.|
|Prevent changes to Taskbar and Start Menu Settings|In Windows 10, this policy disables all of the settings in **Settings** > **Personalization** > **Start** and the options in dialog available via right-click Taskbar > **Properties**|
|Prevent users from customizing their Start Screen|Use this policy with a [customized Start layout](windows-10-start-layout-options-and-policies.md) to prevent users from changing it|
|Prevent users from uninstalling applications from Start|In Windows 10, this policy removes the uninstall button in the context menu. It doesn't prevent users from uninstalling the app through other entry points (for example, PowerShell)|
|Remove All Programs list from the Start menu|In Windows 10, this policy removes the **All apps** button.|
|Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands|This policy removes the Shut Down, Restart, Sleep, and Hibernate commands from the Start Menu, Start Menu power button, CTRL+ALT+DEL screen, and Alt+F4 Shut Down Windows menu.|
|Remove common program groups from Start Menu|As in earlier versions of Windows, this policy removes apps specified in the All Users profile from Start|
|Remove frequent programs list from the Start Menu|In Windows 10, this policy removes the top left **Most used** group of apps.|
|Remove Logoff on the Start Menu|**Logoff** has been changed to **Sign Out** in the user interface, however the functionality is the same.|
|Remove pinned programs list from the Start Menu|In Windows 10, this policy removes the bottom left group of apps (by default, only File Explorer and Settings are pinned).|
|Show "Run as different user" command on Start|This policy enables the **Run as different user** option in the right-click menu for apps.|
|Start Layout|This policy applies a specific Start layout, and it also prevents users from changing the layout. This policy can be configured in **User Configuration** or **Computer Configuration**.|
|Force Start to be either full screen size or menu size|This policy applies a specific size for Start.|

## Deprecated Group Policy settings for Start

The Start policy settings listed in the following table don't work on Windows 1. Most of them were deprecated in Windows 8 however a few more were deprecated in Windows 1. Deprecation in this case means that the policy setting won't work on Windows 1. The "Supported on" text for a policy setting won't list Windows 1. The policy settings are still in the Group Policy Management Console and can be used on the operating systems that they apply to.

| Policy                                                                           | When deprecated |
|----------------------------------------------------------------------------------|-----------------|
| Go to the desktop instead of Start when signing in                               | Windows 10      |
| List desktop apps first in the Apps view                                         | Windows 10      |
| Pin Apps to Start when installed (User or Computer)                              | Windows 10      |
| Remove Default Programs link from the Start menu.                                | Windows 10      |
| Remove Documents icon from Start Menu                                            | Windows 10      |
| Remove programs on Settings menu                                                 | Windows 10      |
| Remove Run menu from Start Menu                                                  | Windows 10      |
| Remove the "Undock PC" button from the Start Menu                                | Windows 10      |
| Search just apps from the Apps view                                              | Windows 10      |
| Show Start on the display the user is using when they press the Windows logo key | Windows 10      |
| Show the Apps view automatically when the user goes to Start                     | Windows 10      |
| Add the Run command to the Start Menu                                            | Windows 8       |
| Change Start Menu power button                                                   | Windows 8       |
| Gray unavailable Windows Installer programs Start Menu shortcuts                 | Windows 8       |
| Remove Downloads link from Start Menu                                            | Windows 8       |
| Remove Favorites menu from Start Menu                                            | Windows 8       |
| Remove Games link from Start Menu                                                | Windows 8       |
| Remove Help menu from Start Menu                                                 | Windows 8       |
| Remove Homegroup link from Start Menu                                            | Windows 8       |
| Remove Music icon from Start Menu                                                | Windows 8       |
| Remove Network icon from Start Menu                                              | Windows 8       |
| Remove Pictures icon from Start Menu                                             | Windows 8       |
| Remove Recent Items menu from Start Menu                                         | Windows 8       |
| Remove Recorded TV link from Start Menu                                          | Windows 8       |
| Remove user folder link from Start Menu                                          | Windows 8       |
| Remove Videos link from Start Menu                                               | Windows 8       |



## Related topics

- [Manage Windows 10 Start and taskbar layout](windows-10-start-layout-options-and-policies.md)
- [Configure Windows 10 taskbar](configure-windows-10-taskbar.md)
- [Customize and export Start layout](customize-and-export-start-layout.md)
- [Add image for secondary tiles](start-secondary-tiles.md)
- [Start layout XML for desktop editions of Windows 10 (reference)](start-layout-xml-desktop.md)
- [Customize Windows 10 Start and taskbar with Group Policy](customize-windows-10-start-screens-by-using-group-policy.md)
- [Customize Windows 10 Start and taskbar with provisioning packages](customize-windows-10-start-screens-by-using-provisioning-packages-and-icd.md)
- [Customize Windows 10 Start and taskbar with mobile device management (MDM)](customize-windows-10-start-screens-by-using-mobile-device-management.md)
