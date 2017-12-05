---
title: Policy CSP - System
description: Policy CSP - System
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - System



<hr/>

<!--StartPolicies-->
## System policies  

<dl>
  <dd>
    <a href="#system-allowbuildpreview">System/AllowBuildPreview</a>
  </dd>
  <dd>
    <a href="#system-allowembeddedmode">System/AllowEmbeddedMode</a>
  </dd>
  <dd>
    <a href="#system-allowexperimentation">System/AllowExperimentation</a>
  </dd>
  <dd>
    <a href="#system-allowfontproviders">System/AllowFontProviders</a>
  </dd>
  <dd>
    <a href="#system-allowlocation">System/AllowLocation</a>
  </dd>
  <dd>
    <a href="#system-allowstoragecard">System/AllowStorageCard</a>
  </dd>
  <dd>
    <a href="#system-allowtelemetry">System/AllowTelemetry</a>
  </dd>
  <dd>
    <a href="#system-allowusertoresetphone">System/AllowUserToResetPhone</a>
  </dd>
  <dd>
    <a href="#system-bootstartdriverinitialization">System/BootStartDriverInitialization</a>
  </dd>
  <dd>
    <a href="#system-disableonedrivefilesync">System/DisableOneDriveFileSync</a>
  </dd>
  <dd>
    <a href="#system-disablesystemrestore">System/DisableSystemRestore</a>
  </dd>
  <dd>
    <a href="#system-limitenhanceddiagnosticdatawindowsanalytics">System/LimitEnhancedDiagnosticDataWindowsAnalytics</a>
  </dd>
  <dd>
    <a href="#system-telemetryproxy">System/TelemetryProxy</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="system-allowbuildpreview"></a>**System/AllowBuildPreview**  

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
> [!NOTE]
> This policy setting applies only to devices running Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education, Windows 10 Mobile, and Windows 10 Mobile Enterprise.


<p style="margin-left: 20px">This policy setting determines whether users can access the Insider build controls in the Advanced Options for Windows Update. These controls are located under "Get Insider builds," and enable users to make their devices available for downloading and installing Windows preview software.

<p style="margin-left: 20px">If you enable or do not configure this policy setting, users can download and install Windows preview software on their devices. If you disable this policy setting, the item "Get Insider builds" will be unavailable.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed. The item "Get Insider builds" is unavailable, users are unable to make their devices available for preview software.
-   1 – Allowed. Users can make their devices available for downloading and installing preview software.
-   2 (default) – Not configured. Users can make their devices available for downloading and installing preview software.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-allowembeddedmode"></a>**System/AllowEmbeddedMode**  

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
<p style="margin-left: 20px">Specifies whether set general purpose device to be in embedded mode.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-allowexperimentation"></a>**System/AllowExperimentation**  

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
> [!NOTE]
> This policy is not supported in Windows 10, version 1607.

<p style="margin-left: 20px">This policy setting determines the level that Microsoft can experiment with the product to study user preferences or device behavior.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Disabled.
-   1 (default) – Permits Microsoft to configure device settings only.
-   2 – Allows Microsoft to conduct full experimentations.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-allowfontproviders"></a>**System/AllowFontProviders**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
<p style="margin-left: 20px">Added in Windows 10, version 1703. Boolean policy setting that determines whether Windows is allowed to download fonts and font catalog data from an online font provider. If you enable this setting, Windows periodically queries an online font provider to determine whether a new font catalog is available. Windows may also download font data if needed to format or render text. If you disable this policy setting, Windows does not connect to an online font provider and only enumerates locally-installed fonts.

<p style="margin-left: 20px">Supported values:  

-   false - No traffic to fs.microsoft.com and only locally-installed fonts are available.
-   true (default) - There may be network traffic to fs.microsoft.com and downloadable fonts are available to apps that support them.

<p style="margin-left: 20px">This MDM setting corresponds to the EnableFontProviders Group Policy setting. If both the Group Policy and the MDM settings are configured, the group policy setting takes precedence. If neither is configured, the behavior depends on a DisableFontProviders registry value. In server editions, this registry value is set to 1 by default, so the default behavior is false (disabled). In all other editions, the registry value is not set by default, so the default behavior is true (enabled).

<p style="margin-left: 20px">This setting is used by lower-level components for text display and fond handling and has not direct effect on web browsers, which may download web fonts used in web content.

> [!Note]  
> Reboot is required after setting the policy; alternatively you can stop and restart the FontCache service.

<p style="margin-left: 20px">To verify if System/AllowFontProviders is set to true:  

