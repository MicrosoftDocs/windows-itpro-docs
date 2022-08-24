---
title: Policy CSP - ADMX_WindowsPackageManager
description: Learn about the Policy CSP - ADMX_WindowsPackageManager.
ms.author: v-aljupudi
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: alekyaj
ms.date: 08/24/2022
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_WindowsPackageManager
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_WindowsPackageManager policies  

<dl>
  <dd>
    <a href="#admx-windowspackagemanager-enableadditionalsources">ADMX_WindowsPackageManager/EnableAdditionalSources</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-windowspackagemanager-enableadditionalsources"></a>**ADMX_WindowsPackageManager/EnableAdditionalSources**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|Yes|Yes|
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
This policy controls additional sources approved for users to configure using [Windows Package Manager](/windows/package-manager/).

If you do not configure this setting, users will be able to add or remove additional sources other than those configured by policy.

If you enable this setting, only the sources specified can be added or removed from Windows Package Manager. The representation for each allowed source can be obtained from installed sources using [*winget source export*](/windows/package-manager/winget/).

If you disable this setting, no additional sources can be configured by the user for Windows Package Manager.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enable Additional Windows Package Manager Sources*
-   GP name: *EnableAdditionalSources*
-   GP path: *Administrative Templates\Windows Components\App Package Deployment*
-   GP ADMX file name: *AppxPackageManager.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->