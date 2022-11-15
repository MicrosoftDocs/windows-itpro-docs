---
title: Policy CSP - Kerberos
description: Define the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).
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

# Policy CSP - Kerberos

<hr/>

<!--Policies-->
## Kerberos policies

<dl>
  <dd>
    <a href="#kerberos-allowforestsearchorder">Kerberos/AllowForestSearchOrder</a>
  </dd>
  <dd>
    <a href="#kerberos-cloudkerberosticketretrievalenabled">Kerberos/CloudKerberosTicketRetrievalEnabled</a>
  </dd>
  <dd>
    <a href="#kerberos-kerberosclientsupportsclaimscompoundarmor">Kerberos/KerberosClientSupportsClaimsCompoundArmor</a>
  </dd>
  <dd>
    <a href="#kerberos-pkinithashalgorithmconfiguration">Kerberos/PKInitHashAlgorithmConfiguration</a>
  </dd>
  <dd>
    <a href="#kerberos-pkinithashalgorithmsha1">Kerberos/PKInitHashAlgorithmSHA1</a>
  </dd>
  <dd>
    <a href="#kerberos-pkinithashalgorithmsha256">Kerberos/PKInitHashAlgorithmSHA256</a>
  </dd>
  <dd>
    <a href="#kerberos-pkinithashalgorithmsha384">Kerberos/PKInitHashAlgorithmSHA384</a>
  </dd>
  <dd>
    <a href="#kerberos-pkinithashalgorithmsha512">Kerberos/PKInitHashAlgorithmSHA512</a>
  </dd>
  <dd>
    <a href="#kerberos-requirekerberosarmoring">Kerberos/RequireKerberosArmoring</a>
  </dd>
  <dd>
    <a href="#kerberos-requirestrictkdcvalidation">Kerberos/RequireStrictKDCValidation</a>
  </dd>
  <dd>
    <a href="#kerberos-setmaximumcontexttokensize">Kerberos/SetMaximumContextTokenSize</a>
  </dd>
  <dd>
    <a href="#kerberos-upnnamehints">Kerberos/UPNNameHints</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="kerberos-allowforestsearchorder"></a>**Kerberos/AllowForestSearchOrder**

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
This policy setting defines the list of trusting forests that the Kerberos client searches when attempting to resolve two-part service principal names (SPNs).

If you enable this policy setting, the Kerberos client searches the forests in this list, if it's unable to resolve a two-part SPN. If a match is found, the Kerberos client requests a referral ticket to the appropriate domain.

If you disable or don't configure this policy setting, the Kerberos client doesn't search the listed forests to resolve the SPN. If the Kerberos client is unable to resolve the SPN because the name isn't found, NTLM authentication might be used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Use forest search order*
-   GP name: *ForestSearch*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-cloudkerberosticketretrievalenabled"></a>**Kerberos/CloudKerberosTicketRetrievalEnabled**

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
This policy allows retrieving the cloud Kerberos ticket during the sign in.

- If you disable (0) or don't configure this policy setting, the cloud Kerberos ticket isn't retrieved during the sign in.

- If you enable (1) this policy, the cloud Kerberos ticket is retrieved during the sign in.
<!--/Description-->

<!--SupportedValues-->
Valid values:
0 (default) - Disabled
1 - Enabled

<!--/SupportedValues-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow retrieving the cloud Kerberos ticket during the logon*
-   GP name: *CloudKerberosTicketRetrievalEnabled*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-kerberosclientsupportsclaimscompoundarmor"></a>**Kerberos/KerberosClientSupportsClaimsCompoundArmor**

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
This policy setting controls whether a device will request claims and compound authentication for Dynamic Access Control and Kerberos armoring, using Kerberos authentication with domains that support these features.
If you enable this policy setting, the client computers will request claims, provide information required to create compounded authentication and armor Kerberos messages in domains that support claims and compound authentication for Dynamic Access Control and Kerberos armoring.

If you disable or don't configure this policy setting, the client devices won't request claims, provide information required to create compounded authentication and armor Kerberos messages. Services hosted on the device won't be able to retrieve claims for clients using Kerberos protocol transition.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Kerberos client support for claims, compound authentication and Kerberos armoring*
-   GP name: *EnableCbacAndArmor*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-pkinithashalgorithmconfiguration"></a>**Kerberos/PKInitHashAlgorithmConfiguration**

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

This policy setting controls hash or checksum algorithms used by the Kerberos client when performing certificate authentication.

If you enable this policy, you'll be able to configure one of four states for each hash algorithm (SHA1, SHA256, SHA384, and SHA512) using their respective policies.

If you disable or don't configure this policy, each algorithm will assume the **Default** state.

* 0 - **Disabled**
* 1 - **Enabled**

More information about the hash and checksum algorithms supported by the Windows Kerberos client and their default states can be found https://go.microsoft.com/fwlink/?linkid=2169037.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Hash algorithms for certificate logon*
-   GP name: *PKInitHashAlgorithmConfiguration*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-pkinithashalgorithmsha1"></a>**Kerberos/PKInitHashAlgorithmSHA1**

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

This policy setting controls the configuration of the SHA1 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

* 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
* 1 - **Default**: This state sets the algorithm to the recommended state.
* 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
* 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA1 algorithm will assume the **Default** state.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Hash algorithms for certificate logon*
-   GP name: *PKInitHashAlgorithmConfiguration*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-pkinithashalgorithmsha256"></a>**Kerberos/PKInitHashAlgorithmSHA256**

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

