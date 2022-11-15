---
title: Policy CSP - ADMX_StartMenu
description: Learn about Policy CSP - ADMX_StartMenu.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 10/20/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_StartMenu
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_StartMenu policies

<dl>
  <dd>
    <a href="#admx-startmenu-addsearchinternetlinkinstartmenu">ADMX_StartMenu/AddSearchInternetLinkInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-clearrecentdocsonexit">ADMX_StartMenu/ClearRecentDocsOnExit</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-clearrecentprogfornewuserinstartmenu">ADMX_StartMenu/ClearRecentProgForNewUserInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-cleartilesonexit">ADMX_StartMenu/ClearTilesOnExit</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-desktopappsfirstinappsview">ADMX_StartMenu/DesktopAppsFirstInAppsView</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-disableglobalsearchonappsview">ADMX_StartMenu/DisableGlobalSearchOnAppsView</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-forcestartmenulogoff">ADMX_StartMenu/ForceStartMenuLogOff</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-gotodesktoponsignin">ADMX_StartMenu/GoToDesktopOnSignIn</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-greymsiads">ADMX_StartMenu/GreyMSIAds</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-hidepoweroptions">ADMX_StartMenu/HidePowerOptions</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-intellimenus">ADMX_StartMenu/Intellimenus</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-locktaskbar">ADMX_StartMenu/LockTaskbar</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-memcheckboxinrundlg">ADMX_StartMenu/MemCheckBoxInRunDlg</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-noautotraynotify">ADMX_StartMenu/NoAutoTrayNotify</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-noballoontip">ADMX_StartMenu/NoBalloonTip</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nochangestartmenu">ADMX_StartMenu/NoChangeStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-noclose">ADMX_StartMenu/NoClose</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nocommongroups">ADMX_StartMenu/NoCommonGroups</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nofavoritesmenu">ADMX_StartMenu/NoFavoritesMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nofind">ADMX_StartMenu/NoFind</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nogamesfolderonstartmenu">ADMX_StartMenu/NoGamesFolderOnStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nohelp">ADMX_StartMenu/NoHelp</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-noinstrumentation">ADMX_StartMenu/NoInstrumentation</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nomoreprogramslist">ADMX_StartMenu/NoMoreProgramsList</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nonetanddialupconnect">ADMX_StartMenu/NoNetAndDialupConnect</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nopinnedprograms">ADMX_StartMenu/NoPinnedPrograms</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-norecentdocsmenu">ADMX_StartMenu/NoRecentDocsMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-noresolvesearch">ADMX_StartMenu/NoResolveSearch</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-noresolvetrack">ADMX_StartMenu/NoResolveTrack</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-norun">ADMX_StartMenu/NoRun</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosmconfigureprograms">ADMX_StartMenu/NoSMConfigurePrograms</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosmmydocuments">ADMX_StartMenu/NoSMMyDocuments</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosmmymusic">ADMX_StartMenu/NoSMMyMusic</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosmmynetworkplaces">ADMX_StartMenu/NoSMMyNetworkPlaces</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosmmypictures">ADMX_StartMenu/NoSMMyPictures</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosearchcomminstartmenu">ADMX_StartMenu/NoSearchCommInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosearchcomputerlinkinstartmenu">ADMX_StartMenu/NoSearchComputerLinkInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosearcheverywherelinkinstartmenu">ADMX_StartMenu/NoSearchEverywhereLinkInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosearchfilesinstartmenu">ADMX_StartMenu/NoSearchFilesInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosearchinternetinstartmenu">ADMX_StartMenu/NoSearchInternetInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosearchprogramsinstartmenu">ADMX_StartMenu/NoSearchProgramsInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosetfolders">ADMX_StartMenu/NoSetFolders</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nosettaskbar">ADMX_StartMenu/NoSetTaskbar</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nostartmenudownload">ADMX_StartMenu/NoStartMenuDownload</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nostartmenuhomegroup">ADMX_StartMenu/NoStartMenuHomegroup</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nostartmenurecordedtv">ADMX_StartMenu/NoStartMenuRecordedTV</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nostartmenusubfolders">ADMX_StartMenu/NoStartMenuSubFolders</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nostartmenuvideos">ADMX_StartMenu/NoStartMenuVideos</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nostartpage">ADMX_StartMenu/NoStartPage</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-notaskbarclock">ADMX_StartMenu/NoTaskBarClock</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-notaskgrouping">ADMX_StartMenu/NoTaskGrouping</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-notoolbarsontaskbar">ADMX_StartMenu/NoToolbarsOnTaskbar</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-notraycontextmenu">ADMX_StartMenu/NoTrayContextMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-notrayitemsdisplay">ADMX_StartMenu/NoTrayItemsDisplay</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nouninstallfromstart">ADMX_StartMenu/NoUninstallFromStart</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nouserfolderonstartmenu">ADMX_StartMenu/NoUserFolderOnStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nousernameonstartmenu">ADMX_StartMenu/NoUserNameOnStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-nowindowsupdate">ADMX_StartMenu/NoWindowsUpdate</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-powerbuttonaction">ADMX_StartMenu/PowerButtonAction</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-quicklaunchenabled">ADMX_StartMenu/QuickLaunchEnabled</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-removeundockpcbutton">ADMX_StartMenu/RemoveUnDockPCButton</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-showappsviewonstart">ADMX_StartMenu/ShowAppsViewOnStart</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-showrunasdifferentuserinstart">ADMX_StartMenu/ShowRunAsDifferentUserInStart</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-showruninstartmenu">ADMX_StartMenu/ShowRunInStartMenu</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-showstartondisplaywithforegroundonwinkey">ADMX_StartMenu/ShowStartOnDisplayWithForegroundOnWinKey</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-startmenulogoff">ADMX_StartMenu/StartMenuLogOff</a>
  </dd>
  <dd>
    <a href="#admx-startmenu-startpinappswheninstalled">ADMX_StartMenu/StartPinAppsWhenInstalled</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-addsearchinternetlinkinstartmenu"></a>**ADMX_StartMenu/AddSearchInternetLinkInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy, a "Search the Internet" link is shown when the user performs a search in the start menu search box. This button launches the default browser with the search terms.

