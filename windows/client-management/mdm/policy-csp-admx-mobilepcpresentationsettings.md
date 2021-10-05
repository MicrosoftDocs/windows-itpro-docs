---
title: Policy CSP - ADMX_MobilePCPresentationSettings
description: Policy CSP - ADMX_MobilePCPresentationSettings
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/20/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_MobilePCPresentationSettings

<hr/>

<!--Policies-->
## ADMX_MobilePCPresentationSettings policies  

<dl>
  <dd>
    <a href="#admx-mobilepcpresentationsettings-presentationsettingsenable_1">ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_1</a>
  </dd>
  <dd>
    <a href="#admx-mobilepcpresentationsettings-presentationsettingsenable_2">ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_2</a>
  </dd>
</dl>

<hr/>

<!--Policy-->

<a href="" id="admx-mobilepcpresentationsettings-presentationsettingsenable_1"></a>**ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_1**


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
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off Windows presentation settings.  

- If you enable this policy setting, Windows presentation settings cannot be invoked.  

- If you disable this policy setting, Windows presentation settings can be invoked. 

The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.  

> [!NOTE]
> Users will be able to customize their system settings for presentations in Windows Mobility Center.  
If you do not configure this policy setting, Windows presentation settings can be invoked.


<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Windows presentation settings*
-   GP name: *PresentationSettingsEnable_1*
-   GP path: *Windows Components\Presentation Settings*
-   GP ADMX file name: *MobilePCPresentationSettings.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-mobilepcpresentationsettings-presentationsettingsenable_2"></a>**ADMX_MobilePCPresentationSettings/PresentationSettingsEnable_2**  

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
<tr>
    <td>Pro</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Business</td>
    <td>No</td>
    <td>No</td>
</tr>
<tr>
    <td>Enterprise</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Education</td>
    <td>Yes</td>
    <td>Yes</td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting turns off Windows presentation settings.  

- If you enable this policy setting, Windows presentation settings cannot be invoked.  

- If you disable this policy setting, Windows presentation settings can be invoked. 

The presentation settings icon will be displayed in the notification area. This will give users a quick and easy way to configure their system settings before a presentation to block system notifications and screen blanking, adjust speaker volume, and apply a custom background image.  

> [!NOTE]
> Users will be able to customize their system settings for presentations in Windows Mobility Center.  
If you do not configure this policy setting, Windows presentation settings can be invoked.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Windows presentation settings*
-   GP name: *PresentationSettingsEnable_2*
-   GP path: *Windows Components\Presentation Settings*
-   GP ADMX file name: *MobilePCPresentationSettings.admx*
<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.
<!--/Policies-->

