---
title: Policy CSP - ADMX_AttachmentManager
description: Learn about the Policy CSP - ADMX_AttachmentManager.
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

# Policy CSP - ADMX_AttachmentManager

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_AttachmentManager policies

<dl>
  <dd>
    <a href="#admx-attachmentmanager-am-estimatefilehandlerrisk">ADMX_AttachmentManager/AM_EstimateFileHandlerRisk</a>
  </dd>
  <dd>
    <a href="#admx-attachmentmanager-am-setfilerisklevel">ADMX_AttachmentManager/AM_SetFileRiskLevel</a>
  </dd>
  <dd>
    <a href="#admx-attachmentmanager-am-sethighriskinclusion">ADMX_AttachmentManager/AM_SetHighRiskInclusion</a>
  </dd>
  <dd>
    <a href="#admx-attachmentmanager-am-setlowriskinclusion">ADMX_AttachmentManager/AM_SetLowRiskInclusion</a>
  </dd>
  <dd>
    <a href="#admx-attachmentmanager-am-setmodriskinclusion">ADMX_AttachmentManager/AM_SetModRiskInclusion</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-attachmentmanager-am-estimatefilehandlerrisk"></a>**ADMX_AttachmentManager/AM_EstimateFileHandlerRisk**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure the logic that Windows uses to determine the risk for file attachments.

Preferring the file handler instructs Windows to use the file handler data over the file type data. For example, trust notepad.exe, but don't trust .txt files.

Preferring the file type instructs Windows to use the file type data over the file handler data. For example, trust .txt files, regardless of the file handler.  Using both the file handler and type data is the most restrictive option. Windows chooses the more restrictive recommendation that will cause users to see more trust prompts than choosing the other options.

If you enable this policy setting, you can choose the order in which Windows processes risk assessment data.

If you disable this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.

If you don't configure this policy setting, Windows uses its default trust logic, which prefers the file handler over the file type.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Trust logic for file attachments*
-   GP name: *AM_EstimateFileHandlerRisk*
-   GP path: *Windows Components\Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-attachmentmanager-am-setfilerisklevel"></a>**ADMX_AttachmentManager/AM_SetFileRiskLevel**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to manage the default risk level for file types. To fully customize the risk level for file attachments, you may also need to configure the trust logic for file attachments.

- High Risk: If the attachment is in the list of high-risk file types and is from the restricted zone, Windows blocks the user from accessing the file. If the file is from the Internet zone, Windows prompts the user before accessing the file.
- Moderate Risk: If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file.
- Low Risk: If the attachment is in the list of low-risk file types, Windows won't prompt the user before accessing the file, regardless of the file's zone information.

If you enable this policy setting, you can specify the default risk level for file types.

If you disable this policy setting, Windows sets the default risk level to moderate.

If you don't configure this policy setting, Windows sets the default risk level to moderate.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Default risk level for file attachments*
-   GP name: *AM_SetFileRiskLevel*
-   GP path: *Windows Components\Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-attachmentmanager-am-sethighriskinclusion"></a>**ADMX_AttachmentManager/AM_SetHighRiskInclusion**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure the list of high-risk file types. If the file attachment is in the list of high-risk file types and is from the restricted zone, Windows blocks the user from accessing the file. If the file is from the Internet zone, Windows prompts the user before accessing the file. This inclusion list takes precedence over the medium-risk and low-risk inclusion lists (where an extension is listed in more than one inclusion list).

If you enable this policy setting, you can create a custom list of high-risk file types.

If you disable this policy setting, Windows uses its built-in list of file types that pose a high risk.

If you don't configure this policy setting, Windows uses its built-in list of high-risk file types.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Inclusion list for high risk file types*
-   GP name: *AM_SetHighRiskInclusion*
-   GP path: *Windows Components\Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-attachmentmanager-am-setlowriskinclusion"></a>**ADMX_AttachmentManager/AM_SetLowRiskInclusion**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure the list of low-risk file types. If the attachment is in the list of low-risk file types, Windows won't prompt the user before accessing the file, regardless of the file's zone information. This inclusion list overrides the list of high-risk file types built into Windows and has a lower precedence than the high-risk or medium-risk inclusion lists (where an extension is listed in more than one inclusion list).

If you enable this policy setting, you can specify file types that pose a low risk.

If you disable this policy setting, Windows uses its default trust logic.

If you don't configure this policy setting, Windows uses its default trust logic.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Inclusion list for low file types*
-   GP name: *AM_SetLowRiskInclusion*
-   GP path: *Windows Components\Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-attachmentmanager-am-setmodriskinclusion"></a>**ADMX_AttachmentManager/AM_SetModRiskInclusion**

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure the list of moderate-risk file types. If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file. This inclusion list overrides the list of potentially high-risk file types built into Windows and it takes precedence over the low-risk inclusion list but has a lower precedence than the high-risk inclusion list (where an extension is listed in more than one inclusion list).

If you enable this policy setting, you can specify file types that pose a moderate risk.

If you disable this policy setting, Windows uses its default trust logic.

If you don't configure this policy setting, Windows uses its default trust logic.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Inclusion list for moderate risk file types*
-   GP name: *AM_SetModRiskInclusion*
-   GP path: *Windows Components\Attachment Manager*
-   GP ADMX file name: *AttachmentManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)