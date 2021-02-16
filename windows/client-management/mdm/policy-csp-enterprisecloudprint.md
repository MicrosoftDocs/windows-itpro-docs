---
title: Policy CSP - EnterpriseCloudPrint
description: Use the Policy CSP - EnterpriseCloudPrint setting to define the maximum number of printers that should be queried from a discovery end point.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - EnterpriseCloudPrint



<hr/>

<!--Policies-->
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

<!--Policy-->
<a href="" id="enterprisecloudprint-cloudprintoauthauthority"></a>**EnterpriseCloudPrint/CloudPrintOAuthAuthority**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

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
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-cloudprintoauthclientid"></a>**EnterpriseCloudPrint/CloudPrintOAuthClientId**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

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
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-cloudprintresourceid"></a>**EnterpriseCloudPrint/CloudPrintResourceId**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

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
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-cloudprinterdiscoveryendpoint"></a>**EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

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
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-discoverymaxprinterlimit"></a>**EnterpriseCloudPrint/DiscoveryMaxPrinterLimit**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

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
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-mopriadiscoveryresourceid"></a>**EnterpriseCloudPrint/MopriaDiscoveryResourceId**  

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

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
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