If you disable this policy, there won't be a "Search the Internet" link when the user performs a search in the start menu search box.

If you don't configure this policy (default), there won't be a "Search the Internet" link on the start menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Add Search Internet link to Start Menu*
-   GP name: *AddSearchInternetLinkInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-clearrecentdocsonexit"></a>**ADMX_StartMenu/ClearRecentDocsOnExit**

<!--SupportedSKUs-->

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
This policy setting clears history of recently opened documents on exit.

If you enable this setting, the system deletes shortcuts to recently used document files when the user signs out. As a result, the Recent Items menu on the Start menu is always empty when the user logs on. In addition, recently and frequently used items in the Jump Lists off of programs in the Start Menu and Taskbar will be cleared when the user signs out.

If you disable or don't configure this setting, the system retains document shortcuts, and when a user logs on, the Recent Items menu and the Jump Lists appear just as it did when the user logged off.

> [!NOTE]
> The system saves document shortcuts in the user profile in the System-drive\Users\User-name\Recent folder.

Also, see the "Remove Recent Items menu from Start Menu" and "Do not keep history of recently opened documents" policies in this folder. The system only uses this setting when neither of these related settings are selected.

This setting doesn't clear the list of recent files that Windows programs display at the bottom of the File menu. See the "Do not keep history of recently opened documents" setting.

This policy setting also doesn't hide document shortcuts displayed in the Open dialog box. See the "Hide the dropdown list of recent files" setting.

This policy also doesn't clear items that the user may have pinned to the Jump Lists, or Tasks that the application has provided for their menu. See the "Do not allow pinning items in Jump Lists" setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Clear history of recently opened documents on exit*
-   GP name: *ClearRecentDocsOnExit*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-clearrecentprogfornewuserinstartmenu"></a>**ADMX_StartMenu/ClearRecentProgForNewUserInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy setting, the recent programs list in the start menu will be blank for each new user.

If you disable or don't configure this policy, the start menu recent programs list will be pre-populated with programs for each new user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Clear the recent programs list for new users*
-   GP name: *ClearRecentProgForNewUserInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-cleartilesonexit"></a>**ADMX_StartMenu/ClearTilesOnExit**

<!--SupportedSKUs-->

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
If you enable this setting, the system deletes tile notifications when the user logs on. As a result, the Tiles in the start view will always show their default content when the user logs on. In addition, any cached versions of these notifications will be cleared when the user logs on.

If you disable or don't configure this setting, the system retains notifications, and when a user logs on, the tiles appear just as they did when the user logged off, including the history of previous notifications for each tile.

This setting doesn't prevent new notifications from appearing. See the "Turn off Application Notifications" setting to prevent new notifications.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Clear tile notifications during log on*
-   GP name: *ClearTilesOnExit*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-desktopappsfirstinappsview"></a>**ADMX_StartMenu/DesktopAppsFirstInAppsView**

<!--SupportedSKUs-->

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
This policy setting allows desktop apps to be listed first in the Apps view in Start.

If you enable this policy setting, desktop apps would be listed first when the apps are sorted by category in the Apps view. The other sorting options would continue to be available and the user could choose to change their default sorting options.

If you disable or don't configure this policy setting, the desktop apps won't be listed first when the apps are sorted by category, and the user can configure this setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *List desktop apps first in the Apps view*
-   GP name: *DesktopAppsFirstInAppsView*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-disableglobalsearchonappsview"></a>**ADMX_StartMenu/DisableGlobalSearchOnAppsView**

<!--SupportedSKUs-->

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
This policy setting prevents the user from searching apps, files and settings (and the web if enabled) when the user searches from the Apps view.

This policy setting is only applied when the Apps view is set as the default view for Start.

If you enable this policy setting, searching from the Apps view will only search the list of installed apps.

If you disable or don’t configure this policy setting, the user can configure this setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Search just apps from the Apps view*
-   GP name: *DisableGlobalSearchOnAppsView*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-forcestartmenulogoff"></a>**ADMX_StartMenu/ForceStartMenuLogOff**

<!--SupportedSKUs-->

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
This policy only applies to the classic version of the start menu and doesn't affect the new style start menu.

Adds the "Log Off `<username>`" item to the Start menu and prevents users from removing it.

If you enable this setting, the Log Off `<username>` item appears in the Start menu. This setting also removes the Display Logoff item from Start Menu Options. As a result, users can't remove the Log Off `<username>` item from the Start Menu.

If you disable this setting or don't configure it, users can use the Display Logoff item to add and remove the Log Off item.

This setting affects the Start menu only. It doesn't affect the Log Off item on the Windows Security dialog box that appears when you press Ctrl+Alt+Del.

> [!NOTE]
> To add or remove the Log Off item on a computer, click Start, click Settings, click Taskbar and Start Menu, click the Start Menu Options tab, and then, in the Start Menu Settings box, click Display Logoff.

Also, see "Remove Logoff" in User Configuration\Administrative Templates\System\Logon/Logoff.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Add Logoff to the Start Menu*
-   GP name: *ForceStartMenuLogOff*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-gotodesktoponsignin"></a>**ADMX_StartMenu/GoToDesktopOnSignIn**

<!--SupportedSKUs-->

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
This policy setting allows users to go to the desktop instead of the Start screen when they sign in.

If you enable this policy setting, users will always go to the desktop when they sign in.

If you disable this policy setting, users will always go to the Start screen when they sign in.

If you don’t configure this policy setting, the default setting for the user’s device will be used, and the user can choose to change it.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Go to the desktop instead of Start when signing in*
-   GP name: *GoToDesktopOnSignIn*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-greymsiads"></a>**ADMX_StartMenu/GreyMSIAds**

<!--SupportedSKUs-->

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
Displays Start menu shortcuts to partially installed programs in gray text.

This setting makes it easier for users to distinguish between programs that are fully installed and those programs that are only partially installed.

Partially installed programs include those programs that a system administrator assigns using Windows Installer and those programs that users have configured for full installation upon first use.

If you disable this setting or don't configure it, all Start menu shortcuts appear as black text.

