---
title: Policy CSP - ADMX_TerminalServer
description: Policy CSP - ADMX_TerminalServer
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/23/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_TerminalServer

> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable.  For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<hr/>

<!--Policies-->
## ADMX_TerminalServer policies  

<dl>
  <dd>
    <a href="#admx-terminalserver-ts_gateway_policy_enable">ADMX_TerminalServer/TS_GATEWAY_POLICY_ENABLE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_gateway_policy_auth_method">ADMX_TerminalServer/TS_GATEWAY_POLICY_AUTH_METHOD</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_radc_defaultconnection">ADMX_TerminalServer/TS_RADC_DefaultConnection</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_gateway_policy_enable"></a>**ADMX_TerminalServer/TS_GATEWAY_POLICY_ENABLE**  

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
This policy setting allows you to specify whether the client computer redirects its time zone settings to the Remote Desktop Services session.  

If you enable this policy setting, clients that are capable of time zone redirection send their time zone information to the server. The server base time is then used to calculate the current session time (current session time = server base time + client time zone).  

If you disable or do not configure this policy setting, the client computer does not redirect its time zone information and the session time zone is the same as the server time zone.  

Time zone redirection is possible only when connecting to at least a Microsoft Windows Server 2003 terminal server with a client using RDP 5.1 or later.

<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow time zone redirection*
-   GP name: *TS_GATEWAY_POLICY_ENABLE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_gateway_policy_auth_method"></a>**ADMX_TerminalServer/TS_GATEWAY_POLICY_AUTH_METHOD**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting specifies whether to prevent the sharing of Clipboard contents (Clipboard redirection) between a remote computer and a client computer during a Remote Desktop Services session.  

You can use this setting to prevent users from redirecting Clipboard data to and from the remote computer and the local computer. By default, Remote Desktop Services allows Clipboard redirection.  

If you enable this policy setting, users cannot redirect Clipboard data.  

If you disable this policy setting, Remote Desktop Services always allows Clipboard redirection.  

If you do not configure this policy setting, Clipboard redirection is not specified at the Group Policy level.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow Clipboard redirection*
-   GP name: *TS_GATEWAY_POLICY_AUTH_METHOD*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_radc_defaultconnection"></a>**ADMX_TerminalServer/TS_RADC_DefaultConnection**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->

This policy setting specifies the default connection URL for RemoteApp and Desktop Connections. The default connection URL is a specific connection that can only be configured by using Group Policy. In addition to the capabilities that are common to all connections, the default connection URL allows document file types to be associated with RemoteApp programs.  The default connection URL must be configured in the form of [http://contoso.com/rdweb/Feed/webfeed.aspx](http://contoso.com/rdweb/Feed/webfeed.aspx).    

- If you enable this policy setting, the specified URL is configured as the default connection URL for the user and replaces any existing connection URL. The user cannot change the default connection URL. The user's default logon credentials are used when setting up the default connection URL.  

- If you disable or do not configure this policy setting, the user has no default connection URL.  

RemoteApp programs that are installed through RemoteApp and Desktop Connections from an un-trusted server can compromise the security of a user's account.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify default connection URL*
-   GP name: *TS_RADC_DefaultConnection*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

