---
title: Policy CSP - ADMX_Taskbar
description: Learn about Policy CSP - ADMX_Taskbar.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 10/26/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Taskbar

<hr/>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--Policies-->
## ADMX_Taskbar policies

<dl>
  <dd>
    <a href="#admx-taskbar-disablenotificationcenter">ADMX_Taskbar/DisableNotificationCenter</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-enablelegacyballoonnotifications">ADMX_Taskbar/EnableLegacyBalloonNotifications</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-hidescahealth">ADMX_Taskbar/HideSCAHealth</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-hidescanetwork">ADMX_Taskbar/HideSCANetwork</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-hidescapower">ADMX_Taskbar/HideSCAPower</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-hidescavolume">ADMX_Taskbar/HideSCAVolume</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-noballoonfeatureadvertisements">ADMX_Taskbar/NoBalloonFeatureAdvertisements</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-nopinningstoretotaskbar">ADMX_Taskbar/NoPinningStoreToTaskbar</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-nopinningtodestinations">ADMX_Taskbar/NoPinningToDestinations</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-nopinningtotaskbar">ADMX_Taskbar/NoPinningToTaskbar</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-noremotedestinations">ADMX_Taskbar/NoRemoteDestinations</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-nosystraysystempromotion">ADMX_Taskbar/NoSystraySystemPromotion</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-showwindowsstoreappsontaskbar">ADMX_Taskbar/ShowWindowsStoreAppsOnTaskbar</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarlockall">ADMX_Taskbar/TaskbarLockAll</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnoaddremovetoolbar">ADMX_Taskbar/TaskbarNoAddRemoveToolbar</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnodragtoolbar">ADMX_Taskbar/TaskbarNoDragToolbar</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnomultimon">ADMX_Taskbar/TaskbarNoMultimon</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnonotification">ADMX_Taskbar/TaskbarNoNotification</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnopinnedlist">ADMX_Taskbar/TaskbarNoPinnedList</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnoredock">ADMX_Taskbar/TaskbarNoRedock</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnoresize">ADMX_Taskbar/TaskbarNoResize</a>
  </dd>
  <dd>
    <a href="#admx-taskbar-taskbarnothumbnail">ADMX_Taskbar/TaskbarNoThumbnail</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-disablenotificationcenter"></a>**ADMX_Taskbar/DisableNotificationCenter**

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
This policy setting removes Notifications and Action Center from the notification area on the taskbar.

The notification area is located at the far right end of the taskbar and includes icons for current notifications and the system clock.

If this setting is enabled, Notifications and Action Center isn't displayed in the notification area. The user will be able to read notifications when they appear, but they won’t be able to review any notifications they miss.

If you disable or don't configure this policy setting, Notification and Security and Maintenance will be displayed on the taskbar.

>[!NOTE]
> A reboot is required for this policy setting to take effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Notifications and Action Center*
-   GP name: *DisableNotificationCenter*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-enablelegacyballoonnotifications"></a>**ADMX_Taskbar/EnableLegacyBalloonNotifications**

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
This policy disables the functionality that converts balloons to toast notifications.

If you enable this policy setting, system and application notifications will render as balloons instead of toast notifications.

Enable this policy setting if a specific app or system component that uses balloon notifications has compatibility issues with toast notifications.

If you disable or don’t configure this policy setting, all notifications will appear as toast notifications.

>[!NOTE]
> A reboot is required for this policy setting to take effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disable showing balloon notifications as toasts.*
-   GP name: *EnableLegacyBalloonNotifications*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-hidescahealth"></a>**ADMX_Taskbar/HideSCAHealth**

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
This policy setting allows you to remove Security and Maintenance from the system control area.

If you enable this policy setting, the Security and Maintenance icon isn't displayed in the system notification area.

If you disable or don't configure this policy setting, the Security and Maintenance icon is displayed in the system notification area.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove the Security and Maintenance icon*
-   GP name: *HideSCAHealth*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-hidescanetwork"></a>**ADMX_Taskbar/HideSCANetwork**

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
This policy setting allows you to remove the networking icon from the system control area.

If you enable this policy setting, the networking icon isn't displayed in the system notification area.

If you disable or don't configure this policy setting, the networking icon is displayed in the system notification area.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove the networking icon*
-   GP name: *HideSCANetwork*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-hidescapower"></a>**ADMX_Taskbar/HideSCAPower**

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
This policy setting allows you to remove the battery meter from the system control area.

If you enable this policy setting, the battery meter isn't displayed in the system notification area.