> [!NOTE]
> Enabling this setting can make the Start menu slow to open.

<!--/Description-->
>

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Gray unavailable Windows Installer programs Start Menu shortcuts*
-   GP name: *GreyMSIAds*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-hidepoweroptions"></a>**ADMX_StartMenu/HidePowerOptions**

<!--SupportedSKUs-->

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
This policy setting prevents users from performing the following commands from the Windows security screen, the sign-in screen, and the Start menu: Shut Down, Restart, Sleep, and Hibernate. This policy setting doesn't prevent users from running Windows-based programs that perform these functions.

If you enable this policy setting, the shutdown, restart, sleep, and hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press CTRL+ALT+DELETE, and from the sign in screen.

If you disable or don't configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security and sign-in screens is also available.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands*
-   GP name: *HidePowerOptions*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-intellimenus"></a>**ADMX_StartMenu/Intellimenus**

<!--SupportedSKUs-->

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
This policy seting disables personalized menus.

Windows personalizes long menus by moving recently used items to the top of the menu and hiding items that haven't been used recently. Users can display the hidden items by clicking an arrow to extend the menu.

If you enable this setting, the system doesn't personalize menus. All menu items appear and remain in standard order. Also, this setting removes the "Use Personalized Menus" option so users don't try to change the setting while a setting is in effect.

> [!NOTE]
> Personalized menus require user tracking. If you enable the "Turn off user tracking" setting, the system disables user tracking and personalized menus and ignores this setting.

To Turn off personalized menus without specifying a setting, click Start, click Settings, click Taskbar and Start Menu, and then, on the General tab, clear the "Use Personalized Menus" option.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off personalized menus*
-   GP name: *Intellimenus*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-locktaskbar"></a>**ADMX_StartMenu/LockTaskbar**

<!--SupportedSKUs-->

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
This setting affects the taskbar, which is used to switch between running applications.

The taskbar includes the Start button, list of currently running tasks, and the notification area. By default, the taskbar is located at the bottom of the screen, but it can be dragged to any side of the screen. When it's locked, it can't be moved or resized.

If you enable this setting, it prevents the user from moving or resizing the taskbar. While the taskbar is locked, auto-hide and other taskbar options are still available in Taskbar properties.

If you disable this setting or don't configure it, the user can configure the taskbar position.

> [!NOTE]
> Enabling this setting also locks the QuickLaunch bar and any other toolbars that the user has on their taskbar. The toolbar's position is locked, and the user can't show and hide various toolbars using the taskbar context menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Lock the Taskbar*
-   GP name: *LockTaskbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-memcheckboxinrundlg"></a>**ADMX_StartMenu/MemCheckBoxInRunDlg**

<!--SupportedSKUs-->

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
This policy setting lets users run a 16-bit program in a dedicated (not shared) Virtual DOS Machine (VDM) process.

All DOS and 16-bit programs run on Windows 2000 Professional and Windows XP Professional in the Windows Virtual DOS Machine program. VDM simulates a 16-bit environment, complete with the DLLs required by 16-bit programs. By default, all 16-bit programs run as threads in a single, shared VDM process. As such, they share the memory space allocated to the VDM process and can't run simultaneously.

Enabling this setting adds a check box to the Run dialog box, giving users the option of running a 16-bit program in its own dedicated NTVDM process. The extra check box is enabled only when a user enters a 16-bit program in the Run dialog box.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Add "Run in Separate Memory Space" check box to Run dialog box*
-   GP name: *MemCheckBoxInRunDlg*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-noautotraynotify"></a>**ADMX_StartMenu/NoAutoTrayNotify**

<!--SupportedSKUs-->

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
This setting affects the notification area, also called the "system tray."

The notification area is located in the task bar, generally at the bottom of the screen, and it includes the clock and current notifications. This setting determines whether the items are always expanded or always collapsed. By default, notifications are collapsed. The notification cleanup << icon can be referred to as the "notification chevron."

If you enable this setting, the system notification area expands to show all of the notifications that use this area.

If you disable this setting, the system notification area will always collapse notifications.

If you don't configure it, the user can choose if they want notifications collapsed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off notification area cleanup*
-   GP name: *NoAutoTrayNotify*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-noballoontip"></a>**ADMX_StartMenu/NoBalloonTip**

<!--SupportedSKUs-->

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
This policy setting hides pop-up text on the Start menu and in the notification area.

When you hold the cursor over an item on the Start menu or in the notification area, the system displays pop-up text providing additional information about the object.

If you enable this setting, some of this pop-up text isn't displayed. The pop-up text affected by this setting includes "Click here to begin" on the Start button, "Where have all my programs gone" on the Start menu, and "Where have my icons gone" in the notification area.

If you disable this setting or don't configure it, all pop-up text is displayed on the Start menu and in the notification area.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Balloon Tips on Start Menu items*
-   GP name: *NoBalloonTip*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nochangestartmenu"></a>**ADMX_StartMenu/NoChangeStartMenu**

<!--SupportedSKUs-->

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
This policy setting allows you to prevent users from changing their Start screen layout.

If you enable this setting, you'll prevent a user from selecting an app, resizing a tile, pinning/unpinning a tile or a secondary tile, entering the customize mode and rearranging tiles within Start and Apps.

If you disable or don't configure this setting, you'll allow a user to select an app, resize a tile, pin/unpin a tile or a secondary tile, enter the customize mode and rearrange tiles within Start and Apps.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from customizing their Start Screen*
-   GP name: *NoChangeStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-noclose"></a>**ADMX_StartMenu/NoClose**

<!--SupportedSKUs-->

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
This policy setting prevents users from performing the following commands from the Start menu or Windows Security screen: Shut Down, Restart, Sleep, and Hibernate. This policy setting doesn't prevent users from running Windows-based programs that perform these functions.

If you enable this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are removed from the Start menu. The Power button is also removed from the Windows Security screen, which appears when you press CTRL+ALT+DELETE.

If you disable or don't configure this policy setting, the Power button and the Shut Down, Restart, Sleep, and Hibernate commands are available on the Start menu. The Power button on the Windows Security screen is also available.

