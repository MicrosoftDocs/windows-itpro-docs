---
title: Policy CSP - FileExplorer
description: Use the Policy CSP - FileExplorer setting so you can allow certain legacy plug-in applications to function without terminating Explorer.
ms.author: dansimp
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - FileExplorer

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## FileExplorer policies  

<dl>
  <dd>
    <a href="#fileexplorer-turnoffdataexecutionpreventionforexplorer">FileExplorer/TurnOffDataExecutionPreventionForExplorer</a>
  </dd>
  <dd>
    <a href="#fileexplorer-turnoffheapterminationoncorruption">FileExplorer/TurnOffHeapTerminationOnCorruption</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="fileexplorer-turnoffdataexecutionpreventionforexplorer"></a>**FileExplorer/TurnOffDataExecutionPreventionForExplorer**  

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
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
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
Disabling data execution prevention can allow certain legacy plug-in applications to function without terminating Explorer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off Data Execution Prevention for Explorer*
-   GP name: *NoDataExecutionPrevention*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="fileexplorer-turnoffheapterminationoncorruption"></a>**FileExplorer/TurnOffHeapTerminationOnCorruption**  

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
    <td>Yes</td>
    <td>Yes</td>
</tr>
<tr>
    <td>Business</td>
    <td>Yes</td>
    <td>Yes</td>
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
Disabling heap termination on corruption can allow certain legacy plug-in applications to function without terminating Explorer immediately, although Explorer may still terminate unexpectedly later.

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off heap termination on corruption*
-   GP name: *NoHeapTerminationOnCorruption*
-   GP path: *File Explorer*
-   GP ADMX file name: *Explorer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

