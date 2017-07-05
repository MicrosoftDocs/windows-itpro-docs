---
title: Policy CSP - WindowsLogon
description: Policy CSP - WindowsLogon
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
---

# Policy CSP - WindowsLogon

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## WindowsLogon policies  

<!--StartPolicy-->
<a href="" id="windowslogon-disablelockscreenappnotifications"></a>**WindowsLogon/DisableLockScreenAppNotifications**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
This policy setting allows you to prevent app notifications from appearing on the lock screen.

If you enable this policy setting, no app notifications are displayed on the lock screen.

If you disable or do not configure this policy setting, users can choose which apps display notifications on the lock screen.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Turn off app notifications on the lock screen*
-   GP name: *DisableLockScreenAppNotifications*
-   GP ADMX file name: *logon.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="windowslogon-dontdisplaynetworkselectionui"></a>**WindowsLogon/DontDisplayNetworkSelectionUI**  

<!--StartSKU-->
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
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
This policy setting allows you to control whether anyone can interact with available networks UI on the logon screen.

If you enable this policy setting, the PC's network connectivity state cannot be changed without signing into Windows.

If you disable or don't configure this policy setting, any user can disconnect the PC from the network or can connect the PC to other available networks without signing into Windows.

<!--EndDescription-->
<!--StartADMX-->
ADMX Info:  
-   GP english name: *Do not display network selection UI*
-   GP name: *DontDisplayNetworkSelectionUI*
-   GP ADMX file name: *logon.admx*

<!--EndADMX-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="windowslogon-hidefastuserswitching"></a>**WindowsLogon/HideFastUserSwitching**  

<!--StartSKU-->
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy setting allows you to hide the Switch account button on the sign-in screen, Start, and the Task Manager. If you enable this policy setting, the Switch account button is hidden from the user who is attempting to sign-in or is signed in to the computer that has this policy applied. If you disable or do not configure this policy setting, the Switch account button is accessible to the user in the three locations.

<p style="margin-left: 20px">Value type is bool. The following list shows the supported values:

-   0 (default) - Diabled (visible).
-   1 - Enabled (hidden).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Verify that the Switch account button in Start is hidden.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