> [!NOTE]
> Third-party programs certified as compatible with Microsoft Windows Vista, Windows XP SP2, Windows XP SP1, Windows XP, or Windows 2000 Professional are required to support this policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove and prevent access to the Shut Down, Restart, Sleep, and Hibernate commands*
-   GP name: *NoClose*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nocommongroups"></a>**ADMX_StartMenu/NoCommonGroups**

<!--SupportedSKUs-->

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
This policy setting removes items in the All Users profile from the Programs menu on the Start menu.

By default, the Programs menu contains items from the All Users profile and items from the user's profile. If you enable this setting, only items in the user's profile appear in the Programs menu.

To see the Program menu items in the All Users profile, on the system drive, go to ProgramData\Microsoft\Windows\Start Menu\Programs.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove common program groups from Start Menu*
-   GP name: *NoCommonGroups*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nofavoritesmenu"></a>**ADMX_StartMenu/NoFavoritesMenu**

<!--SupportedSKUs-->

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
This policy setting prevents users from adding the Favorites menu to the Start menu or classic Start menu.

If you enable this setting, the Display Favorites item doesn't appear in the Advanced Start menu options box.

If you disable or don't configure this setting, the Display Favorite item is available.

> [!NOTE]
> The Favorites menu doesn't appear on the Start menu by default. To display the Favorites menu, right-click Start, click Properties, and then click Customize.  If you are using Start menu, click the Advanced tab, and then, under Start menu items, click the Favorites menu. If you are using the classic Start menu, click Display Favorites under Advanced Start menu options.
>
> The items that appear in the Favorites menu when you install Windows are preconfigured by the system to appeal to most users. However, users can add and remove items from this menu, and system administrators can create a customized Favorites menu for a user group.
>
> This setting only affects the Start menu. The Favorites item still appears in File Explorer and in Internet Explorer.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Favorites menu from Start Menu*
-   GP name: *NoFavoritesMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nofind"></a>**ADMX_StartMenu/NoFind**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Search link from the Start menu, and disables some File Explorer search elements. This policy setting doesn't remove the search box from the new style Start menu.

If you enable this policy setting, the Search item is removed from the Start menu and from the context menu that appears when you right-click the Start menu. Also, the system doesn't respond when users press the Application key (the key with the Windows logo)+ F.

> [!NOTE]
> Enabling this policy setting also prevents the user from using the F3 key.

In File Explorer, the Search item still appears on the Standard buttons toolbar, but the system doesn't respond when the user presses Ctrl+F. Also, Search doesn't appear in the context menu when you right-click an icon representing a drive or a folder.

This policy setting affects the specified user interface elements only. It doesn't affect Internet Explorer and doesn't prevent the user from using other methods to search.

If you disable or don't configure this policy setting, the Search link is available from the Start menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Search link from Start Menu*
-   GP name: *NoFind*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nogamesfolderonstartmenu"></a>**ADMX_StartMenu/NoGamesFolderOnStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy, the start menu won't show a link to the Games folder.

If you disable or don't configure this policy, the start menu will show a link to the Games folder, unless the user chooses to remove it in the start menu control panel.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Games link from Start Menu*
-   GP name: *NoGamesFolderOnStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nohelp"></a>**ADMX_StartMenu/NoHelp**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Help command from the Start menu.

If you enable this policy setting, the Help command is removed from the Start menu.

If you disable or don't configure this policy setting, the Help command is available from the Start menu.

This policy setting only affects the Start menu. It doesn't remove the Help menu from File Explorer and doesn't prevent users from running Help.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Help menu from Start Menu*
-   GP name: *NoHelp*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-noinstrumentation"></a>**ADMX_StartMenu/NoInstrumentation**

<!--SupportedSKUs-->

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
This policy setting allows you to turn off user tracking.

If you enable this policy setting, the system doesn't track the programs that the user runs, and doesn't display frequently used programs in the Start Menu.

If you disable or don't configure this policy setting, the system tracks the programs that the user runs. The system uses this information to customize Windows features, such as showing frequently used programs in the Start Menu.

Also, see these related policy settings: "Remove frequent programs list from the Start Menu" and "Turn off personalized menus".

This policy  setting doesn't prevent users from pinning programs to the Start Menu or Taskbar. See the "Remove pinned programs list from the Start Menu" and "Do not allow pinning programs to the Taskbar" policy settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off user tracking*
-   GP name: *NoInstrumentation*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nomoreprogramslist"></a>**ADMX_StartMenu/NoMoreProgramsList**

<!--SupportedSKUs-->

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
If you enable this setting, the Start Menu will either collapse or remove the all apps list from the Start menu.

Selecting "Collapse" won't display the app list next to the pinned tiles in Start. An "All apps" button will be displayed on Start to open the all apps list. This selection of collapse is equivalent to setting the "Show app list in Start" in Settings to Off.

Selecting "Collapse and disable setting" will do the same as the collapse option and disable the "Show app list in Start menu" in Settings, so users can't turn it to On.

Selecting "Remove and disable setting" will remove the all apps list from Start and disable the "Show app list in Start menu" in Settings, so users can't turn it to On. Select this option for compatibility with earlier versions of Windows.

If you disable or don't configure this setting, the all apps list will be visible by default, and the user can change "Show app list in Start" in Settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove All Programs list from the Start menu*
-   GP name: *NoMoreProgramsList*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nonetanddialupconnect"></a>**ADMX_StartMenu/NoNetAndDialupConnect**

<!--SupportedSKUs-->

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
This policy setting allows you to remove Network Connections from the Start Menu.

If you enable this policy setting, users are prevented from running Network Connections.

Enabling this policy setting prevents the Network Connections folder from opening. This policy setting also removes Network Connections from Settings on the Start menu.

Network Connections still appears in Control Panel and in File Explorer, but if users try to start it, a message appears explaining that a setting prevents the action.

If you disable or don't configure this policy setting, Network Connections is available from the Start Menu.

Also, see the "Disable programs on Settings menu" and "Disable Control Panel" policy settings and the policy settings in the Network Connections folder (Computer Configuration and User Configuration\Administrative Templates\Network\Network Connections).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Network Connections from Start Menu*
-   GP name: *NoNetAndDialupConnect*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nopinnedprograms"></a>**ADMX_StartMenu/NoPinnedPrograms**

