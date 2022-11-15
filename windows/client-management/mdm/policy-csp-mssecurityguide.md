---
title: Policy CSP - MSSecurityGuide
description: Learn how Policy CSP - MSSecurityGuide, an ADMX-backed policy, requires a special SyncML format to enable or disable.
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

# Policy CSP - MSSecurityGuide


<hr/>

<!--Policies-->
## MSSecurityGuide policies

<dl>
  <dd>
    <a href="#mssecurityguide-applyuacrestrictionstolocalaccountsonnetworklogon">MSSecurityGuide/ApplyUACRestrictionsToLocalAccountsOnNetworkLogon</a>
  </dd>
  <dd>
    <a href="#mssecurityguide-configuresmbv1clientdriver">MSSecurityGuide/ConfigureSMBV1ClientDriver</a>
  </dd>
  <dd>
    <a href="#mssecurityguide-configuresmbv1server">MSSecurityGuide/ConfigureSMBV1Server</a>
  </dd>
  <dd>
    <a href="#mssecurityguide-enablestructuredexceptionhandlingoverwriteprotection">MSSecurityGuide/EnableStructuredExceptionHandlingOverwriteProtection</a>
  </dd>
  <dd>
    <a href="#mssecurityguide-turnonwindowsdefenderprotectionagainstpotentiallyunwantedapplications">MSSecurityGuide/TurnOnWindowsDefenderProtectionAgainstPotentiallyUnwantedApplications</a>
  </dd>
  <dd>
    <a href="#mssecurityguide-wdigestauthentication">MSSecurityGuide/WDigestAuthentication</a>
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
<a href="" id="mssecurityguide-applyuacrestrictionstolocalaccountsonnetworklogon"></a>**MSSecurityGuide/ApplyUACRestrictionsToLocalAccountsOnNetworkLogon**

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

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP name: *Pol_SecGuide_0201_LATFP*
-   GP ADMX file name: *SecGuide.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="mssecurityguide-configuresmbv1clientdriver"></a>**MSSecurityGuide/ConfigureSMBV1ClientDriver**

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

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP name: *Pol_SecGuide_0002_SMBv1_ClientDriver*
-   GP ADMX file name: *SecGuide.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="mssecurityguide-configuresmbv1server"></a>**MSSecurityGuide/ConfigureSMBV1Server**

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

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP name: *Pol_SecGuide_0001_SMBv1_Server*
-   GP ADMX file name: *SecGuide.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="mssecurityguide-enablestructuredexceptionhandlingoverwriteprotection"></a>**MSSecurityGuide/EnableStructuredExceptionHandlingOverwriteProtection**

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

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP name: *Pol_SecGuide_0102_SEHOP*
-   GP ADMX file name: *SecGuide.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="mssecurityguide-turnonwindowsdefenderprotectionagainstpotentiallyunwantedapplications"></a>**MSSecurityGuide/TurnOnWindowsDefenderProtectionAgainstPotentiallyUnwantedApplications**

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

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP name: *Pol_SecGuide_0101_WDPUA*
-   GP ADMX file name: *SecGuide.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="mssecurityguide-wdigestauthentication"></a>**MSSecurityGuide/WDigestAuthentication**

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

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP name: *Pol_SecGuide_0202_WDigestAuthn*
-   GP ADMX file name: *SecGuide.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)