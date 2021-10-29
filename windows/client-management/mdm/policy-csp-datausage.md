---
title: Policy CSP - DataUsage
description: Learn how to use the Policy CSP - DataUsage setting to configure the cost of 4G connections on the local machine. 
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - DataUsage

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## DataUsage policies  

<dl>
  <dd>
    <a href="#datausage-setcost3g">DataUsage/SetCost3G</a>
  </dd>
  <dd>
    <a href="#datausage-setcost4g">DataUsage/SetCost4G</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="datausage-setcost3g"></a>**DataUsage/SetCost3G**  

<hr/>

<!--Description-->
This policy is deprecated in Windows 10, version 1809.

<!--/Description-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="datausage-setcost4g"></a>**DataUsage/SetCost4G**  

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
This policy setting configures the cost of 4G connections on the local machine.      

If this policy setting is enabled, a drop-down list box presenting possible cost values will be active. Selecting one of the following values from the list will set the cost of all 4G connections on the local machine:

- Unrestricted: Use of this connection is unlimited and not restricted by usage charges and capacity constraints. 

- Fixed: Use of this connection is not restricted by usage charges and capacity constraints up to a certain data limit. 

- Variable: This connection is costed on a per byte basis.

If this policy setting is disabled or is not configured, the cost of 4G connections is Fixed by default.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set 4G Cost*
-   GP name: *SetCost4G*
-   GP path: *Network/WWAN Service/WWAN Media Cost*
-   GP ADMX file name: *wwansvc.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

