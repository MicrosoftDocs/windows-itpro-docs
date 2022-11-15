---
title: Policy CSP - NetworkIsolation
description: Learn how Policy CSP - NetworkIsolation contains a list of Enterprise resource domains hosted in the cloud that need to be protected.
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

# Policy CSP - NetworkIsolation

<hr/>

<!--Policies-->
## NetworkIsolation policies

<dl>
  <dd>
    <a href="#networkisolation-enterprisecloudresources">NetworkIsolation/EnterpriseCloudResources</a>
  </dd>
  <dd>
    <a href="#networkisolation-enterpriseiprange">NetworkIsolation/EnterpriseIPRange</a>
  </dd>
  <dd>
    <a href="#networkisolation-enterpriseiprangesareauthoritative">NetworkIsolation/EnterpriseIPRangesAreAuthoritative</a>
  </dd>
  <dd>
    <a href="#networkisolation-enterpriseinternalproxyservers">NetworkIsolation/EnterpriseInternalProxyServers</a>
  </dd>
  <dd>
    <a href="#networkisolation-enterprisenetworkdomainnames">NetworkIsolation/EnterpriseNetworkDomainNames</a>
  </dd>
  <dd>
    <a href="#networkisolation-enterpriseproxyservers">NetworkIsolation/EnterpriseProxyServers</a>
  </dd>
  <dd>
    <a href="#networkisolation-enterpriseproxyserversareauthoritative">NetworkIsolation/EnterpriseProxyServersAreAuthoritative</a>
  </dd>
  <dd>
    <a href="#networkisolation-neutralresources">NetworkIsolation/NeutralResources</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="networkisolation-enterprisecloudresources"></a>**NetworkIsolation/EnterpriseCloudResources**

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
Contains a list of Enterprise resource domains hosted in the cloud that need to be protected. Connections to these resources are considered enterprise data. If a proxy is paired with a cloud resource, traffic to the cloud resource will be routed through the enterprise network via the denoted proxy server (on Port 80). A proxy server used for this purpose must also be configured using the **EnterpriseInternalProxyServers** policy. This domain list is a pipe-separated list of cloud resources. Each cloud resource can also be paired optionally with an internal proxy server by using a trailing comma followed by the proxy address. For example, **&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|&lt;*cloudresource*&gt;|&lt;*cloudresource*&gt;,&lt;*proxy*&gt;|**.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Enterprise resource domains hosted in the cloud*
-   GP name: *WF_NetIsolation_EnterpriseCloudResources*
-   GP element: *WF_NetIsolation_EnterpriseCloudResourcesBox*
-   GP path: *Network/Network Isolation*
-   GP ADMX file name: *NetworkIsolation.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="networkisolation-enterpriseiprange"></a>**NetworkIsolation/EnterpriseIPRange**

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
Sets the enterprise IP ranges that define the computers in the enterprise network. Data that comes from those computers will be considered part of the enterprise and protected. These locations will be considered a safe destination for enterprise data to be shared to. These ranges are a comma-separated list of IPv4 and IPv6 ranges.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Private network ranges for  apps*
-   GP name: *WF_NetIsolation_PrivateSubnet*
-   GP element: *WF_NetIsolation_PrivateSubnetBox*
-   GP path: *Network/Network Isolation*
-   GP ADMX file name: *NetworkIsolation.admx*

<!--/ADMXMapped-->
<!--Example-->
For example:

``` syntax
10.0.0.0-10.255.255.255,157.54.0.0-157.54.255.255,
192.168.0.0-192.168.255.255,2001:4898::-2001:4898:7fff:ffff:ffff:ffff:ffff:ffff,
2001:4898:dc05::-2001:4898:dc05:ffff:ffff:ffff:ffff:ffff,
2a01:110::-2a01:110:7fff:ffff:ffff:ffff:ffff:ffff,
fd00::-fdff:ffff:ffff:ffff:ffff:ffff:ffff:ffff

```

<!--/Example-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="networkisolation-enterpriseiprangesareauthoritative"></a>**NetworkIsolation/EnterpriseIPRangesAreAuthoritative**

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
Integer value that tells the client to accept the configured list and not to use heuristics to attempt and find other subnets.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Subnet definitions are authoritative*
-   GP name: *WF_NetIsolation_Authoritative_Subnet*
-   GP path: *Network/Network Isolation*
-   GP ADMX file name: *NetworkIsolation.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="networkisolation-enterpriseinternalproxyservers"></a>**NetworkIsolation/EnterpriseInternalProxyServers**

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
This list is the comma-separated list of internal proxy servers. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59". These proxies have been configured by the admin to connect to specific resources on the Internet. They're considered to be enterprise network locations. The proxies are only used in configuring the **EnterpriseCloudResources** policy to force traffic to the matched cloud resources through these proxies.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Intranet proxy servers for  apps*
-   GP name: *WF_NetIsolation_Intranet_Proxies*
-   GP element: *WF_NetIsolation_Intranet_ProxiesBox*
-   GP path: *Network/Network Isolation*
-   GP ADMX file name: *NetworkIsolation.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="networkisolation-enterprisenetworkdomainnames"></a>**NetworkIsolation/EnterpriseNetworkDomainNames**

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
This is a list of domains that comprise the boundaries of the enterprise. Data from one of these domains that is sent to a device will be considered enterprise data and protected. These locations will be considered a safe destination for enterprise data to be shared to. This list is a comma-separated list of domains, for example "contoso.sharepoint.com, Fabrikam.com".

> [!NOTE]
> The client requires domain name to be canonical, otherwise the setting will be rejected by the client.

Here are the steps to create canonical domain names:

1.  Transform the ASCII characters (A-Z only) to lower case. For example, Microsoft.COM -&gt; microsoft.com.
2.  Call [IdnToAscii](/windows/win32/api/winnls/nf-winnls-idntoascii) with IDN\_USE\_STD3\_ASCII\_RULES as the flags.
3.  Call [IdnToUnicode](/windows/win32/api/winnls/nf-winnls-idntounicode) with no flags set (dwFlags = 0).

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="networkisolation-enterpriseproxyservers"></a>**NetworkIsolation/EnterpriseProxyServers**

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
This list is a comma-separated list of proxy servers. Any server on this list is considered non-enterprise. For example "157.54.14.28, 157.54.11.118, 10.202.14.167, 157.53.14.163, 157.69.210.59".

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Internet proxy servers for apps*
-   GP name: *WF_NetIsolation_Domain_Proxies*
-   GP element: *WF_NetIsolation_Domain_ProxiesBox*
-   GP path: *Network/Network Isolation*
-   GP ADMX file name: *NetworkIsolation.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="networkisolation-enterpriseproxyserversareauthoritative"></a>**NetworkIsolation/EnterpriseProxyServersAreAuthoritative**

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
Integer value that tells the client to accept the configured list of proxies and not try to detect other work proxies.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Proxy definitions are authoritative*
-   GP name: *WF_NetIsolation_Authoritative_Proxies*
-   GP path: *Network/Network Isolation*
-   GP ADMX file name: *NetworkIsolation.admx*

<!--/ADMXMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="networkisolation-neutralresources"></a>**NetworkIsolation/NeutralResources**

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
List of domain names that can be used for work or personal resource.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Domains categorized as both work and personal*
-   GP name: *WF_NetIsolation_NeutralResources*
-   GP element: *WF_NetIsolation_NeutralResourcesBox*
-   GP path: *Network/Network Isolation*
-   GP ADMX file name: *NetworkIsolation.admx*

<!--/ADMXMapped-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)