---
title: Policy CSP - Cryptography
description: Learn how to use the Policy CSP - Cryptography setting to allow or disallow the Federal Information Processing Standard (FIPS) policy.
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
This policy setting allows or disallows the Federal Information Processing Standard (FIPS) policy.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing*
-   GP path: *Windows Settings/Security Settings/Local Policies/Security Options*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

0 (default) – Not allowed.
1– Allowed.
<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="cryptography-tlsciphersuites"></a>**Cryptography/TLSCipherSuites**

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
This policy setting lists the Cryptographic Cipher Algorithms allowed for SSL connections. Format is a semicolon delimited list. Last write win.

<!--/Description-->
<!--ADMXMapped-->

<!--/ADMXMapped-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
