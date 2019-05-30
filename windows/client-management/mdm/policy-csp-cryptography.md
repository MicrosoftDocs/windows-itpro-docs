---
title: Policy CSP - Cryptography
description: Policy CSP - Cryptography
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 05/14/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - Cryptography



<hr/>

<!--Policies-->
## Cryptography policies  

<dl>
  <dd>
    <a href="#cryptography-allowfipsalgorithmpolicy">Cryptography/AllowFipsAlgorithmPolicy</a>
  </dd>
  <dd>
    <a href="#cryptography-tlsciphersuites">Cryptography/TLSCipherSuites</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="cryptography-allowfipsalgorithmpolicy"></a>**Cryptography/AllowFipsAlgorithmPolicy**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Allows or disallows the Federal Information Processing Standard (FIPS) policy.

<!--/Description-->
<!--RegistryMapped-->
GP Info:  
-   GP English name: *System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/RegistryMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not allowed.
-   1– Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="cryptography-tlsciphersuites"></a>**Cryptography/TLSCipherSuites**  

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
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
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
Lists the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.

<!--/Description-->
<!--/Policy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.

<!--/Policies-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Cryptography policies supported by Microsoft Surface Hub  

-   [Cryptography/AllowFipsAlgorithmPolicy](#cryptography-allowfipsalgorithmpolicy)  
-   [Cryptography/TLSCipherSuites](#cryptography-tlsciphersuites)  
<!--EndSurfaceHub-->