<!--SupportedSKUs-->

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
If you enable this setting, the "Pinned Programs" list is removed from the Start menu. Users can't pin programs to the Start menu.

In Windows XP and Windows Vista, the Internet and email checkboxes are removed from the 'Customize Start Menu' dialog.

If you disable this setting or don't configure it, the "Pinned Programs" list remains on the Start menu. Users can pin and unpin programs in the Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove pinned programs list from the Start Menu*
-   GP name: *NoPinnedPrograms*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-norecentdocsmenu"></a>**ADMX_StartMenu/NoRecentDocsMenu**

<!--SupportedSKUs-->

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
This policy setting removes the Recent Items menu from the Start menu.  Removes the Documents menu from the classic Start menu.

The Recent Items menu contains links to the non-program files that users have most recently opened. It appears so that users can easily reopen their documents.

If you enable this setting, the system saves document shortcuts but doesn't display the Recent Items menu in the Start Menu, and users can't turn on the menu.

If you later disable the setting, so that the Recent Items menu appears in the Start Menu, the document shortcuts saved before the setting was enabled and while it was in effect appear in the Recent Items menu.

When the setting is disabled, the Recent Items menu appears in the Start Menu, and users can't remove it.

If the setting isn't configured, users can turn the Recent Items menu on and off.

> [!NOTE]
> This setting doesn't prevent Windows programs from displaying shortcuts to recently opened documents. See the "Do not keep history of recently opened documents" setting.

This setting also doesn't hide document shortcuts displayed in the Open dialog box. See the "Hide the dropdown list of recent files" setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Recent Items menu from Start Menu*
-   GP name: *NoRecentDocsMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-noresolvesearch"></a>**ADMX_StartMenu/NoResolveSearch**

<!--SupportedSKUs-->

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
This policy setting prevents the system from conducting a comprehensive search of the target drive to resolve a shortcut.

If you enable this policy setting, the system doesn't conduct the final drive search. It just displays a message explaining that the file isn't found.

If you disable or don't configure this policy setting, by default, when the system can't find the target file for a shortcut (.lnk), it searches all paths associated with the shortcut. If the target file is located on an NTFS partition, the system then uses the target's file ID to find a path. If the resulting path isn't correct, it conducts a comprehensive search of the target drive in an attempt to find the file.

> [!NOTE]
> This policy setting only applies to target files on NTFS partitions. FAT partitions don't have this ID tracking and search capability.

Also, see the "Do not track Shell shortcuts during roaming" and the "Do not use the tracking-based method when resolving shell shortcuts" policy settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not use the search-based method when resolving shell shortcuts*
-   GP name: *NoResolveSearch*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-noresolvetrack"></a>**ADMX_StartMenu/NoResolveTrack**

<!--SupportedSKUs-->

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
This policy setting prevents the system from using NTFS tracking features to resolve a shortcut.

If you enable this policy setting, the system doesn't try to locate the file by using its file ID. It skips this step and begins a comprehensive search of the drive specified in the target path.

If you disable or don't configure this policy setting, by default, when the system can't find the target file for a shortcut (.lnk), it searches all paths associated with the shortcut. If the target file is located on an NTFS partition, the system then uses the target's file ID to find a path. If the resulting path isn't correct, it conducts a comprehensive search of the target drive in an attempt to find the file.

> [!NOTE]
> This policy setting only applies to target files on NTFS partitions. FAT partitions don't have this ID tracking and search capability.

Also, see the "Do not track Shell shortcuts during roaming" and the "Do not use the search-based method when resolving shell shortcuts" policy settings.
<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not use the tracking-based method when resolving shell shortcuts*
-   GP name: *NoResolveTrack*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-norun"></a>**ADMX_StartMenu/NoRun**

<!--SupportedSKUs-->

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
Allows you to remove the Run command from the Start menu, Internet Explorer, and Task Manager.

If you enable this setting, the following changes occur:

1. The Run command is removed from the Start menu.

2. The New Task (Run) command is removed from Task Manager.

3. The user will be blocked from entering the following into the Internet Explorer Address Bar:

    - A UNC path: `\\<server>\<share>`

    - Accessing local drives:  for example, C:

    - Accessing local folders: for example, `\<temp>`

Also, users with extended keyboards will no longer be able to display the Run dialog box by pressing the Application key (the key with the Windows logo) + R.

If you disable or don't configure this setting, users will be able to access the Run command in the Start menu and in Task Manager and use the Internet Explorer Address Bar.

> [!NOTE]
> This setting affects the specified interface only. It doesn't prevent users from using other methods to run programs.
>
> It's a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Run menu from Start Menu*
-   GP name: *NoRun*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosmconfigureprograms"></a>**ADMX_StartMenu/NoSMConfigurePrograms**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Default Programs link from the Start menu.

If you enable this policy setting, the Default Programs link is removed from the Start menu.

Clicking the Default Programs link from the Start menu opens the Default Programs control panel and provides administrators the ability to specify default programs for certain activities, such as Web browsing or sending e-mail, as well as which programs are accessible from the Start menu, desktop, and other locations.

If you disable or don't configure this policy setting, the Default Programs link is available from the Start menu.

> [!NOTE]
> This policy setting doesn't prevent the Set Default Programs for This Computer option from appearing in the Default Programs control panel.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Default Programs link from the Start menu.*
-   GP name: *NoSMConfigurePrograms*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosmmydocuments"></a>**ADMX_StartMenu/NoSMMyDocuments**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Documents icon from the Start menu and its submenus.

If you enable this policy setting, the Documents icon is removed from the Start menu and its submenus. Enabling this policy setting only removes the icon. It doesn't prevent the user from using other methods to gain access to the contents of the Documents folder.

> [!NOTE]
> To make changes to this policy setting effective, you must log off and then log on.

If you disable or don't configure this policy setting, the Documents icon is available from the Start menu.

Also, see the "Remove Documents icon on the desktop" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Documents icon from Start Menu*
-   GP name: *NoSMMyDocuments*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosmmymusic"></a>**ADMX_StartMenu/NoSMMyMusic**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Music icon from Start Menu.

