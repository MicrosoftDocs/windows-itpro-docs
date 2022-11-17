---
title: Policy CSP - TaskManager
description: Learn how to use the Policy CSP - TaskManager setting to determine whether non-administrators can use Task Manager to end tasks.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
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
The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|No|No|
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
This setting determines whether non-administrators can use Task Manager to end tasks.

Supported value type is integer.

Supported values:
-  0 - Disabled. EndTask functionality is blocked in TaskManager.
-  1 - Enabled (default). Users can perform EndTask in TaskManager.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->
**Validation procedure:**
- When this policy is set to 1 - users CAN execute 'End task' on processes in TaskManager.
- When the policy is set to 0 - users CANNOT execute 'End task' on processes in TaskManager.

<!--/Validation-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)
