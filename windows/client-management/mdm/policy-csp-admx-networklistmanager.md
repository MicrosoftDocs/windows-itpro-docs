---
title: Policy CSP - ADMX_NetworkListManager
description: Policy CSP - ADMX_NetworkListManager
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: NimishaSatapathy
ms.date: 06/11/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_NetworkListManager

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_NetworkListManager policies  

<dl>
  <dd>
    <a href="#admx-networklistmanager-allowedtlsauthenticationendpoints">ADMX_NetworkListManager/AllowedTlsAuthenticationEndpoints</a>
  </dd>
  <dd>
    <a href="#admx-networklistmanager-configuredtlsauthenticationnetworkname">ADMX_NetworkListManager/ConfiguredTLSAuthenticationNetworkName</a>
  </dd>
  

<hr/>

<!--Policy-->
<a href="" id="admx-networklistmanager-allowedtlsauthenticationendpoints"></a>**ADMX_NetworkListManager/AllowedTlsAuthenticationEndpoints**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
List of URLs (separated by Unicode character 0xF000) to endpoints accessible only within an enterprise's network. If any of the URLs can be resolved over HTTPS, the network would be considered authenticated.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Creates a new MDM policy that allows admins to configure a list of URIs of HTTPS endpoints that are considered secure*
-   GP name: *NetworkListManager/AllowedTlsAuthenticationEndpoints*
-   GP path: *OS\Core\STACK\MobCon-Mobile Connectivity\Connection Awareness\NLM*
-   GP ADMX file name: *NetworkListManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networklistmanager-configuredtlsauthencationnetworkname"></a>**ADMX_NetworkListManager/ConfiguredTLSAuthenticationNetworkName**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
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
The string to be used to name the network authenticated against one of the endpoints listed in *NetworkListManager/AllowedTlsAuthenticationEndpoints* policy.
<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Creates a new MDM policy  that allows admins to configure a name for TLS authenticated networks*
-   GP name: *NetworkListManager/ConfiguredTLSAuthenticationNetworkName*
-   GP path: *OS\Core\STACK\MobCon-Mobile Connectivity\Connection Awareness\NLM*
-   GP ADMX file name: *NetworkListManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
