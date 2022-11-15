---
title: Policy CSP - ADMX_kdc
description: Learn about the Policy CSP - ADMX_kdc.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/13/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_kdc

>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_kdc policies

<dl>
  <dd>
    <a href="#admx-kdc-cbacandarmor">ADMX_kdc/CbacAndArmor</a>
  </dd>
  <dd>
    <a href="#admx-kdc-forestsearch">ADMX_kdc/ForestSearch</a>
  </dd>
  <dd>
    <a href="#admx-kdc-pkinitfreshness">ADMX_kdc/PKINITFreshness</a>
  </dd>
  <dd>
    <a href="#admx-kdc-requestcompoundid">ADMX_kdc/RequestCompoundId</a>
  </dd>
  <dd>
    <a href="#admx-kdc-ticketsizethreshold">ADMX_kdc/TicketSizeThreshold</a>
  </dd>
  <dd>
    <a href="#admx-kdc-emitlili">ADMX_kdc/emitlili</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-kdc-cbacandarmor"></a>**ADMX_kdc/CbacAndArmor**

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
This policy setting allows you to configure a domain controller to support claims and compound authentication for Dynamic Access Control and Kerberos armoring using Kerberos authentication.

If you enable this policy setting, client computers that support claims and compound authentication for Dynamic Access Control and are Kerberos armor-aware will use this feature for Kerberos authentication messages. This policy should be applied to all domain controllers to ensure consistent application of this policy in the domain.

If you disable or don't configure this policy setting, the domain controller doesn't support claims, compound authentication or armoring.

If you configure the "Not supported" option, the domain controller doesn't support claims, compound authentication or armoring, which is the default behavior for domain controllers running Windows Server 2008 R2 or earlier operating systems.

> [!NOTE]
> For the following options of this KDC policy to be effective, the Kerberos Group Policy "Kerberos client support for claims, compound authentication and Kerberos armoring" must be enabled on supported systems. If the Kerberos policy setting isn't enabled, Kerberos authentication messages won't use these features.

If you configure "Supported", the domain controller supports claims, compound authentication and Kerberos armoring. The domain controller advertises to Kerberos client computers that the domain is capable of claims and compound authentication for Dynamic Access Control and Kerberos armoring.

**Domain functional level requirements**

For the options "Always provide claims" and "Fail unarmored authentication requests", when the domain functional level is set to Windows Server 2008 R2 or earlier, then domain controllers behave as if the "Supported" option is selected.

When the domain functional level is set to Windows Server 2012 then the domain controller advertises to Kerberos client computers that the domain is capable of claims and compound authentication for Dynamic Access Control and Kerberos armoring, and:

- If you set the "Always provide claims" option, always returns claims for accounts and supports the RFC behavior for advertising the flexible authentication secure tunneling (FAST).
- If you set the "Fail unarmored authentication requests" option, rejects unarmored Kerberos messages.

> [!WARNING]
> When "Fail unarmored authentication requests" is set, then client computers which don't support Kerberos armoring will fail to authenticate to the domain controller.

To ensure this feature is effective, deploy enough domain controllers that support claims and compound authentication for Dynamic Access Control and are Kerberos armor-aware to handle the authentication requests. Insufficient number of domain controllers that support this policy result in authentication failures whenever Dynamic Access Control or Kerberos armoring is required (that is, the "Supported" option is enabled).

Impact on domain controller performance when this policy setting is enabled:

- Secure Kerberos domain capability discovery is required, resulting in more message exchanges.
- Claims and compound authentication for Dynamic Access Control increase the size and complexity of the data in the message, which results in more processing time and greater Kerberos service ticket size.
- Kerberos armoring fully encrypts Kerberos messages and signs Kerberos errors, which result in increased processing time, but doesn't change the service ticket size.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *KDC support for claims, compound authentication and Kerberos armoring*
-   GP name: *CbacAndArmor*
-   GP path: *System/KDC*
-   GP ADMX file name: *kdc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kdc-forestsearch"></a>**ADMX_kdc/ForestSearch**

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
This policy setting defines the list of trusting forests that the Key Distribution Center (KDC) searches when attempting to resolve two-part service principal names (SPNs).

If you enable this policy setting, the KDC will search the forests in this list if it's unable to resolve a two-part SPN in the local forest. The forest search is performed by using a global catalog or name suffix hints. If a match is found, the KDC will return a referral ticket to the client for the appropriate domain.

