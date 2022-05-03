---
title: Policy CSP - ADMX_CipherSuiteOrder
description: Learn about the Policy CSP - ADMX_CipherSuiteOrder.
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 08/17/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_CipherSuiteOrder

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_CipherSuiteOrder policies  

<dl>
  <dd>
    <a href="#admx-ciphersuiteorder-sslciphersuiteorder">ADMX_CipherSuiteOrder/SSLCipherSuiteOrder</a>
  </dd>
  <dd>
    <a href="#admx-ciphersuiteorder-sslcurveorder">ADMX_CipherSuiteOrder/SSLCurveOrder</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-ciphersuiteorder-sslciphersuiteorder"></a>**ADMX_CipherSuiteOrder/SSLCipherSuiteOrder**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting determines the cipher suites used by the Secure Socket Layer (SSL).

If you enable this policy setting, SSL cipher suites are prioritized in the order specified.

If you disable or do not configure this policy setting, default cipher suite order is used.

For information about supported cipher suites, see [Cipher Suites in TLS/SSL (Schannel SSP)](/windows/win32/secauthn/cipher-suites-in-schannel).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *SSL Cipher Suite Order*
-   GP name: *SSLCipherSuiteOrder*
-   GP path: *Network/SSL Configuration Settings*
-   GP ADMX file name: *CipherSuiteOrder.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<hr/>

<!--Policy-->
<a href="" id="admx-ciphersuiteorder-sslcurveorder"></a>**ADMX_CipherSuiteOrder/SSLCurveOrder**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Business|No|No|
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
This policy setting determines the priority order of ECC curves used with ECDHE cipher suites.

If you enable this policy setting, ECC curves are prioritized in the order specified. Enter one curve name per line.

If you disable or do not configure this policy setting, the default ECC curve order is used.

The default curve order is as follows:

- curve25519
- NistP256
- NistP384

To see all the curves supported on the system, enter the following command:

``` cmd
CertUtil.exe -DisplayEccCurve
```

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *ECC Curve Order*
-   GP name: *SSLCurveOrder*
-   GP path: *Network/SSL Configuration Settings*
-   GP ADMX file name: *CipherSuiteOrder.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)