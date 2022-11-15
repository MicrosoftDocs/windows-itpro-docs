---
title: Policy CSP - ADMX_IIS
description: Learn about the Policy CSP - ADMX_IIS.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/17/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_IIS

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_IIS policies

<dl>
  <dd>
    <a href="#admx-iis-preventiisinstall">ADMX_IIS/PreventIISInstall</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-iis-preventiisinstall"></a>**ADMX_IIS/PreventIISInstall**

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
> * Machine

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents installation of Internet Information Services (IIS) on this computer.

If you enable this policy setting, Internet Information Services (IIS) can't be installed, and you'll not be able to install Windows components or applications that require IIS. Users installing Windows components or applications that require IIS might not receive a warning that IIS can't be installed because of this Group Policy setting.

Enabling this setting won't have any effect on IIS, if IIS is already installed on the computer.

If you disable or don't configure this policy setting, IIS can be installed, and all the programs and applications that require IIS to run."

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent IIS installation*
-   GP name: *PreventIISInstall*
-   GP path: *Windows Components\Internet Information Services*
-   GP ADMX file name: *IIS.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)