---
title: Policy CSP - ADMX_iSCSI
description: Learn about the Policy CSP - ADMX_iSCSI.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 12/17/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_iSCSI

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_iSCSI policies

<dl>
  <dd>
    <a href="#admx-iscsi-iscsigeneral_restrictadditionallogins">ADMX_iSCSI/iSCSIGeneral_RestrictAdditionalLogins</a>
  </dd>
  <dd>
    <a href="#admx-iscsi-iscsigeneral_changeiqnname">ADMX_iSCSI/iSCSIGeneral_ChangeIQNName</a>
  </dd>
  <dd>
    <a href="#admx-iscsi-iscsisecurity_changechapsecret">ADMX_iSCSI/iSCSISecurity_ChangeCHAPSecret</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-iscsi-iscsigeneral_restrictadditionallogins"></a>**ADMX_iSCSI/iSCSIGeneral_RestrictAdditionalLogins**

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
If enabled then new iSNS servers may not be added and thus new targets discovered via those iSNS servers; existing iSNS servers may not be removed.

If disabled then new iSNS servers may be added and thus new targets discovered via those iSNS servers; existing iSNS servers may be removed.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow manual configuration of iSNS servers*
-   GP name: *iSCSIGeneral_RestrictAdditionalLogins*
-   GP path: *System\iSCSI\iSCSI Target Discovery*
-   GP ADMX file name: *iSCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-iscsi-iscsigeneral_changeiqnname"></a>**ADMX_iSCSI/iSCSIGeneral_ChangeIQNName**

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
If enabled then new target portals may not be added and thus new targets discovered on those portals; existing target portals may not be removed.

If disabled then new target portals may be added and thus new targets discovered on those portals; existing target portals may be removed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow manual configuration of target portals*
-   GP name: *iSCSIGeneral_ChangeIQNName*
-   GP path: *System\iSCSI\iSCSI Target Discovery*
-   GP ADMX file name: *iSCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-iscsi-iscsisecurity_changechapsecret"></a>**ADMX_iSCSI/iSCSISecurity_ChangeCHAPSecret**

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
If enabled then don't allow the initiator CHAP secret to be changed.

If disabled then the initiator CHAP secret may be changed.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not allow changes to initiator CHAP secret*
-   GP name: *iSCSISecurity_ChangeCHAPSecret*
-   GP path: *System\iSCSI\iSCSI Security*
-   GP ADMX file name: *iSCSI.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)