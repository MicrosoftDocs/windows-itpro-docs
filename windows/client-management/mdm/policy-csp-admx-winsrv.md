---
title: Policy CSP - ADMX_Winsrv
description: Policy CSP - ADMX_Winsrv
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 02/25/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_Winsrv
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_Winsrv policies  

<dl>
  <dd>
    <a href="#admx-winsrv.-allowblockingappsatshutdown">ADMX_Winsrv/AllowBlockingAppsAtShutdown</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-winsrv.-allowblockingappsatshutdown"></a>**ADMX_Winsrv/AllowBlockingAppsAtShutdown**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether Windows will allow console applications and GUI applications without visible top-level windows to block or cancel shutdown.

By default, such applications are automatically terminated if they attempt to cancel shutdown or block it indefinitely.

- If you enable this setting, console applications or GUI applications without visible top-level windows that block or cancel shutdown will not be automatically terminated during shutdown.
- If you disable or do not configure this setting, these applications will be automatically terminated during shutdown, helping to ensure that windows can shut down faster and more smoothly.

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
-   GP English name: *Turn off automatic termination of applications that block or cancel shutdown*
-   GP name: *AllowBlockingAppsAtShutdown*
-   GP path: *System\Shutdown Options*
-   GP ADMX file name: *Winsrv.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607
- 2 - Available in Windows 10, version 1703
- 3 - Available in Windows 10, version 1709
- 4 - Available in Windows 10, version 1803
- 5 - Available in Windows 10, version 1809
- 6 - Available in Windows 10, version 1903
- 7 - Available in Windows 10, version 1909
- 8 - Available in Windows 10, version 2004
- 9 - Available in Windows 10, version 20H2

<!--/Policies-->

