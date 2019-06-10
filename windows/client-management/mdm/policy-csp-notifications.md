---
title: Policy CSP - Notifications
description: Policy CSP - Notifications
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 05/14/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Notifications



<hr/>

<!--Policies-->
## Notifications policies  

<dl>
  <dd>
    <a href="#notifications-disallowcloudnotification">Notifications/DisallowCloudNotification</a>
  </dd>
  <dd>
    <a href="#notifications-disallownotificationmirroring">Notifications/DisallowNotificationMirroring</a>
  </dd>
  <dd>
    <a href="#notifications-disallowtilenotification">Notifications/DisallowTileNotification</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="notifications-disallowcloudnotification"></a>**Notifications/DisallowCloudNotification**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy setting blocks applications from using the network to send tile, badge, toast, and raw notifications. Specifically, this policy setting turns off the connection between Windows and the Windows Push Notification Service (WNS). This policy setting also stops applications from being able to use [periodic (polling) notifications](https://docs.microsoft.com/windows/uwp/design/shell/tiles-and-notifications/periodic-notification-overview).

If you enable this policy setting, applications and system features will not be able receive notifications from the network from WNS or via notification polling APIs.

If you enable this policy setting, notifications can still be raised by applications running on the machine via local API calls from within the application.

If you disable or do not configure this policy setting, the client computer will connect to WNS at user login and applications will be allowed to use periodic (polling) notifications.

No reboots or service restarts are required for this policy setting to take effect.

> [!WARNING]
> This policy is designed for zero exhaust. This policy may cause some MDM processes to break because WNS notification is used by the MDM server to send real time tasks to the device, such as remote wipe, unenroll, remote find, and mandatory app installation. When this policy is set to disallow WNS, those real time processes will no longer work and some time-sensitive actions such as remote wipe when the device is stolen or unenrollment when the device is compromised will not work.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off notifications network usage*
-   GP name: *NoCloudNotification*
-   GP path: *Start Menu and Taskbar/Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

<!--/SupportedValues-->
<!--Validation-->
Validation:  
1. Enable policy
2. Reboot machine
3. Ensure that you can't receive a notification from Facebook app while FB app isn't running

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="notifications-disallownotificationmirroring"></a>**Notifications/DisallowNotificationMirroring**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1607. Boolean value that turns off notification mirroring.

For each user logged into the device, if you enable this policy (set value to 1) the app and system notifications received by this user on this device will not get mirrored to other devices of the same logged in user. If you disable or do not configure this policy (set value to 0) the notifications received by this user on this device will be mirrored to other devices of the same logged in user. This feature can be turned off by apps that do not want to participate in Notification Mirroring. This feature can also be turned off by the user in the Cortana setting page.

No reboot or service restart is required for this policy to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off notification mirroring*
-   GP name: *NoNotificationMirroring*
-   GP path: *Start Menu and Taskbar/Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – enable notification mirroring.
-   1 - disable notification mirroring.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="notifications-disallowtilenotification"></a>**Notifications/DisallowTileNotification**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>4</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1803. This policy setting turns off tile notifications.

If you enable this policy setting, applications and system features will not be able to update their tiles and tile badges in the Start screen.

If you disable or do not configure this policy setting, tile and badge notifications are enabled and can be turned off by the administrator or user.

No reboots or service restarts are required for this policy setting to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off tile notifications*
-   GP name: *NoTileNotification*
-   GP path: *Start Menu and Taskbar/Notifications*
-   GP ADMX file name: *WPN.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

<!--/SupportedValues-->
<!--Validation-->
Validation:  
1. Enable policy
2. Reboot machine
3. Ensure that all tiles are default (no live tile content showing, like no weather forecast on the Weather tile)

<!--/Validation-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

