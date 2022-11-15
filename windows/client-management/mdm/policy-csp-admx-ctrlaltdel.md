---
title: Policy CSP - ADMX_CtrlAltDel
description: Learn about the Policy CSP - ADMX_CtrlAltDel.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 08/26/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_CtrlAltDel

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it.  For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_CtrlAltDel policies

<dl>
  <dd>
    <a href="#admx-ctrlaltdel-disablechangepassword">ADMX_CtrlAltDel/DisableChangePassword</a>
  </dd>
  <dd>
    <a href="#admx-ctrlaltdel-disablelockcomputer">ADMX_CtrlAltDel/DisableLockComputer</a>
  </dd>
  <dd>
    <a href="#admx-ctrlaltdel-disabletaskmgr">ADMX_CtrlAltDel/DisableTaskMgr</a>
  </dd>
  <dd>
    <a href="#admx-ctrlaltdel-nologoff">ADMX_CtrlAltDel/NoLogoff</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-ctrlaltdel-disablechangepassword"></a>**ADMX_CtrlAltDel/DisableChangePassword**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from changing their Windows password on demand.

If you enable this policy setting, the **Change Password** button on the Windows Security dialog box won't appear when you press Ctrl+Alt+Del.

However, users will still be able to change their password when prompted by the system. The system prompts users for a new password when an administrator requires a new password or their password is expiring.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Change Password*
-   GP name: *DisableChangePassword*
-   GP path: *System/Ctrl+Alt+Del Options*
-   GP ADMX file name: *CtrlAltDel.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-ctrlaltdel-disablelockcomputer"></a>**ADMX_CtrlAltDel/DisableLockComputer**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from locking the system.

While locked, the desktop is hidden and the system can't be used. Only the user who locked the system or the system administrator can unlock it.

If you enable this policy setting, users can't lock the computer from the keyboard using Ctrl+Alt+Del.

If you disable or don't configure this policy setting, users will be able to lock the computer from the keyboard using Ctrl+Alt+Del.

> [!TIP]
> To lock a computer without configuring a setting, press Ctrl+Alt+Delete, and then click Lock this computer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Lock Computer*
-   GP name: *DisableLockWorkstation*
-   GP path: *System/Ctrl+Alt+Del Options*
-   GP ADMX file name: *CtrlAltDel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ctrlaltdel-disabletaskmgr"></a>**ADMX_CtrlAltDel/DisableTaskMgr**
<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting prevents users from starting Task Manager.

Task Manager (**taskmgr.exe**) lets users start and stop programs, monitor the performance of their computers, view and monitor all programs running on their computers, including system services, find the executable names of programs, and change the priority of the process in which programs run.

If you enable this policy setting, users won't be able to access Task Manager. If users try to start Task Manager, a message appears explaining that a policy prevents the action.

If you disable or don't configure this policy setting, users can access Task Manager to start and stop programs, monitor the performance of their computers, view and monitor all programs running on their computers, including system services, find the executable names of programs, and change the priority of the process in which programs run.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Task Manager*
-   GP name: *DisableTaskMgr*
-   GP path: *System/Ctrl+Alt+Del Options*
-   GP ADMX file name: *CtrlAltDel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-ctrlaltdel-nologoff"></a>**ADMX_CtrlAltDel/NoLogoff**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting disables or removes all menu items and buttons that log the user off the system.

If you enable this policy setting, users won't see the Logoff menu item when they press Ctrl+Alt+Del. This scenario will prevent them from logging off unless they restart or shut down the computer, or clicking Log off from the Start menu.

Also, see the 'Remove Logoff on the Start Menu' policy setting.

If you disable or don't configure this policy setting, users can see and select the Logoff menu item when they press Ctrl+Alt+Del.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Remove Logoff*
-   GP name: *NoLogoff*
-   GP path: *System/Ctrl+Alt+Del Options*
-   GP ADMX file name: *CtrlAltDel.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
