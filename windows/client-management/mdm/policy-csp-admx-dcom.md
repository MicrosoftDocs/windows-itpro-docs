---
title: Policy CSP - ADMX_DCOM
description: Learn about the Policy CSP - ADMX_DCOM.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_DCOM

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_DCOM policies

<dl>
  <dd>
    <a href="#admx-dcom-dcomactivationsecuritycheckallowlocallist">ADMX_DCOM/DCOMActivationSecurityCheckAllowLocalList</a>
  </dd>
  <dd>
    <a href="#admx-dcom-dcomactivationsecuritycheckexemptionlist">ADMX_DCOM/DCOMActivationSecurityCheckExemptionList</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-dcom-dcomactivationsecuritycheckallowlocallist"></a>**ADMX_DCOM/DCOMActivationSecurityCheckAllowLocalList**

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
This policy setting allows you to specify that local computer administrators can supplement the "Define Activation Security Check exemptions" list.

If you enable this policy setting, and DCOM doesn't find an explicit entry for a DCOM server application ID (appid) in the "Define Activation Security Check exemptions" policy (if enabled). Then DCOM will look for an entry in the locally configured list.

If you disable this policy setting, DCOM won't look in the locally configured DCOM activation security check exemption list.

If you don't configure this policy setting, DCOM will only look in the locally configured exemption list if the "Define Activation Security Check exemptions" policy isn't configured.

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow local activation security check exemptions*
-   GP name: *DCOMActivationSecurityCheckAllowLocalList*
-   GP path: *Windows Components\AppCompat!AllowLocalActivationSecurityCheckExemptionList*
-   GP ADMX file name: *DCOM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-dcom-dcomactivationsecuritycheckexemptionlist"></a>**ADMX_DCOM/DCOMActivationSecurityCheckExemptionList**

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
This policy setting allows you to view and change a list of DCOM server application IDs (app IDs), which are exempted from the DCOM Activation security check.
DCOM uses two such lists, one configured via Group Policy through this policy setting, and the other via the actions of local computer administrators.
DCOM ignores the second list when this policy setting is configured, unless the "Allow local activation security check exemptions" policy is enabled.
DCOM server application IDs added to this policy must be listed in curly brace format.

For example, `{b5dcb061-cefb-42e0-a1be-e6a6438133fe}`.
If you enter a non-existent or improperly formatted application, ID DCOM will add it to the list without checking for errors.

If you add an application ID to this list and set its value to one, DCOM won't enforce the Activation security check for that DCOM server.
If you add an application ID to this list and set its value to 0, DCOM will always enforce the Activation security check for that DCOM server regardless of local
settings.

If you enable this policy setting, you can view and change the list of DCOM activation security check exemptions defined by Group Policy settings.

If you disable this policy setting, the application ID exemption list defined by Group Policy is deleted, and the one defined by local computer administrators is used.

If you don't configure this policy setting, the application ID exemption list defined by local computer administrators is used.

>[!Note]
> The DCOM Activation security check is done after a DCOM server process is started, but before an object activation request is dispatched to the server process.

This access check is done against the DCOM server's custom launch permission security descriptor if it exists, or otherwise against the configured defaults. If the DCOM server's custom launch permission contains explicit DENY entries, then the object activations that would have previously succeeded for such specified users, once the DCOM server process was up and running, might now fail instead.

The proper action in this situation is to reconfigure the DCOM server's custom launch permission settings for correct security settings, but this policy setting may be used in the short term as an application compatibility deployment aid.
DCOM servers added to this exemption list are only exempted if their custom launch permissions don't contain specific LocalLaunch, RemoteLaunch, LocalActivate, or RemoteActivate grant or deny entries for any users or groups.

> [!NOTE]
> Exemptions for DCOM Server Application IDs added to this list will apply to both 32-bit and 64-bit versions of the server if present.
>
> [!NOTE]
> This policy setting applies to all sites in Trusted zones.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow local activation security check exemptions*
-   GP name: *DCOMActivationSecurityCheckExemptionList*
-   GP path: *Windows Components\AppCompat!ListBox_Support_ActivationSecurityCheckExemptionList*
-   GP ADMX file name: *DCOM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)