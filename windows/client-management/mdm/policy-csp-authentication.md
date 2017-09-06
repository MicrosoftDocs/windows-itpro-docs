---
title: Policy CSP - Authentication
description: Policy CSP - Authentication
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 08/30/2017
---

# Policy CSP - Authentication

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

<!--StartPolicies-->
<hr/>

## Authentication policies  

<!--StartPolicy-->
<a href="" id="authentication-alloweapcertsso"></a>**Authentication/AllowEAPCertSSO**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Allows an EAP cert-based authentication for a single sign on (SSO) to access internal resources.

> [!IMPORTANT]
> This node must be accessed using the following paths:
>
> -   **./User/Vendor/MSFT/Policy/Config/Authentication/AllowEAPCertSSO** to set the policy.
> -   **./User/Vendor/MSFT/Policy/Result/Authentication/AllowEAPCertSSO** to get the result.


<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="authentication-allowfastreconnect"></a>**Authentication/AllowFastReconnect**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Allows EAP Fast Reconnect from being attempted for EAP Method TLS.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<!--StartPolicy-->
<a href="" id="authentication-allowsecondaryauthenticationdevice"></a>**Authentication/AllowSecondaryAuthenticationDevice**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1607. Allows secondary authentication devices to work with Windows.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 – Allowed.

<p style="margin-left: 20px">The default for this policy must be on for consumer devices (defined as local or Microsoft account connected device) and off for enterprise devices (such as cloud domain-joined, cloud domain-joined in an on-premise only environment, cloud domain-joined in a hybrid environment, and BYOD).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Authentication policies supported by Windows Holographic for Business  

-   [Authentication/AllowFastReconnect](#authentication-allowfastreconnect)  
<!--EndHoloLens-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Authentication policies supported by IoT Core  

-   [Authentication/AllowFastReconnect](#authentication-allowfastreconnect)  
<!--EndIoTCore-->

