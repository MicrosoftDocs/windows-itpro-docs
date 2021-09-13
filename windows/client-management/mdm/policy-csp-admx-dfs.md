---
title: Policy CSP - ADMX_DFS
description: Policy CSP - ADMX_DFS
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 09/08/2021
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_DFS
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.


<hr/>

<!--Policies-->
## ADMX_DFS policies 

<dl>
  <dd>
    <a href="#admx-dfs-dfsdiscoverdc">ADMX_DFS/DFSDiscoverDC</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-dfs-dfsdiscoverdc"></a>**ADMX_DFS/DFSDiscoverDC**  

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows you to configure how often a Distributed File System (DFS) client attempts to discover domain controllers on a network. 
By default, a DFS client attempts to discover domain controllers every 15 minutes.  

- If you enable this policy setting, you can configure how often a DFS client attempts to discover domain controllers. 
This value is specified in minutes.  

- If you disable or do not configure this policy setting, the default value of 15 minutes applies.  

> [!NOTE]
> The minimum value you can select is 15 minutes. If you try to set this setting to a value less than 15 minutes, the default value of 15 minutes is applied.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure how often a DFS client discovers domain controllers*
-   GP name: *DFSDiscoverDC*
-   GP path: *Windows Components\ActiveX Installer Service*
-   GP ADMX file name: *DFS.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

