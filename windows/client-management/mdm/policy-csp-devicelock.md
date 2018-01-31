---
title: Policy CSP - DeviceLock
description: Policy CSP - DeviceLock
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - DeviceLock



<hr/>

<!--StartPolicies-->
## DeviceLock policies  

<dl>
  <dd>
    <a href="#devicelock-allowidlereturnwithoutpassword">DeviceLock/AllowIdleReturnWithoutPassword</a>
  </dd>
  <dd>
    <a href="#devicelock-allowscreentimeoutwhilelockeduserconfig">DeviceLock/AllowScreenTimeoutWhileLockedUserConfig</a>
  </dd>
  <dd>
    <a href="#devicelock-allowsimpledevicepassword">DeviceLock/AllowSimpleDevicePassword</a>
  </dd>
  <dd>
    <a href="#devicelock-alphanumericdevicepasswordrequired">DeviceLock/AlphanumericDevicePasswordRequired</a>
  </dd>
  <dd>
    <a href="#devicelock-devicepasswordenabled">DeviceLock/DevicePasswordEnabled</a>
  </dd>
  <dd>
    <a href="#devicelock-devicepasswordexpiration">DeviceLock/DevicePasswordExpiration</a>
  </dd>
  <dd>
    <a href="#devicelock-devicepasswordhistory">DeviceLock/DevicePasswordHistory</a>
  </dd>
  <dd>
    <a href="#devicelock-enforcelockscreenandlogonimage">DeviceLock/EnforceLockScreenAndLogonImage</a>
  </dd>
  <dd>
    <a href="#devicelock-enforcelockscreenprovider">DeviceLock/EnforceLockScreenProvider</a>
  </dd>
  <dd>
    <a href="#devicelock-maxdevicepasswordfailedattempts">DeviceLock/MaxDevicePasswordFailedAttempts</a>
  </dd>
  <dd>
    <a href="#devicelock-maxinactivitytimedevicelock">DeviceLock/MaxInactivityTimeDeviceLock</a>
  </dd>
  <dd>
    <a href="#devicelock-maxinactivitytimedevicelockwithexternaldisplay">DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay</a>
  </dd>
  <dd>
    <a href="#devicelock-mindevicepasswordcomplexcharacters">DeviceLock/MinDevicePasswordComplexCharacters</a>
  </dd>
  <dd>
    <a href="#devicelock-mindevicepasswordlength">DeviceLock/MinDevicePasswordLength</a>
  </dd>
  <dd>
    <a href="#devicelock-preventlockscreenslideshow">DeviceLock/PreventLockScreenSlideShow</a>
  </dd>
  <dd>
    <a href="#devicelock-screentimeoutwhilelocked">DeviceLock/ScreenTimeoutWhileLocked</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-allowidlereturnwithoutpassword"></a>**DeviceLock/AllowIdleReturnWithoutPassword**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies whether the user must input a PIN or password when the device resumes from an idle state.

> [!NOTE]
> This policy must be wrapped in an Atomic command.

 
<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-allowscreentimeoutwhilelockeduserconfig"></a>**DeviceLock/AllowScreenTimeoutWhileLockedUserConfig**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Specifies whether to show a user-configurable setting to control the screen timeout while on the lock screen of Windows 10 Mobile devices.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

> [!IMPORTANT]
> If this policy is set to 1 (Allowed), the value set by **DeviceLock/ScreenTimeOutWhileLocked** is ignored. To ensure enterprise control over the screen timeout, set this policy to 0 (Not allowed) and use **DeviceLock/ScreenTimeOutWhileLocked** to set the screen timeout period.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-allowsimpledevicepassword"></a>**DeviceLock/AllowSimpleDevicePassword**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether PINs or passwords such as "1111" or "1234" are allowed. For the desktop, it also controls the use of picture passwords.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-alphanumericdevicepasswordrequired"></a>**DeviceLock/AlphanumericDevicePasswordRequired**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Determines the type of PIN or password required. This policy only applies if the **DeviceLock/DevicePasswordEnabled** policy is set to 0 (required).

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions (Home, Pro, Enterprise, and Education).


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Alphanumeric PIN or password required.
-   1 – Numeric PIN or password required.
-   2 (default) – Users can choose: Numeric PIN or password, or Alphanumeric PIN or password.

