---
title: Policy CSP - RemoteShell
description: Learn details about the Policy CSP - RemoteShell setting so that you can configure access to remote shells.
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

# Policy CSP - RemoteShell

<hr/>

<!--Policies-->
## RemoteShell policies

<dl>
  <dd>
    <a href="#remoteshell-allowremoteshellaccess">RemoteShell/AllowRemoteShellAccess</a>
  </dd>
  <dd>
    <a href="#remoteshell-maxconcurrentusers">RemoteShell/MaxConcurrentUsers</a>
  </dd>
  <dd>
    <a href="#remoteshell-specifyidletimeout">RemoteShell/SpecifyIdleTimeout</a>
  </dd>
  <dd>
    <a href="#remoteshell-specifymaxmemory">RemoteShell/SpecifyMaxMemory</a>
  </dd>
  <dd>
    <a href="#remoteshell-specifymaxprocesses">RemoteShell/SpecifyMaxProcesses</a>
  </dd>
  <dd>
    <a href="#remoteshell-specifymaxremoteshells">RemoteShell/SpecifyMaxRemoteShells</a>
  </dd>
  <dd>
    <a href="#remoteshell-specifyshelltimeout">RemoteShell/SpecifyShellTimeout</a>
  </dd>
</dl>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policy-->
<a href="" id="remoteshell-allowremoteshellaccess"></a>**RemoteShell/AllowRemoteShellAccess**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures access to remote shells.

If you enable or do not configure this policy setting, new remote shell connections are accepted by the server.

If you set this policy to ‘disabled’, new remote shell connections are rejected by the server.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Allow Remote Shell Access*
-   GP name: *AllowRemoteShellAccess*
-   GP path: *Windows Components/Windows Remote Shell*
-   GP ADMX file name: *WindowsRemoteShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteshell-maxconcurrentusers"></a>**RemoteShell/MaxConcurrentUsers**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures the maximum number of users able to concurrently perform remote shell operations on the system.

The value can be any number from 1 to 100.

If you enable this policy setting, the new shell connections are rejected if they exceed the specified limit.

If you disable or do not configure this policy setting, the default number is five users.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *MaxConcurrentUsers*
-   GP name: *MaxConcurrentUsers*
-   GP path: *Windows Components/Windows Remote Shell*
-   GP ADMX file name: *WindowsRemoteShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteshell-specifyidletimeout"></a>**RemoteShell/SpecifyIdleTimeout**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures the maximum time in milliseconds, and remote shell will stay open without any user activity until it is automatically deleted.

Any value from 0 to 0x7FFFFFFF can be set. A minimum of 60000 milliseconds (1 minute) is used for smaller values.

If you enable this policy setting, the server will wait for the specified amount of time since the last received message from the client before terminating the open shell.

If you do not configure or disable this policy setting, the default value of 900000 or 15 min will be used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify idle Timeout*
-   GP name: *IdleTimeout*
-   GP path: *Windows Components/Windows Remote Shell*
-   GP ADMX file name: *WindowsRemoteShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteshell-specifymaxmemory"></a>**RemoteShell/SpecifyMaxMemory**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures the maximum total amount of memory in megabytes that can be allocated by any active remote shell and all its child processes.

Any value from 0 to 0x7FFFFFFF can be set, where 0 equals unlimited memory, which means the ability of remote operations to allocate memory is only limited by the available virtual memory.

If you enable this policy setting, the remote operation is terminated when a new allocation exceeds the specified quota.

If you disable or do not configure this policy setting, the value 150 is used by default.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify maximum amount of memory in MB per Shell*
-   GP name: *MaxMemoryPerShellMB*
-   GP path: *Windows Components/Windows Remote Shell*
-   GP ADMX file name: *WindowsRemoteShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteshell-specifymaxprocesses"></a>**RemoteShell/SpecifyMaxProcesses**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures the maximum number of processes a remote shell is allowed to launch.

If you enable this policy setting, you can specify any number from 0 to 0x7FFFFFFF to set the maximum number of process per shell. Zero (0) means unlimited number of processes.

If you disable or do not configure this policy setting, the limit is five processes per shell.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify maximum number of processes per Shell*
-   GP name: *MaxProcessesPerShell*
-   GP path: *Windows Components/Windows Remote Shell*
-   GP ADMX file name: *WindowsRemoteShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteshell-specifymaxremoteshells"></a>**RemoteShell/SpecifyMaxRemoteShells**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting configures the maximum number of concurrent shells and any user can remotely open on the same system.

Any number from 0 to 0x7FFFFFFF can be set, where 0 means unlimited number of shells.

If you enable this policy setting, the user cannot open new remote shells if the count exceeds the specified limit.

If you disable or do not configure this policy setting, by default the limit is set to two remote shells per user.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify maximum number of remote shells per user*
-   GP name: *MaxShellsPerUser*
-   GP path: *Windows Components/Windows Remote Shell*
-   GP ADMX file name: *WindowsRemoteShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="remoteshell-specifyshelltimeout"></a>**RemoteShell/SpecifyShellTimeout**

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
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting is deprecated and has no effect when set to any state: Enabled, Disabled, or Not Configured.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Specify Shell Timeout*
-   GP name: *ShellTimeOut*
-   GP path: *Windows Components/Windows Remote Shell*
-   GP ADMX file name: *WindowsRemoteShell.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)