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
  <dd>
    <a href="#admx-terminalserver-ts_rdsappx_waitforregistration">ADMX_TerminalServer/TS_RDSAppX_WaitForRegistration</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_remotecontrol_1">ADMX_TerminalServer/TS_RemoteControl_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_remotecontrol_2">ADMX_TerminalServer/TS_RemoteControl_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_remotedesktopvirtualgraphics">ADMX_TerminalServer/TS_RemoteDesktopVirtualGraphics</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sd_clustname">ADMX_TerminalServer/TS_SD_ClustName</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sd_expose_address">ADMX_TerminalServer/TS_SD_EXPOSE_ADDRESS</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sd_loc">ADMX_TerminalServer/TS_SD_Loc</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_security_layer_policy">ADMX_TerminalServer/TS_SECURITY_LAYER_POLICY</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_select_network_detect">ADMX_TerminalServer/TS_SELECT_NETWORK_DETECT</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_select_transport">ADMX_TerminalServer/TS_SELECT_TRANSPORT</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_advanced_remotefx_remoteapp">ADMX_TerminalServer/TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_auth">ADMX_TerminalServer/TS_SERVER_AUTH</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_avc_hw_encode_preferred">ADMX_TerminalServer/TS_SERVER_AVC_HW_ENCODE_PREFERRED</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_avc444_mode_preferred">ADMX_TerminalServer/TS_SERVER_AVC444_MODE_PREFERRED</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_compressor">ADMX_TerminalServer/TS_SERVER_COMPRESSOR</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_image_quality">ADMX_TerminalServer/TS_SERVER_IMAGE_QUALITY</a>
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

<!--Policy-->
<a href="" id="admx-terminalserver-ts_rdsappx_waitforregistration"></a>**ADMX_TerminalServer/TS_RDSAppX_WaitForRegistration**  

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

This policy setting allows you to specify whether the app registration is completed before showing the Start screen to the user.  By default, when a new user signs in to a computer, the Start screen is shown and apps are registered in the background. However, some apps may not work until app registration is complete.  

- If you enable this policy setting, user sign-in is blocked for up to 6 minutes to complete the app registration. You can use this policy setting when customizing the Start screen on Remote Desktop Session Host servers.  

- If you disable or do not configure this policy setting, the Start screen is shown and apps are registered in the background.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Suspend user sign-in to complete app registration*
-   GP name: *TS_RDSAppX_WaitForRegistration*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_remotecontrol_1"></a>**ADMX_TerminalServer/TS_RemoteControl_1**  

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

This policy determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled.  VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares.  By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted.  

To make changes to this setting effective, you must restart Volume Shadow Copy (VSS) Service.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow or Disallow use of encryption to protect the RPC protocol messages between File Share Shadow Copy Provider running on application server and File Share Shadow Copy Agent running on the file servers*
-   GP name: *TS_RemoteControl_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_remotecontrol_2"></a>**ADMX_TerminalServer/TS_RemoteControl_2**  

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

This policy determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled.  VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares.  By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted.  

To make changes to this setting effective, you must restart Volume Shadow Copy (VSS) Service.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow or Disallow use of encryption to protect the RPC protocol messages between File Share Shadow Copy Provider running on application server and File Share Shadow Copy Agent running on the file servers*
-   GP name: *TS_RemoteControl_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_remotedesktopvirtualgraphics"></a>**ADMX_TerminalServer/TS_RemoteDesktopVirtualGraphics**  

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

This policy setting allows you to specify the visual experience that remote users will have in Remote Desktop Connection (RDC) connections that use RemoteFX. 

You can use this policy to balance the network bandwidth usage with the type of graphics experience that is delivered. 

Depending on the requirements of your users, you can reduce network bandwidth usage by reducing the screen capture rate. You can also reduce network bandwidth usage by reducing the image quality (increasing the amount of image compression that is performed). If you have a higher than average bandwidth network, you can maximize the utilization of bandwidth by selecting the highest setting for screen capture rate and the highest setting for image quality.  

