---
title: Policy CSP - ADMX_Securitycenter
description: Policy CSP - ADMX_Securitycenter
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/18/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Securitycenter
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Securitycenter policies  

<dl>
  <dd>
    <a href="#admx-securitycenter-securitycenter-securitycenterindomain">ADMX_Securitycenter/SecurityCenter_SecurityCenterInDomain</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-securitycenter-securitycenter-securitycenterindomain"></a>**ADMX_Securitycenter/SecurityCenter_SecurityCenterInDomain**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether Security Center is turned on or off for computers that are joined to an Active Directory domain. When Security Center is turned on, it monitors essential security settings and notifies the user when the computer might be at risk. The Security Center Control Panel category view also contains a status section, where the user can get recommendations to help increase the computer's security. When Security Center is not enabled on the domain, neither the notifications nor the Security Center status section are displayed. 

Note that Security Center can only be turned off for computers that are joined to a Windows domain. When a computer is not joined to a Windows domain, the policy setting will have no effect.

If you do not configure this policy setting, the Security Center is turned off for domain members. 

If you enable this policy setting, Security Center is turned on for all users. 

If you disable this policy setting, Security Center is turned off for domain members.

**Windows XP SP2**

In Windows XP SP2, the essential security settings that are monitored by Security Center include firewall, antivirus, and Automatic Updates.  Note that Security Center might not be available following a change to this policy setting until after the computer is restarted for Windows XP SP2 computers. 

**Windows Vista**

In Windows Vista, this policy setting monitors essential security settings to include firewall, antivirus, antispyware, Internet security settings, User Account Control, and Automatic Updates. Windows Vista computers do not require a reboot for this policy setting to take effect.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn on Security Center (Domain PCs only)*
-   GP name: *SecurityCenter_SecurityCenterInDomain*
-   GP path: *Windows Components\Security Center*
-   GP ADMX file name: *Securitycenter.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

