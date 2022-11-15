---
title: Policy CSP - RemoteManagement
description: Learn how the Policy CSP - RemoteManagement setting allows you to manage whether the Windows Remote Management (WinRM) client uses Basic authentication.
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

# Policy CSP - RemoteManagement

<hr/>

<!--Policies-->
## RemoteManagement policies

<dl>
  <dd>
    <a href="#remotemanagement-allowbasicauthentication-client">RemoteManagement/AllowBasicAuthentication_Client</a>
  </dd>
  <dd>
    <a href="#remotemanagement-allowbasicauthentication-service">RemoteManagement/AllowBasicAuthentication_Service</a>
  </dd>
  <dd>
    <a href="#remotemanagement-allowcredsspauthenticationclient">RemoteManagement/AllowCredSSPAuthenticationClient</a>
  </dd>
  <dd>
    <a href="#remotemanagement-allowcredsspauthenticationservice">RemoteManagement/AllowCredSSPAuthenticationService</a>
  </dd>
  <dd>
    <a href="#remotemanagement-allowremoteservermanagement">RemoteManagement/AllowRemoteServerManagement</a>
  </dd>
  <dd>
    <a href="#remotemanagement-allowunencryptedtraffic-client">RemoteManagement/AllowUnencryptedTraffic_Client</a>
  </dd>
  <dd>
    <a href="#remotemanagement-allowunencryptedtraffic-service">RemoteManagement/AllowUnencryptedTraffic_Service</a>
  </dd>
  <dd>
    <a href="#remotemanagement-disallowdigestauthentication">RemoteManagement/DisallowDigestAuthentication</a>
  </dd>
  <dd>
    <a href="#remotemanagement-disallownegotiateauthenticationclient">RemoteManagement/DisallowNegotiateAuthenticationClient</a>
  </dd>
  <dd>
    <a href="#remotemanagement-disallownegotiateauthenticationservice">RemoteManagement/DisallowNegotiateAuthenticationService</a>
  </dd>
  <dd>
    <a href="#remotemanagement-disallowstoringofrunascredentials">RemoteManagement/DisallowStoringOfRunAsCredentials</a>
  </dd>
  <dd>
    <a href="#remotemanagement-specifychannelbindingtokenhardeninglevel">RemoteManagement/SpecifyChannelBindingTokenHardeningLevel</a>
  </dd>
  <dd>
    <a href="#remotemanagement-trustedhosts">RemoteManagement/TrustedHosts</a>
  </dd>
  <dd>
    <a href="#remotemanagement-turnoncompatibilityhttplistener">RemoteManagement/TurnOnCompatibilityHTTPListener</a>
  </dd>
  <dd>
    <a href="#remotemanagement-turnoncompatibilityhttpslistener">RemoteManagement/TurnOnCompatibilityHTTPSListener</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-allowbasicauthentication-client"></a>**RemoteManagement/AllowBasicAuthentication_Client**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Basic authentication.

If you enable this policy setting, the WinRM client uses Basic authentication. If WinRM is configured to use HTTP transport, the user name and password are sent over the network as clear text.

If you disable or don't configure this policy setting, the WinRM client doesn't use Basic authentication.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow Basic authentication*
-   GP name: *AllowBasic_2*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Client*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-allowbasicauthentication-service"></a>**RemoteManagement/AllowBasicAuthentication_Service**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Basic authentication from a remote client.

If you enable this policy setting, the WinRM service accepts Basic authentication from a remote client.

If you disable or don't configure this policy setting, the WinRM service doesn't accept Basic authentication from a remote client.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow Basic authentication*
-   GP name: *AllowBasic_1*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-allowcredsspauthenticationclient"></a>**RemoteManagement/AllowCredSSPAuthenticationClient**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses CredSSP authentication.

If you enable this policy setting, the WinRM client uses CredSSP authentication.

