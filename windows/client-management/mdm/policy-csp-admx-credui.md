---
title: Policy CSP - ADMX_CredUI
description: Learn about  the Policy CSP - ADMX_CredUI.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/09/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_CredUI

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_CredUI policies

<dl>
  <dd>
    <a href="#admx-credui-enablesecurecredentialprompting">ADMX_CredUI/EnableSecureCredentialPrompting</a>
  </dd>
  <dd>
    <a href="#admx-credui-nolocalpasswordresetquestions">ADMX_CredUI/NoLocalPasswordResetQuestions</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-credui-enablesecurecredentialprompting"></a>**ADMX_CredUI/EnableSecureCredentialPrompting**

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
This policy setting requires the user to enter Microsoft Windows credentials using a trusted path, to prevent a Trojan horse or other types of malicious code from stealing the user’s Windows credentials.

> [!NOTE]
> This policy affects non-logon authentication tasks only. As a security best practice, this policy should be enabled.

If you enable this policy setting, users will be required to enter Windows credentials on the Secure Desktop through the trusted path mechanism.

If you disable or don't configure this policy setting, users will enter Windows credentials within the user’s desktop session, potentially allowing malicious code access to the user’s Windows credentials.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Require trusted path for credential entry*
-   GP name: *EnableSecureCredentialPrompting*
-   GP path: *Windows Components\Credential User Interface*
-   GP ADMX file name: *CredUI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-credui-nolocalpasswordresetquestions"></a>**ADMX_CredUI/NoLocalPasswordResetQuestions**

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
Available in the latest Windows 10 Insider Preview Build. If you turn on this policy setting, local users won’t be able to set up and use security questions to reset their passwords.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent the use of security questions for local accounts*
-   GP name: *NoLocalPasswordResetQuestions*
-   GP path: *Windows Components\Credential User Interface*
-   GP ADMX file name: *CredUI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<
<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)