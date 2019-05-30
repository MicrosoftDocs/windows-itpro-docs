---
title: Policy CSP - Power
description: Policy CSP - Power
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: MariciaAlforque
ms.date: 05/21/2019
---

# Policy CSP - Power


<hr/>

<!--Policies-->
## Power policies  

<dl>
  <dd>
    <a href="#power-allowstandbystateswhensleepingonbattery">Power/AllowStandbyStatesWhenSleepingOnBattery</a>
  </dd>
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
    <a href="#power-energysaverbatterythresholdonbattery">Power/EnergySaverBatteryThresholdOnBattery</a>
  </dd>
  <dd>
    <a href="#power-energysaverbatterythresholdpluggedin">Power/EnergySaverBatteryThresholdPluggedIn</a>
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
    <a href="#power-selectlidcloseactiononbattery">Power/SelectLidCloseActionOnBattery</a>
  </dd>
  <dd>
    <a href="#power-selectlidcloseactionpluggedin">Power/SelectLidCloseActionPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-selectpowerbuttonactiononbattery">Power/SelectPowerButtonActionOnBattery</a>
  </dd>
  <dd>
    <a href="#power-selectpowerbuttonactionpluggedin">Power/SelectPowerButtonActionPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-selectsleepbuttonactiononbattery">Power/SelectSleepButtonActionOnBattery</a>
  </dd>
  <dd>
    <a href="#power-selectsleepbuttonactionpluggedin">Power/SelectSleepButtonActionPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-standbytimeoutonbattery">Power/StandbyTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="#power-standbytimeoutpluggedin">Power/StandbyTimeoutPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-turnoffhybridsleeponbattery">Power/TurnOffHybridSleepOnBattery</a>
  </dd>
  <dd>
    <a href="#power-turnoffhybridsleeppluggedin">Power/TurnOffHybridSleepPluggedIn</a>
  </dd>
  <dd>
    <a href="#power-unattendedsleeptimeoutonbattery">Power/UnattendedSleepTimeoutOnBattery</a>
  </dd>
  <dd>
    <a href="#power-unattendedsleeptimeoutpluggedin">Power/UnattendedSleepTimeoutPluggedIn</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="power-allowstandbystateswhensleepingonbattery"></a>**Power/AllowStandbyStatesWhenSleepingOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.

If you enable or do not configure this policy setting, Windows uses standby states to put the computer in a sleep state.

If you disable this policy setting, standby states (S1-S3) are not allowed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow standby states (S1-S3) when sleeping (on battery)*
-   GP name: *AllowStandbyStatesDC_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-allowstandbywhensleepingpluggedin"></a>**Power/AllowStandbyWhenSleepingPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
This policy setting manages whether or not Windows is allowed to use standby states when putting the computer in a sleep state.

If you enable or do not configure this policy setting, Windows uses standby states to put the computer in a sleep state.

If you disable this policy setting, standby states (S1-S3) are not allowed.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow standby states (S1-S3) when sleeping (plugged in)*
-   GP name: *AllowStandbyStatesAC_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-displayofftimeoutonbattery"></a>**Power/DisplayOffTimeoutOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows&nbsp;10, version 1709. This policy setting allows you to specify the period of inactivity before Windows turns off the display.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off the display (on battery)*
-   GP name: *VideoPowerDownTimeOutDC_2*
-   GP path: *System/Power Management/Video and Display Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-displayofftimeoutpluggedin"></a>**Power/DisplayOffTimeoutPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows&nbsp;10, version 1709. This policy setting allows you to specify the period of inactivity before Windows turns off the display.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off the display (plugged in)*
-   GP name: *VideoPowerDownTimeOutAC_2*
-   GP path: *System/Power Management/Video and Display Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-energysaverbatterythresholdonbattery"></a>**Power/EnergySaverBatteryThresholdOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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

Added in Windows&nbsp;10, version 1903. This policy setting allows you to specify battery charge level at which Energy Saver is turned on.

If you enable this policy setting, you must specify a percentage value that indicates the battery charge level. Energy Saver is automatically turned on at (and below) the specified battery charge level.

