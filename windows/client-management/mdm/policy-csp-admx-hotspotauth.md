---
title: Policy CSP - ADMX_HotSpotAuth
description: Learn about the Policy CSP - ADMX_HotSpotAuth.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/15/2021
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_HotSpotAuth

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_HotSpotAuth policies

<dl>
  <dd>
    <a href="#admx-hotspotauth-hotspotauth_enable">ADMX_HotSpotAuth/HotspotAuth_Enable</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-hotspotauth-hotspotauth_enable"></a>**ADMX_HotSpotAuth/HotspotAuth_Enable**

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
This policy setting defines whether WLAN hotspots are probed for Wireless Internet Service Provider roaming (WISPr) protocol support.

- If a WLAN hotspot supports the WISPr protocol, users can submit credentials when manually connecting to the network.

- If authentication is successful, users will be connected automatically on subsequent attempts. Credentials can also be configured by network operators.

- If you enable this policy setting, or if you don't configure this policy setting, WLAN hotspots are automatically probed for WISPR protocol support.

- If you disable this policy setting, WLAN hotspots aren't probed for WISPr protocol support, and users can only authenticate with WLAN hotspots using a web browser.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Enable Hotspot Authentication*
-   GP name: *HotspotAuth_Enable*
-   GP path: *Network\Hotspot Authentication*
-   GP ADMX file name: *HotSpotAuth.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)