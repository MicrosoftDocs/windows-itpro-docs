---
title: Policy CSP - TaskManager
description: Policy CSP - TaskManager
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 07/05/2018
ms.reviewer: 
manager: dansimp
---

# Policy CSP - TaskManager

> [!WARNING]
> Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.


<hr/>

<!--Policies-->
## TaskManager policies  

<dl>
  <dd>
    <a href="#taskmanager-allowendtask">TaskManager/AllowEndTask</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="taskmanager-allowendtask"></a>**TaskManager/AllowEndTask**  

<!--SupportedSKUs-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
	<td></td>
	<td></td>
</tr>
</table>

<!--/SupportedSKUs-->
<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This setting determines whether non-administrators can use Task Manager to end tasks.

Value type is integer. Supported values:  
-  0 - Disabled. EndTask functionality is blocked in TaskManager.
-  1 - Enabled (default).  Users can perform EndTask in TaskManager.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->
**Validation procedure:**  
When this policy is set to 1 - users CAN execute 'End task' on processes in TaskManager 
When the policy is set to 0 - users CANNOT execute 'End task' on processes in TaskManager

<!--/Validation-->
<!--/Policy-->
<hr/>

Footnotes:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.
-   4 - Added in Windows 10, version 1803.
-   5 - Added in Windows 10, version 1809.
-   6 - Added in Windows 10, version 1903.

<!--/Policies-->

