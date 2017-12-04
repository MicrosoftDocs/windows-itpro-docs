---
title: Policy CSP - Cellular
description: Policy CSP - Cellular
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/16/2017
---

# Policy CSP - Cellular



<hr/>

<!--StartPolicies-->
## Cellular policies  

<dl>
  <dd>
    <a href="#cellular-letappsaccesscellulardata">Cellular/LetAppsAccessCellularData</a>
  </dd>
  <dd>
    <a href="#cellular-letappsaccesscellulardata_forceallowtheseapps">Cellular/LetAppsAccessCellularData_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="#cellular-letappsaccesscellulardata_forcedenytheseapps">Cellular/LetAppsAccessCellularData_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="#cellular-letappsaccesscellulardata_userincontroloftheseapps">Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="#cellular-showappcellularaccessui">Cellular/ShowAppCellularAccessUI</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="cellular-letappsaccesscellulardata"></a>**Cellular/LetAppsAccessCellularData**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Added in Windows 10, version 1709. This policy setting specifies whether Windows apps can access cellular data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access cellular data and employees in your organization cannot change it.

If you choose the "Force Deny" option, Windows apps are not allowed to access cellular data and employees in your organization cannot change it.

If you disable or do not configure this policy setting, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.”

Suported values:

- 0 - User is in control
- 1 - Force Allow
- 2 - Force Deny
 
<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="cellular-letappsaccesscellulardata_forceallowtheseapps"></a>**Cellular/LetAppsAccessCellularData_ForceAllowTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Added in Windows 10, version 1709. List of semi-colon delimited Package Family Names of Microsoft Store Apps. Listed apps are allowed access to cellular data. This setting overrides the default LetAppsAccessCellularData policy setting for the specified apps. Value type is string.
<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="cellular-letappsaccesscellulardata_forcedenytheseapps"></a>**Cellular/LetAppsAccessCellularData_ForceDenyTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Added in Windows 10, version 1709. List of semi-colon delimited Package Family Names of Microsoft Store Apps. Listed apps are denied access to cellular data. This setting overrides the default LetAppsAccessCellularData policy setting for the specified apps. Value type is string.
<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="cellular-letappsaccesscellulardata_userincontroloftheseapps"></a>**Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
Added in Windows 10, version 1709. List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the cellular data access setting for the listed apps. This setting overrides the default LetAppsAccessCellularData policy setting for the specified apps. Value type is string.
<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="cellular-showappcellularaccessui"></a>**Cellular/ShowAppCellularAccessUI**  

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
This policy setting configures the visibility of the link to the per-application cellular access control page in the cellular setting UX.

If this policy setting is enabled, a drop-down list box presenting possible values will be active.  Select "Hide" or "Show" to hide or show the link to the per-application cellular access control page.

If this policy setting is disabled or is not configured, the link to the per-application cellular access control page is showed by default.”

Supported values:

- 0 - Hide
- 1 - Show
<!--EndDescription-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).

> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).

> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--StartADMX-->
ADMX Info:  
-   GP English name: *Set Per-App Cellular Access UI Visibility*
-   GP name: *ShowAppCellularAccessUI*
-   GP path: *Network/WWAN Service/WWAN UI Settings*
-   GP ADMX file name: *wwansvc.admx*

<!--EndADMX-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartEAS-->
## <a href="" id="eas"></a>Cellular policies that can be set using Exchange Active Sync (EAS)  

-   [Cellular/ShowAppCellularAccessUI](#cellular-showappcellularaccessui)  
<!--EndEAS-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Cellular policies supported by IoT Core  

-   [Cellular/ShowAppCellularAccessUI](#cellular-showappcellularaccessui)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Cellular policies supported by Microsoft Surface Hub  

-   [Cellular/ShowAppCellularAccessUI](#cellular-showappcellularaccessui)  
<!--EndSurfaceHub-->