If you disable or do not configure this policy setting, users control this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Energy Saver Battery Threshold (on battery)*
-   GP name: *EsBattThresholdDC*
-   GP element: *EnterEsBattThreshold*
-   GP path: *System/Power Management/Energy Saver Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values: 0-100. The default is 70.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-energysaverbatterythresholdpluggedin"></a>**Power/EnergySaverBatteryThresholdPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting allows you to specify battery charge level at which Energy Saver is turned on.

If you enable this policy setting, you must provide a percentage value that indicates the battery charge level. Energy Saver is automatically turned on at (and below) the specified battery charge level.

If you disable or do not configure this policy setting, users control this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Energy Saver Battery Threshold (plugged in)*
-   GP name: *EsBattThresholdAC*
-   GP element: *EnterEsBattThreshold*
-   GP path: *System/Power Management/Energy Saver Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Supported values: 0-100. The default is 70.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-hibernatetimeoutonbattery"></a>**Power/HibernateTimeoutOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows&nbsp;10, version 1709. This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the system hibernate timeout (on battery)*
-   GP name: *DCHibernateTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-hibernatetimeoutpluggedin"></a>**Power/HibernateTimeoutPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows&nbsp;10, version 1709. This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the system hibernate timeout (plugged in)*
-   GP name: *ACHibernateTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-requirepasswordwhencomputerwakesonbattery"></a>**Power/RequirePasswordWhenComputerWakesOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.

If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Require a password when a computer wakes (on battery)*
-   GP name: *DCPromptForPasswordOnResume_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-requirepasswordwhencomputerwakespluggedin"></a>**Power/RequirePasswordWhenComputerWakesPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
This policy setting specifies whether or not the user is prompted for a password when the system resumes from sleep.

If you enable or do not configure this policy setting, the user is prompted for a password when the system resumes from sleep.

If you disable this policy setting, the user is not prompted for a password when the system resumes from sleep.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Require a password when a computer wakes (plugged in)*
-   GP name: *ACPromptForPasswordOnResume_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-selectlidcloseactiononbattery"></a>**Power/SelectLidCloseActionOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting specifies the action that Windows takes when a user closes the lid on a mobile PC.

If you enable this policy setting, you must select the desired action.

If you disable this policy setting or do not configure it, users can see and change this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select the lid switch action (on battery)*
-   GP name: *DCSystemLidAction_2*
-   GP element: *SelectDCSystemLidAction*
-   GP path: *System/Power Management/Button Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported lid close switch actions (on battery):  
-   0 - Take no action
-   1 - Sleep
-   2 - System hibernate sleep state
-   3 - System shutdown

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-selectlidcloseactionpluggedin"></a>**Power/SelectLidCloseActionPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting specifies the action that Windows takes when a user closes the lid on a mobile PC.

If you enable this policy setting, you must select the desired action.

If you disable this policy setting or do not configure it, users can see and change this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select the lid switch action (plugged in)*
-   GP name: *ACSystemLidAction_2*
-   GP element: *SelectACSystemLidAction*
-   GP path: *System/Power Management/Button Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported lid close switch actions (plugged in):  
-   0 - Take no action
-   1 - Sleep
-   2 - System hibernate sleep state
-   3 - System shutdown

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-selectpowerbuttonactiononbattery"></a>**Power/SelectPowerButtonActionOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting specifies the action that Windows takes when a user presses the Power button. 

If you enable this policy setting, you must select the desired action.

If you disable this policy setting or do not configure it, users can see and change this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select the Power button action (on battery)*
-   GP name: *DCPowerButtonAction_2*
-   GP element: *SelectDCPowerButtonAction*
-   GP path: *System/Power Management/Button Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported Power button actions (on battery):  
-   0 - Take no action
-   1 - Sleep
-   2 - System hibernate sleep state
-   3 - System shutdown

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-selectpowerbuttonactionpluggedin"></a>**Power/SelectPowerButtonActionPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting specifies the action that Windows takes when a user presses the Power button. 

If you enable this policy setting, you must select the desired action.

If you disable this policy setting or do not configure it, users can see and change this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select the Power button action (plugged in)*
-   GP name: *ACPowerButtonAction_2*
-   GP element: *SelectACPowerButtonAction*
-   GP path: *System/Power Management/Button Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported Power button actions (plugged in):  
-   0 - Take no action
-   1 - Sleep
-   2 - System hibernate sleep state
-   3 - System shutdown

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-selectsleepbuttonactiononbattery"></a>**Power/SelectSleepButtonActionOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting specifies the action that Windows takes when a user presses the Sleep button.

