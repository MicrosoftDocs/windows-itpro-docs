---
title: Policy CSP - Start
description: Use the Policy CSP - Start setting to control the visibility of the Documents shortcut on the Start menu.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Start

<hr/>

<!--Policies-->
## Start policies

<dl>
  <dd>
    <a href="#start-allowpinnedfolderdocuments">Start/AllowPinnedFolderDocuments</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderdownloads">Start/AllowPinnedFolderDownloads</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderfileexplorer">Start/AllowPinnedFolderFileExplorer</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderhomegroup">Start/AllowPinnedFolderHomeGroup</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldermusic">Start/AllowPinnedFolderMusic</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldernetwork">Start/AllowPinnedFolderNetwork</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderpersonalfolder">Start/AllowPinnedFolderPersonalFolder</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderpictures">Start/AllowPinnedFolderPictures</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldersettings">Start/AllowPinnedFolderSettings</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldervideos">Start/AllowPinnedFolderVideos</a>
  </dd>
  <dd>
    <a href="#start-configurestartpins">Start/ConfigureStartPins</a>
  </dd>
  <dd>
    <a href="#start-disablecontextmenus">Start/DisableContextMenus</a>
  </dd>
  <dd>
    <a href="#start-disablecontrolcenter">Start/DisableControlCenter</a>
  </dd>
  <dd>
    <a href="#start-disableeditingquicksettings">Start/DisableEditingQuickSettings</a>
  </dd>
  <dd>
    <a href="#start-forcestartsize">Start/ForceStartSize</a>
  </dd>
  <dd>
    <a href="#start-hideapplist">Start/HideAppList</a>
  </dd>
  <dd>
    <a href="#start-hidechangeaccountsettings">Start/HideChangeAccountSettings</a>
  </dd>
  <dd>
    <a href="#start-hidefrequentlyusedapps">Start/HideFrequentlyUsedApps</a>
  </dd>
  <dd>
    <a href="#start-hidehibernate">Start/HideHibernate</a>
  </dd>
  <dd>
    <a href="#start-hidelock">Start/HideLock</a>
  </dd>
  <dd>
    <a href="#start-hidepeoplebar">Start/HidePeopleBar</a>
  </dd>
  <dd>
    <a href="#start-hidepowerbutton">Start/HidePowerButton</a>
  </dd>
  <dd>
    <a href="#start-hiderecentjumplists">Start/HideRecentJumplists</a>
  </dd>
  <dd>
    <a href="#start-hiderecentlyaddedapps">Start/HideRecentlyAddedApps</a>
  </dd>
  <dd>
    <a href="#start-hiderecommendedsection">Start/HideRecommendedSection</a>
  </dd>
  <dd>
    <a href="#start-hiderestart">Start/HideRestart</a>
  </dd>
  <dd>
    <a href="#start-hideshutdown">Start/HideShutDown</a>
  </dd>
  <dd>
    <a href="#start-hidesignout">Start/HideSignOut</a>
  </dd>
  <dd>
    <a href="#start-hidesleep">Start/HideSleep</a>
  </dd>
  <dd>
    <a href="#start-hideswitchaccount">Start/HideSwitchAccount</a>
  </dd>
  <dd>
    <a href="#start-hidetaskviewbutton">Start/HideTaskViewButton</a>
  </dd>
  <dd>
    <a href="#start-hideusertile">Start/HideUserTile</a>
  </dd>
  <dd>
    <a href="#start-importedgeassets">Start/ImportEdgeAssets</a>
  </dd>
  <dd>
    <a href="#start-nopinningtotaskbar">Start/NoPinningToTaskbar</a>
  </dd>
  <dd>
    <a href="#start-showorhidemostusedapps">Start/ShowOrHideMostUsedApps</a>
  </dd>
  <dd>
    <a href="#start-simplifyquicksettings">Start/SimplifyQuickSettings</a>
  </dd>
  <dd>
    <a href="#start-startlayout">Start/StartLayout</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfolderdocuments"></a>**Start/AllowPinnedFolderDocuments**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the Documents shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfolderdownloads"></a>**Start/AllowPinnedFolderDownloads**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the Downloads shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfolderfileexplorer"></a>**Start/AllowPinnedFolderFileExplorer**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the File Explorer shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfolderhomegroup"></a>**Start/AllowPinnedFolderHomeGroup**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the HomeGroup shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfoldermusic"></a>**Start/AllowPinnedFolderMusic**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the Music shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfoldernetwork"></a>**Start/AllowPinnedFolderNetwork**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the Network shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfolderpersonalfolder"></a>**Start/AllowPinnedFolderPersonalFolder**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the PersonalFolder shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfolderpictures"></a>**Start/AllowPinnedFolderPictures**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the Pictures shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfoldersettings"></a>**Start/AllowPinnedFolderSettings**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the Settings shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-allowpinnedfoldervideos"></a>**Start/AllowPinnedFolderVideos**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the visibility of the Videos shortcut on the Start menu.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There's no enforced configuration, and the setting can be changed by the user.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-configurestartpins"></a>**Start/ConfigureStartPins**

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy will allow admins to push a new list of pinned apps to override the default/current list of pinned apps in the Windows 11 start menu experience.

