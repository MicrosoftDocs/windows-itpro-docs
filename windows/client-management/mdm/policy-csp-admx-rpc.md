---
title: Policy CSP - ADMX_RPC
description: Policy CSP - ADMX_RPC
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 12/08/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_RPC
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_RPC policies  

<dl>
  <dd>
    <a href="#admx-rpc-rpcextendederrorinformation">ADMX_RPC/RpcExtendedErrorInformation</a>
  </dd>
  <dd>
    <a href="#admx-rpc-rpcignoredelegationfailure">ADMX_RPC/RpcIgnoreDelegationFailure</a>
  </dd>
  <dd>
    <a href="#admx-rpc-rpcminimumhttpconnectiontimeout">ADMX_RPC/RpcMinimumHttpConnectionTimeout</a>
  </dd>
  <dd>
    <a href="#admx-rpc-rpcstateinformation">ADMX_RPC/RpcStateInformation</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-rpc-rpcextendederrorinformation"></a>**ADMX_RPC/RpcExtendedErrorInformation**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether the RPC runtime generates extended error information when an error occurs.

Extended error information includes the local time that the error occurred, the RPC version, and the name of the computer on which the error occurred, or from which it was propagated. Programs can retrieve the extended error information by using standard Windows application programming interfaces (APIs).

If you disable this policy setting, the RPC Runtime only generates a status code to indicate an error condition.

If you do not configure this policy setting, it remains disabled.  It will only generate a status code to indicate an error condition.

If you enable this policy setting, the RPC runtime will generate extended error information.

You must select an error response type in the drop-down box.

- "Off" disables all extended error information for all processes. RPC only generates an error code.
- "On with Exceptions" enables extended error information, but lets you disable it for selected processes. To disable extended error information for a process while this policy setting is in effect, the command that starts the process must begin with one of the strings in the Extended Error Information Exception field.
- "Off with Exceptions" disables extended error information, but lets you enable it for selected processes. To enable extended error information for a process while this policy setting is in effect, the command that starts the process must begin with one of the strings in the Extended Error Information Exception field.
- "On" enables extended error information for all processes.

> [!NOTE]
> For information about the Extended Error Information Exception field, see the Windows Software Development Kit (SDK).
>
> Extended error information is formatted to be compatible with other operating systems and older Microsoft operating systems, but only newer Microsoft operating systems can read and respond to the information.
>
> The default policy setting, "Off," is designed for systems where extended error information is considered to be sensitive, and it should not be made available remotely.
>
> This policy setting will not be applied until the system is rebooted.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Propagate extended error information*
-   GP name: *RpcExtendedErrorInformation*
-   GP path: *System\Remote Procedure Call*
-   GP ADMX file name: *RPC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-rpc-rpcignoredelegationfailure"></a>**ADMX_RPC/RpcIgnoreDelegationFailure**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether the RPC Runtime ignores delegation failures when delegation is requested.

The constrained delegation model, introduced in Windows Server 2003, does not report that delegation was enabled on a security context when a client connects to a server. Callers of RPC and COM are encouraged to use the RPC_C_QOS_CAPABILITIES_IGNORE_DELEGATE_FAILURE flag, but some applications written for the traditional delegation model prior to Windows Server 2003 may not use this flag and will encounter RPC_S_SEC_PKG_ERROR when connecting to a server that uses constrained delegation.

If you disable this policy setting, the RPC Runtime will generate RPC_S_SEC_PKG_ERROR errors to applications that ask for delegation and connect to servers using constrained delegation. 

If you do not configure this policy setting, it remains disabled and will generate RPC_S_SEC_PKG_ERROR errors to applications that ask for delegation and connect to servers using constrained delegation.

If you enable this policy setting, then:

- "Off" directs the RPC Runtime to generate RPC_S_SEC_PKG_ERROR if the client asks for delegation, but the created security context does not support delegation.

- "On" directs the RPC Runtime to accept security contexts that do not support delegation even if delegation was asked for.

> [!NOTE]
> This policy setting will not be applied until the system is rebooted.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ignore Delegation Failure*
-   GP name: *RpcIgnoreDelegationFailure*
-   GP path: *System\Remote Procedure Call*
-   GP ADMX file name: *RPC.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-rpc-rpcminimumhttpconnectiontimeout"></a>**ADMX_RPC/RpcMinimumHttpConnectionTimeout**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls the idle connection timeout for RPC/HTTP connections.  

This policy setting is useful in cases where a network agent like an HTTP proxy or a router uses a lower idle connection timeout than the IIS server running the RPC/HTTP proxy. In such cases, RPC/HTTP clients may encounter errors because connections will be timed out faster than expected. Using this policy setting you can force the RPC Runtime and the RPC/HTTP Proxy to use a lower connection timeout.

This policy setting is only applicable when the RPC Client, the RPC Server and the RPC HTTP Proxy are all running Windows Server 2003 family/Windows XP SP1 or higher versions. If either the RPC Client or the RPC Server or the RPC HTTP Proxy run on an older version of Windows, this policy setting will be ignored.

The minimum allowed value for this policy setting is 90 seconds. The maximum is 7200 seconds (2 hours).

If you disable this policy setting, the idle connection timeout on the IIS server running the RPC HTTP proxy will be used.

If you do not configure this policy setting, it will remain disabled.  The idle connection timeout on the IIS server running the RPC HTTP proxy will be used.

If you enable this policy setting, and the IIS server running the RPC HTTP proxy is configured with a lower idle connection timeout, the timeout on the IIS server is used. Otherwise, the provided timeout value is used. The timeout is given in seconds.

> [!NOTE]
> This policy setting will not be applied until the system is rebooted.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set Minimum Idle Connection Timeout for RPC/HTTP connections*
-   GP name: *RpcMinimumHttpConnectionTimeout*
-   GP path: *System\Remote Procedure Call*
-   GP ADMX file name: *RPC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-rpc-rpcstateinformation"></a>**ADMX_RPC/RpcStateInformation**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether the RPC Runtime maintains RPC state information for the system, and how much information it maintains. Basic state information, which consists only of the most commonly needed state data, is required for troubleshooting RPC problems.

If you disable this policy setting, the RPC runtime defaults to "Auto2" level.

If you do not configure this policy setting, the RPC  defaults to "Auto2" level. 

If you enable this policy setting, you can use the drop-down box to determine which systems maintain RPC state information.

- "None" indicates that the system does not maintain any RPC state information. Note: Because the basic state information required for troubleshooting has a negligible effect on performance and uses only about 4K of memory, this setting is not recommended for most installations.

- "Auto1" directs RPC to maintain basic state information only if the computer has at least 64 MB of memory.

- "Auto2" directs RPC to maintain basic state information only if the computer has at least 128 MB of memory and is running Windows 2000 Server, Windows 2000 Advanced Server, or Windows 2000 Datacenter Server. 

- "Server" directs RPC to maintain basic state information on the computer, regardless of its capacity.

- "Full" directs RPC to maintain complete RPC state information on the system, regardless of its capacity. Because this level can degrade performance, it is recommended for use only while you are investigating an RPC problem.

> [!NOTE]
> To retrieve the RPC state information from a system that maintains it, you must use a debugging tool.
>
> This policy setting will not be applied until the system is rebooted.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](https://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Maintain RPC Troubleshooting State Information*
-   GP name: *RpcStateInformation*
-   GP path: *System\Remote Procedure Call*
-   GP ADMX file name: *RPC.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are currently only available as part of a Windows Insider release.

<!--/Policies-->

