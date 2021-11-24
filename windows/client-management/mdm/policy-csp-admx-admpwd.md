---
title: Policy CSP - ADMX_AdmPwd
description: Policy CSP - ADMX_AdmPwd
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/09/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_AdmPwd

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_AdmPwd policies  

<dl>
  <dd>
    <a href="#admx-admpwd-pol_admpwd_dontallowpwdexpirationbehindpolicy">ADMX_AdmPwd/POL_AdmPwd_DontAllowPwdExpirationBehindPolicy</a>
  </dd>
  <dd>
    <a href="#admx-admpwd-pol_admpwd_enabled">ADMX_AdmPwd/POL_AdmPwd_Enabled</a>
  </dd>
  <dd>
    <a href="#admx-admpwd-pol_admpwd_adminname">ADMX_AdmPwd/POL_AdmPwd_AdminName</a>
  </dd>
  <dd>
    <a href="#admx-admpwd-pol_admpwd">ADMX_AdmPwd/POL_AdmPwd</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-admpwd-pol_admpwd_dontallowpwdexpirationbehindpolicy"></a>**ADMX_AdmPwd/POL_AdmPwd_DontAllowPwdExpirationBehindPolicy**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

When you enable this setting, planned password expiration longer than password age dictated by "Password Settings" policy is NOT allowed. When such expiration is detected, password is changed immediately and password expiration is set according to policy.

When you disable or not configure this setting, password expiration time may be longer than required by "Password Settings" policy.
<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow password expiration time longer than required by policy*
-   GP name: *POL_AdmPwd_DontAllowPwdExpirationBehindPolicy*
-   GP path: *Windows Components\AdmPwd*
-   GP ADMX file name: *AdmPwd.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-admpwd-pol_admpwd_enabled"></a>**ADMX_AdmPwd/POL_AdmPwd_Enabled**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

This policy enables the management of password for local administrator account

If you enable this setting, local administrator password is managed.

If you disable or not configure this setting, local administrator password is NOT managed.
<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable local admin password management*
-   GP name: *POL_AdmPwd_Enabled*
-   GP path: *Windows Components\AdmPwd*
-   GP ADMX file name: *AdmPwd.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-admpwd-pol_admpwd_adminname"></a>**ADMX_AdmPwd/POL_AdmPwd_AdminName**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

When you enable this setting, planned password expiration longer than password age dictated by "Password Settings" policy is NOT allowed. When such expiration is detected, password is changed immediately and password expiration is set according to policy.

When you disable or not configure this setting, password expiration time may be longer than required by "Password Settings" policy.
<!--/Description-->

<!--ADMXBacked-->

ADMX Info:  
-   GP Friendly name: *Name of administrator account to manage*
-   GP name: *POL_AdmPwd_AdminName*
-   GP path: *Windows Components\AdmPwd*
-   GP ADMX file name: *AdmPwd.admx*


<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-admpwd-pol_admpwd"></a>**ADMX_AdmPwd/POL_AdmPwd**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
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

This policy setting enables management of password for local administrator account

If you enable this setting, local administrator password is managed

If you disable or not configure this setting, local administrator password is NOT managed.

<!--/Description-->

<!--ADMXBacked-->

ADMX Info:  
-   GP Friendly name: *Password Settings*
-   GP name: *POL_AdmPwd*
-   GP path: *Windows Components\AdmPwd*
-   GP ADMX file name: *AdmPwd.admx*


<!--/ADMXBacked-->
<!--/Policy-->

<!--/Policies-->

