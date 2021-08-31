---
title: Policy CSP - ADMX_Cpls
description: Policy CSP - ADMX_Cpls
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 08/26/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Cpls
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Cpls policies  

<dl>
  <dd>
    <a href="#admx-cpls-usedefaulttile">ADMX_Cpls/UseDefaultTile</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-cpls-usedefaulttile"></a>**ADMX_Cpls/UseDefaultTile**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>  
</tr>
<tr>
    <td>Home</td>
    <td>No</td>
    <td>No</td>
</tr>
</tr>
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</tr>
<tr>
    <td>Education</td>
    <td>No</td>
    <td>No</td>
</tr>
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
This policy setting allows an administrator to standardize the account pictures for all users on a system to the default account picture. One application for this policy setting is to standardize the account pictures to a company logo.

> [!NOTE] 
> The default account picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\user.jpg. The default guest picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\guest.jpg. If the default pictures do not exist, an empty frame is displayed.

If you enable this policy setting, the default user account picture will display for all users on the system with no customization allowed.

If you disable or do not configure this policy setting, users will be able to customize their account pictures.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Apply the default account picture to all users*
-   GP name: *UseDefaultTile*
-   GP path: *Control Panel/User Accounts*
-   GP ADMX file name: *Cpls.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