By default, Remote Desktop Connection sessions that use RemoteFX are optimized for a balanced experience over LAN conditions. If you disable or do not configure this policy setting, Remote Desktop Connection sessions that use RemoteFX will be the same as if the medium screen capture rate and the medium image compression settings were selected (the default behavior).


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Optimize visual experience when using RemoteFX*
-   GP name: *TS_RemoteDesktopVirtualGraphics*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_sd_clustname"></a>**ADMX_TerminalServer/TS_SD_ClustName**  

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

This policy setting allows you to specify the name of a farm to join in RD Connection Broker. 

RD Connection Broker uses the farm name to determine which RD Session Host servers are in the same RD Session Host server farm. Therefore, you must use the same farm name for all RD Session Host servers in the same load-balanced farm. The farm name does not have to correspond to a name in Active Directory Domain Services.  

If you specify a new farm name, a new farm is created in RD Connection Broker. If you specify an existing farm name, the server joins that farm in RD Connection Broker.  

- If you enable this policy setting, you must specify the name of a farm in RD Connection Broker.  
- If you disable or do not configure this policy setting, the farm name is not specified at the Group Policy level.  

- This policy setting is not effective unless both the Join RD Connection Broker and the Configure RD Connection Broker server name policy settings are enabled and configured by using Group Policy.  
- For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure RD Connection Broker farm name*
-   GP name: *TS_SD_ClustName*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_sd_expose_address"></a>**ADMX_TerminalServer/TS_SD_EXPOSE_ADDRESS**  

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

This policy setting allows you to specify the redirection method to use when a client device reconnects to an existing Remote Desktop Services session in a load-balanced RD Session Host server farm. 

This setting applies to an RD Session Host server that is configured to use RD Connection Broker and not to the RD Connection Broker server.  

- If you enable this policy setting, a Remote Desktop Services client queries the RD Connection Broker server and is redirected to their existing session by using the IP address of the RD Session Host server where their session exists. To use this redirection method, client computers must be able to connect directly by IP address to RD Session Host servers in the farm.  

- If you disable this policy setting, the IP address of the RD Session Host server is not sent to the client. Instead, the IP address is embedded in a token. 

When a client reconnects to the load balancer, the routing token is used to redirect the client to their existing session on the correct RD Session Host server in the farm. Only disable this setting when your network load-balancing solution supports the use of RD Connection Broker routing tokens and you do not want clients to directly connect by IP address to RD Session Host servers in the load-balanced farm.  

If you do not configure this policy setting, the Use IP address redirection policy setting is not enforced at the group Group policy Policy level and the default will be used. This setting is enabled by default.  

For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.



<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use IP Address Redirection*
-   GP name: *TS_SD_EXPOSE_ADDRESS*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_sd_loc"></a>**ADMX_TerminalServer/TS_SD_Loc**  

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

This policy setting allows you to specify the RD Connection Broker server that the RD Session Host server uses to track and redirect user sessions for a load-balanced RD Session Host server farm. The specified server must be running the Remote Desktop Connection Broker service.

All RD Session Host servers in a load-balanced farm should use the same RD Connection Broker server.  

- If you enable this policy setting, you must specify the RD Connection Broker server by using its fully qualified domain name (FQDN). In Windows Server 2012, for a high availability setup with multiple RD Connection Broker servers, you must provide a semi-colon separated list of the FQDNs of all the RD Connection Broker servers.  

- If you disable or do not configure this policy setting, the policy setting is not specified at the Group Policy level.  

For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard. 
This policy setting is not effective unless the Join RD Connection Broker policy setting is enabled. 

To be an active member of an RD Session Host server farm, the computer account for each RD Session Host server in the farm must be a member of one of the following local groups on the RD Connection Broker server: Session Directory Computers, Session Broker Computers, or RDS Endpoint Servers.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure RD Connection Broker server name*
-   GP name: *TS_SD_Loc*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_security_layer_policy"></a>**ADMX_TerminalServer/TS_SECURITY_LAYER_POLICY**  

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

This policy setting specifies whether to require the use of a specific security layer to secure communications between clients and RD Session Host servers during Remote Desktop Protocol (RDP) connections.  

- If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the security method specified in this setting. 

The following security methods are available:  

