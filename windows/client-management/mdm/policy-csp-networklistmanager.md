---
title: Policy CSP - NetworkListManager
description: The Policy CSP - NetworkListManager setting creates a new MDM policy that allows admins to configure a list of URIs of HTTPS endpoints that are considered secure.
ms.author: v-nsatapathy
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.localizationpriority: medium
ms.date: 7/10/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - NetworkListManager


<hr/>

<!--Policies-->
## NetworkListManager policies  

<dl>
  <dd>
    <a href="#networklistmanager-allowedtlsauthenticationendpoints">NetworkListManager/AllowedTlsAuthenticationEndpoints</a>
  </dd>
  <dd>
    <a href="#networklistmanager-configuredtlsauthenticationnetworkname">NetworkListManager/ConfiguredTLSAuthenticationNetworkName</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="networklistmanager-allowedtlsauthenticationendpoints"></a>**NetworkListManager/AllowedTlsAuthenticationEndpoints**  

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
    <td><img src="images/crossmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
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
This policy setting provides the list of URLs (separated by Unicode character 0xF000) to endpoints accessible only within an enterprise's network. If any of the URLs can be resolved over HTTPS, the network would be considered authenticated.

<hr/>


<hr/>

<!--Policy-->
<a href="" id="networklistmanager-configuredtlsauthenticationnetworkname"></a>**NetworkListManager/ConfiguredTLSAuthenticationNetworkName**  

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
    <td><img src="images/crossmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
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
This policy setting provides the string to be used to name the network authenticated against one of the endpoints listed in NetworkListManager/AllowedTlsAuthenticationEndpoints policy.

<hr/>

<!--/Policies-->