If you disable or don't configure this policy setting, the battery meter is displayed in the system notification area.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove the battery meter*
-   GP name: *HideSCAPower*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-hidescavolume"></a>**ADMX_Taskbar/HideSCAVolume**

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
This policy setting allows you to remove the volume control icon from the system control area.

If you enable this policy setting, the volume control icon isn't displayed in the system notification area.

If you disable or don't configure this policy setting, the volume control icon is displayed in the system notification area.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove the volume control icon*
-   GP name: *HideSCAVolume*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-noballoonfeatureadvertisements"></a>**ADMX_Taskbar/NoBalloonFeatureAdvertisements**

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
This policy setting allows you to turn off feature advertisement balloon notifications.

If you enable this policy setting, certain notification balloons that are marked as feature advertisements aren't shown.

If you disable don't configure this policy setting, feature advertisement balloons are shown.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off feature advertisement balloon notifications*
-   GP name: *NoBalloonFeatureAdvertisements*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-nopinningstoretotaskbar"></a>**ADMX_Taskbar/NoPinningStoreToTaskbar**

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
This policy setting allows you to control pinning the Store app to the Taskbar.

If you enable this policy setting, users can't pin the Store app to the Taskbar. If the Store app is already pinned to the Taskbar, it will be removed from the Taskbar on next sign in.

If you disable or don't configure this policy setting, users can pin the Store app to the Taskbar.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow pinning Store app to the Taskbar*
-   GP name: *NoPinningStoreToTaskbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-nopinningtodestinations"></a>**ADMX_Taskbar/NoPinningToDestinations**

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
This policy setting allows you to control pinning items in Jump Lists.

If you enable this policy setting, users can't pin files, folders, websites, or other items to their Jump Lists in the Start Menu and Taskbar. Users also can't unpin existing items pinned to their Jump Lists. Existing items already pinned to their Jump Lists will continue to show.

If you disable or don't configure this policy setting, users can pin files, folders, websites, and other items to a program's Jump List so that the items are always present in this menu.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow pinning items in Jump Lists*
-   GP name: *NoPinningToDestinations*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-nopinningtotaskbar"></a>**ADMX_Taskbar/NoPinningToTaskbar**

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
This policy setting allows you to control pinning programs to the Taskbar.

If you enable this policy setting, users can't change the programs currently pinned to the Taskbar. If any programs are already pinned to the Taskbar, these programs continue to show in the Taskbar. However, users can't unpin these programs already pinned to the Taskbar, and they can't pin new programs to the Taskbar.

If you disable or don't configure this policy setting, users can change the programs currently pinned to the Taskbar.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow pinning programs to the Taskbar*
-   GP name: *NoPinningToTaskbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-noremotedestinations"></a>**ADMX_Taskbar/NoRemoteDestinations**

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
This policy setting allows you to control displaying or tracking items in Jump Lists from remote locations.

The Start Menu and Taskbar display Jump Lists off of programs. These menus include files, folders, websites, and other relevant items for that program. This customization helps users more easily reopen their most important documents and other tasks.

If you enable this policy setting, the Start Menu and Taskbar only track the files that the user opens locally on this computer. Files that the user opens over the network from remote computers aren't tracked or shown in the Jump Lists. Use this setting to reduce network traffic, particularly over slow network connections.

If you disable or don't configure this policy setting, all files that the user opens appear in the menus, including files located remotely on another computer.

> [!NOTE]
> This setting does not prevent Windows from displaying remote files that the user has explicitly pinned to the Jump Lists. See the "Do not allow pinning items in Jump Lists" policy setting.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not display or track items in Jump Lists from remote locations*
-   GP name: *NoRemoteDestinations*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-nosystraysystempromotion"></a>**ADMX_Taskbar/NoSystraySystemPromotion**

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
This policy setting allows you to turn off automatic promotion of notification icons to the taskbar.

If you enable this policy setting, newly added notification icons aren't temporarily promoted to the Taskbar. Users can still configure icons to be shown or hidden in the Notification Control Panel.

If you disable or don't configure this policy setting, newly added notification icons are temporarily promoted to the Taskbar.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off automatic promotion of notification icons to the taskbar*
-   GP name: *NoSystraySystemPromotion*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-showwindowsstoreappsontaskbar"></a>**ADMX_Taskbar/ShowWindowsStoreAppsOnTaskbar**

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
This policy setting allows users to see Windows Store apps on the taskbar.