It contains details on how to configure the start menu on Windows 11, see [/windows-hardware/customize/desktop/customize-the-windows-11-start-menu](/windows-hardware/customize/desktop/customize-the-windows-11-start-menu)

<!--/Description-->

<!--SupportedValues-->

This string policy will take a JSON file (expected name LayoutModification.json), which enumerates the items to pin and their relative order.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>


<!--Policy-->
<a href="" id="start-disablecontextmenus"></a>**Start/DisableContextMenus**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Enabling this policy prevents context menus from being invoked in the Start Menu.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Disable context menus in the Start Menu*
-   GP name: *DisableContextMenusInStart*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't disable).
-   1 - True (disable).

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="start-disablecontrolcenter"></a>**Start/DisableControlCenter**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting disables the Control Center button from the bottom right area on the taskbar. The Control Center area is located at the left of the clock in the taskbar and includes icons for current network and volume.

If this setting is enabled, Control Center area is displayed but the button to open the Control Center will be disabled.

>[!Note]
> A reboot is required for this policy setting to take effect.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Remove control center*
-   GP name: *DisableControlCenter*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:

- Integer 0 - Disabled/Not configured.
- Integer 1 - Enabled.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="start-disableeditingquicksettings"></a>**Start/DisableEditingQuickSettings**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy will allow admins to indicate whether Quick Actions can be edited by the user.

<!--/Description-->
<!--SupportedValues-->
The following are the supported values:

- 0: Allow editing Quick Actions (default)
- 1: Disable editing Quick Actions

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-forcestartsize"></a>**Start/ForceStartSize**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Forces the start screen size.

If there's policy configuration conflict, the latest configuration request is applied to the device.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Don't force size of Start.
-   1 – Force non-fullscreen size of Start.
-   2 - Force a fullscreen size of Start.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hideapplist"></a>**Start/HideAppList**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Allows IT Admins to configure Start by collapsing or removing the all apps list.

> [!Note]
> There were issues reported with the previous release of this policy and a fix was added in Windows 10, version 1709.

To validate on Desktop, do the following steps:

-   1 - Enable policy and restart explorer.exe.
-   2a - If set to '1': Verify that the all apps list is collapsed, and that the Settings toggle isn't grayed out.
-   2b - If set to '2': Verify that the all apps list is collapsed, and that the Settings toggle is grayed out.
-   2c - If set to '3': Verify that there's no way of opening the all apps list from Start, and that the Settings toggle is grayed out.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – None.
-   1 – Hide all apps list.
-   2 - Hide all apps list, and Disable "Show app list in Start menu" in Settings app.
-   3 - Hide all apps list, remove all apps button, and Disable "Show app list in Start menu" in Settings app.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidechangeaccountsettings"></a>**Start/HideChangeAccountSettings**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Change account settings" from appearing in the user tile.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify that "Change account settings" isn't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidefrequentlyusedapps"></a>**Start/HideFrequentlyUsedApps**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Allows IT Admins to configure Start by hiding most used apps.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable "Show most used apps" in the Settings app.
2.   Use some apps to get them into the most used group in Start.
3.   Enable policy.
4.   Restart explorer.exe.
5.   Check that "Show most used apps" Settings toggle is grayed out.
6.   Check that most used apps don't appear in Start.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidehibernate"></a>**Start/HideHibernate**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Hibernate" from appearing in the Power button.

