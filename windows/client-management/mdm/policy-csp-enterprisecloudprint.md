---
title: Policy CSP - EnterpriseCloudPrint
description: Policy CSP - EnterpriseCloudPrint
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 01/29/2018
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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the authentication endpoint for acquiring OAuth tokens.  This policy must target ./User, otherwise it fails.

The datatype is a string.

The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//azuretenant.contoso.com/adfs".

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintoauthclientid"></a>**EnterpriseCloudPrint/CloudPrintOAuthClientId**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the GUID of a client application authorized to retrieve OAuth tokens from the OAuthAuthority. This policy must target ./User, otherwise it fails.

The datatype is a string.

The default value is an empty string. Otherwise, the value should contain a GUID. For example, "E1CF1107-FF90-4228-93BF-26052DD2C714".

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprintresourceid"></a>**EnterpriseCloudPrint/CloudPrintResourceId**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the enterprise cloud print client during OAuth authentication. This policy must target ./User, otherwise it fails.

The datatype is a string. 

The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MicrosoftEnterpriseCloudPrint/CloudPrint".

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="enterprisecloudprint-cloudprinterdiscoveryendpoint"></a>**EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the per-user end point for discovering cloud printers. This policy must target ./User, otherwise it fails.

The datatype is a string.

The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, "https:<span></span>//cloudprinterdiscovery.contoso.com".

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="enterprisecloudprint-discoverymaxprinterlimit"></a>**EnterpriseCloudPrint/DiscoveryMaxPrinterLimit**  

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
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Defines the maximum number of printers that should be queried from a discovery end point. This policy must target ./User, otherwise it fails.

The datatype is an integer. 

For Windows Mobile, the default value is 20.

<!--/Description-->
<!--EndPolicy-->

<hr/>

<!--StartPolicy-->
<a href="" id="enterprisecloudprint-mopriadiscoveryresourceid"></a>**EnterpriseCloudPrint/MopriaDiscoveryResourceId**  

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
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportdSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Added in Windows 10, version 1703. Specifies the per-user resource URL for which access is requested by the Mopria discovery client during OAuth authentication. This policy must target ./User, otherwise it fails.

The datatype is a string.

The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MopriaDiscoveryService/CloudPrint".

<!--/Description-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