If you enable this policy setting, users will see Windows Store apps on the taskbar.

If you disable this policy setting, users won’t see Windows Store apps on the taskbar.

If you don’t configure this policy setting, the default setting for the user’s device will be used, and the user can choose to change it.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Show Windows Store apps on the taskbar*
-   GP name: *ShowWindowsStoreAppsOnTaskbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarlockall"></a>**ADMX_Taskbar/TaskbarLockAll**

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
This policy setting allows you to lock all taskbar settings.

If you enable this policy setting, the user can't access the taskbar control panel. The user is also unable to resize, move or rearrange toolbars on their taskbar.

If you disable or don't configure this policy setting, the user will be able to set any taskbar setting that isn't prevented by another policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Lock all taskbar settings*
-   GP name: *TaskbarLockAll*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarnoaddremovetoolbar"></a>**ADMX_Taskbar/TaskbarNoAddRemoveToolbar**

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
This policy setting allows you to prevent users from adding or removing toolbars.

If you enable this policy setting, the user isn't allowed to add or remove any toolbars to the taskbar. Applications aren't able to add toolbars either.

If you disable or don't configure this policy setting, the users and applications are able to add toolbars to the taskbar.

<!--/Description-->
<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from adding or removing toolbars*
-   GP name: *TaskbarNoAddRemoveToolbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
>

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarnodragtoolbar"></a>**ADMX_Taskbar/TaskbarNoDragToolbar**

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
This policy setting allows you to prevent users from rearranging toolbars.

If you enable this policy setting, users aren't able to drag or drop toolbars to the taskbar.

If you disable or don't configure this policy setting, users are able to rearrange the toolbars on the taskbar.

<!--/Description-->
<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from rearranging toolbars*
-   GP name: *TaskbarNoDragToolbar*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarnomultimon"></a>**ADMX_Taskbar/TaskbarNoMultimon**

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
This policy setting allows you to prevent taskbars from being displayed on more than one monitor.

If you enable this policy setting, users aren't able to show taskbars on more than one display. The multiple display section isn't enabled in the taskbar properties dialog.

If you disable or don't configure this policy setting, users can show taskbars on more than one display.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow taskbars on more than one display*
-   GP name: *TaskbarNoMultimon*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarnonotification"></a>**ADMX_Taskbar/TaskbarNoNotification**

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
This policy setting allows you to turn off all notification balloons.

If you enable this policy setting, no notification balloons are shown to the user.

If you disable or don't configure this policy setting, notification balloons are shown to the user.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off all balloon notifications*
-   GP name: *TaskbarNoNotification*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarnopinnedlist"></a>**ADMX_Taskbar/TaskbarNoPinnedList**

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
This policy setting allows you to remove pinned programs from the taskbar.

If you enable this policy setting, pinned programs are prevented from being shown on the Taskbar. Users can't pin programs to the Taskbar.

If you disable or don't configure this policy setting, users can pin programs so that the program shortcuts stay on the Taskbar.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove pinned programs from the Taskbar*
-   GP name: *TaskbarNoPinnedList*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarnoredock"></a>**ADMX_Taskbar/TaskbarNoRedock**

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
This policy setting allows you to prevent users from moving taskbar to another screen dock location.

If you enable this policy setting, users aren't able to drag their taskbar to another area of the monitor(s).

If you disable or don't configure this policy setting, users are able to drag their taskbar to another area of the monitor unless prevented by another policy setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from moving taskbar to another screen dock location*
-   GP name: *TaskbarNoRedock*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--Policy-->
<a href="" id="admx-taskbar-taskbarnoresize"></a>**ADMX_Taskbar/TaskbarNoResize**

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
This policy setting allows you to prevent users from resizing the taskbar.

If you enable this policy setting, users aren't be able to resize their taskbar.

If you disable or don't configure this policy setting, users are able to resize their taskbar unless prevented by another setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent users from resizing the taskbar*
-   GP name: *TaskbarNoResize*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-taskbar-taskbarnothumbnail"></a>**ADMX_Taskbar/TaskbarNoThumbnail**

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
This policy setting allows you to turn off taskbar thumbnails.

If you enable this policy setting, the taskbar thumbnails aren't displayed and the system uses standard text for the tooltips.

If you disable or don't configure this policy setting, the taskbar thumbnails are displayed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off taskbar thumbnails*
-   GP name: *TaskbarNoThumbnail*
-   GP path: *Start Menu and Taskbar*
-   GP ADMX file name: *Taskbar.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->


## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