> [!NOTE]
> This policy can only be verified on laptops as "Hibernate" doesn't appear on regular PC's.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Laptop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Hibernate" isn't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidelock"></a>**Start/HideLock**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Lock" from appearing in the user tile.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify "Lock" isn't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidepeoplebar"></a>**Start/HidePeopleBar**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Enabling this policy removes the people icon from the taskbar and the corresponding settings toggle. It also prevents users from pinning people to the taskbar.

Supported value type is integer.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Remove the People Bar from the taskbar*
-   GP name: *HidePeopleBar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidepowerbutton"></a>**Start/HidePowerButton**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Allows IT Admins to configure Start by hiding the Power button from appearing.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, and verify the power button isn't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hiderecentjumplists"></a>**Start/HideRecentJumplists**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Allows IT Admins to configure Start by hiding recently opened items in the jump lists from appearing.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable "Show recently opened items in Jump Lists on Start of the taskbar" in Settings.
2.   Pin Photos to the taskbar, and open some images in the photos app.
3.   Right click the pinned photos app and verify that a jump list of recently opened items pops up.
4.   Toggle "Show recently opened items in Jump Lists on Start of the taskbar" in Settings to clear jump lists.
5.   Enable policy.
6.   Restart explorer.exe.
7.   Check that Settings toggle is grayed out.
8.   Repeat Step 2.
9.   Right Click pinned photos app and verify that there's no jump list of recent items.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hiderecentlyaddedapps"></a>**Start/HideRecentlyAddedApps**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Allows IT Admins to configure Start by hiding recently added apps.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Remove "Recently added" list from Start Menu*
-   GP name: *HideRecentlyAddedApps*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable "Show recently added apps" in the Settings app.
2.   Check if there are recently added apps in Start (if not, install some).
3.   Enable policy.
4.   Restart explorer.exe.
5.   Check that "Show recently added apps" Settings toggle is grayed out.
6.   Check that recently added apps don't appear in Start.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hiderecommendedsection"></a>**Start/HideRecommendedSection**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows you to hide the Start Menu's Recommended section when enabled.

<!--/Description-->
<!--SupportedValues-->
The following are the supported values:

- 0 (default): Do not hide the Start menu's Recommended section.
- 1: Hide the Start menu's Recommended section.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="start-hiderestart"></a>**Start/HideRestart**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Restart" and "Update and restart" from appearing in the Power button.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Restart" and "Update and restart" aren't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hideshutdown"></a>**Start/HideShutDown**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Shut down" and "Update and shut down" from appearing in the Power button.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Shut down" and "Update and shut down" aren't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidesignout"></a>**Start/HideSignOut**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Sign out" from appearing in the user tile.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify "Sign out" isn't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidesleep"></a>**Start/HideSleep**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Sleep" from appearing in the Power button.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify that "Sleep" isn't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hideswitchaccount"></a>**Start/HideSwitchAccount**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure Start by hiding "Switch account" from appearing in the user tile.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify that "Switch account" isn't available.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hidetaskviewbutton"></a>**Start/HideTaskViewButton**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows you to hide the Task View button from the Taskbar and its corresponding option in the Settings app.

<!--/Description-->
<!--SupportedValues-->
The following are the supported values:

- 0 (default): Do not hide the Taskbar's Task View button.
- 1: Hide the Taskbar's Task View button.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-hideusertile"></a>**Start/HideUserTile**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Allows IT Admins to configure Start by hiding the user tile.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (don't hide).
-   1 - True (hide).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Sign out.
3.   Sign in, and verify that the user tile is gone from Start.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-importedgeassets"></a>**Start/ImportEdgeAssets**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!NOTE]
> This policy requires reboot to take effect.

