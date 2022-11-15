---
title: Policy CSP - ADMX_Kerberos
description: Learn about the Policy CSP - ADMX_Kerberos.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/12/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Kerberos

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Kerberos policies

<dl>
  <dd>
    <a href="#admx-kerberos-alwayssendcompoundid">ADMX_Kerberos/AlwaysSendCompoundId</a>
  </dd>
  <dd>
    <a href="#admx-kerberos-devicepkinitenabled">ADMX_Kerberos/DevicePKInitEnabled</a>
  </dd>
  <dd>
    <a href="#admx-kerberos-hosttorealm">ADMX_Kerberos/HostToRealm</a>
  </dd>
  <dd>
    <a href="#admx-kerberos-kdcproxydisableserverrevocationcheck">ADMX_Kerberos/KdcProxyDisableServerRevocationCheck</a>
  </dd>
  <dd>
    <a href="#admx-kerberos-kdcproxyserver">ADMX_Kerberos/KdcProxyServer</a>
  </dd>
  <dd>
    <a href="#admx-kerberos-mitrealms">ADMX_Kerberos/MitRealms</a>
  </dd>
  <dd>
    <a href="#admx-kerberos-serveracceptscompound">ADMX_Kerberos/ServerAcceptsCompound</a>
  </dd>
  <dd>
    <a href="#admx-kerberos-stricttarget">ADMX_Kerberos/StrictTarget</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-alwayssendcompoundid"></a>**ADMX_Kerberos/AlwaysSendCompoundId**

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
This policy setting controls whether a device always sends a compound authentication request when the resource domain requests compound identity.

> [!NOTE]
> For a domain controller to request compound authentication, the policies "KDC support for claims, compound authentication, and Kerberos armoring" and "Request compound authentication" must be configured and enabled in the resource account domain.

If you enable this policy setting and the resource domain requests compound authentication, devices that support compound authentication always send a compound authentication request.

If you disable or don't configure this policy setting and the resource domain requests compound authentication, devices will send a non-compounded authentication request first then a compound authentication request when the service requests compound authentication.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Always send compound authentication first*
-   GP name: *AlwaysSendCompoundId*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-devicepkinitenabled"></a>**ADMX_Kerberos/DevicePKInitEnabled**

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
Support for device authentication using certificate will require connectivity to a DC in the device account domain that supports certificate authentication for computer accounts.

This policy setting allows you to set support for Kerberos to attempt authentication using the certificate for the device to the domain.

If you enable this policy setting, the device's credentials will be selected based on the following options:

- Automatic: Device will attempt to authenticate using its certificate. If the DC doesn't support computer account authentication using certificates, then authentication with password will be attempted.
- Force: Device will always authenticate using its certificate. If a DC can't be found which support computer account authentication using certificates, then authentication will fail.

If you disable this policy setting, certificates will never be used.

If you don't configure this policy setting, Automatic will be used.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Support device authentication using certificate*
-   GP name: *DevicePKInitEnabled*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-hosttorealm"></a>**ADMX_Kerberos/HostToRealm**

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
This policy setting allows you to specify which DNS host names and which DNS suffixes are mapped to a Kerberos realm.

If you enable this policy setting, you can view and change the list of DNS host names and DNS suffixes mapped to a Kerberos realm as defined by Group Policy. To view the list of mappings, enable the policy setting and then click the Show button. To add a mapping, enable the policy setting, note the syntax, and then click Show. In the Show Contents dialog box in the Value Name column, type a realm name. In the Value column, type the list of DNS host names and DNS suffixes using the appropriate syntax format. To remove a mapping from the list, click the mapping entry to be removed, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.

If you disable this policy setting, the host name-to-Kerberos realm mappings list defined by Group Policy is deleted.

If you don't configure this policy setting, the system uses the host name-to-Kerberos realm mappings that are defined in the local registry, if they exist.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define host name-to-Kerberos realm mappings*
-   GP name: *HostToRealm*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-kdcproxydisableserverrevocationcheck"></a>**ADMX_Kerberos/KdcProxyDisableServerRevocationCheck**

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
This policy setting allows you to disable revocation check for the SSL certificate of the targeted KDC proxy server.

