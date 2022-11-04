---
title: Policy CSP - ADMX_LocationProviderAdm
description: Learn about Policy CSP - ADMX_LocationProviderAdm.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/20/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_LocationProviderAdm

> [!WARNING]
> Some information relates to pre-released products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).
<hr/>

<!--Policies-->
## ADMX_LocationProviderAdm policies

<dl>
  <dd>
    <a href="#admx-locationprovideradm-disablewindowslocationprovider_1">ADMX_LocationProviderAdm/DisableWindowsLocationProvider_1</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-locationprovideradm-disablewindowslocationprovider_1"></a>**ADMX_LocationProviderAdm/DisableWindowsLocationProvider_1**

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
This policy setting turns off the Windows Location Provider feature for this computer.

- If you enable this policy setting, the Windows Location Provider feature will be turned off, and all programs on this computer won't be able to use the Windows Location Provider feature.

- If you disable or don't configure this policy setting, all programs on this computer can use the Windows Location Provider feature.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Windows Location Provider*
-   GP name: *DisableWindowsLocationProvider_1*
-   GP path: *Windows Components\Location and Sensors\Windows Location Provider*
-   GP ADMX file name: *LocationProviderAdm.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as a part of Windows Insider release.

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)