- * Negotiate: The Negotiate method enforces the most secure method that is supported by the client. If Transport Layer Security (TLS) version 1.0 is supported, it is used to authenticate the RD Session Host server. If TLS is not supported, native Remote Desktop Protocol (RDP) encryption is used to secure communications, but the RD Session Host server is not authenticated. Native RDP encryption (as opposed to SSL encryption) is not recommended.  

- * RDP: The RDP method uses native RDP encryption to secure communications between the client and RD Session Host server. If you select this setting, the RD Session Host server is not authenticated. Native RDP encryption (as opposed to SSL encryption) is not recommended.  

- * SSL (TLS 1.0): The SSL method requires the use of TLS 1.0 to authenticate the RD Session Host server. If TLS is not supported, the connection fails. This is the recommended setting for this policy.  

- If you disable or do not configure this policy setting, the security method to be used for remote connections to RD Session Host servers is not specified at the Group Policy level.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Require use of specific security layer for remote (RDP) connections*
-   GP name: *TS_SECURITY_LAYER_POLICY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_select_network_detect"></a>**ADMX_TerminalServer/TS_SELECT_NETWORK_DETECT**  

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

This policy setting allows you to specify how the Remote Desktop Protocol will try to detect the network quality (bandwidth and latency).  
You can choose to disable Connect Time Detect, Continuous Network Detect, or both Connect Time Detect and Continuous Network Detect.  
- If you disable Connect Time Detect, Remote Desktop Protocol will not determine the network quality at the connect time, and it will assume that all traffic to this server originates from a low-speed connection.  
- If you disable Continuous Network Detect, Remote Desktop Protocol will not try to adapt the remote user experience to varying network quality.  
- If you disable Connect Time Detect and Continuous Network Detect, Remote Desktop Protocol will not try to determine the network quality at the connect time; instead it will assume that all traffic to this server originates from a low-speed connection, and it will not try to adapt the user experience to varying network quality.  
- If you disable or do not configure this policy setting, Remote Desktop Protocol will spend up to a few seconds trying to determine the network quality prior to the connection, and it will continuously try to adapt the user experience to varying network quality.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Select network detection on the server*
-   GP name: *TS_SELECT_NETWORK_DETECT*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_select_transport"></a>**ADMX_TerminalServer/TS_SELECT_TRANSPORT**  

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

This policy setting allows you to specify which protocols can be used for Remote Desktop Protocol (RDP) access to this server.  

- If you enable this policy setting, you must specify if you would like RDP to use UDP.  You can select one of the following options: 
"Use both UDP and TCP", "Use only TCP" or "Use either UDP or TCP (default)"  If you select "Use either UDP or TCP" and the UDP connection is successful, most of the RDP traffic will use UDP.  If the UDP connection is not successful or if you select "Use only TCP," all of the RDP traffic will use TCP.  

- If you disable or do not configure this policy setting, RDP will choose the optimal protocols for delivering the best user experience.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Select RDP transport protocols*
-   GP name: *TS_SELECT_TRANSPORT*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_server_advanced_remotefx_remoteapp"></a>**ADMX_TerminalServer/TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP**  

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

This policy setting allows you to enable RemoteApp programs to use advanced graphics, including support for transparency, live thumbnails, and seamless application moves. 

This policy setting applies only to RemoteApp programs and does not apply to remote desktop sessions.  

- If you enable or do not configure this policy setting, RemoteApp programs published from this RD Session Host server will use these advanced graphics.  

- If you disable this policy setting, RemoteApp programs published from this RD Session Host server will not use these advanced graphics. 

You may want to choose this option if you discover that applications published as RemoteApp programs do not support these advanced graphics.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use advanced RemoteFX graphics for RemoteApp*
-   GP name: *TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_server_auth"></a>**ADMX_TerminalServer/TS_SERVER_AUTH**  

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

This policy setting allows you to specify whether the client will establish a connection to the RD Session Host server when the client cannot authenticate the RD Session Host server.  

- If you enable this policy setting, you must specify one of the following settings:  

Always connect, even if authentication fails: The client connects to the RD Session Host server even if the client cannot authenticate the RD Session Host server.  

Warn me if authentication fails: The client attempts to authenticate the RD Session Host server. If the RD Session Host server can be authenticated, the client establishes a connection to the RD Session Host server. If the RD Session Host server cannot be authenticated, the user is prompted to choose whether to connect to the RD Session Host server without authenticating the RD Session Host server.  

