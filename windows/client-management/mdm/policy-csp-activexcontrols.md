---
title: Policy CSP - ActiveXControls
description: Learn about various Policy configuration service provider (CSP) - ActiveXControls settings, including SyncML, for Windows 10.
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ActiveXControls



<hr/>

<!--Policies-->
## ActiveXControls policies  

<dl>
  <dd>
    <a href="#activexcontrols-approvedinstallationsites">ActiveXControls/ApprovedInstallationSites</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="activexcontrols-approvedinstallationsites"></a>**ActiveXControls/ApprovedInstallationSites**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Edition</th>
    <th>Windows 10</th>
    <th>Windows 11</th>
</tr>
<tr>
    <td>Home</td>
    <td>No</td><td>No</td>
</tr>
<tr>
    <td>Pro</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes, starting in Windows 10, version 1607</td><td>Yes</td>
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
This policy setting determines which ActiveX installation sites standard users in your organization can use to install ActiveX controls on their computers. When this setting is enabled, the administrator can create a list of approved ActiveX Install sites specified by host URL. 

If you enable this setting, the administrator can create a list of approved ActiveX Install sites specified by host URL. 

If you disable or do not configure this policy setting, ActiveX controls prompt the user for administrative credentials before installation. 

Note: Wild card characters cannot be used when specifying the host URLs.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Approved Installation Sites for ActiveX Controls*
-   GP name: *ApprovedActiveXInstallSites*
-   GP path: *Windows Components/ActiveX Installer Service*
-   GP ADMX file name: *ActiveXInstallService.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

