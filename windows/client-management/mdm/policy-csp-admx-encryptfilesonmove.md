---
title: Policy CSP - ADMX_EncryptFilesonMove
description: Learn about the Policy CSP - ADMX_EncryptFilesonMove.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 09/02/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_EncryptFilesonMove

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_EncryptFilesonMove policies

<dl>
  <dd>
    <a href="#admx-encryptfilesonmove-noencryptonmove">ADMX_EncryptFilesonMove/NoEncryptOnMove</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-encryptfilesonmove-noencryptonmove"></a>**ADMX_EncryptFilesonMove/NoEncryptOnMove**

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
This policy setting prevents File Explorer from encrypting files that are moved to an encrypted folder.

If you enable this policy setting, File Explorer won't automatically encrypt files that are moved to an encrypted folder.

If you disable or don't configure this policy setting, File Explorer automatically encrypts files that are moved to an encrypted folder.

This setting applies only to files moved within a volume. When files are moved to other volumes, or if you create a new file in an encrypted folder, File Explorer encrypts those files automatically.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not automatically encrypt files moved to encrypted folders*
-   GP name: *NoEncryptOnMove*
-   GP path: *System*
-   GP ADMX file name: *EncryptFilesonMove.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)