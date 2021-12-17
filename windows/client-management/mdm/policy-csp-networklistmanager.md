---
title: Policy CSP - NetworkListManager
description: Policy CSP - NetworkListManager is a setting creates a new MDM policy. This setting allows admins to configure a list of URIs of HTTPS endpoints that are considered secure.
ms.author: v-nsatapathy
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.localizationpriority: medium
ms.date: 12/16/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - NetworkListManager


<hr/>

<!--Policies-->
## NetworkListManager policies  

<dl>
  <dd>
    <a href="#networklistmanager-allowedtlsauthenticationendpoints">NetworkListManager/AllowedTlsAuthenticationEndpoints</a>
  </dd>
  <dd>
    <a href="#networklistmanager-configuredtlsauthenticationnetworkname">NetworkListManager/ConfiguredTLSAuthenticationNetworkName</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="networklistmanager-allowedtlsauthenticationendpoints"></a>**NetworkListManager/AllowedTlsAuthenticationEndpoints**  

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting provides the list of URLs (separated by Unicode character 0xF000) to endpoints accessible only within an enterprise's network. If any of the URLs can be resolved over HTTPS, the network would be considered authenticated.  

When entering a list of TLS endpoints in Microsoft Endpoint Manager, you must follow this format, even in the UI:  

`<![CDATA[https://nls.corp.contoso.com&#xF000;https://nls.corp.fabricam.com]]>`

- The HTTPS endpoint must not have any more authentication checks, such as login or multi-factor authentication.

- The HTTPS endpoint must be an internal address not accessible from outside the corporate network.

- The client must trust the server certificate. So the CA certificate that the HTTPS server certificate chains to must be present in the client machine's root certificate store.

- A certificate should not be a public certificate.


<hr/>

<!--Policy-->
<a href="" id="networklistmanager-configuredtlsauthenticationnetworkname"></a>**NetworkListManager/ConfiguredTLSAuthenticationNetworkName**  

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting provides the string that is to be used to name a network. That network is authenticated against one of the endpoints that are listed in NetworkListManager/AllowedTlsAuthenticationEndpoints policy. If this setting is used for Trusted Network Detection in an _Always On_ VPN profile, it must be the DNS suffix that is configured in the TrustedNetworkDetection attribute.

<hr/>

<!--/Policies-->

