---
title: Policy CSP - Display
description: Policy CSP - Display
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 08/08/2018
---

# Policy CSP - Display


<hr/>

<!--Policies-->
## Display policies  

<dl>
  <dd>
    <a href="#display-disableperprocessdpiforapps">Display/DisablePerProcessDpiForApps</a>
  </dd>
  <dd>
    <a href="#display-enableperprocessdpi">Display/EnablePerProcessDpi</a>
  </dd>
  <dd>
    <a href="#display-enableperprocessdpiforapps">Display/EnablePerProcessDpiForApps</a>
  </dd>
  <dd>
    <a href="#display-turnoffgdidpiscalingforapps">Display/TurnOffGdiDPIScalingForApps</a>
  </dd>
  <dd>
    <a href="#display-turnongdidpiscalingforapps">Display/TurnOnGdiDPIScalingForApps</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="display-disableperprocessdpiforapps"></a>**Display/DisablePerProcessDpiForApps**  

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
This policy allows you to disable Per-Process System DPI for a semicolon-separated list of applications. Applications can be specified either by using full paths or with filenames and extensions. This policy will override the system-wide default value.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Per-Process System DPI settings*
-   GP name: *DisplayPerProcessSystemDpiSettings*
-   GP element: *DisplayDisablePerProcessSystemDpiSettings*
-   GP path: *System/Display*
-   GP ADMX file name: *Display.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="display-enableperprocessdpi"></a>**Display/EnablePerProcessDpi**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Per Process System DPI is an application compatibility feature for desktop applications that do not render properly after a display-scale factor (DPI) change. When the display scale factor of the primary display changes (which can happen when you connect or disconnect a display that has a different display scale factor (DPI), connect remotely from a device with a different display scale factor, or manually change the display scale factor), many desktop applications can display blurry. Desktop applications that have not been updated to display properly in this scenario will be blurry until you log out and back in to Windows. 

When you enable this policy some blurry applications will be crisp after they are restarted, without requiring the user to log out and back in to Windows. 

Be aware of the following:

Per Process System DPI will only improve the rendering of desktop applications that are positioned on the primary display (or any other display that has the same scale factor as that of the primary display). Some desktop applications can still be blurry on secondary displays that have different display scale factors. 

Per Process System DPI will not work for all applications as some older desktop applications will always be blurry on high DPI displays. 

In some cases, you may see some unexpected behavior in some desktop applications that have Per-Process System DPI applied. If that happens, Per Process System DPI should be disabled.

Enabling this setting lets you specify the system-wide default for desktop applications as well as per-application overrides. If you disable or do not configure this setting, Per Process System DPI will not apply to any processes on the system.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Per-Process System DPI settings*
-   GP name: *DisplayPerProcessSystemDpiSettings*
-   GP element: *DisplayGlobalPerProcessSystemDpiSettings*
-   GP path: *System/Display*
-   GP ADMX file name: *Display.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 - Disable.
-   1 - Enable.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="display-enableperprocessdpiforapps"></a>**Display/EnablePerProcessDpiForApps**  

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
This policy allows you to enable Per-Process System DPI for a semicolon-separated list of applications. Applications can be specified either by using full paths or with filenames and extensions. This policy will override the system-wide default value.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Configure Per-Process System DPI settings*
-   GP name: *DisplayPerProcessSystemDpiSettings*
-   GP element: *DisplayEnablePerProcessSystemDpiSettings*
-   GP path: *System/Display*
-   GP ADMX file name: *Display.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="display-turnoffgdidpiscalingforapps"></a>**Display/TurnOffGdiDPIScalingForApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.

This policy setting lets you specify legacy applications that have GDI DPI Scaling turned off.

If you enable this policy setting, GDI DPI Scaling is turned off for all applications in the list, even if they are enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

If you disable or do not configure this policy setting, GDI DPI Scaling might still be turned on for legacy applications.

If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn off GdiDPIScaling for applications*
-   GP name: *DisplayTurnOffGdiDPIScaling*
-   GP element: *DisplayTurnOffGdiDPIScalingPrompt*
-   GP path: *System/Display*
-   GP ADMX file name: *Display.admx*

<!--/ADMXMapped-->
<!--Validation-->
To validate on Desktop, do the following:

1.   Configure the setting for an app which has GDI DPI scaling enabled via MDM or any other supported mechanisms.
2.   Run the app and observe blurry text.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="display-turnongdidpiscalingforapps"></a>**Display/TurnOnGdiDPIScalingForApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
GDI DPI Scaling enables applications that are not DPI aware to become per monitor DPI aware.

This policy setting lets you specify legacy applications that have GDI DPI Scaling turned on.

If you enable this policy setting, GDI DPI Scaling is turned on for all legacy applications in the list.

If you disable or do not configure this policy setting, GDI DPI Scaling will not be enabled for an application except when an application is enabled by using ApplicationCompatibility database, ApplicationCompatibility UI System (Enhanced) setting, or an application manifest.

If GDI DPI Scaling is configured to both turn off and turn on an application, the application will be turned off.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:  
-   GP English name: *Turn on GdiDPIScaling for applications*
-   GP name: *DisplayTurnOnGdiDPIScaling*
-   GP element: *DisplayTurnOnGdiDPIScalingPrompt*
-   GP path: *System/Display*
-   GP ADMX file name: *Display.admx*

<!--/ADMXMapped-->
<!--Validation-->
To validate on Desktop, do the following:

1.   Configure the setting for an app which uses GDI.
2.   Run the app and observe crisp text.

<!--/Validation-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

