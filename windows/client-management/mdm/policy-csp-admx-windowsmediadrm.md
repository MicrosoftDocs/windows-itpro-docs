---
title: Policy CSP - ADMX_WindowsMediaDRM
description: Policy CSP - ADMX_WindowsMediaDRM
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

# Policy CSP - ADMX_WindowsMediaDRM
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_WindowsMediaDRM policies

<dl>
  <dd>
    <a href="#admx-windowsmediadrm-disableonline">ADMX_WindowsMediaDRM/DisableOnline</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowsmediadrm-disableonline"></a>**ADMX_WindowsMediaDRM/DisableOnline**

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
This policy setting prevents Windows Media Digital Rights Management (DRM) from accessing the Internet (or intranet).

When enabled, Windows Media DRM is prevented from accessing the Internet (or intranet) for license acquisition and security upgrades.

When this policy is enabled, programs are not able to acquire licenses for secure content, upgrade Windows Media DRM security components, or restore backed up content licenses.  Secure content that is already licensed to the local computer will continue to play. Users are also able to protect music that they copy from a CD and play this protected content on their computer, since the license is generated locally in this scenario.

When this policy is either disabled or not configured, Windows Media DRM functions normally and will connect to the Internet (or intranet) to acquire licenses, download security upgrades, and perform license restoration.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prevent Windows Media DRM Internet Access*
-   GP name: *DisableOnline*
-   GP path: *Windows Components\Windows Media Digital Rights Management*
-   GP ADMX file name: *WindowsMediaDRM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