If you enable this policy setting, the Music icon is no longer available from Start Menu.

If you disable or don't configure this policy setting, the Music icon is available from Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Music icon from Start Menu*
-   GP name: *NoSMMyMusic*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosmmynetworkplaces"></a>**ADMX_StartMenu/NoSMMyNetworkPlaces**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Network icon from Start Menu.

If you enable this policy setting, the Network icon is no longer available from Start Menu.

If you disable or don't configure this policy setting, the Network icon is available from Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Network icon from Start Menu*
-   GP name: *NoSMMyNetworkPlaces*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosmmypictures"></a>**ADMX_StartMenu/NoSMMyPictures**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Pictures icon from Start Menu.

If you enable this policy setting, the Pictures icon is no longer available from Start Menu.

If you disable or don't configure this policy setting, the Pictures icon is available from Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Pictures icon from Start Menu*
-   GP name: *NoSMMyPictures*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosearchcomminstartmenu"></a>**ADMX_StartMenu/NoSearchCommInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy, the start menu search box won't search for communications.

If you disable or don't configure this policy, the start menu will search for communications, unless the user chooses not to in the start menu control panel.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not search communications*
-   GP name: *NoSearchCommInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosearchcomputerlinkinstartmenu"></a>**ADMX_StartMenu/NoSearchComputerLinkInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy, the "See all results" link won't be shown when the user performs a search in the start menu search box.

If you disable or don't configure this policy, the "See all results" link will be shown when the user performs a search in the start menu search box.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Search Computer link*
-   GP name: *NoSearchComputerLinkInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosearcheverywherelinkinstartmenu"></a>**ADMX_StartMenu/NoSearchEverywhereLinkInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy, a "See more results" / "Search Everywhere" link won't be shown when the user performs a search in the start menu search box.

If you disable or don't configure this policy, a "See more results" link will be shown when the user performs a search in the start menu search box.  If a third-party protocol handler is installed, a "Search Everywhere" link will be shown instead of the "See more results" link.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove See More Results / Search Everywhere link*
-   GP name: *NoSearchEverywhereLinkInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosearchfilesinstartmenu"></a>**ADMX_StartMenu/NoSearchFilesInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy setting, the Start menu search box won't search for files.

If you disable or don't configure this policy setting, the Start menu will search for files, unless the user chooses not to do so directly in Control Panel. If you enable this policy, a "See more results" / "Search Everywhere" link won't be shown when the user performs a search in the start menu search box.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not search for files*
-   GP name: *NoSearchFilesInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosearchinternetinstartmenu"></a>**ADMX_StartMenu/NoSearchInternetInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy, the start menu search box won't search for internet history or favorites.

If you disable or don't configure this policy, the start menu will search for internet history or favorites, unless the user chooses not to in the start menu control panel.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not search Internet*
-   GP name: *NoSearchInternetInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosearchprogramsinstartmenu"></a>**ADMX_StartMenu/NoSearchProgramsInStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy setting, the Start menu search box won't search for programs or Control Panel items.

If you disable or don't configure this policy setting, the Start menu search box will search for programs and Control Panel items, unless the user chooses not to do so directly in Control Panel.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not search programs and Control Panel items*
-   GP name: *NoSearchProgramsInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosetfolders"></a>**ADMX_StartMenu/NoSetFolders**

<!--SupportedSKUs-->

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
This policy setting allows you to remove programs on Settings menu.

If you enable this policy setting, the Control Panel, Printers, and Network and Connection folders are removed from Settings on the Start menu, and from Computer and File Explorer. It also prevents the programs represented by these folders (such as Control.exe) from running.

However, users can still start Control Panel items by using other methods, such as right-clicking the desktop to start Display or right-clicking Computer to start System.

If you disable or don't configure this policy setting, the Control Panel, Printers, and Network and Connection folders from Settings are available on the Start menu, and from Computer and File Explorer.

Also, see the "Disable Control Panel," "Disable Display in Control Panel," and "Remove Network Connections from Start Menu" policy settings.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove programs on Settings menu*
-   GP name: *NoSetFolders*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nosettaskbar"></a>**ADMX_StartMenu/NoSetTaskbar**

<!--SupportedSKUs-->

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
This policy setting allows you to prevent changes to Taskbar and Start Menu Settings.

If you enable this policy setting, The user will be prevented from opening the Taskbar Properties dialog box.

If the user right-clicks the taskbar and then clicks Properties, a message appears explaining that a setting prevents the action.

If you disable or don't configure this policy setting, the Taskbar and Start Menu items are available from Settings on the Start menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent changes to Taskbar and Start Menu Settings*
-   GP name: *NoSetTaskbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nostartmenudownload"></a>**ADMX_StartMenu/NoStartMenuDownload**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Downloads link from the Start Menu.

If you enable this policy setting, the Start Menu doesn't show a link to the Downloads folder.

If you disable or don't configure this policy setting, the Downloads link is available from the Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Downloads link from Start Menu*
-   GP name: *NoStartMenuDownload*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nostartmenuhomegroup"></a>**ADMX_StartMenu/NoStartMenuHomegroup**

<!--SupportedSKUs-->

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
If you enable this policy, the Start menu won't show a link to Homegroup. It also removes the homegroup item from the Start Menu options. As a result, users can't add the homegroup link to the Start Menu.

If you disable or don't configure this policy, users can use the Start Menu options to add or remove the homegroup link from the Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Homegroup link from Start Menu*
-   GP name: *NoStartMenuHomegroup*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nostartmenurecordedtv"></a>**ADMX_StartMenu/NoStartMenuRecordedTV**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Recorded TV link from the Start Menu.

If you enable this policy setting, the Start Menu doesn't show a link to the Recorded TV library.

If you disable or don't configure this policy setting, the Recorded TV link is available from the Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Recorded TV link from Start Menu*
-   GP name: *NoStartMenuRecordedTV*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nostartmenusubfolders"></a>**ADMX_StartMenu/NoStartMenuSubFolders**

<!--SupportedSKUs-->

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
Hides all folders on the user-specific (top) section of the Start menu. Other items appear, but folders are hidden.