If you disable or don't configure this policy setting, the KDC won't search the listed forests to resolve the SPN. If the KDC is unable to resolve the SPN because the name isn't found, NTLM authentication might be used.

To ensure consistent behavior, this policy setting must be supported and set identically on all domain controllers in the domain.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Use forest search order*
-   GP name: *ForestSearch*
-   GP path: *System/KDC*
-   GP ADMX file name: *kdc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kdc-pkinitfreshness"></a>**ADMX_kdc/PKINITFreshness**

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
Support for PKInit Freshness Extension requires Windows Server 2016 domain functional level (DFL). If the domain controller’s domain isn't at Windows Server 2016 DFL or higher, this policy won't be applied.

This policy setting allows you to configure a domain controller (DC) to support the PKInit Freshness Extension.

If you enable this policy setting, the following options are supported:

Supported: PKInit Freshness Extension is supported on request. Kerberos clients successfully authenticating with the PKInit Freshness Extension will get the fresh public key identity SID.

Required: PKInit Freshness Extension is required for successful authentication. Kerberos clients that don't support the PKInit Freshness Extension will always fail when using public key credentials.

If you disable or not configure this policy setting, then the DC will never offer the PKInit Freshness Extension and  accept valid authentication requests without checking for freshness. Users will never receive the fresh public key identity SID.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *KDC support for PKInit Freshness Extension*
-   GP name: *PKINITFreshness*
-   GP path: *System/KDC*
-   GP ADMX file name: *kdc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kdc-requestcompoundid"></a>**ADMX_kdc/RequestCompoundId**

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
This policy setting allows you to configure a domain controller to request compound authentication.

> [!NOTE]
> For a domain controller to request compound authentication, the policy "KDC support for claims, compound authentication, and Kerberos armoring" must be configured and enabled.

If you enable this policy setting, domain controllers will request compound authentication. The returned service ticket will contain compound authentication only when the account is explicitly configured. This policy should be applied to all domain controllers to ensure consistent application of this policy in the domain.

If you disable or don't configure this policy setting, domain controllers will return service tickets that contain compound authentication anytime the client sends a compound authentication request regardless of the account configuration.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Request compound authentication*
-   GP name: *RequestCompoundId*
-   GP path: *System/KDC*
-   GP ADMX file name: *kdc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kdc-ticketsizethreshold"></a>**ADMX_kdc/TicketSizeThreshold**

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
This policy setting allows you to configure at what size Kerberos tickets will trigger the warning event issued during Kerberos authentication. The ticket size warnings are logged in the System log.

If you enable this policy setting, you can set the threshold limit for Kerberos ticket, which triggers the warning events. If set too high, then authentication failures might be occurring even though warning events aren't being logged. If set too low, then there will be too many ticket warnings in the log to be useful for analysis. This value should be set to the same value as the Kerberos policy "Set maximum Kerberos SSPI context token buffer size" or the smallest MaxTokenSize used in your environment if you aren't configuring using Group Policy.

If you disable or don't configure this policy setting, the threshold value defaults to 12,000 bytes, which is the default Kerberos MaxTokenSize for Windows 7, Windows Server 2008 R2 and prior versions.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Warning for large Kerberos tickets*
-   GP name: *TicketSizeThreshold*
-   GP path: *System/KDC*
-   GP ADMX file name: *kdc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-kdc-emitlili"></a>**ADMX_kdc/emitlili**

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
This policy setting controls whether the domain controller provides information about previous logons to client computers.

If you enable this policy setting, the domain controller provides the information message about previous logons.

For Windows Logon to use this feature, the "Display information about previous logons during user logon" policy setting located in the Windows Logon Options node under Windows Components also needs to be enabled.

If you disable or don't configure this policy setting, the domain controller doesn't provide information about previous logons unless the "Display information about previous logons during user logon" policy setting is enabled.

> [!NOTE]
> Information about previous logons is provided only if the domain functional level is Windows Server 2008. In domains with a domain functional level of Windows Server 2003, Windows 2000 native, or Windows 2000 mixed, domain controllers cannot provide information about previous logons, and enabling this policy setting doesn't affect anything.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Provide information about previous logons to client computers*
-   GP name: *emitlili*
-   GP path: *System/KDC*
-   GP ADMX file name: *kdc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)