> [!NOTE]
> If **AlphanumericDevicePasswordRequired** is set to 1 or 2, then MinDevicePasswordLength = 0 and MinDevicePasswordComplexCharacters = 1.
>
> If **AlphanumericDevicePasswordRequired** is set to 0, then MinDevicePasswordLength = 4 and MinDevicePasswordComplexCharacters = 2.

 

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-devicepasswordenabled"></a>**DeviceLock/DevicePasswordEnabled**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether device lock is enabled.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.
 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Enabled
-   1 – Disabled

> [!IMPORTANT]
> The **DevicePasswordEnabled** setting must be set to 0 (device password is enabled) for the following policy settings to take effect:
>
> -   AllowSimpleDevicePassword
> -   MinDevicePasswordLength
> -   AlphanumericDevicePasswordRequired
> -   MaxDevicePasswordFailedAttempts
> -   MaxInactivityTimeDeviceLock
> -   MinDevicePasswordComplexCharacters
&nbsp;

> [!IMPORTANT]
> If **DevicePasswordEnabled** is set to 0 (device password is enabled), then the following policies are set:
>
> -   MinDevicePasswordLength is set to 4
> -   MinDevicePasswordComplexCharacters is set to 1
>
> If **DevicePasswordEnabled** is set to 1 (device password is disabled), then the following DeviceLock policies are set to 0:
>
> -   MinDevicePasswordLength
> -   MinDevicePasswordComplexCharacters

> [!Important]
> **DevicePasswordEnabled** should not be set to Enabled (0) when WMI is used to set the EAS DeviceLock policies given that it is Enabled by default in Policy CSP for back compat with Windows 8.x. If **DevicePasswordEnabled** is set to Enabled(0) then Policy CSP will return an error stating that **DevicePasswordEnabled** already exists. Windows 8.x did not support DevicePassword policy. When disabling **DevicePasswordEnabled** (1) then this should be the only policy set from the DeviceLock group of policies listed below:
> - **DevicePasswordEnabled** is the parent policy of the following:
> 	- AllowSimpleDevicePassword
>	- MinDevicePasswordLength
>	- AlphanumericDevicePasswordRequired
>		- MinDevicePasswordComplexCharacters 
>	- DevicePasswordExpiration
>	- DevicePasswordHistory
>   - MaxDevicePasswordFailedAttempts
>   - MaxInactivityTimeDeviceLock

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-devicepasswordexpiration"></a>**DeviceLock/DevicePasswordExpiration**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies when the password expires (in days).

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 730.
-   0 (default) - Passwords do not expire.

<p style="margin-left: 20px">If all policy values = 0 then 0; otherwise, Min policy value is the most secure value.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-devicepasswordhistory"></a>**DeviceLock/DevicePasswordHistory**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies how many passwords can be stored in the history that can’t be used.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 50.
-   0 (default)

<p style="margin-left: 20px">The value includes the user's current password. This means that with a setting of 1 the user cannot reuse their current password when choosing a new password, while a setting of 5 means that a user cannot set their new password to their current password or any of their previous four passwords.

<p style="margin-left: 20px">Max policy value is the most restricted.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-enforcelockscreenandlogonimage"></a>**DeviceLock/EnforceLockScreenAndLogonImage**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Specifies the default lock screen and logon image shown when no user is signed in. It also sets the specified image for all users, which replaces the default image. The same image is used for both the lock and logon screens. Users will not be able to change this image.

> [!NOTE]
> This policy is only enforced in Windows 10 Enterprise and Education editions and not supported in Windows 10 Home and Pro.


<p style="margin-left: 20px">Value type is a string, which is the full image filepath and filename.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-enforcelockscreenprovider"></a>**DeviceLock/EnforceLockScreenProvider**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Restricts lock screen image to a specific lock screen provider. Users will not be able change this provider.

> [!NOTE]
> This policy is only enforced in Windows 10 for mobile devices.