This setting is designed for use with redirected folders. Redirected folders appear on the main (bottom) section of the Start menu. However, the original, user-specific version of the folder still appears on the top section of the Start menu. Because the appearance of two folders with the same name might confuse users, you can use this setting to hide user-specific folders.

This setting hides all user-specific folders, not just those folders associated with redirected folders.

If you enable this setting, no folders appear on the top section of the Start menu. If users add folders to the Start Menu directory in their user profiles, the folders appear in the directory but not on the Start menu.

If you disable this setting or don't configure it, Windows 2000 Professional and Windows XP Professional display folders on both sections of the Start menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove user's folders from the Start Menu*
-   GP name: *NoStartMenuSubFolders*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nostartmenuvideos"></a>**ADMX_StartMenu/NoStartMenuVideos**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the Videos link from the Start Menu.

If you enable this policy setting, the Start Menu doesn't show a link to the Videos library.

If you disable or don't configure this policy setting, the Videos link is available from the Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Videos link from Start Menu*
-   GP name: *NoStartMenuVideos*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nostartpage"></a>**ADMX_StartMenu/NoStartPage**

<!--SupportedSKUs-->

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
This setting affects the presentation of the Start menu.

The classic Start menu in Windows allows users to begin common tasks, while the new Start menu consolidates common items onto one menu. When the classic Start menu is used, the following icons are placed on the desktop: Documents, Pictures, Music, Computer, and Network. The new Start menu starts them directly.

If you enable this setting, the Start menu displays the classic Start menu and displays the standard desktop icons.

If you disable this setting, the Start menu only displays in the new style, meaning the desktop icons are now on the Start page.

If you don't configure this setting, the default is the new style, and the user can change the view.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Force classic Start Menu*
-   GP name: *NoStartPage*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-notaskbarclock"></a>**ADMX_StartMenu/NoTaskBarClock**

<!--SupportedSKUs-->

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
Prevents the clock in the system notification area from being displayed.

If you enable this setting, the clock won't be displayed in the system notification area.

If you disable or don't configure this setting, the default behavior of the clock appearing in the notification area will occur.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Clock from the system notification area*
-   GP name: *NoTaskBarClock*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-notaskgrouping"></a>**ADMX_StartMenu/NoTaskGrouping**

<!--SupportedSKUs-->

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
This setting affects the taskbar buttons used to switch between running programs.

Taskbar grouping consolidates similar applications when there is no room on the taskbar. It kicks in when the user's taskbar is full.

If you enable this setting, it prevents the taskbar from grouping items that share the same program name. By default, this setting is always enabled.

If you disable or don't configure it, items on the taskbar that share the same program are grouped together. The users have the option to disable grouping, if they choose.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent grouping of taskbar items*
-   GP name: *NoTaskGrouping*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-notoolbarsontaskbar"></a>**ADMX_StartMenu/NoToolbarsOnTaskbar**

<!--SupportedSKUs-->

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
This setting affects the taskbar.

The taskbar includes the Start button, buttons for currently running tasks, custom toolbars, the notification area, and the system clock. Toolbars include Quick Launch, Address, Links, Desktop, and other custom toolbars created by the user or by an application.

If this setting is enabled, the taskbar doesn't display any custom toolbars, and the user can't add any custom toolbars to the taskbar. Moreover, the "Toolbars" menu command and submenu are removed from the context menu. The taskbar displays only the Start button, taskbar buttons, the notification area, and the system clock.

If this setting is disabled or isn't configured, the taskbar displays all toolbars. Users can add or remove custom toolbars, and the "Toolbars" command appears in the context menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not display any custom toolbars in the taskbar*
-   GP name: *NoToolbarsOnTaskbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-notraycontextmenu"></a>**ADMX_StartMenu/NoTrayContextMenu**

<!--SupportedSKUs-->

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
This policy setting allows you to remove access to the context menus for the taskbar.

If you enable this policy setting, the menus that appear when you right-click the taskbar and items on the taskbar are hidden, such as the Start button, the clock, and the taskbar buttons.

If you disable or don't configure this policy setting, the context menus for the taskbar are available.

This policy setting doesn't prevent users from using other methods to issue the commands that appear on these menus.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove access to the context menus for the taskbar*
-   GP name: *NoTrayContextMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-notrayitemsdisplay"></a>**ADMX_StartMenu/NoTrayItemsDisplay**

<!--SupportedSKUs-->

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
This setting affects the notification area (previously called the "system tray") on the taskbar.

The notification area is located at the far right end of the task bar and includes the icons for current notifications and the system clock.

If this setting is enabled, the user’s entire notification area, including the notification icons, is hidden. The taskbar displays only the Start button, taskbar buttons, custom toolbars (if any), and the system clock.

If this setting is disabled or isn't configured, the notification area is shown in the user's taskbar.

> [!NOTE]
> Enabling this setting overrides the "Turn off notification area cleanup" setting, because if the notification area is hidden, there is no need to clean up the icons.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Hide the notification area*
-   GP name: *NoTrayItemsDisplay*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nouninstallfromstart"></a>**ADMX_StartMenu/NoUninstallFromStart**

<!--SupportedSKUs-->

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
If you enable this setting, users can't uninstall apps from Start.

If you disable this setting or don't configure it, users can access the uninstall command from Start.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from uninstalling applications from Start*
-   GP name: *NoUninstallFromStart*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nouserfolderonstartmenu"></a>**ADMX_StartMenu/NoUserFolderOnStartMenu**

<!--SupportedSKUs-->

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
If you enable this policy, the start menu won't show a link to the user's storage folder.

If you disable or don't configure this policy, the start menu will display a link, unless the user chooses to remove it in the start menu control panel.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove user folder link from Start Menu*
-   GP name: *NoUserFolderOnStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nousernameonstartmenu"></a>**ADMX_StartMenu/NoUserNameOnStartMenu**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the user name label from the Start Menu.

If you enable this policy setting, the user name label is removed from the Start Menu.

If you disable or don't configure this policy setting, the user name label appears on the Start Menu.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove user name from Start Menu*
-   GP name: *NoUserNameOnStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-nowindowsupdate"></a>**ADMX_StartMenu/NoWindowsUpdate**

