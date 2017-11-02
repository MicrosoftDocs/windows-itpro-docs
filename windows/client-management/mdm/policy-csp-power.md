---
title: Policy CSP - Power
description: Policy CSP - Power
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Power



<hr/>

<!--StartPolicies-->
## Power policies  

<dl>
  <dd>
    <a href="#power-allowstandbywhensleepingpluggedin">Power/AllowStandbyWhenSleepingPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-displayofftimeoutonbattery">Power/DisplayOffTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="#power-displayofftimeoutpluggedin">Power/DisplayOffTimeoutPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-hibernatetimeoutonbattery">Power/HibernateTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="#power-hibernatetimeoutpluggedin">Power/HibernateTimeoutPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-requirepasswordwhencomputerwakesonbattery">Power/RequirePasswordWhenComputerWakesOnBattery</a>
  </dd>
  <dd>
    <a href="#power-requirepasswordwhencomputerwakespluggedin">Power/RequirePasswordWhenComputerWakesPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-standbytimeoutonbattery">Power/StandbyTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="#power-standbytimeoutpluggedin">Power/StandbyTimeoutPluggedIn</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="power-allowstandbywhensleepingpluggedin"></a>**Power/AllowStandbyWhenSleepingPluggedIn**  

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
This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.

If you enable or do not configure this policy setting, Windows uses standby states to put the computer in a sleep state.

If you disable this policy setting, standby states (S1-S3) are not allowed.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Allow standby states (S1-S3) when sleeping (plugged in)*
-   GP name: *AllowStandbyStatesAC_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-displayofftimeoutonbattery"></a>**Power/DisplayOffTimeoutOnBattery**  

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
<p style="margin-left: 20px">Added in Windows 10, version 1709. Turn off the display (on battery). This policy setting allows you to specify the period of inactivity before Windows turns off the display.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Turn off the display (on battery)*
-   GP name: *VideoPowerDownTimeOutDC_2*
-   GP path: *System/Power Management/Video and Display Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-displayofftimeoutpluggedin"></a>**Power/DisplayOffTimeoutPluggedIn**  

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
<p style="margin-left: 20px">Added in Windows 10, version 1709. Turn off the display (plugged in). This policy setting allows you to specify the period of inactivity before Windows turns off the display.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Turn off the display (plugged in)*
-   GP name: *VideoPowerDownTimeOutAC_2*
-   GP path: *System/Power Management/Video and Display Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-hibernatetimeoutonbattery"></a>**Power/HibernateTimeoutOnBattery**  

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
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system hibernate timeout (on battery). This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.


<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Specify the system hibernate timeout (on battery)*
-   GP name: *DCHibernateTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-hibernatetimeoutpluggedin"></a>**Power/HibernateTimeoutPluggedIn**  

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
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system hibernate timeout (plugged in). This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Specify the system hibernate timeout (plugged in)*
-   GP name: *ACHibernateTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-requirepasswordwhencomputerwakesonbattery"></a>**Power/RequirePasswordWhenComputerWakesOnBattery**  

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
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.

If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Require a password when a computer wakes (on battery)*
-   GP name: *DCPromptForPasswordOnResume_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-requirepasswordwhencomputerwakespluggedin"></a>**Power/RequirePasswordWhenComputerWakesPluggedIn**  

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
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.

If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Require a password when a computer wakes (plugged in)*
-   GP name: *ACPromptForPasswordOnResume_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-standbytimeoutonbattery"></a>**Power/StandbyTimeoutOnBattery**  

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
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system sleep timeout (on battery). This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Specify the system sleep timeout (on battery)*
-   GP name: *DCStandbyTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="power-standbytimeoutpluggedin"></a>**Power/StandbyTimeoutPluggedIn**  

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
<p style="margin-left: 20px">Added in Windows 10, version 1709. Specify the system sleep timeout (plugged in). This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

<p style="margin-left: 20px">If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, users control this setting.

<p style="margin-left: 20px">If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" (DeviceLock/PreventLockScreenSlideShow) policy setting can be used to disable the slide show feature.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Specify the system sleep timeout (plugged in)*
-   GP name: *ACStandbyTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