If you enable this policy setting, you must select the desired action.

If you disable this policy setting or do not configure it, users can see and change this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select the Sleep button action (on battery)*
-   GP name: *DCSleepButtonAction_2*
-   GP element: *SelectDCSleepButtonAction*
-   GP path: *System/Power Management/Button Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported Sleep button actions (on battery):  
-   0 - Take no action
-   1 - Sleep
-   2 - System hibernate sleep state
-   3 - System shutdown

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-selectsleepbuttonactionpluggedin"></a>**Power/SelectSleepButtonActionPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting specifies the action that Windows takes when a user presses the Sleep button.

If you enable this policy setting, you must select the desired action.

If you disable this policy setting or do not configure it, users can see and change this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Select the Sleep button action (plugged in)*
-   GP name: *ACSleepButtonAction_2*
-   GP element: *SelectACSleepButtonAction*
-   GP path: *System/Power Management/Button Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported Sleep button actions (plugged in):  
-   0 - Take no action
-   1 - Sleep
-   2 - System hibernate sleep state
-   3 - System shutdown

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-standbytimeoutonbattery"></a>**Power/StandbyTimeoutOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows&nbsp;10, version 1709. This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the system sleep timeout (on battery)*
-   GP name: *DCStandbyTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-standbytimeoutpluggedin"></a>**Power/StandbyTimeoutPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
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
Added in Windows&nbsp;10, version 1709. This policy setting allows you to specify the period of inactivity before Windows transitions the system to sleep.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to sleep.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occurring.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify the system sleep timeout (plugged in)*
-   GP name: *ACStandbyTimeOut_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-turnoffhybridsleeponbattery"></a>**Power/TurnOffHybridSleepOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting allows you to turn off hybrid sleep.

If you set this policy setting to 0, a hiberfile is not generated when the system transitions to sleep (Stand By).

If you set this policy setting to 1 or do not configure this policy setting, users control this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off hybrid sleep (on battery)*
-   GP name: *DCStandbyWithHiberfileEnable_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported values for Hybrid sleep (on battery):
-   0 - no hibernation file for sleep (default)
-   1 - hybrid sleep

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-turnoffhybridsleeppluggedin"></a>**Power/TurnOffHybridSleepPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting allows you to turn off hybrid sleep.

If you set this policy setting to 0, a hiberfile is not generated when the system transitions to sleep (Stand By).

If you set this policy setting to 1 or do not configure this policy setting, users control this setting.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off hybrid sleep (plugged in)*
-   GP name: *ACStandbyWithHiberfileEnable_2*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->

The following are the supported values for Hybrid sleep (plugged in):
-   0 - no hibernation file for sleep (default)
-   1  - hybrid sleep

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-unattendedsleeptimeoutonbattery"></a>**Power/UnattendedSleepTimeoutOnBattery**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting allows you to specify the period of inactivity before Windows transitions to sleep automatically when a user is not present at the computer.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows automatically transitions to sleep when left unattended. If you specify 0 seconds, Windows does not automatically transition to sleep.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify the unattended sleep timeout (on battery)*
-   GP name: *UnattendedSleepTimeOutDC*
-   GP element: *EnterUnattendedSleepTimeOut*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Default value for unattended sleep timeout (on battery):
300
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="power-unattendedsleeptimeoutpluggedin"></a>**Power/UnattendedSleepTimeoutPluggedIn**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>6</sup></td>
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
Added in Windows&nbsp;10, version 1903. This policy setting allows you to specify the period of inactivity before Windows transitions to sleep automatically when a user is not present at the computer.

If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows automatically transitions to sleep when left unattended. If you specify 0 seconds, Windows does not automatically transition to sleep.

If you disable or do not configure this policy setting, users control this setting.

If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring. The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.

<!--/Description-->

<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Specify the unattended sleep timeout (plugged in)*
-   GP name: *UnattendedSleepTimeOutAC*
-   GP element: *EnterUnattendedSleepTimeOut*
-   GP path: *System/Power Management/Sleep Settings*
-   GP ADMX file name: *power.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
Default value for unattended sleep timeout (plugged in):
300
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<!--/Policies-->

<hr/>

Footnotes:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in Windows 10, version 1903.