If you disable or don't configure this policy setting, the WinRM client doesn't use CredSSP authentication.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow CredSSP authentication*
-   GP name: *AllowCredSSP_2*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Client*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-allowcredsspauthenticationservice"></a>**RemoteManagement/AllowCredSSPAuthenticationService**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts CredSSP authentication from a remote client.

If you enable this policy setting, the WinRM service accepts CredSSP authentication from a remote client.

If you disable or don't configure this policy setting, the WinRM service doesn't accept CredSSP authentication from a remote client.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow CredSSP authentication*
-   GP name: *AllowCredSSP_1*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-allowremoteservermanagement"></a>**RemoteManagement/AllowRemoteServerManagement**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service automatically listens on the network for requests on the HTTP transport over the default HTTP port.

If you enable this policy setting, the WinRM service automatically listens on the network for requests on the HTTP transport over the default HTTP port.

To allow WinRM service to receive requests over the network, configure the Windows Firewall policy setting with exceptions for Port 5985 (default port for HTTP).

If you disable or don't configure this policy setting, the WinRM service won't respond to requests from a remote computer, regardless of whether or not any WinRM listeners are configured.

The service listens on the addresses specified by the IPv4 and IPv6 filters. The IPv4 filter specifies one or more ranges of IPv4 addresses, and the IPv6 filter specifies one or more ranges of IPv6addresses. If specified, the service enumerates the available IP addresses on the computer and uses only addresses that fall within one of the filter ranges.

You should use an asterisk (\*) to indicate that the service listens on all available IP addresses on the computer. When \* is used, other ranges in the filter are ignored. If the filter is left blank, the service doesn't listen on any addresses.

For example, if you want the service to listen only on IPv4 addresses, leave the IPv6 filter empty.

Ranges are specified using the syntax IP1-IP2. Multiple ranges are separated using "," (comma) as the delimiter.

Example IPv4 filters:\n2.0.0.1-2.0.0.20, 24.0.0.1-24.0.0.22
Example IPv6 filters:\n3FFE:FFFF:7654:FEDA:1245:BA98:0000:0000-3FFE:FFFF:7654:FEDA:1245:BA98:3210:4562

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow remote server management through WinRM*
-   GP name: *AllowAutoConfig*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-allowunencryptedtraffic-client"></a>**RemoteManagement/AllowUnencryptedTraffic_Client**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client sends and receives unencrypted messages over the network.

If you enable this policy setting, the WinRM client sends and receives unencrypted messages over the network.

If you disable or don't configure this policy setting, the WinRM client sends or receives only encrypted messages over the network.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow unencrypted traffic*
-   GP name: *AllowUnencrypted_2*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Client*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-allowunencryptedtraffic-service"></a>**RemoteManagement/AllowUnencryptedTraffic_Service**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service sends and receives unencrypted messages over the network.

If you enable this policy setting, the WinRM client sends and receives unencrypted messages over the network.

If you disable or don't configure this policy setting, the WinRM client sends or receives only encrypted messages over the network.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow unencrypted traffic*
-   GP name: *AllowUnencrypted_1*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-disallowdigestauthentication"></a>**RemoteManagement/DisallowDigestAuthentication**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Digest authentication.

If you enable this policy setting, the WinRM client doesn't use Digest authentication.

If you disable or don't configure this policy setting, the WinRM client uses Digest authentication.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow Digest authentication*
-   GP name: *DisallowDigest*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Client*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-disallownegotiateauthenticationclient"></a>**RemoteManagement/DisallowNegotiateAuthenticationClient**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses Negotiate authentication.

If you enable this policy setting, the WinRM client doesn't use Negotiate authentication.

If you disable or don't configure this policy setting, the WinRM client uses Negotiate authentication.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow Negotiate authentication*
-   GP name: *DisallowNegotiate_2*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Client*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-disallownegotiateauthenticationservice"></a>**RemoteManagement/DisallowNegotiateAuthenticationService**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service accepts Negotiate authentication from a remote client.

If you enable this policy setting, the WinRM service doesn't accept Negotiate authentication from a remote client.