Do not connect if authentication fails: The client establishes a connection to the RD Session Host server only if the RD Session Host server can be authenticated.  

- If you disable or do not configure this policy setting, the authentication setting that is specified in Remote Desktop Connection or in the .rdp file determines whether the client establishes a connection to the RD Session Host server when the client cannot authenticate the RD Session Host server.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure server authentication for client*
-   GP name: *TS_SERVER_AUTH*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_server_avc_hw_encode_preferred"></a>**ADMX_TerminalServer/TS_SERVER_AVC_HW_ENCODE_PREFERRED**  

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

This policy setting lets you enable H.264/AVC hardware encoding support for Remote Desktop Connections. 

- When you enable hardware encoding, if an error occurs, we will attempt to use software encoding. 

- If you disable or do not configure this policy, we will always use software encoding.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure H.264/AVC hardware encoding for Remote Desktop Connections*
-   GP name: *TS_SERVER_AVC_HW_ENCODE_PREFERRED*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_server_avc444_mode_preferred"></a>**ADMX_TerminalServer/TS_SERVER_AVC444_MODE_PREFERRED**  

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

This policy setting prioritizes the H.264/AVC 444 graphics mode for non-RemoteFX vGPU scenarios. 

When you use this setting on the RDP server, the server will use H.264/AVC 444 as the codec in an RDP 10 connection where both the client and server can use H.264/AVC 444.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prioritize H.264/AVC 444 graphics mode for Remote Desktop Connections*
-   GP name: *TS_SERVER_AVC444_MODE_PREFERRED*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_server_compressor"></a>**ADMX_TerminalServer/TS_SERVER_COMPRESSOR**  

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

This policy setting allows you to specify which Remote Desktop Protocol (RDP) compression algorithm to use.  By default, servers use an RDP compression algorithm that is based on the server's hardware configuration.  

If you enable this policy setting, you can specify which RDP compression algorithm to use. 

If you select the algorithm that is optimized to use less memory, this option is less memory-intensive, but uses more network bandwidth. 

If you select the algorithm that is optimized to use less network bandwidth, this option uses less network bandwidth, but is more memory-intensive. 

Additionally, a third option is available that balances memory usage and network bandwidth. In Windows  8 only the compression algorithm that balances memory usage and bandwidth is used.  You can also choose not to use an RDP compression algorithm. Choosing not to use an RDP compression algorithm will use more network bandwidth and is only recommended if you are using a hardware device that is designed to optimize network traffic. Even if you choose not to use an RDP compression algorithm, some graphics data will still be compressed.  If you disable or do not configure this policy setting, the default RDP compression algorithm will be used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure compression for RemoteFX data*
-   GP name: *TS_SERVER_COMPRESSOR*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_server_image_quality"></a>**ADMX_TerminalServer/TS_SERVER_IMAGE_QUALITY**  

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

This policy setting allows you to specify the visual quality for remote users when connecting to this computer by using Remote Desktop Connection. You can use this policy setting to balance the network bandwidth usage with the visual quality that is delivered.  

- If you enable this policy setting and set quality to Low, RemoteFX Adaptive Graphics uses an encoding mechanism that results in low quality images. This mode consumes the lowest amount of network bandwidth of the quality modes.  

- If you enable this policy setting and set quality to Medium, RemoteFX Adaptive Graphics uses an encoding mechanism that results in medium quality images. This mode provides better graphics quality than low quality and uses less bandwidth than high quality.  

- If you enable this policy setting and set quality to High, RemoteFX Adaptive Graphics uses an encoding mechanism that results in high quality images and consumes moderate network bandwidth.  

- If you enable this policy setting and set quality to Lossless, RemoteFX Adaptive Graphics uses lossless encoding. In this mode, the color integrity of the graphics data is not impacted. However, this setting results in a significant increase in network bandwidth consumption. We recommend that you set this for very specific cases only.  

- If you disable or do not configure this policy setting, RemoteFX Adaptive Graphics uses an encoding mechanism that results in medium quality images.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure image quality for RemoteFX Adaptive Graphics*
-   GP name: *TS_SERVER_IMAGE_QUALITY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--/Policies-->

