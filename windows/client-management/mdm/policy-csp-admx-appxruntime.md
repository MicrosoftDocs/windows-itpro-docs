---
title: Policy CSP - ADMX_AppXRuntime
description: Learn about the Policy CSP - ADMX_AppXRuntime.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/10/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_AppXRuntime

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_AppXRuntime policies

<dl>
  <dd>
    <a href="#admx-appxruntime-appxruntimeapplicationcontenturirules">ADMX_AppXRuntime/AppxRuntimeApplicationContentUriRules</a>
  </dd>
  <dd>
    <a href="#admx-appxruntime-appxruntimeblockfileelevation">ADMX_AppXRuntime/AppxRuntimeBlockFileElevation</a>
  </dd>
  <dd>
    <a href="#admx-appxruntime-appxruntimeblockhostedappaccesswinrt">ADMX_AppXRuntime/AppxRuntimeBlockHostedAppAccessWinRT</a>
  </dd>
  <dd>
    <a href="#admx-appxruntime-appxruntimeblockprotocolelevation">ADMX_AppXRuntime/AppxRuntimeBlockProtocolElevation</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-appxruntime-appxruntimeapplicationcontenturirules"></a>**ADMX_AppXRuntime/AppxRuntimeApplicationContentUriRules**

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
This policy setting lets you turn on Content URI Rules to supplement the static Content URI Rules that were defined as part of the app manifest and apply to all Windows Store apps that use the enterpriseAuthentication capability on a computer.

If you enable this policy setting, you can define more Content URI Rules that all Windows Store apps that use the enterpriseAuthentication capability on a computer can use.

If you disable or don't set this policy setting, Windows Store apps will only use the static Content URI Rules.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn on dynamic Content URI Rules for Windows store apps*
-   GP name: *AppxRuntimeApplicationContentUriRules*
-   GP path: *Windows Components\App runtime*
-   GP ADMX file name: *AppXRuntime.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-appxruntime-appxruntimeblockfileelevation"></a>**ADMX_AppXRuntime/AppxRuntimeBlockFileElevation**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you control whether Windows Store apps can open files using the default desktop app for a file type. Because desktop apps run at a higher integrity level than Windows Store apps, there's a risk that a Windows Store app might compromise the system by opening a file in the default desktop app for a file type.

If you enable this policy setting, Windows Store apps can't open files in the default desktop app for a file type; they can open files only in other Windows Store apps.

If you disable or don't configure this policy setting, Windows Store apps can open files in the default desktop app for a file type.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Block launching desktop apps associated with a file.*
-   GP name: *AppxRuntimeBlockFileElevation*
-   GP path: *Windows Components\App runtime*
-   GP ADMX file name: *AppXRuntime.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-appxruntime-appxruntimeblockhostedappaccesswinrt"></a>**ADMX_AppXRuntime/AppxRuntimeBlockHostedAppAccessWinRT**

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
This policy setting controls whether Universal Windows apps with Windows Runtime API access directly from web content can be launched.

If you enable this policy setting, Universal Windows apps that declare Windows Runtime API access in ApplicationContentUriRules section of the manifest can't be launched; Universal Windows apps that haven't declared Windows Runtime API access in the manifest aren't affected.

If you disable or don't configure this policy setting, all Universal Windows apps can be launched.

> [!WARNING]
> This policy should not be enabled unless recommended by Microsoft as a security response because it can cause severe app compatibility issues.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Block launching Universal Windows apps with Windows Runtime API access from hosted content.*
-   GP name: *AppxRuntimeBlockHostedAppAccessWinRT*
-   GP path: *Windows Components\App runtime*
-   GP ADMX file name: *AppXRuntime.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-appxruntime-appxruntimeblockprotocolelevation"></a>**ADMX_AppXRuntime/AppxRuntimeBlockProtocolElevation**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting lets you control whether Windows Store apps can open URIs using the default desktop app for a URI scheme. Because desktop apps run at a higher integrity level than Windows Store apps, there's a risk that a URI scheme launched by a Windows Store app might compromise the system by launching a desktop app.

If you enable this policy setting, Windows Store apps can't open URIs in the default desktop app for a URI scheme; they can open URIs only in other Windows Store apps.

If you disable or don't configure this policy setting, Windows Store apps can open URIs in the default desktop app for a URI scheme.

> [!NOTE]
> Enabling this policy setting does not block Windows Store apps from opening the default desktop app for the http, https, and mailto URI schemes. The handlers for these URI schemes are hardened against URI-based vulnerabilities from untrusted sources, reducing the associated risk.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Block launching desktop apps associated with a URI scheme*
-   GP name: *AppxRuntimeBlockProtocolElevation*
-   GP path: *Windows Components\App runtime*
-   GP ADMX file name: *AppXRuntime.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)