If you disable or don't configure this policy setting, the WinRM service accepts Negotiate authentication from a remote client.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow Negotiate authentication*
-   GP name: *DisallowNegotiate_1*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-disallowstoringofrunascredentials"></a>**RemoteManagement/DisallowStoringOfRunAsCredentials**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) service won't allow RunAs credentials to be stored for any plug-ins.

If you enable this policy setting, the WinRM service won't allow the RunAsUser or RunAsPassword configuration values to be set for any plug-ins. If a plug-in has already set the RunAsUser and RunAsPassword configuration values, the RunAsPassword configuration value will be erased from the credential store on this computer.

If you disable or don't configure this policy setting, the WinRM service will allow the RunAsUser and RunAsPassword configuration values to be set for plug-ins and the RunAsPassword value will be stored securely.

If you enable and then disable this policy setting, any values that were previously configured for RunAsPassword will need to be reset.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disallow WinRM from storing RunAs credentials*
-   GP name: *DisableRunAs*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-specifychannelbindingtokenhardeninglevel"></a>**RemoteManagement/SpecifyChannelBindingTokenHardeningLevel**

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
This policy setting allows you to set the hardening level of the Windows Remote Management (WinRM) service regarding channel binding tokens.

If you enable this policy setting, the WinRM service uses the level specified in HardeningLevel to determine whether or not to accept a received request, based on a supplied channel binding token.

If you disable or don't configure this policy setting, you can configure the hardening level locally on each computer.

If HardeningLevel is set to Strict, any request not containing a valid channel binding token is rejected.

If HardeningLevel is set to Relaxed (default value), any request containing an invalid channel binding token is rejected. However, a request that doesn't contain a channel binding token is accepted (though it isn't protected from credential-forwarding attacks).

If HardeningLevel is set to None, all requests are accepted (though they aren't protected from credential-forwarding attacks).

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify channel binding token hardening level*
-   GP name: *CBTHardeningLevel_1*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-trustedhosts"></a>**RemoteManagement/TrustedHosts**

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
This policy setting allows you to manage whether the Windows Remote Management (WinRM) client uses the list specified in TrustedHostsList to determine, if the destination host is a trusted entity.

If you enable this policy setting, the WinRM client uses the list specified in TrustedHostsList to determine, if the destination host is a trusted entity. The WinRM client uses this list when HTTPS or Kerberos is used to authenticate the identity of the host.

If you disable or don't configure this policy setting and the WinRM client needs to use the list of trusted hosts, you must configure the list of trusted hosts locally on each computer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Trusted Hosts*
-   GP name: *TrustedHosts*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Client*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-turnoncompatibilityhttplistener"></a>**RemoteManagement/TurnOnCompatibilityHTTPListener**

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
This policy setting turns on or turns off an HTTP listener created for backward compatibility purposes in the Windows Remote Management (WinRM) service.

If you enable this policy setting, the HTTP listener always appears.

If you disable or don't configure this policy setting, the HTTP listener never appears.

When certain port 80 listeners are migrated to WinRM 2.0, the listener port number changes to 5985.

A listener might be automatically created on port 80 to ensure backward compatibility.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn On Compatibility HTTP Listener*
-   GP name: *HttpCompatibilityListener*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remotemanagement-turnoncompatibilityhttpslistener"></a>**RemoteManagement/TurnOnCompatibilityHTTPSListener**

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
This policy setting turns on or turns off an HTTPS listener created for backward compatibility purposes in the Windows Remote Management (WinRM) service.

If you enable this policy setting, the HTTPS listener always appears.

If you disable or don't configure this policy setting, the HTTPS listener never appears.

When certain port 443 listeners are migrated to WinRM 2.0, the listener port number changes to 5986.

A listener might be automatically created on port 443 to ensure backward compatibility.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn On Compatibility HTTPS Listener*
-   GP name: *HttpsCompatibilityListener*
-   GP path: *Windows Components/Windows Remote Management (WinRM)/WinRM Service*
-   GP ADMX file name: *WindowsRemoteManagement.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)