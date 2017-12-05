---
title: Policy CSP - EnterpriseCloudPrint
description: Policy CSP - EnterpriseCloudPrint
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - EnterpriseCloudPrint



<hr/>

<!--StartPolicies-->
## EnterpriseCloudPrint policies  

<dl>
  <dd>
    <a href="#enterprisecloudprint-cloudprintoauthauthority">EnterpriseCloudPrint/CloudPrintOAuthAuthority</a>
  </dd>
  <dd>
    <a href="#enterprisecloudprint-cloudprintoauthclientid">EnterpriseCloudPrint/CloudPrintOAuthClientId</a>
  </dd>
  <dd>
    <a href="#enterprisecloudprint-cloudprintresourceid">EnterpriseCloudPrint/CloudPrintResourceId</a>
  </dd>
  <dd>
    <a href="#enterprisecloudprint-cloudprinterdiscoveryendpoint">EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint</a>
  </dd>
  <dd>
    <a href="#enterprisecloudprint-discoverymaxprinterlimit">EnterpriseCloudPrint/DiscoveryMaxPrinterLimit</a>
  </dd>
  <dd>
    <a href="#enterprisecloudprint-mopriadiscoveryresourceid">EnterpriseCloudPrint/MopriaDiscoveryResourceId</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintoauthauthority"></a>**EnterpriseCloudPrint/CloudPrintOAuthAuthority**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the authentication endpoint for acquiring OAuth tokens.  This policy must target ./User, otherwise it fails.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//azuretenant.contoso.com/adfs".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintoauthclientid"></a>**EnterpriseCloudPrint/CloudPrintOAuthClientId**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the GUID of a client application authorized to retrieve OAuth tokens from the OAuthAuthority. This policy must target ./User, otherwise it fails.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a GUID. For example, "E1CF1107-FF90-4228-93BF-26052DD2C714".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintresourceid"></a>**EnterpriseCloudPrint/CloudPrintResourceId**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the enterprise cloud print client during OAuth authentication. This policy must target ./User, otherwise it fails.

<p style="margin-left: 20px">The datatype is a string. 

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MicrosoftEnterpriseCloudPrint/CloudPrint".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprinterdiscoveryendpoint"></a>**EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user end point for discovering cloud printers. This policy must target ./User, otherwise it fails.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//cloudprinterdiscovery.contoso.com".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-discoverymaxprinterlimit"></a>**EnterpriseCloudPrint/DiscoveryMaxPrinterLimit**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Defines the maximum number of printers that should be queried from a discovery end point. This policy must target ./User, otherwise it fails.

<p style="margin-left: 20px">The datatype is an integer. 

<p style="margin-left: 20px">For Windows Mobile, the default value is 20.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="enterprisecloudprint-mopriadiscoveryresourceid"></a>**EnterpriseCloudPrint/MopriaDiscoveryResourceId**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the Mopria discovery client during OAuth authentication. This policy must target ./User, otherwise it fails.

<p style="margin-left: 20px">The datatype is a string.

<p style="margin-left: 20px">The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MopriaDiscoveryService/CloudPrint".

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

