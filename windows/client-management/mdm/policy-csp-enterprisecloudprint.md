---
title: Policy CSP - EnterpriseCloudPrint
description: Use the Policy CSP - EnterpriseCloudPrint setting to define the maximum number of printers that should be queried from a discovery end point.
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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the authentication endpoint for acquiring OAuth tokens. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, ```https://azuretenant.contoso.com/adfs```.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-cloudprintoauthclientid"></a>**EnterpriseCloudPrint/CloudPrintOAuthClientId**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the GUID of a client application authorized to retrieve OAuth tokens from the OAuthAuthority. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain a GUID. For example, "E1CF1107-FF90-4228-93BF-26052DD2C714".

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-cloudprintresourceid"></a>**EnterpriseCloudPrint/CloudPrintResourceId**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the per-user resource URL for which access is requested by the enterprise cloud print client during OAuth authentication. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain a URL. For example, "http:<span></span>//MicrosoftEnterpriseCloudPrint/CloudPrint".

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-cloudprinterdiscoveryendpoint"></a>**EnterpriseCloudPrint/CloudPrinterDiscoveryEndPoint**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the per-user end point for discovering cloud printers. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain the URL of an endpoint. For example, ```https://cloudprinterdiscovery.contoso.com```.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-discoverymaxprinterlimit"></a>**EnterpriseCloudPrint/DiscoveryMaxPrinterLimit**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Defines the maximum number of printers that should be queried from a discovery end point. This policy must target ./User, otherwise it fails.

Supported datatype is integer.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="enterprisecloudprint-mopriadiscoveryresourceid"></a>**EnterpriseCloudPrint/MopriaDiscoveryResourceId**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Specifies the per-user resource URL for which access is requested by the Mopria discovery client during OAuth authentication. This policy must target ./User, otherwise it fails.

Supported datatype is string.

The default value is an empty string. Otherwise, the value should contain a URL. For example, ```http://MopriaDiscoveryService/CloudPrint```.

<!--/Description-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)