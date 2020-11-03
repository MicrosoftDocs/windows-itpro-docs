---
title: Policy CSP - TaskManager
description: Learn how to use the Policy CSP - TaskManager setting to determine whether non-administrators can use Task Manager to end tasks.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - TaskManager


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
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>5</sup></td>
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

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->

