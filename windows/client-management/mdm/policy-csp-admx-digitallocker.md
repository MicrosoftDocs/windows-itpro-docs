---
title: Policy CSP - ADMX_DigitalLocker
description: Policy CSP - ADMX_DigitalLocker
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 08/31/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DigitalLocker
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_DigitalLocker policies  

<dl>
  <dd>
    <a href="#admx-digitallocker-digitalx-diableapplication-titletext-1">ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_1</a>
  </dd>
  <dd>
    <a href="#admx-digitallocker-digitalx-diableapplication-titletext-2">ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_2</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-digitallocker-digitalx-diableapplication-titletext-1"></a>**ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_1**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether Digital Locker can run.

Digital Locker is a dedicated download manager associated with Windows Marketplace and a feature of Windows that can be used to manage and download products acquired and stored in the user's Windows Marketplace Digital Locker.

If you enable this setting, Digital Locker will not run.

If you disable or do not configure this setting, Digital Locker can be run.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not allow Digital Locker to run*
-   GP name: *Digitalx_DiableApplication_TitleText_1*
-   GP path: *Windows Components/Digital Locker*
-   GP ADMX file name: *DigitalLocker.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-digitallocker-digitalx-diableapplication-titletext-2"></a>**ADMX_DigitalLocker/Digitalx_DiableApplication_TitleText_2**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether Digital Locker can run.

Digital Locker is a dedicated download manager associated with Windows Marketplace and a feature of Windows that can be used to manage and download products acquired and stored in the user's Windows Marketplace Digital Locker.

If you enable this setting, Digital Locker will not run.

If you disable or do not configure this setting, Digital Locker can be run.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not allow Digital Locker to run*
-   GP name: *Digitalx_DiableApplication_TitleText_2*
-   GP path: *Windows Components/Digital Locker*
-   GP ADMX file name: *DigitalLocker.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

