---
title: Policy CSP - ADMX_RemoteAssistance
description: Policy CSP - ADMX_RemoteAssistance
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/14/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_RemoteAssistance
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_RemoteAssistance policies  

<dl>
  <dd>
    <a href="#admx-remoteassistance-ra-encryptedticketonly">ADMX_RemoteAssistance/RA_EncryptedTicketOnly</a>
  </dd>
  <dd>
    <a href="#admx-remoteassistance-ra-optimize-bandwidth">ADMX_RemoteAssistance/RA_Optimize_Bandwidth</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-remoteassistance-ra-encryptedticketonly"></a>**ADMX_RemoteAssistance/RA_EncryptedTicketOnly**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting enables Remote Assistance invitations to be generated with improved encryption so that only computers running this version (or later versions) of the operating system can connect. This policy setting does not affect Remote Assistance connections that are initiated by instant messaging contacts or the unsolicited Offer Remote Assistance.

If you enable this policy setting, only computers running this version (or later versions) of the operating system can connect to this computer.

If you disable this policy setting, computers running this version and a previous version of the operating system can connect to this computer.

If you do not configure this policy setting, users can configure the setting in System Properties in the Control Panel.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Allow only Windows Vista or later connections*
-   GP name: *RA_EncryptedTicketOnly*
-   GP path: *System\Remote Assistance*
-   GP ADMX file name: *RemoteAssistance.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-remoteassistance-ra-optimize-bandwidth"></a>**ADMX_RemoteAssistance/RA_Optimize_Bandwidth**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to improve performance in low bandwidth scenarios.

This setting is incrementally scaled from "No optimization" to "Full optimization".  Each incremental setting includes the previous optimization setting.

For example:

"Turn off background" will include the following optimizations:

- No full window drag
- Turn off background

"Full optimization" will include the following optimizations:

- Use 16-bit color (8-bit color in Windows Vista)
- Turn off font smoothing (not supported in Windows Vista)
- No full window drag
- Turn off background

If you enable this policy setting, bandwidth optimization occurs at the level specified.

If you disable this policy setting, application-based settings are used.

If you do not configure this policy setting, application-based settings are used.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on bandwidth optimization*
-   GP name: *RA_Optimize_Bandwidth*
-   GP path: *System\Remote Assistance*
-   GP ADMX file name: *RemoteAssistance.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>
> [!NOTE]
> These policies are for upcoming release.

<!--/Policies-->