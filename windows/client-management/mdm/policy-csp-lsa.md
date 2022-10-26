---
title: Policy CSP - LocalSecurityAuthority
description: Use the LocalSecurityAuthority CSP to configure policies for the Windows Local Security Authority Subsystem Service (LSASS).
ms.author: vinpa
author: vinaypamnani-msft
ms.reviewer: 
manager: aaroncz
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
ms.localizationpriority: medium
ms.date: 08/26/2022
---

# Policy CSP - LocalSecurity Authority


<hr/>

<!--Policies-->
## LocalSecurityAuthority policies

<dl>
  <dd>
    <a href="#localsecurityauthority-allowcustomsspsaps">LocalSecurityAuthority/AllowCustomSSPsAPs</a>
  </dd>
  <dd>
    <a href="#localsecurityauthority-configurelsaprotectedprocess">LocalSecurityAuthority/ConfigureLsaProtectedProcess</a>
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
<a href="" id="localsecurityauthority-allowcustomsspsaps"></a>**LocalSecurityAuthority/AllowCustomSSPsAPs**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting defines whether the Local Security Authority Subsystem Service (LSASS) will allow loading of custom security support providers (SSPs) and authentication providers (APs).

If you enable this policy setting or don't configure it, LSASS will allow loading of custom SSPs and APs.

If you disable this policy setting, LSASS will block custom SSPs and APs from loading.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow Custom SSPs and APs to be loaded into LSASS*
-   GP name: *AllowCustomSSPsAPs*
-   GP path: *System/Local Security Authority*
-   GP ADMX file name: *LocalSecurityAuthority.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="localsecurityauthority-configurelsaprotectedprocess"></a>**Kerberos/ConfigureLsaProtectedProcess**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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
This policy setting configures the Local Security Authority Subsystem Service (LSASS) to run as a protected process.

If you disable (0) or don't configure this policy setting, LSASS won't run as a protected process.

If you enable this policy with UEFI lock (1), LSASS will run as a protected process and this setting will be stored in a UEFI variable.

If you enable this policy without UEFI lock (2), LSASS will run as a protected process and this setting won't be stored in a UEFI variable.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Configure LSASS to run as a protected process*
-   GP name: *ConfigureLsaProtectedProcess*
-   GP path: *System/Local Security Authority*
-   GP ADMX file name: *LocalSecurityAuthority.admx*

<!--/ADMXBacked-->