<!--SupportedSKUs-->

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
This policy setting allows you to remove links and access to Windows Update.

If you enable this policy setting, users are prevented from connecting to the Windows Update Web site.

Enabling this policy setting blocks user access to the Windows Update Web site at https://windowsupdate.microsoft.com. Also, the policy setting removes the Windows Update hyperlink from the Start menu and from the Tools menu in Internet Explorer.

Windows Update, the online extension of Windows, offers software updates to keep a user’s system up-to-date. The Windows Update Product Catalog determines any system files, security fixes, and Microsoft updates that users need, newest versions of which are displayed for download.

If you disable or don't configure this policy setting, the Windows Update hyperlink is available from the Start menu and from the Tools menu in Internet Explorer.

Also, see the "Hide the "Add programs from Microsoft" option" policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove links and access to Windows Update*
-   GP name: *NoWindowsUpdate*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-powerbuttonaction"></a>**ADMX_StartMenu/PowerButtonAction**

<!--SupportedSKUs-->

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
Set the default action of the power button on the Start menu.

If you enable this setting, the Start Menu will set the power button to the chosen action, and not let the user change this action.

If you set the button to either Sleep or Hibernate, and that state isn't supported on a computer, then the button will fall back to Shut Down.

If you disable or don't configure this setting, the Start Menu power button will be set to Shut Down by default, and the user can change this setting to another action.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Change Start Menu power button*
-   GP name: *PowerButtonAction*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-quicklaunchenabled"></a>**ADMX_StartMenu/QuickLaunchEnabled**

<!--SupportedSKUs-->

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
This policy setting controls whether the QuickLaunch bar is displayed in the Taskbar.

If you enable this policy setting, the QuickLaunch bar will be visible and can't be turned off.

If you disable this policy setting, the QuickLaunch bar will be hidden and can't be turned on.

If you don't configure this policy setting, then users will be able to turn the QuickLaunch bar on and off.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Show QuickLaunch on Taskbar*
-   GP name: *QuickLaunchEnabled*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-removeundockpcbutton"></a>**ADMX_StartMenu/RemoveUnDockPCButton**

<!--SupportedSKUs-->

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
If you enable this setting, the "Undock PC" button is removed from the simple Start Menu, and your PC can't be undocked.

If you disable this setting or don't configure it, the "Undock PC" button remains on the simple Start menu, and your PC can be undocked.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove the "Undock PC" button from the Start Menu*
-   GP name: *RemoveUnDockPCButton*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-showappsviewonstart"></a>**ADMX_StartMenu/ShowAppsViewOnStart**

<!--SupportedSKUs-->

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
This policy setting allows the Apps view to be opened by default when the user goes to Start.

If you enable this policy setting, the Apps view will appear whenever the user goes to Start. Users will still be able to switch between the Apps view and the Start screen.

If you disable or don’t configure this policy setting, the Start screen will appear by default whenever the user goes to Start, and the user will be able to switch between the Apps view and the Start screen. Also, the user will be able to configure this setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Show the Apps view automatically when the user goes to Start*
-   GP name: *ShowAppsViewOnStart*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-showrunasdifferentuserinstart"></a>**ADMX_StartMenu/ShowRunAsDifferentUserInStart**

<!--SupportedSKUs-->

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
This policy setting shows or hides the "Run as different user" command on the Start application bar.

If you enable this setting, users can access the "Run as different user" command from Start for applications that support this functionality.

If you disable this setting or don't configure it, users can't access the "Run as different user" command from Start for any applications.

> [!NOTE]
> This setting doesn't prevent users from using other methods, such as the shift right-click menu on application's jumplists in the taskbar to issue the "Run as different user" command.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Show "Run as different user" command on Start*
-   GP name: *ShowRunAsDifferentUserInStart*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-showruninstartmenu"></a>**ADMX_StartMenu/ShowRunInStartMenu**

<!--SupportedSKUs-->

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
If you enable this setting, the Run command is added to the Start menu.

If you disable or don't configure this setting, the Run command isn't visible on the Start menu by default, but it can be added from the Taskbar and Start menu properties.

If the Remove Run link from Start Menu policy is set, the Add the Run command to the Start menu policy has no effect.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Add the Run command to the Start Menu*
-   GP name: *ShowRunInStartMenu*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-showstartondisplaywithforegroundonwinkey"></a>**ADMX_StartMenu/ShowStartOnDisplayWithForegroundOnWinKey**

<!--SupportedSKUs-->

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


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Show Start on the display the user is using when they press the Windows logo key*
-   GP name: *ShowStartOnDisplayWithForegroundOnWinKey*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-startmenulogoff"></a>**ADMX_StartMenu/StartMenuLogOff**

<!--SupportedSKUs-->

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
This policy setting allows you to remove the "Log Off `<username>`" item from the Start menu and prevents users from restoring it.

If you enable this policy setting, the Log Off `<username>` item doesn't appear in the Start menu. This policy setting also removes the Display Logoff item from Start Menu Options. As a result, users can't restore the Log Off `<username>` item to the Start Menu.

If you disable or don't configure this policy setting, users can use the Display Logoff item to add and remove the Log Off item.

This policy setting affects the Start menu only. It doesn't affect the Log Off item on the Windows Security dialog box that appears when you press Ctrl+Alt+Del, and it doesn't prevent users from using other methods to sign out.

> [!TIP]
> To add or remove the Log Off item on a computer, click Start, click Settings, click Taskbar and Start Menu, click the Start Menu Options tab and, in the Start Menu Settings box, click Display Logoff.

See also: "Remove Logoff" policy setting in User Configuration\Administrative Templates\System\Logon/Logoff.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Logoff on the Start Menu*
-   GP name: *StartMenuLogOff*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-startmenu-startpinappswheninstalled"></a>**ADMX_StartMenu/StartPinAppsWhenInstalled**

<!--SupportedSKUs-->

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
This policy setting allows pinning apps to Start by default, when they're included by AppID on the list.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Pin Apps to Start when installed*
-   GP name: *StartPinAppsWhenInstalled*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *StartMenu.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->


## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
