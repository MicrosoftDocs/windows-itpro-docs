---
title: Policy CSP - ADMX_ActiveXInstallService
description: Policy CSP - ADMX_ActiveXInstallService
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/09/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_ActiveXInstallService
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_ActiveXInstallService policies  

<dl>
  <dd>
    <a href="#admx-activexinstallservice-axisurlzonepolicies">ADMX_ActiveXInstallService/AxISURLZonePolicies</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-activexinstallservice-axisurlzonepolicies"></a>**ADMX_ActiveXInstallService/AxISURLZonePolicies**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the installation of ActiveX controls for sites in Trusted zone.

If you enable this policy setting, ActiveX controls are installed according to the settings defined by this policy setting.

If you disable or do not configure this policy setting, ActiveX controls prompt the user before installation. 

If the trusted site uses the HTTPS protocol, this policy setting can also control how ActiveX Installer Service responds to certificate errors. By default all HTTPS connections must supply a server certificate that passes all validation criteria. If you are aware that a trusted site has a certificate error but you want to trust it anyway you can select the certificate errors that you want to ignore.

> [!NOTE]
> This policy setting applies to all sites in Trusted zones.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Establish ActiveX installation policy for sites in Trusted zones*
-   GP name: *AxISURLZonePolicies*
-   GP path: *Windows Components\ActiveX Installer Service*
-   GP ADMX file name: *ActiveXInstallService.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

