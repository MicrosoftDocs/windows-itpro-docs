---
title: Policy CSP - ADMX_SystemRestore
description: Learn about Policy CSP - ADMX_SystemRestore.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/13/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_SystemRestore
> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_SystemRestore policies

<dl>
  <dd>
    <a href="#admx-systemrestore-sr-disableconfig">ADMX_SystemRestore/SR_DisableConfig</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-systemrestore-sr-disableconfig"></a>**ADMX_SystemRestore/SR_DisableConfig**

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
This policy setting allows you to disable System Restore configuration through System Protection.

System Restore enables users, in the event of a problem, to restore their computers to a previous state without losing personal data files. The behavior of this policy setting depends on the "Turn off System Restore" policy setting.

If you enable this policy setting, the option to configure System Restore through System Protection is disabled.

If you disable or do not configure this policy setting, users can change the System Restore settings through System Protection.

Also, see the "Turn off System Restore" policy setting. If the "Turn off System Restore" policy setting is enabled, the "Turn off System Restore configuration" policy setting is overwritten.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Turn off Configuration*
-   GP name: *SR_DisableConfig*
-   GP path: *System\System Restore*
-   GP ADMX file name: *SystemRestore.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
