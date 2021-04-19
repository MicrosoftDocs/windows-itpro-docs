---
title: Policy CSP - ADMX_EncryptFilesonMove
description: Policy CSP - ADMX_EncryptFilesonMove
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/02/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_EncryptFilesonMove
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

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
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting prevents File Explorer from encrypting files that are moved to an encrypted folder.

If you enable this policy setting, File Explorer will not automatically encrypt files that are moved to an encrypted folder.

If you disable or do not configure this policy setting, File Explorer automatically encrypts files that are moved to an encrypted folder.

This setting applies only to files moved within a volume. When files are moved to other volumes, or if you create a new file in an encrypted folder, File Explorer encrypts those files automatically.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not automatically encrypt files moved to encrypted folders*
-   GP name: *NoEncryptOnMove*
-   GP path: *System*
-   GP ADMX file name: *EncryptFilesonMove.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are for upcoming release.

<!--/Policies-->