-  After a client machine is rebooted, check whether there is any network traffic from client machine to fs.microsoft.com.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-allowlocation"></a>**System/AllowLocation**  

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
<p style="margin-left: 20px">Specifies whether to allow app access to the Location service.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Force Location Off. All Location Privacy settings are toggled off and greyed out. Users cannot change the settings, and no apps are allowed access to the Location service, including Cortana and Search.
-   1 (default) – Location service is allowed. The user has control and can change Location Privacy settings on or off.
-   2 – Force Location On. All Location Privacy settings are toggled on and greyed out. Users cannot change the settings and all consent permissions will be automatically suppressed.

<p style="margin-left: 20px">Most restricted value is 0.

<p style="margin-left: 20px">While the policy is set to 0 (Force Location Off) or 2 (Force Location On), any Location service call from an app would trigger the value set by this policy.

<p style="margin-left: 20px">When switching the policy back from 0 (Force Location Off) or 2 (Force Location On) to 1 (User Control), the app reverts to its original Location service setting.

<p style="margin-left: 20px">For example, an app's original Location setting is Off. The administrator then sets the **AllowLocation** policy to 2 (Force Location On.) The Location service starts working for that app, overriding the original setting. Later, if the administrator switches the **AllowLocation** policy back to 1 (User Control), the app will revert to using its original setting of Off.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-allowstoragecard"></a>**System/AllowStorageCard**  

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
<p style="margin-left: 20px">Controls whether the user is allowed to use the storage card for device storage. This setting prevents programmatic access to the storage card.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – SD card use is not allowed and USB drives are disabled. This setting does not prevent programmatic access to the storage card. 
-   1 (default) – Allow a storage card.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-allowtelemetry"></a>**System/AllowTelemetry**  

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
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Allow the device to send diagnostic and usage telemetry data, such as Watson.

<p style="margin-left: 20px">The following tables describe the supported values:

Windows 8.1 Values:

-   0 - Not allowed.
-   1 – Allowed, except for Secondary Data Requests.
-   2 (default) – Allowed.

<!--<table style="margin-left: 20px">
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows 8.1 Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>0 – Not allowed.</p>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p> 1 – Allowed, except for Secondary Data Requests.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>2 (default) – Allowed.</p></td>
</tr>
</tbody>
</table>-->

Windows 10 Values:

-   0 – Security. Information that is required to help keep Windows more secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.
    Note: This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016. Using this setting on other devices is equivalent to setting the value of 1.
-   1 – Basic. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the Security level.
-   2 – Enhanced. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the Basic and the Security levels.
-   3 – Full. All data necessary to identify and help to fix problems, plus data from the Security, Basic, and Enhanced levels.

<!--<table style="margin-left: 20px">
<colgroup>
<col width="100%" />
</colgroup>
<thead>
<tr class="header">
<th>Windows 10 Values</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>0 – Security. Information that is required to help keep Windows more secure, including data about the Connected User Experience and Telemetry component settings, the Malicious Software Removal Tool, and Windows Defender.</p>
<div class="alert">
<strong>Note</strong>  This value is only applicable to Windows 10 Enterprise, Windows 10 Education, Windows 10 Mobile Enterprise, Windows 10 IoT Core (IoT Core), and Windows Server 2016. Using this setting on other devices is equivalent to setting the value of 1.
</div>
</td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>1 – Basic. Basic device info, including: quality-related data, app compatibility, app usage data, and data from the Security level.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>2 – Enhanced. Additional insights, including: how Windows, Windows Server, System Center, and apps are used, how they perform, advanced reliability data, and data from both the Basic and the Security levels.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>3 – Full. All data necessary to identify and help to fix problems, plus data from the Security, Basic, and Enhanced levels.</p></td>
</tr>
</tbody>
</table>-->


> [!IMPORTANT]
> If you are using Windows 8.1 MDM server and set a value of 0 using the legacy AllowTelemetry policy on a Windows 10 Mobile device, then the value is not respected and the telemetry level is silently set to level 1.


<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-allowusertoresetphone"></a>**System/AllowUserToResetPhone**  

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
<p style="margin-left: 20px">Specifies whether to allow the user to factory reset the phone by using control panel and hardware key combination.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed to reset to factory default settings.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-bootstartdriverinitialization"></a>**System/BootStartDriverInitialization**  

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
N/A

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP name: *POL_DriverLoadPolicy_Name*
-   GP ADMX file name: *earlylauncham.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-disableonedrivefilesync"></a>**System/DisableOneDriveFileSync**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
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
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to prevent apps and features from working with files on OneDrive. If you enable this policy setting:

* Users cannot access OneDrive from the OneDrive app or file picker.
* Microsoft Store apps cannot access OneDrive using the WinRT API.
* OneDrive does not appear in the navigation pane in File Explorer.
* OneDrive files are not kept in sync with the cloud.
* Users cannot automatically upload photos and videos from the camera roll folder. 

<p style="margin-left: 20px">If you disable or do not configure this policy setting, apps and features can work with OneDrive file storage.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (sync enabled).
-   1 – True (sync disabled).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Restart machine.
3.   Verify that OneDrive.exe is not running in Task Manager.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-disablesystemrestore"></a>**System/DisableSystemRestore**  

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
Allows you to disable System Restore.

This policy setting allows you to turn off System Restore.

System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. By default, System Restore is turned on for the boot volume.

If you enable this policy setting, System Restore is turned off, and the System Restore Wizard cannot be accessed. The option to configure System Restore or create a restore point through System Protection is also disabled.

If you disable or do not configure this policy setting, users can perform System Restore and configure System Restore settings through System Protection.

Also, see the "Turn off System Restore configuration" policy setting. If the "Turn off System Restore" policy setting is disabled or not configured, the "Turn off System Restore configuration" policy setting is used to determine whether the option to configure System Restore is available.

<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Turn off System Restore*
-   GP name: *SR_DisableSR*
-   GP path: *System/System Restore*
-   GP ADMX file name: *systemrestore.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-limitenhanceddiagnosticdatawindowsanalytics"></a>**System/LimitEnhancedDiagnosticDataWindowsAnalytics**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
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
<p style="margin-left: 20px">This policy setting, in combination with the System/AllowTelemetry 
 policy setting, enables organizations to send Microsoft a specific set of diagnostic data for IT insights via Windows Analytics services. 
 
<p style="margin-left: 20px">To enable this behavior you must complete two steps:
<ul>
<li>Enable this policy setting</li>
<li>Set Allow Telemetry to level 2 (Enhanced)</li>
</ul>
 
<p style="margin-left: 20px">When you configure these policy settings, a basic level of  diagnostic data plus additional events that are required for Windows Analytics are sent to Microsoft. These events are documented here: [Windows 10, version 1709 enhanced telemetry events and fields used by Windows Analytics](https://go.microsoft.com/fwlink/?linkid=847594).
 
<p style="margin-left: 20px">Enabling enhanced diagnostic data in the System/AllowTelemetry policy in combination with not configuring this policy will also send the required events for Windows Analytics, plus additional enhanced level telemetry data. This setting has no effect on computers configured to send full, basic or security level diagnostic data to Microsoft.
   
<p style="margin-left: 20px">If you disable or do not configure this policy setting, then the level of diagnostic data sent to Microsoft is determined by the System/AllowTelemetry policy.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="system-telemetryproxy"></a>**System/TelemetryProxy**  

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
<p style="margin-left: 20px">Allows you to specify the fully qualified domain name (FQDN) or IP address of a proxy server to forward Connected User Experiences and Telemetry requests. The format for this setting is *&lt;server&gt;:&lt;port&gt;*. The connection is made over a Secure Sockets Layer (SSL) connection. If the named proxy fails, or if there is no proxy specified when this policy is enabled, the Connected User Experiences and Telemetry data will not be transmitted and will remain on the local device.

<p style="margin-left: 20px">If you disable or do not configure this policy setting, Connected User Experiences and Telemetry will go to Microsoft using the default proxy configuration.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartEAS-->
## <a href="" id="eas"></a>System policies that can be set using Exchange Active Sync (EAS)  

-   [System/AllowStorageCard](#system-allowstoragecard)  
-   [System/TelemetryProxy](#system-telemetryproxy)  
<!--EndEAS-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>System policies supported by Windows Holographic for Business  

-   [System/AllowFontProviders](#system-allowfontproviders)  
-   [System/AllowLocation](#system-allowlocation)  
-   [System/AllowTelemetry](#system-allowtelemetry)  
<!--EndHoloLens-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>System policies supported by IoT Core  

-   [System/AllowEmbeddedMode](#system-allowembeddedmode)  
-   [System/AllowFontProviders](#system-allowfontproviders)  
-   [System/AllowStorageCard](#system-allowstoragecard)  
-   [System/TelemetryProxy](#system-telemetryproxy)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>System policies supported by Microsoft Surface Hub  

-   [System/AllowFontProviders](#system-allowfontproviders)  
-   [System/AllowLocation](#system-allowlocation)  
-   [System/AllowTelemetry](#system-allowtelemetry)  
<!--EndSurfaceHub-->

