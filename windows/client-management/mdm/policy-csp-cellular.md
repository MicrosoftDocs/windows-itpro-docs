---
title: Policy CSP - Cellular
description: Policy CSP - Cellular
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 08/30/2017
---

# Policy CSP - Cellular

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## Cellular policies  

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
<!--StartDescription-->
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