If you enable this policy setting, revocation check for the SSL certificate of the KDC proxy server is ignored by the Kerberos client. This policy setting should only be used in troubleshooting KDC proxy connections.
> [!WARNING]
> When revocation check is ignored, the server represented by the certificate isn't guaranteed valid.

If you disable or don't configure this policy setting, the Kerberos client enforces the revocation check for the SSL certificate. The connection to the KDC proxy server isn't established if the revocation check fails.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Disable revocation checking for the SSL certificate of KDC proxy servers*
-   GP name: *KdcProxyDisableServerRevocationCheck*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-kdcproxyserver"></a>**ADMX_Kerberos/KdcProxyServer**

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
This policy setting configures the Kerberos client's mapping to KDC proxy servers for domains based on their DNS suffix names.

If you enable this policy setting, the Kerberos client will use the KDC proxy server for a domain when a domain controller can't be located based on the configured mappings. To map a KDC proxy server to a domain, enable the policy setting, click Show, and then map the KDC proxy server name(s) to the DNS name for the domain using the syntax described in the options pane. In the Show Contents dialog box in the Value Name column, type a DNS suffix name. In the Value column, type the list of proxy servers using the appropriate syntax format. To view the list of mappings, enable the policy setting and then click the Show button. To remove a mapping from the list, click the mapping entry to be removed, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.

If you disable or don't configure this policy setting, the Kerberos client doesn't have KDC proxy servers settings defined by Group Policy.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify KDC proxy servers for Kerberos clients*
-   GP name: *KdcProxyServer*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-mitrealms"></a>**ADMX_Kerberos/MitRealms**

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
This policy setting configures the Kerberos client so that it can authenticate with interoperable Kerberos V5 realms, as defined by this policy setting.

If you enable this policy setting, you can view and change the list of interoperable Kerberos V5 realms and their settings. To view the list of interoperable Kerberos V5 realms, enable the policy setting and then click the Show button. To add an interoperable Kerberos V5 realm, enable the policy setting, note the syntax, and then click Show. In the Show Contents dialog box in the Value Name column, type the interoperable Kerberos V5 realm name. In the Value column, type the realm flags and host names of the host KDCs using the appropriate syntax format. To remove an interoperable Kerberos V5 realm Value Name or Value entry from the list, click the entry, and then press the DELETE key. To edit a mapping, remove the current entry from the list and add a new one with different parameters.

If you disable this policy setting, the interoperable Kerberos V5 realm settings defined by Group Policy are deleted.

If you don't configure this policy setting, the system uses the interoperable Kerberos V5 realm settings that are defined in the local registry, if they exist.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Define interoperable Kerberos V5 realm settings*
-   GP name: *MitRealms*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-serveracceptscompound"></a>**ADMX_Kerberos/ServerAcceptsCompound**

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
This policy setting controls configuring the device's Active Directory account for compound authentication.

Support for providing compound authentication that is used for access control will require enough domain controllers in the resource account domains to support the requests. The Domain Administrator must configure the policy "Support Dynamic Access Control and Kerberos armoring" on all the domain controllers to support this policy.

If you enable this policy setting, the device's Active Directory account will be configured for compound authentication by the following options:

- Never: Compound authentication is never provided for this computer account.
- Automatic: Compound authentication is provided for this computer account when one or more applications are configured for Dynamic Access Control.
- Always: Compound authentication is always provided for this computer account.

If you disable this policy setting, Never will be used.

If you don't configure this policy setting, Automatic will be used.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Support compound authentication*
-   GP name: *ServerAcceptsCompound*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kerberos-stricttarget"></a>**ADMX_Kerberos/StrictTarget**

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
This policy setting allows you to configure this server so that Kerberos can decrypt a ticket that contains this system-generated SPN. When an application attempts to make a remote procedure call (RPC) to this server with a NULL value for the service principal name (SPN), computers running Windows 7 or later attempt to use Kerberos by generating an SPN.

If you enable this policy setting, only services running as LocalSystem or NetworkService are allowed to accept these connections. Services running as identities different from LocalSystem or NetworkService might fail to authenticate.

If you disable or don't configure this policy setting, any service is allowed to accept incoming connections by using this system-generated SPN.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Require strict target SPN match on remote procedure calls*
-   GP name: *StrictTarget*
-   GP path: *System\Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)