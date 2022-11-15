---
title: Policy CSP - ADMX_wlansvc
description: Policy CSP - ADMX_wlansvc
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 10/27/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_wlansvc
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_wlansvc policies

<dl>
  <dd>
    <a href="#admx-wlansvc-setcost">ADMX_wlansvc/SetCost</a>
  </dd>
  <dd>
    <a href="#admx-wlansvc-setpinenforced">ADMX_wlansvc/SetPINEnforced</a>
  </dd>
  <dd>
    <a href="#admx-wlansvc-setpinpreferred">ADMX_wlansvc/SetPINPreferred</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-wlansvc-setcost"></a>**ADMX_wlansvc/SetCost**

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
This policy setting configures the cost of Wireless LAN (WLAN) connections on the local machine.

If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all WLAN connections on the local machine:

- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints.
- Fixed: Use of this connection isn't restricted by usage charges and capacity constraints up to a certain data limit.
- Variable: This connection is costed on a per byte basis.  If this policy setting is disabled or isn't configured, the cost of Wireless LAN connections is Unrestricted by default.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set Cost*
-   GP name: *IncludeCmdLine*
-   GP path: *Network\WLAN Service\WLAN Media Cost*
-   GP ADMX file name: *wlansvc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wlansvc-setpinenforced"></a>**ADMX_wlansvc/SetPINEnforced**

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
This policy applies to Wireless Display connections. This policy means that the use of a PIN for pairing to Wireless Display devices is required rather than optional.

Conversely it means that Push Button is NOT allowed.

If this policy setting is disabled or isn't configured, by default Push Button pairing is allowed (but not necessarily preferred).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Require PIN pairing*
-   GP name: *SetPINEnforced*
-   GP path: *Network\Wireless Display*
-   GP ADMX file name: *wlansvc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wlansvc-setpinpreferred"></a>**ADMX_wlansvc/SetPINPreferred**

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
This policy applies to Wireless Display connections. This policy changes the preference order of the pairing methods.

When enabled, it makes the connections to prefer a PIN for pairing to Wireless Display devices over the Push Button pairing method.

If this policy setting is disabled or isn't configured, by default Push Button pairing is preferred (if allowed by other policies).

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Prefer PIN pairing*
-   GP name: *SetPINPreferred*
-   GP path: *Network\Wireless Display*
-   GP ADMX file name: *wlansvc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

