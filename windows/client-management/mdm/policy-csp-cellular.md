---
title: Policy CSP - Cellular
description: Learn how to use the Policy CSP - Cellular setting so you can specify whether Windows apps can access cellular data.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Cellular

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## Cellular policies

<dl>
  <dd>
    <a href="#cellular-letappsaccesscellulardata">Cellular/LetAppsAccessCellularData</a>
  </dd>
  <dd>
    <a href="#cellular-letappsaccesscellulardata-forceallowtheseapps">Cellular/LetAppsAccessCellularData_ForceAllowTheseApps</a>
  </dd>
  <dd>
    <a href="#cellular-letappsaccesscellulardata-forcedenytheseapps">Cellular/LetAppsAccessCellularData_ForceDenyTheseApps</a>
  </dd>
  <dd>
    <a href="#cellular-letappsaccesscellulardata-userincontroloftheseapps">Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps</a>
  </dd>
  <dd>
    <a href="#cellular-showappcellularaccessui">Cellular/ShowAppCellularAccessUI</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="cellular-letappsaccesscellulardata"></a>**Cellular/LetAppsAccessCellularData**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether Windows apps can access cellular data.

You can specify either a default setting for all apps or a per-app setting by specifying a Package Family Name. You can get the Package Family Name for an app by using the Get-AppPackage Windows PowerShell cmdlet. A per-app setting overrides the default setting.

If you choose the "User is in control" option, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If you choose the "Force Allow" option, Windows apps are allowed to access cellular data and employees in your organization can't change it.

If you choose the "Force Deny" option, Windows apps aren't allowed to access cellular data and employees in your organization can't change it.

If you disable or don't configure this policy setting, employees in your organization can decide whether Windows apps can access cellular data by using Settings > Network - Internet > Cellular on the device.

If an app is open when this Group Policy object is applied on a device, employees must restart the app or device for the policy changes to be applied to the app.”

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Let Windows apps access cellular data*
-   GP name: *LetAppsAccessCellularData*
-   GP element: *LetAppsAccessCellularData_Enum*
-   GP path: *Network/WWAN Service/Cellular Data Access*
-   GP ADMX file name: *wwansvc.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

- 0 - User is in control
- 1 - Force Allow
- 2 - Force Deny

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="cellular-letappsaccesscellulardata-forceallowtheseapps"></a>**Cellular/LetAppsAccessCellularData_ForceAllowTheseApps**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
List of semi-colon delimited Package Family Names of Microsoft Store Apps. Listed apps are allowed access to cellular data. This setting overrides the default LetAppsAccessCellularData policy setting for the specified apps. Value type is string.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Let Windows apps access cellular data*
-   GP name: *LetAppsAccessCellularData*
-   GP element: *LetAppsAccessCellularData_ForceAllowTheseApps_List*
-   GP path: *Network/WWAN Service/Cellular Data Access*
-   GP ADMX file name: *wwansvc.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="cellular-letappsaccesscellulardata-forcedenytheseapps"></a>**Cellular/LetAppsAccessCellularData_ForceDenyTheseApps**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
List of semi-colon delimited Package Family Names of Microsoft Store Apps. Listed apps are denied access to cellular data. This setting overrides the default LetAppsAccessCellularData policy setting for the specified apps. Value type is string.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Let Windows apps access cellular data*
-   GP name: *LetAppsAccessCellularData*
-   GP element: *LetAppsAccessCellularData_ForceDenyTheseApps_List*
-   GP path: *Network/WWAN Service/Cellular Data Access*
-   GP ADMX file name: *wwansvc.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="cellular-letappsaccesscellulardata-userincontroloftheseapps"></a>**Cellular/LetAppsAccessCellularData_UserInControlOfTheseApps**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
List of semi-colon delimited Package Family Names of Windows Store Apps. The user is able to control the cellular data access setting for the listed apps. This setting overrides the default LetAppsAccessCellularData policy setting for the specified apps. Value type is string.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Let Windows apps access cellular data*
-   GP name: *LetAppsAccessCellularData*
-   GP element: *LetAppsAccessCellularData_UserInControlOfTheseApps_List*
-   GP path: *Network/WWAN Service/Cellular Data Access*
-   GP ADMX file name: *wwansvc.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="cellular-showappcellularaccessui"></a>**Cellular/ShowAppCellularAccessUI**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures the visibility of the link to the per-application cellular access control page in the cellular setting UX.

If this policy setting is enabled, a drop-down list box presenting possible values will be active.  Select "Hide" or "Show" to hide or show the link to the per-application cellular access control page.
If this policy setting is disabled or isn't configured, the link to the per-application cellular access control page is shown by default.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set Per-App Cellular Access UI Visibility*
-   GP name: *ShowAppCellularAccessUI*
-   GP path: *Network/WWAN Service/WWAN UI Settings*
-   GP ADMX file name: *wwansvc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

