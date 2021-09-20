---
title: Policy CSP - ADMX_HotSpotAuth
description: Policy CSP - ADMX_HotSpotAuth
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/15/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_HotSpotAuth
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_HotSpotAuth policies  

<dl>
  <dd>
    <a href="#admx-hotspotauth-hotspotauth_enable">ADMX_HotSpotAuth/HotspotAuth_Enable</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-hotspotauth-hotspotauth_enable"></a>**ADMX_HotSpotAuth/HotspotAuth_Enable**  

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting defines whether WLAN hotspots are probed for Wireless Internet Service Provider roaming (WISPr) protocol support.  

- If a WLAN hotspot supports the WISPr protocol, users can submit credentials when manually connecting to the network. 

- If authentication is successful, users will be connected automatically on subsequent attempts. Credentials can also be configured by network operators.  

- If you enable this policy setting, or if you do not configure this policy setting, WLAN hotspots are automatically probed for WISPR protocol support.  

- If you disable this policy setting, WLAN hotspots are not probed for WISPr protocol support, and users can only authenticate with WLAN hotspots using a web browser.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable Hotspot Authentication*
-   GP name: *HotspotAuth_Enable*
-   GP path: *Network\Hotspot Authentication*
-   GP ADMX file name: *HotSpotAuth.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->

