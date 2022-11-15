---
title: Policy CSP - ADMX_WPN
description: Policy CSP - ADMX_WPN
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/13/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_WPN
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_WPN policies

<dl>
  <dd>
    <a href="#admx-wpn-nocallsduringquiethours">ADMX_WPN/NoCallsDuringQuietHours</a>
  </dd>
  <dd>
    <a href="#admx-wpn-nolockscreentoastnotification">ADMX_WPN/NoLockScreenToastNotification</a>
  </dd>
  <dd>
    <a href="#admx-wpn-noquiethours">ADMX_WPN/NoQuietHours</a>
  </dd>
  <dd>
    <a href="#admx-wpn-notoastnotification">ADMX_WPN/NoToastNotification</a>
  </dd>
  <dd>
    <a href="#admx-wpn-quiethoursdailybeginminute">ADMX_WPN/QuietHoursDailyBeginMinute</a>
  </dd>
  <dd>
    <a href="#admx-wpn-quiethoursdailyendminute">ADMX_WPN/QuietHoursDailyEndMinute</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-wpn-nocallsduringquiethours"></a>**ADMX_WPN/NoCallsDuringQuietHours**

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
This policy setting blocks voice and video calls during Quiet Hours.

If you enable this policy setting, voice and video calls will be blocked during the designated Quiet Hours time window each day, and users won't be able to customize any other Quiet Hours settings.

If you disable this policy setting, voice and video calls will be allowed during Quiet Hours, and users won't be able to customize this or any other Quiet Hours settings.

If you don't configure this policy setting, voice and video calls will be allowed during Quiet Hours by default. Administrators and users will be able to modify this setting.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off calls during Quiet Hours*
-   GP name: *NoCallsDuringQuietHours*
-   GP path: *Start Menu and Taskbar\Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wpn-nolockscreentoastnotification"></a>**ADMX_WPN/NoLockScreenToastNotification**

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
This policy setting turns off toast notifications on the lock screen.

If you enable this policy setting, applications won't be able to raise toast notifications on the lock screen.

If you disable or don't configure this policy setting, toast notifications on the lock screen are enabled and can be turned off by the administrator or user.

No reboots or service restarts are required for this policy setting to take effect.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off toast notifications on the lock screen*
-   GP name: *NoLockScreenToastNotification*
-   GP path: *Start Menu and Taskbar\Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wpn-noquiethours"></a>**ADMX_WPN/NoQuietHours**

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
This policy setting turns off Quiet Hours functionality.

If you enable this policy setting, toast notifications won't be suppressed and some background tasks won't be deferred during the designated Quiet Hours time window each day.

If you disable this policy setting, toast notifications will be suppressed and some background task deferred during the designated Quiet Hours time window. Users won't be able to change this or any other Quiet Hours settings.

If you don't configure this policy setting, Quiet Hours are enabled by default but can be turned off or by the administrator or user.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Quiet Hours*
-   GP name: *NoQuietHours*
-   GP path: *Start Menu and Taskbar\Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wpn-notoastnotification"></a>**ADMX_WPN/NoToastNotification**

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
This policy setting turns off toast notifications for applications.

If you enable this policy setting, applications won't be able to raise toast notifications.

This policy doesn't affect taskbar notification balloons.

Windows system features aren't affected by this policy.  You must enable/disable system features individually to stop their ability to raise toast notifications.

If you disable or don't configure this policy setting, toast notifications are enabled and can be turned off by the administrator or user.

No reboots or service restarts are required for this policy setting to take effect.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off toast notifications*
-   GP name: *NoToastNotification*
-   GP path: *Start Menu and Taskbar\Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wpn-quiethoursdailybeginminute"></a>**ADMX_WPN/QuietHoursDailyBeginMinute**

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
This policy setting specifies the number of minutes after midnight (local time) that Quiet Hours is to begin each day.

If you enable this policy setting, the specified time will be used, and users won't be able to customize any Quiet Hours settings.

If you disable this policy setting, a default value will be used, and users won't be able to change it or any other Quiet Hours setting.

If you don't configure this policy setting, a default value will be used, which administrators and users will be able to modify.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set the time Quiet Hours begins each day*
-   GP name: *QuietHoursDailyBeginMinute*
-   GP path: *Start Menu and Taskbar\Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wpn-quiethoursdailyendminute"></a>**ADMX_WPN/QuietHoursDailyEndMinute**

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
This policy setting specifies the number of minutes after midnight (local time) that Quiet Hours is to end each day.

If you enable this policy setting, the specified time will be used, and users won't be able to customize any Quiet Hours settings.

If you disable this policy setting, a default value will be used, and users won't be able to change it or any other Quiet Hours setting.

If you don't configure this policy setting, a default value will be used, which administrators and users will be able to modify.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set the time Quiet Hours ends each day*
-   GP name: *QuietHoursDailyEndMinute*
-   GP path: *Start Menu and Taskbar\Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>





<!--/Policies-->