This policy setting controls the configuration of the SHA256 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

* 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
* 1 - **Default**: This state sets the algorithm to the recommended state.
* 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
* 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA256 algorithm will assume the **Default** state.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Hash algorithms for certificate logon*
-   GP name: *PKInitHashAlgorithmConfiguration*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-pkinithashalgorithmsha384"></a>**Kerberos/PKInitHashAlgorithmSHA384**

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

This policy setting controls the configuration of the SHA384 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

* 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
* 1 - **Default**: This state sets the algorithm to the recommended state.
* 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
* 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA384 algorithm will assume the **Default** state.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Hash algorithms for certificate logon*
-   GP name: *PKInitHashAlgorithmConfiguration*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-pkinithashalgorithmsha512"></a>**Kerberos/PKInitHashAlgorithmSHA512**

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

This policy setting controls the configuration of the SHA512 algorithm used by the Kerberos client when performing certificate authentication. This policy is only enforced if Kerberos/PKInitHashAlgorithmConfiguration is enabled. You can configure one of four states for this algorithm:

* 0 - **Not Supported**: This state disables usage of the algorithm. This state is intended for algorithms that are deemed to be insecure.
* 1 - **Default**: This state sets the algorithm to the recommended state.
* 2 - **Audited**: This state enables usage of the algorithm and reports an event (ID 206) every time it's used. This state is intended to verify that the algorithm isn't being used and can be safely disabled.
* 3 - **Supported**: This state enables usage of the algorithm. Enabling algorithms that have been disabled by default may reduce your security.

If you don't configure this policy, the SHA512 algorithm will assume the **Default** state.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure Hash algorithms for certificate logon*
-   GP name: *PKInitHashAlgorithmConfiguration*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="kerberos-requirekerberosarmoring"></a>**Kerberos/RequireKerberosArmoring**

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
This policy setting controls whether a computer requires that Kerberos message exchanges being armored when communicating with a domain controller.

> [!WARNING]
> When a domain doesn't support Kerberos armoring by enabling "Support Dynamic Access Control and Kerberos armoring", then all authentication for all its users will fail from computers with this policy setting enabled.

If you enable this policy setting, the client computers in the domain enforce the use of Kerberos armoring in only authentication service (AS) and ticket-granting service (TGS) message exchanges with the domain controllers.

> [!NOTE]
> The Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must also be enabled to support Kerberos armoring.

If you disable or don't configure this policy setting, the client computers in the domain enforce the use of Kerberos armoring when possible as supported by the target domain.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Fail authentication requests when Kerberos armoring is not available*
-   GP name: *ClientRequireFast*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-requirestrictkdcvalidation"></a>**Kerberos/RequireStrictKDCValidation**

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
This policy setting controls the Kerberos client's behavior in validating the KDC certificate for smart card and system certificate logon.

If you enable this policy setting, the Kerberos client requires that the KDC's X.509 certificate contains the KDC key purpose object identifier in the Extended Key Usage (EKU) extensions, and that the KDC's X.509 certificate contains a dNSName subjectAltName (SAN) extension that matches the DNS name of the domain. If the computer is joined to a domain, the Kerberos client requires that the KDC's X.509 certificate must be signed by a Certificate Authority (CA) in the NTAuth store. If the computer isn't joined to a domain, the Kerberos client allows the root CA certificate on the smart card to be used in the path validation of the KDC's X.509 certificate.

If you disable or don't configure this policy setting, the Kerberos client requires only the KDC certificate that contains the Server Authentication purpose object identifier in the EKU extensions that can be issued to any server.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Require strict KDC validation*
-   GP name: *ValidateKDC*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-setmaximumcontexttokensize"></a>**Kerberos/SetMaximumContextTokenSize**

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
This policy setting allows you to set the value returned to applications that request the maximum size of the SSPI context token buffer size.

The size of the context token buffer determines the maximum size of SSPI context tokens an application expects and allocates. Depending upon authentication request processing and group memberships, the buffer might be smaller than the actual size of the SSPI context token.

If you enable this policy setting, the Kerberos client or server uses the configured value, or the locally allowed maximum value, whichever is smaller.

If you disable or don't configure this policy setting, the Kerberos client or server uses the locally configured value or the default value.

> [!NOTE]
> This policy setting configures the existing MaxTokenSize registry value in HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa\Kerberos\Parameters, which was added in Windows XP and Windows Server 2003, with a default value of 12,000 bytes. Beginning with Windows 8, the default is 48,000 bytes. Due to HTTP's base64 encoding of authentication context tokens, it's not advised to set this value more than 48,000 bytes.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set maximum Kerberos SSPI context token buffer size*
-   GP name: *MaxTokenSize*
-   GP path: *System/Kerberos*
-   GP ADMX file name: *Kerberos.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="kerberos-upnnamehints"></a>**Kerberos/UPNNameHints**

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
Adds a list of domains that an Azure Active Directory-joined device can attempt to contact when it can't resolve a UPN to a principal.

Devices joined to Azure Active Directory in a hybrid environment need to interact with Active Directory Domain Controllers, but they lack the built-in ability to find a Domain Controller that a domain-joined device has. This limitation can cause failures, when such a device needs to resolve an Azure Active Directory UPN into an Active Directory Principal. You can use this policy to avoid those failures.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
