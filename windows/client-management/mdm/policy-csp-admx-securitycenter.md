---
title: Policy CSP - ADMX_Securitycenter
description: Learn about Policy CSP - ADMX_Securitycenter.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/18/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_Securitycenter
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_Securitycenter policies

<dl>
  <dd>
    <a href="#admx-securitycenter-securitycenter-securitycenterindomain">ADMX_Securitycenter/SecurityCenter_SecurityCenterInDomain</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-securitycenter-securitycenter-securitycenterindomain"></a>**ADMX_Securitycenter/SecurityCenter_SecurityCenterInDomain**

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
This policy setting specifies whether Security Center is turned on or off for computers that are joined to an Active Directory domain. When Security Center is turned on, it monitors essential security settings and notifies the user when the computer might be at risk.

The Security Center Control Panel category view also contains a status section, where the user can get recommendations to help increase the computer's security. When Security Center isn't enabled on the domain, the notifications and the Security Center status section aren't displayed.

Security Center can only be turned off for computers that are joined to a Windows domain. When a computer isn't joined to a Windows domain, the policy setting will have no effect.

If you don't configure this policy setting, the Security Center is turned off for domain members.

If you enable this policy setting, Security Center is turned on for all users.

If you disable this policy setting, Security Center is turned off for domain members.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on Security Center (Domain PCs only)*
-   GP name: *SecurityCenter_SecurityCenterInDomain*
-   GP path: *Windows Components\Security Center*
-   GP ADMX file name: *Securitycenter.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
