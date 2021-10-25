---
title: Policy CSP - ADMX_WinInit
description: Policy CSP - ADMX_WinInit
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: m365-security
ms.technology: windows-sec
author: dansimp
ms.date: 09/29/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_WinInit
>[!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).


<hr/>

<!--Policies-->
## ADMX_WinInit policies  

<dl>
  <dd>
    <a href="#admx-wininit-disablenamedpipeshutdownpolicydescription">ADMX_WinInit/DisableNamedPipeShutdownPolicyDescription</a>
  </dd>
  <dd>
    <a href="#admx-wininit-hiberboot">ADMX_WinInit/Hiberboot</a>
  </dd>
  <dd>
    <a href="#admx-wininit-shutdowntimeouthungsessionsdescription">ADMX_WinInit/ShutdownTimeoutHungSessionsDescription</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-wininit-disablenamedpipeshutdownpolicydescription"></a>**ADMX_WinInit/DisableNamedPipeShutdownPolicyDescription**  

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
This policy setting controls the legacy remote shutdown interface (named pipe). The named pipe remote shutdown interface is needed in order to shutdown this system from a remote Windows XP or Windows Server 2003 system.

If you enable this policy setting, the system does not create the named pipe remote shutdown interface.

If you disable or do not configure this policy setting, the system creates the named pipe remote shutdown interface.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn off legacy remote shutdown interface*
-   GP name: *DisableNamedPipeShutdownPolicyDescription*
-   GP path: *Windows Components\Shutdown Options*
-   GP ADMX file name: *WinInit.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wininit-hiberboot"></a>**ADMX_WinInit/Hiberboot**  

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
This policy setting controls the use of fast startup.  

If you enable this policy setting, the system requires hibernate to be enabled.

If you disable or do not configure this policy setting, the local setting is used.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Require use of fast startup*
-   GP name: *Hiberboot*
-   GP path: *System\Shutdown*
-   GP ADMX file name: *WinInit.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-wininit-shutdowntimeouthungsessionsdescription"></a>**ADMX_WinInit/ShutdownTimeoutHungSessionsDescription**  

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
This policy setting configures the number of minutes the system waits for the hung logon sessions before proceeding with the system shutdown.

If you enable this policy setting, the system waits for the hung logon sessions for the number of minutes specified.

If you disable or do not configure this policy setting, the default timeout value is 3 minutes for workstations and 15 minutes for servers.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Timeout for hung logon sessions during shutdown*
-   GP name: *ShutdownTimeoutHungSessionsDescription*
-   GP path: *Windows Components\Shutdown Options*
-   GP ADMX file name: *WinInit.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>



<!--/Policies-->