Here's more SKU support information:

|Release |SKU Supported  |
|---------|---------|
|Windows 10, version 1607 and older |Not supported |
|Windows 10, version 1703 and later |Enterprise, Education, Business |
|Windows 10, version 1709 and later |Enterprise, Education, Business, Pro, ProEducation, S, ProWorkstation |

This policy imports Edge assets (for example, .png/.jpg files) for secondary tiles into its local app data path, which allows the StartLayout policy to pin Edge secondary tiles as weblink that ties to the image asset files.

> [!IMPORTANT]
> Please note that the import happens only when StartLayout policy is changed. So it is better to always change ImportEdgeAssets policy at the same time as StartLayout policy, whenever there are Edge secondary tiles to be pinned from StartLayout policy.

The value set for this policy is an XML string containing Edge assets. For an example XML string, see [Add image for secondary Microsoft Edge tiles](/windows/configuration/start-secondary-tiles).

<!--/Description-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Set policy with an XML for Edge assets.
2.   Set StartLayout policy to anything so that would trigger the Edge assets import.
3.   Sign out/in.
4.   Verify that all Edge assets defined in XML show up in %LOCALAPPDATA%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\LocalState path.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-nopinningtotaskbar"></a>**Start/NoPinningToTaskbar**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows IT Admins to configure the taskbar by disabling, pinning, and unpinning apps on the taskbar.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – False (pinning enabled).
-   1 - True (pinning disabled).

<!--/SupportedValues-->
<!--Validation-->
To validate on Desktop, do the following steps:

1.   Enable policy.
2.   Right click on a program pinned to taskbar.
3.   Verify that "Unpin from taskbar" menu doesn't show.
4.   Open Start and right click on one of the app list icons.
5.   Verify that More->Pin to taskbar menu doesn't show.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-showorhidemostusedapps"></a>**Start/ShowOrHideMostUsedApps**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device
> * User

<hr/>

<!--/Scope-->
<!--Description-->

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

- 1 - Force showing of Most Used Apps in Start Menu, user can't change in Settings.
- 0 - Force hiding of Most Used Apps in Start Menu, user can't change in Settings.
- Not set - User can use Settings to hide or show Most Used Apps in Start Menu.

On clean install, the user setting defaults to "hide".

<!--/SupportedValues-->

<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-simplifyquicksettings"></a>**Start/SimplifyQuickSettings**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy will allow admins to indicate whether the default or simplified Quick Actions layout should be loaded.

<!--/Description-->
<!--SupportedValues-->
The following are the supported values:

- 0: load regular Quick Actions layout.
- 1: load simplified Quick Actions layout.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="start-startlayout"></a>**Start/StartLayout**

<!--SupportedSKUs-->
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|No|
|Windows SE|No|No|
|Business|Yes|No|
|Enterprise|Yes|No|
|Education|Yes|No|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
> [!IMPORTANT]
> In addition to being able to set this node on a per user-basis, it can now also be set on a per-device basis. For more information, see [Policy scope](./policy-configuration-service-provider.md#policy-scope)

Here's more SKU support information:

|Release |SKU Supported  |
|---------|---------|
|Windows 10, version 1511 and older |Not supported         |
|Windows 10, version 1607 and later |Enterprise, Education, Business |
|Windows 10, version 1709 and later |Enterprise, Education, Business, Pro, ProEducation, S, ProWorkstation |

Allows you to override the default Start layout and prevents the user from changing it. If both user and device policies are set, the user policy will be used. Apps pinned to the taskbar can also be changed with this policy.

For more information on how to customize the Start layout, see [Customize and export Start layout](/windows/configuration/customize-and-export-start-layout) and [Configure Windows 10 taskbar](/windows/configuration/configure-windows-10-taskbar).

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Start Layout*
-   GP name: *LockedStartLayout*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXMapped-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
