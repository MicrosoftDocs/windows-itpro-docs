---
title: Policy CSP - ADMX_CipherSuiteOrder
description: Policy CSP - ADMX_CipherSuiteOrder
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 08/17/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_CipherSuiteOrder

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the cipher suites used by the Secure Socket Layer (SSL).

If you enable this policy setting, SSL cipher suites are prioritized in the order specified.

If you disable or do not configure this policy setting, default cipher suite order is used.

For information about supported cipher suites, see [Cipher Suites in TLS/SSL (Schannel SSP)](/windows/win32/secauthn/cipher-suites-in-schannel).

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *SSL Cipher Suite Order*
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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines the priority order of ECC curves used with ECDHE cipher suites.

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
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *ECC Curve Order*
-   GP name: *SSLCurveOrder*
-   GP path: *Network/SSL Configuration Settings*
-   GP ADMX file name: *CipherSuiteOrder.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->