<p style="margin-left: 20px">Value type is a string, which is the AppID.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-maxdevicepasswordfailedattempts"></a>**DeviceLock/MaxDevicePasswordFailedAttempts**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
The number of authentication failures allowed before the device will be wiped. A value of 0 disables device wipe functionality.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">This policy has different behaviors on the mobile device and desktop.

-   On a mobile device, when the user reaches the value set by this policy, then the device is wiped.
-   On a desktop, when the user reaches the value set by this policy, it is not wiped. Instead, the desktop is put on BitLocker recovery mode, which makes the data inaccessible but recoverable. If BitLocker is not enabled, then the policy cannot be enforced.

    Prior to reaching the failed attempts limit, the user is sent to the lock screen and warned that more failed attempts will lock their computer. When the user reaches the limit, the device automatically reboots and shows the BitLocker recovery page. This page prompts the user for the BitLocker recovery key.

<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for desktop and 0 &lt;= X &lt;= 999 for mobile devices.
-   0 (default) - The device is never wiped after an incorrect PIN or password is entered.

<p style="margin-left: 20px">Most secure value is 0 if all policy values = 0; otherwise, Min policy value is the most secure value.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-maxinactivitytimedevicelock"></a>**DeviceLock/MaxInactivityTimeDeviceLock**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked. Users can select any existing timeout value less than the specified maximum time in the Settings app. Note the Lumia 950 and 950XL have a maximum timeout value of 5 minutes, regardless of the value set by this policy.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 999.
-   0 (default) - No timeout is defined. The default of "0" is Windows Phone 7.5 parity and is interpreted by as "No timeout is defined."

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-maxinactivitytimedevicelockwithexternaldisplay"></a>**DeviceLock/MaxInactivityTimeDeviceLockWithExternalDisplay**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies the maximum amount of time (in minutes) allowed after the device is idle that will cause the device to become PIN or password locked while connected to an external display.

> [!NOTE]
> This policy must be wrapped in an Atomic command.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 0 &lt;= X &lt;= 999.
-   0 (default) - No timeout is defined. The default of "0" is Windows Phone 7.5 parity and is interpreted by as "No timeout is defined."

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-mindevicepasswordcomplexcharacters"></a>**DeviceLock/MinDevicePasswordComplexCharacters**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">The number of complex element types (uppercase and lowercase letters, numbers, and punctuation) required for a strong PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.

<p style="margin-left: 20px">PIN enforces the following behavior for desktop and mobile devices:

-   1 - Digits only
-   2 - Digits and lowercase letters are required
-   3 - Digits, lowercase letters, and uppercase letters are required. Not supported in desktop Microsoft accounts and domain accounts. 
-   4 - Digits, lowercase letters, uppercase letters, and special characters are required. Not supported in desktop.

<p style="margin-left: 20px">The default value is 1. The following list shows the supported values and actual enforced values:

<table style="margin-left: 20px">
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Account Type</th>
<th>Supported Values</th>
<th>Actual Enforced Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Mobile</p></td>
<td style="vertical-align:top"><p>1,2,3,4</p></td>
<td style="vertical-align:top"><p>Same as the value set</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Desktop Local Accounts</p></td>
<td style="vertical-align:top"><p> 1,2,3</p></td>
<td style="vertical-align:top"><p>3</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Desktop Microsoft Accounts</p></td>
<td style="vertical-align:top"><p>1,2</p></td>
<td style="vertical-align:top"><p2</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Desktop Domain Accounts</p></td>
<td style="vertical-align:top"><p>Not supported</p></td>
<td style="vertical-align:top">Not supported</p></td>
</tr>
</tbody>
</table>


<p style="margin-left: 20px">Enforced values for Local and Microsoft Accounts:

-   Local accounts support values of 1, 2, and 3, however they always enforce a value of 3.
-   Passwords for local accounts must meet the following minimum requirements:

    -   Not contain the user's account name or parts of the user's full name that exceed two consecutive characters
    -   Be at least six characters in length
    -   Contain characters from three of the following four categories:

        -   English uppercase characters (A through Z)
        -   English lowercase characters (a through z)
        -   Base 10 digits (0 through 9)
        -   Special characters (!, $, \#, %, etc.)

<p style="margin-left: 20px">The enforcement of policies for Microsoft accounts happen on the server, and the server requires a password length of 8 and a complexity of 2. A complexity value of 3 or 4 is unsupported and setting this value on the server makes Microsoft accounts non-compliant.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-mindevicepasswordlength"></a>**DeviceLock/MinDevicePasswordLength**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies the minimum number or characters required in the PIN or password.

> [!NOTE]
> This policy must be wrapped in an Atomic command.
>
> Always use the Replace command instead of Add for this policy in Windows 10 for desktop editions.


<p style="margin-left: 20px">The following list shows the supported values:

-   An integer X where 4 &lt;= X &lt;= 16 for mobile devices and desktop. However, local accounts will always enforce a minimum password length of 6.
-   Not enforced.
-   The default value is 4 for mobile devices and desktop devices.

<p style="margin-left: 20px">Max policy value is the most restricted.

<p style="margin-left: 20px">For additional information about this policy, see [Exchange ActiveSync Policy Engine Overview](https://technet.microsoft.com/library/dn282287.aspx) and [KB article](https://support.office.com/article/This-device-doesn-t-meet-the-security-requirements-set-by-your-email-administrator-87132fc7-2c7f-4a71-9de0-779ff81c86ca).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-preventlockscreenslideshow"></a>**DeviceLock/PreventLockScreenSlideShow**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
Disables the lock screen slide show settings in PC Settings and prevents a slide show from playing on the lock screen.

By default, users can enable a slide show that will run after they lock the machine.

If you enable this setting, users will no longer be able to modify slide show settings in PC Settings, and no slide show will ever start.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Prevent enabling lock screen slide show*
-   GP name: *CPL_Personalization_NoLockScreenSlideshow*
-   GP path: *Control Panel/Personalization*
-   GP ADMX file name: *ControlPanelDisplay.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="devicelock-screentimeoutwhilelocked"></a>**DeviceLock/ScreenTimeoutWhileLocked**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.
 
<p style="margin-left: 20px">Allows an enterprise to set the duration in seconds for the screen timeout while on the lock screen of Windows 10 Mobile devices.

<p style="margin-left: 20px">Minimum supported value is 10.

<p style="margin-left: 20px">Maximum supported value is 1800.

<p style="margin-left: 20px">The default value is 10.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartEAS-->
## <a href="" id="eas"></a>DeviceLock policies that can be set using Exchange Active Sync (EAS)  

-   [DeviceLock/AllowSimpleDevicePassword](#devicelock-allowsimpledevicepassword)  
-   [DeviceLock/AlphanumericDevicePasswordRequired](#devicelock-alphanumericdevicepasswordrequired)  
-   [DeviceLock/DevicePasswordEnabled](#devicelock-devicepasswordenabled)  
-   [DeviceLock/DevicePasswordExpiration](#devicelock-devicepasswordexpiration)  
-   [DeviceLock/DevicePasswordHistory](#devicelock-devicepasswordhistory)  
-   [DeviceLock/MaxDevicePasswordFailedAttempts](#devicelock-maxdevicepasswordfailedattempts)  
-   [DeviceLock/MaxInactivityTimeDeviceLock](#devicelock-maxinactivitytimedevicelock)  
-   [DeviceLock/MinDevicePasswordComplexCharacters](#devicelock-mindevicepasswordcomplexcharacters)  
-   [DeviceLock/MinDevicePasswordLength](#devicelock-mindevicepasswordlength)  
-   [DeviceLock/PreventLockScreenSlideShow](#devicelock-preventlockscreenslideshow)  
<!--EndEAS-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>DeviceLock policies supported by Windows Holographic for Business  

-   [DeviceLock/AllowIdleReturnWithoutPassword](#devicelock-allowidlereturnwithoutpassword)  
-   [DeviceLock/DevicePasswordEnabled](#devicelock-devicepasswordenabled)  
<!--EndHoloLens-->

