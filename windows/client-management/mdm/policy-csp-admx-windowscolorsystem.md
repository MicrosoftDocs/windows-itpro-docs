---
title: Policy CSP - ADMX_WindowsColorSystem
description: Policy CSP - ADMX_WindowsColorSystem
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 10/27/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WindowsColorSystem

<hr/>

<!--Policies-->
## ADMX_WindowsColorSystem policies  

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<dl>
  <dd>
    <a href="#admx-windowscolorsystem-prohibitchanginginstalledprofilelist_1">ADMX_WindowsColorSystem/ProhibitChangingInstalledProfileList_1</a>
  </dd>
  <dd>
    <a href="#admx-windowscolorsystem-prohibitchanginginstalledprofilelist_2">ADMX_WindowsColorSystem/ProhibitChangingInstalledProfileList_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowscolorsystem-prohibitchanginginstalledprofilelist_1"></a>**WindowsColorSystem/ProhibitChangingInstalledProfileList_1**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting affects the ability of users to install or uninstall color profiles.  

- If you enable this policy setting, users cannot install new color profiles or uninstall previously installed color profiles.  

- If you disable or do not configure this policy setting, all users can install new color profiles. Standard users can uninstall color profiles that they previously installed. Administrators will be able to uninstall all color profiles.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prohibit installing or uninstalling color profiles*
-   GP name: *ProhibitChangingInstalledProfileList_1*
-   GP path: *Windows Components\Windows Color System*
-   GP ADMX file name: *WindowsColorSystem.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-windowscolorsystem-prohibitchanginginstalledprofilelist_2"></a>**WindowsColorSystem/ProhibitChangingInstalledProfileList_2**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting affects the ability of users to install or uninstall color profiles.  

- If you enable this policy setting, users cannot install new color profiles or uninstall previously installed color profiles.  

- If you disable or do not configure this policy setting, all users can install new color profiles. Standard users can uninstall color profiles that they previously installed. Administrators will be able to uninstall all color profiles.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prohibit installing or uninstalling color profiles*
-   GP name: *ProhibitChangingInstalledProfileList_2*
-   GP path: *Windows Components\Windows Color System*
-   GP ADMX file name: *WindowsColorSystem.admx*


<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

