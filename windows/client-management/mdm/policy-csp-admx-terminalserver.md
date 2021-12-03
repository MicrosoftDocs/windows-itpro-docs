---
title: Policy CSP - ADMX_TerminalServer
description: Policy CSP - ADMX_TerminalServer
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nimishasatapathy
ms.date: 11/22/2021
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
    <a href="#admx-terminalserver-ts_auto_reconnect">ADMX_TerminalServer/TS_AUTO_RECONNECT</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_camera_redirection">ADMX_TerminalServer/TS_CAMERA_REDIRECTION</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_certificate_template_policy">ADMX_TerminalServer/TS_CERTIFICATE_TEMPLATE_POLICY</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_allow_signed_files_1">ADMX_TerminalServer/TS_CLIENT_ALLOW_SIGNED_FILES_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_allow_signed_files_2">ADMX_TerminalServer/TS_CLIENT_ALLOW_SIGNED_FILES_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_allow_unsigned_files_1">ADMX_TerminalServer/TS_CLIENT_ALLOW_UNSIGNED_FILES_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_allow_unsigned_files_2">ADMX_TerminalServer/TS_CLIENT_ALLOW_UNSIGNED_FILES_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_audio">ADMX_TerminalServer/TS_CLIENT_AUDIO</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_audio_capture">ADMX_TerminalServer/TS_CLIENT_AUDIO_CAPTURE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_audio_quality">ADMX_TerminalServer/TS_CLIENT_AUDIO_QUALITY</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_clipboard">ADMX_TerminalServer/TS_CLIENT_CLIPBOARD</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_com">ADMX_TerminalServer/TS_CLIENT_COM</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_default_m">ADMX_TerminalServer/TS_CLIENT_DEFAULT_M</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_disable_hardware_mode">ADMX_TerminalServer/TS_CLIENT_DISABLE_HARDWARE_MODE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_disable_password_saving_1">ADMX_TerminalServer/TS_CLIENT_DISABLE_PASSWORD_SAVING_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_lpt">ADMX_TerminalServer/TS_CLIENT_LPT</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_pnp">ADMX_TerminalServer/TS_CLIENT_PNP</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_printer">ADMX_TerminalServer/TS_CLIENT_PRINTER</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_trusted_certificate_thumbprints_1">ADMX_TerminalServer/TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_trusted_certificate_thumbprints_2">ADMX_TerminalServer/TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_client_turn_off_udp">ADMX_TerminalServer/TS_CLIENT_TURN_OFF_UDP</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_colordepth">ADMX_TerminalServer/TS_COLORDEPTH</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_delete_roaming_user_profiles">ADMX_TerminalServer/TS_DELETE_ROAMING_USER_PROFILES</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_disable_remote_desktop_wallpaper">ADMX_TerminalServer/TS_DISABLE_REMOTE_DESKTOP_WALLPAPER</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_dx_use_full_hwgpu">ADMX_TerminalServer/TS_DX_USE_FULL_HWGPU</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_easy_print">ADMX_TerminalServer/TS_EASY_PRINT</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_easy_print_user">ADMX_TerminalServer/TS_EASY_PRINT_User</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_enablevirtualgraphics">ADMX_TerminalServer/TS_EnableVirtualGraphics</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_fallbackprintdrivertype">ADMX_TerminalServer/TS_FALLBACKPRINTDRIVERTYPE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_forcible_logoff">ADMX_TerminalServer/TS_FORCIBLE_LOGOFF</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_gateway_policy_enable">ADMX_TerminalServer/TS_GATEWAY_POLICY_ENABLE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_gateway_policy_auth_method">ADMX_TerminalServer/TS_GATEWAY_POLICY_AUTH_METHOD</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_gateway_policy_server">ADMX_TerminalServer/TS_GATEWAY_POLICY_SERVER</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_join_session_directory">ADMX_TerminalServer/TS_JOIN_SESSION_DIRECTORY</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_keep_alive">ADMX_TerminalServer/TS_KEEP_ALIVE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_license_secgroup">ADMX_TerminalServer/TS_LICENSE_SECGROUP</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_license_servers">ADMX_TerminalServer/TS_LICENSE_SERVERS</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_license_tooltip">ADMX_TerminalServer/TS_LICENSE_TOOLTIP</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_licensing_mode">ADMX_TerminalServer/TS_LICENSING_MODE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_max_con_policy">ADMX_TerminalServer/TS_MAX_CON_POLICY</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_maxdisplayres">ADMX_TerminalServer/TS_MAXDISPLAYRES</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_maxmonitor">ADMX_TerminalServer/TS_MAXMONITOR</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_nodisconnectmenu">ADMX_TerminalServer/TS_NoDisconnectMenu</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_nosecuritymenu">ADMX_TerminalServer/TS_NoSecurityMenu</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_preventlicenseupgrade">ADMX_TerminalServer/TS_PreventLicenseUpgrade</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_promt_creds_client_comp">ADMX_TerminalServer/TS_PROMT_CREDS_CLIENT_COMP</a>
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
  <dd>
    <a href="#admx-terminalserver-ts_server_legacy_rfx">ADMX_TerminalServer/TS_SERVER_LEGACY_RFX</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_profile">ADMX_TerminalServer/TS_SERVER_PROFILE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_visexp">ADMX_TerminalServer/TS_SERVER_VISEXP</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_server_wddm_graphics_driver">ADMX_TerminalServer/TS_SERVER_WDDM_GRAPHICS_DRIVER</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_session_end_on_limit_1">ADMX_TerminalServer/TS_Session_End_On_Limit_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_session_end_on_limit_2">ADMX_TerminalServer/TS_Session_End_On_Limit_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sessions_disconnected_timeout_1">ADMX_TerminalServer/TS_SESSIONS_Disconnected_Timeout_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sessions_disconnected_timeout_2">ADMX_TerminalServer/TS_SESSIONS_Disconnected_Timeout_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sessions_idle_limit_1">ADMX_TerminalServer/TS_SESSIONS_Idle_Limit_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sessions_idle_limit_2">ADMX_TerminalServer/TS_SESSIONS_Idle_Limit_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sessions_limits_1">ADMX_TerminalServer/TS_SESSIONS_Limits_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_sessions_limits_2">ADMX_TerminalServer/TS_SESSIONS_Limits_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_single_session">ADMX_TerminalServer/TS_SINGLE_SESSION</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_smart_card">ADMX_TerminalServer/TS_SMART_CARD</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_start_program_1">ADMX_TerminalServer/TS_START_PROGRAM_1</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_start_program_2">ADMX_TerminalServer/TS_START_PROGRAM_2</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_temp_delete">ADMX_TerminalServer/TS_TEMP_DELETE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_temp_per_session">ADMX_TerminalServer/TS_TEMP_PER_SESSION</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_time_zone">ADMX_TerminalServer/TS_TIME_ZONE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_tscc_permissions_policy">ADMX_TerminalServer/TS_TSCC_PERMISSIONS_POLICY</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_turnoff_singleapp">ADMX_TerminalServer/TS_TURNOFF_SINGLEAPP</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_uia">ADMX_TerminalServer/TS_UIA</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_usb_redirection_disable">ADMX_TerminalServer/TS_USB_REDIRECTION_DISABLE</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_user_authentication_policy">ADMX_TerminalServer/TS_USER_AUTHENTICATION_POLICY</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_user_home">ADMX_TerminalServer/TS_USER_HOME</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_user_mandatory_profiles">ADMX_TerminalServer/TS_USER_MANDATORY_PROFILES</a>
  </dd>
  <dd>
    <a href="#admx-terminalserver-ts_user_profiles">ADMX_TerminalServer/TS_USER_PROFILES</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_auto_reconnect"></a>**ADMX_TerminalServer/TS_AUTO_RECONNECT**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
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
This policy specifies whether to allow Remote Desktop Connection clients to automatically reconnect to sessions on an RD Session Host server if their network link is temporarily lost.

By default, a maximum  of twenty reconnection attempts are made at five second intervals.  If the status is set to Enabled, automatic reconnection is attempted for all clients running Remote Desktop Connection whenever their network connection is lost.

If the status is set to Disabled, automatic reconnection of clients is prohibited.  If the status is set to Not Configured, automatic reconnection is not specified at the  Group Policy level. However, users can configure automatic reconnection using the "Reconnect if connection is dropped" checkbox on the Experience tab in Remote Desktop Connection.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Automatic reconnection*
-   GP name: *TS_AUTO_RECONNECT*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_camera_redirection"></a>**ADMX_TerminalServer/TS_CAMERA_REDIRECTION**  

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
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
This policy setting lets you control the redirection of video capture devices to the remote computer in a Remote Desktop Services session. By default, Remote Desktop Services allows redirection of video capture devices.  

If you enable this policy setting, users cannot redirect their video capture devices to the remote computer.  

If you disable or do not configure this policy setting, users can redirect their video capture devices to the remote computer. Users can use the More option on the Local Resources tab of Remote Desktop Connection to choose the video capture devices to redirect to the remote computer.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow video capture redirection*
-   GP name: *TS_CAMERA_REDIRECTION*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_certificate_template_policy"></a>**ADMX_TerminalServer/TS_CERTIFICATE_TEMPLATE_POLICY**  

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
This policy setting allows you to specify the name of the certificate template that determines which certificate is automatically selected to authenticate an RD Session Host server.  

A certificate is needed to authenticate an RD Session Host server when TLS 1.0, 1.1 or 1.2 is used to secure communication between a client and an RD Session Host server during RDP connections.  

If you enable this policy setting, you need to specify a certificate template name. Only certificates created by using the specified certificate template will be considered when a certificate to authenticate the RD Session Host server is automatically selected. Automatic certificate selection only occurs when a specific certificate has not been selected.  

If no certificate can be found that was created with the specified certificate template, the RD Session Host server will issue a certificate enrollment request and will use the current certificate until the request is completed. If more than one certificate is found that was created with the specified certificate template, the certificate that will expire latest and that matches the current name of the RD Session Host server will be selected.  If you disable or do not configure this policy, the certificate template name is not specified at the Group Policy level. By default, a self-signed certificate is used to authenticate the RD Session Host server.  

>[!NOTE]
>If you select a specific certificate to be used to authenticate the RD Session Host server, that certificate will take precedence over this policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Server authentication certificate template*
-   GP name: *TS_CERTIFICATE_TEMPLATE_POLICY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_allow_signed_files_1"></a>**ADMX_TerminalServer/TS_CLIENT_ALLOW_SIGNED_FILES_1**  

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


<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_allow_signed_files_1"></a>**ADMX_TerminalServer/TS_CLIENT_ALLOW_SIGNED_FILES_1**  

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
This policy setting allows you to specify whether users can run Remote Desktop Protocol (.rdp) files from a publisher that signed the file with a valid certificate. A valid certificate is one that is issued by an authority recognized by the client, such as the issuers in the client's Third-Party Root Certification Authorities certificate store. 

This policy setting also controls whether the user can start an RDP session by using default .rdp settings (for example, when a user directly opens the Remote Desktop Connection [RDC] client without specifying an .rdp file).  

If you enable or do not configure this policy setting, users can run .rdp files that are signed with a valid certificate. Users can also start an RDP session with default .rdp settings by directly opening the RDC client. When a user starts an RDP session, the user is asked to confirm whether they want to connect.  

If you disable this policy setting, users cannot run .rdp files that are signed with a valid certificate. Additionally, users cannot start an RDP session by directly opening the RDC client and specifying the remote computer name. When a user tries to start an RDP session, the user receives a message that the publisher has been blocked.  

>[!NOTE]
>You can define this policy setting in the Computer Configuration node or in the User Configuration node. If you configure this policy setting for the computer, all users on the computer are affected.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow .rdp files from valid publishers and user's default .rdp settings*
-   GP name: *TS_CLIENT_ALLOW_SIGNED_FILES_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>
<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_allow_signed_files_2"></a>**ADMX_TerminalServer/TS_CLIENT_ALLOW_SIGNED_FILES_2**  

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
This policy setting allows you to specify whether users can run Remote Desktop Protocol (.rdp) files from a publisher that signed the file with a valid certificate. A valid certificate is one that is issued by an authority recognized by the client, such as the issuers in the client's Third-Party Root Certification Authorities certificate store. 

This policy setting also controls whether the user can start an RDP session by using default .rdp settings (for example, when a user directly opens the Remote Desktop Connection [RDC] client without specifying an .rdp file).  

If you enable or do not configure this policy setting, users can run .rdp files that are signed with a valid certificate. Users can also start an RDP session with default .rdp settings by directly opening the RDC client. When a user starts an RDP session, the user is asked to confirm whether they want to connect.  

If you disable this policy setting, users cannot run .rdp files that are signed with a valid certificate. Additionally, users cannot start an RDP session by directly opening the RDC client and specifying the remote computer name. When a user tries to start an RDP session, the user receives a message that the publisher has been blocked.  

>[!NOTE]
>You can define this policy setting in the Computer Configuration node or in the User Configuration node. If you configure this policy setting for the computer, all users on the computer are affected.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow .rdp files from valid publishers and user's default .rdp settings*
-   GP name: *TS_CLIENT_ALLOW_SIGNED_FILES_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_allow_unsigned_files_1"></a>**ADMX_TerminalServer/TS_CLIENT_ALLOW_UNSIGNED_FILES_1**  

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
This policy setting allows you to specify whether users can run unsigned Remote Desktop Protocol (.rdp) files and .rdp files from unknown publishers on the client computer.  

If you enable or do not configure this policy setting, users can run unsigned .rdp files and .rdp files from unknown publishers on the client computer. Before a user starts an RDP session, the user receives a warning message and is asked to confirm whether they want to connect.  

If you disable this policy setting, users cannot run unsigned .rdp files and .rdp files from unknown publishers on the client computer. If the user tries to start an RDP session, the user receives a message that the publisher has been blocked.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow .rdp files from unknown publishers*
-   GP name: *TS_CLIENT_ALLOW_UNSIGNED_FILES_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_allow_unsigned_files_2"></a>**ADMX_TerminalServer/TS_CLIENT_ALLOW_UNSIGNED_FILES_2**  

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
This policy setting allows you to specify whether users can run unsigned Remote Desktop Protocol (.rdp) files and .rdp files from unknown publishers on the client computer.  

If you enable or do not configure this policy setting, users can run unsigned .rdp files and .rdp files from unknown publishers on the client computer. Before a user starts an RDP session, the user receives a warning message and is asked to confirm whether they want to connect.  

If you disable this policy setting, users cannot run unsigned .rdp files and .rdp files from unknown publishers on the client computer. If the user tries to start an RDP session, the user receives a message that the publisher has been blocked.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow .rdp files from unknown publishers*
-   GP name: *TS_CLIENT_ALLOW_UNSIGNED_FILES_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_audio"></a>**ADMX_TerminalServer/TS_CLIENT_AUDIO**  

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
This policy setting allows you to specify whether users can redirect the remote computer's audio and video output in a Remote Desktop Services session.  

Users can specify where to play the remote computer's audio output by configuring the remote audio settings on the Local Resources tab in Remote Desktop Connection (RDC). Users can choose to play the remote audio on the remote computer or on the local computer. Users can also choose to not play the audio. Video playback can be configured by using the video playback setting in a Remote Desktop Protocol (.rdp) file. By default, video playback is enabled.  

By default, audio and video playback redirection is not allowed when connecting to a computer running Windows Server 2008 R2, Windows Server 2008, or Windows Server 2003. Audio and video playback redirection is allowed by default when connecting to a computer running Windows 8, Windows Server 2012, Windows 7, Windows Vista, or Windows XP Professional.  

If you enable this policy setting, audio and video playback redirection is allowed.  

If you disable this policy setting, audio and video playback redirection is not allowed, even if audio playback redirection is specified in RDC, or video playback is specified in the .rdp file.  If you do not configure this policy setting audio and video playback redirection is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow audio and video playback redirection*
-   GP name: *TS_CLIENT_AUDIO*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_audio_capture"></a>**ADMX_TerminalServer/TS_CLIENT_AUDIO_CAPTURE**  

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
This policy setting allows you to specify whether users can record audio to the remote computer in a Remote Desktop Services session.  Users can specify whether to record audio to the remote computer by configuring the remote audio settings on the Local Resources tab in Remote Desktop Connection (RDC).

Users can record audio by using an audio input device on the local computer, such as a built-in microphone.  By default, audio recording redirection is not allowed when connecting to a computer running Windows Server 2008 R2. Audio recording redirection is allowed by default when connecting to a computer running at least Windows 7, or Windows Server 2008 R2.  

If you enable this policy setting, audio recording redirection is allowed.  

If you disable this policy setting, audio recording redirection is not allowed, even if audio recording redirection is specified in RDC.  If you do not configure this policy setting, Audio recording redirection is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow audio recording redirection*
-   GP name: *TS_CLIENT_AUDIO_CAPTURE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_audio_quality"></a>**ADMX_TerminalServer/TS_CLIENT_AUDIO_QUALITY**  

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
This policy setting allows you to limit the audio playback quality for a Remote Desktop Services session. Limiting the quality of audio playback can improve connection performance, particularly over slow links.  If you enable this policy setting, you must select one of the following:  High, Medium, or Dynamic. If you select High, the audio will be sent without any compression and with minimum latency. This requires a large amount of bandwidth. If you select Medium, the audio will be sent with some compression and with minimum latency as determined by the codec that is being used.

If you select Dynamic, the audio will be sent with a level of compression that is determined by the bandwidth of the remote connection.  The audio playback quality that you specify on the remote computer by using this policy setting is the maximum quality that can be used for a Remote Desktop Services session, regardless of the audio playback quality configured on the client computer.  

For example, if the audio playback quality configured on the client computer is higher than the audio playback quality configured on the remote computer, the lower level of audio playback quality will be used.  

Audio playback quality can be configured on the client computer by using the audioqualitymode setting in a Remote Desktop Protocol (.rdp) file. By default, audio playback quality is set to Dynamic.  

If you disable or do not configure this policy setting, audio playback quality will be set to Dynamic.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Limit audio playback quality*
-   GP name: *TS_CLIENT_AUDIO_QUALITY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_clipboard"></a>**ADMX_TerminalServer/TS_CLIENT_CLIPBOARD**  

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
This policy setting specifies whether to prevent the sharing of Clipboard contents (Clipboard redirection) between a remote computer and a client computer during a Remote Desktop Services session.  

You can use this setting to prevent users from redirecting Clipboard data to and from the remote computer and the local computer. By default, Remote Desktop Services allows Clipboard redirection.  

If you enable this policy setting, users cannot redirect Clipboard data.  

If you disable this policy setting, Remote Desktop Services always allows Clipboard redirection.  

If you do not configure this policy setting, Clipboard redirection is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow Clipboard redirection*
-   GP name: *TS_CLIENT_CLIPBOARD*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_com"></a>**ADMX_TerminalServer/TS_CLIENT_COM**  

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
This policy setting specifies whether to prevent the redirection of data to client COM ports from the remote computer in a Remote Desktop Services session.  

You can use this setting to prevent users from redirecting data to COM port peripherals or mapping local COM ports while they are logged on to a Remote Desktop Services session. By default, Remote Desktop Services allows this COM port redirection.  

If you enable this policy setting, users cannot redirect server data to the local COM port.  

If you disable this policy setting, Remote Desktop Services always allows COM port redirection.  

If you do not configure this policy setting, COM port redirection is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow COM port redirection*
-   GP name: *TS_CLIENT_COM*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_default_m"></a>**ADMX_TerminalServer/TS_CLIENT_DEFAULT_M**  

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
This policy setting allows you to specify whether the client default printer is automatically set as the default printer in a session on an RD Session Host server.  

By default, Remote Desktop Services automatically designates the client default printer as the default printer in a session on an RD Session Host server. You can use this policy setting to override this behavior.  

If you enable this policy setting, the default printer is the printer specified on the remote computer.  

If you disable this policy setting, the RD Session Host server automatically maps the client default printer and sets it as the default printer upon connection.  

If you do not configure this policy setting, the default printer is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not set default client printer to be default printer in a session*
-   GP name: *TS_CLIENT_DEFAULT_M*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_disable_hardware_mode"></a>**ADMX_TerminalServer/TS_CLIENT_DISABLE_HARDWARE_MODE**  

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
This policy setting specifies whether the Remote Desktop Connection can use hardware acceleration if supported hardware is available. 

If you use this setting, the Remote Desktop Client will use only software decoding. For example, if you have a problem that you suspect may be related to hardware acceleration, use this setting to disable the acceleration; then, if the problem still occurs, you will know that there are additional issues to investigate. 

If you disable this setting or leave it not configured, the Remote Desktop client will use hardware accelerated decoding if supported hardware is available.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow hardware accelerated decoding*
-   GP name: *TS_CLIENT_DISABLE_HARDWARE_MODE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_disable_password_saving_1"></a>**ADMX_TerminalServer/TS_CLIENT_DISABLE_PASSWORD_SAVING_1**  

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
This policy specifies whether to allow Remote Desktop Connection Controls whether a user can save passwords using Remote Desktop Connection.  

If you enable this setting the credential saving checkbox in Remote Desktop Connection will be disabled and users will no longer be able to save passwords. When a user opens an RDP file using Remote Desktop Connection and saves his settings, any password that previously existed in the RDP file will be deleted.  

If you disable this setting or leave it not configured, the user will be able to save passwords using Remote Desktop Connection

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow passwords to be saved*
-   GP name: *TS_CLIENT_DISABLE_PASSWORD_SAVING_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_lpt"></a>**ADMX_TerminalServer/TS_CLIENT_LPT**  

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
This policy setting specifies whether to prevent the redirection of data to client LPT ports during a Remote Desktop Services session.  You can use this setting to prevent users from mapping local LPT ports and redirecting data from the remote computer to local LPT port peripherals. By default, Remote Desktop Services allows LPT port redirection.  

If you enable this policy setting, users in a Remote Desktop Services session cannot redirect server data to the local LPT port.  

If you disable this policy setting, LPT port redirection is always allowed.  If you do not configure this policy setting, LPT port redirection is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow LPT port redirection*
-   GP name: *TS_CLIENT_LPT*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_pnp"></a>**ADMX_TerminalServer/TS_CLIENT_PNP**  

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
This policy setting lets you control the redirection of supported Plug and Play and RemoteFX USB devices, such as Windows Portable Devices, to the remote computer in a Remote Desktop Services session.  By default, Remote Desktop Services does not allow redirection of supported Plug and Play and RemoteFX USB devices.  

If you disable this policy setting, users can redirect their supported Plug and Play devices to the remote computer. Users can use the More option on the Local Resources tab of Remote Desktop Connection to choose the supported Plug and Play devices to redirect to the remote computer.  

If you enable this policy setting, users cannot redirect their supported Plug and Play devices to the remote computer.If you do not configure this policy setting, users can redirect their supported Plug and Play devices to the remote computer only if it is running Windows Server 2012 R2 and earlier versions.  

>[!NOTE]
>You can disable redirection of specific types of supported Plug and Play devices by using Computer Configuration\Administrative Templates\System\Device Installation\Device Installation Restrictions policy settings.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow supported Plug and Play device redirection*
-   GP name: *TS_CLIENT_PNP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_printer"></a>**ADMX_TerminalServer/TS_CLIENT_PRINTER**  

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
This policy setting allows you to specify whether to prevent the mapping of client printers in Remote Desktop Services sessions.  You can use this policy setting to prevent users from redirecting print jobs from the remote computer to a printer attached to their local (client) computer. By default, Remote Desktop Services allows this client printer mapping.  

If you enable this policy setting, users cannot redirect print jobs from the remote computer to a local client printer in Remote Desktop Services sessions.  

If you disable this policy setting, users can redirect print jobs with client printer mapping.  

If you do not configure this policy setting, client printer mapping is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow client printer redirection*
-   GP name: *TS_CLIENT_PRINTER*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_trusted_certificate_thumbprints_1"></a>**ADMX_TerminalServer/TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1**  

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
This policy setting allows you to specify a list of Secure Hash Algorithm 1 (SHA1) certificate thumbprints that represent trusted Remote Desktop Protocol (.rdp) file publishers.  

If you enable this policy setting, any certificate with an SHA1 thumbprint that matches a thumbprint on the list is trusted. If a user tries to start an .rdp file that is signed by a trusted certificate, the user does not receive any warning messages when they start the file. To obtain the thumbprint, view the certificate details, and then click the Thumbprint field.  

If you disable or do not configure this policy setting, no publisher is treated as a trusted .rdp publisher.  

>[!NOTE]
>You can define this policy setting in the Computer Configuration node or in the User Configuration node. 

If you configure this policy setting for the computer, the list of certificate thumbprints trusted for a user is a combination of the list defined for the computer and the list defined for the user.  

This policy setting overrides the behavior of the "Allow .rdp files from valid publishers and user's default .rdp settings" policy setting.  If the list contains a string that is not a certificate thumbprint, it is ignored.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify SHA1 thumbprints of certificates representing trusted .rdp publishers*
-   GP name: *TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_trusted_certificate_thumbprints_2"></a>**ADMX_TerminalServer/TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2**  

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
This policy setting allows you to specify a list of Secure Hash Algorithm 1 (SHA1) certificate thumbprints that represent trusted Remote Desktop Protocol (.rdp) file publishers.  

If you enable this policy setting, any certificate with an SHA1 thumbprint that matches a thumbprint on the list is trusted. If a user tries to start an .rdp file that is signed by a trusted certificate, the user does not receive any warning messages when they start the file. To obtain the thumbprint, view the certificate details, and then click the Thumbprint field.  

If you disable or do not configure this policy setting, no publisher is treated as a trusted .rdp publisher.  

>[!NOTE]
>You can define this policy setting in the Computer Configuration node or in the User Configuration node. 

If you configure this policy setting for the computer, the list of certificate thumbprints trusted for a user is a combination of the list defined for the computer and the list defined for the user.  

This policy setting overrides the behavior of the "Allow .rdp files from valid publishers and user's default .rdp settings" policy setting.  If the list contains a string that is not a certificate thumbprint, it is ignored.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify SHA1 thumbprints of certificates representing trusted .rdp publishers*
-   GP name: *TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_client_turn_off_udp"></a>**ADMX_TerminalServer/TS_CLIENT_TURN_OFF_UDP**  

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
This policy setting specifies whether the UDP protocol will be used to access servers via Remote Desktop Protocol.  

If you enable this policy setting, Remote Desktop Protocol traffic will only use the TCP protocol.  

If you disable or do not configure this policy setting, Remote Desktop Protocol traffic will attempt to use both TCP and UDP protocols.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Turn Off UDP On Client*
-   GP name: *TS_CLIENT_TURN_OFF_UDP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_colordepth"></a>**ADMX_TerminalServer/TS_COLORDEPTH**  

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
This policy setting allows you to specify the maximum color resolution (color depth) for Remote Desktop Services connections.  You can use this policy setting to set a limit on the color depth of any connection that uses RDP. Limiting the color depth can improve connection performance, particularly over slow links, and reduce server load.  

If you enable this policy setting, the color depth that you specify is the maximum color depth allowed for a user's RDP connection. The actual color depth for the connection is determined by the color support available on the client computer. If you select Client Compatible, the highest color depth supported by the client will be used.  

If you disable or do not configure this policy setting, the color depth for connections is not specified at the Group Policy level.  

>[!NOTE]
> 1.	Setting the color depth to 24 bits is only supported on Windows Server 2003 and Windows XP Professional.  
>2.	The value specified in this policy setting is not applied to connections from client computers that are using at least Remote Desktop Protocol 8.0 (computers running at least Windows 8 or Windows Server 2012). The 32-bit color depth format is always used for these connections.  
>3.	For connections from client computers that are using Remote Desktop Protocol 7.1 or earlier versions that are connecting to computers running at least Windows 8 or Windows Server 2012, the minimum of the following values is used as the color depth format:  
>    - a.	Value specified by this policy setting  
>    - b.	Maximum color depth supported by the client  
>    - c.	Value requested by the client  If the client does not support at least 16 bits, the connection is terminated.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Limit maximum color depth*
-   GP name: *TS_COLORDEPTH*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_delete_roaming_user_profiles"></a>**ADMX_TerminalServer/TS_DELETE_ROAMING_USER_PROFILES**  

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
This policy setting allows you to limit the size of the entire roaming user profile cache on the local drive.  This policy setting only applies to a computer on which the Remote Desktop Session Host role service is installed.  

>[!NOTE]
>If you want to limit the size of an individual user profile, use the "Limit profile size" policy setting located in User Configuration\Policies\Administrative Templates\System\User Profiles.  

If you enable this policy setting, you must specify a monitoring interval (in minutes) and a maximum size (in gigabytes) for the entire roaming user profile cache. The monitoring interval determines how often the size of the entire roaming user profile cache is checked.

When the size of the entire roaming user profile cache exceeds the maximum size that you have specified, the oldest (least recently used) roaming user profiles will be deleted until the size of the entire roaming user profile cache is less than the maximum size specified.  

If you disable or do not configure this policy setting, no restriction is placed on the size of the entire roaming user profile cache on the local drive.  Note:  This policy setting is ignored if the "Prevent Roaming Profile changes from propagating to the server" policy setting located in Computer Configuration\Policies\Administrative Templates\System\User Profiles is enabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Limit the size of the entire roaming user profile cache*
-   GP name: *TS_DELETE_ROAMING_USER_PROFILES*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Profiles*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_disable_remote_desktop_wallpaper"></a>**ADMX_TerminalServer/TS_DISABLE_REMOTE_DESKTOP_WALLPAPER**  

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
This policy specifies whether desktop wallpaper is displayed to remote clients connecting via Remote Desktop Services.  

You can use this setting to enforce the removal of wallpaper during a Remote Desktop Services session. By default, Windows XP Professional displays wallpaper to remote clients connecting through Remote Desktop, depending on the client configuration (see the Experience tab in the Remote Desktop Connection options for more information). Servers running Windows Server 2003 do not display wallpaper by default to Remote Desktop Services sessions.  

If the status is set to Enabled, wallpaper never appears in a Remote Desktop Services session.  

If the status is set to Disabled, wallpaper might appear in a Remote Desktop Services session, depending on the client configuration. If the status is set to Not Configured, the default behavior applies.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Enforce Removal of Remote Desktop Wallpaper*
-   GP name: *TS_DISABLE_REMOTE_DESKTOP_WALLPAPER*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_dx_use_full_hwgpu"></a>**ADMX_TerminalServer/TS_DX_USE_FULL_HWGPU**  

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
This policy setting enables system administrators to change the graphics rendering for all Remote Desktop Services sessions.  If you enable this policy setting, all Remote Desktop Services sessions use the hardware graphics renderer instead of the Microsoft Basic Render Driver as the default adapter.  

If you disable this policy setting, all Remote Desktop Services sessions use the Microsoft Basic Render Driver as the default adapter.  

If you do not configure this policy setting, Remote Desktop Services sessions on the RD Session Host server use the Microsoft Basic Render Driver as the default adapter. In all other cases, Remote Desktop Services sessions use the hardware graphics renderer by default.  

>[!NOTE]
>The policy setting enables load-balancing of graphics processing units (GPU) on a computer with more than one GPU installed. The GPU configuration of the local session is not affected by this policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use hardware graphics adapters for all Remote Desktop Services sessions*
-   GP name: *TS_DX_USE_FULL_HWGPU*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_easy_print"></a>**ADMX_TerminalServer/TS_EASY_PRINT**  

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
This policy setting allows you to specify whether the Remote Desktop Easy Print printer driver is used first to install all client printers.  

If you enable or do not configure this policy setting, the RD Session Host server first tries to use the Remote Desktop Easy Print printer driver to install all client printers. If for any reason the Remote Desktop Easy Print printer driver cannot be used, a printer driver on the RD Session Host server that matches the client printer is used. If the RD Session Host server does not have a printer driver that matches the client printer, the client printer is not available for the Remote Desktop session.  

If you disable this policy setting, the RD Session Host server tries to find a suitable printer driver to install the client printer. If the RD Session Host server does not have a printer driver that matches the client printer, the server tries to use the Remote Desktop Easy Print driver to install the client printer. If for any reason the Remote Desktop Easy Print printer driver cannot be used, the client printer is not available for the Remote Desktop Services session.  

>[!NOTE]
>If the "Do not allow client printer redirection" policy setting is enabled, the "Use Remote Desktop Easy Print printer driver first" policy setting is ignored.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use Remote Desktop Easy Print printer driver first*
-   GP name: *TS_EASY_PRINT*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_easy_print_user"></a>**ADMX_TerminalServer/TS_EASY_PRINT_User**  

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
This policy setting allows you to specify whether the Remote Desktop Easy Print printer driver is used first to install all client printers.  

If you enable or do not configure this policy setting, the RD Session Host server first tries to use the Remote Desktop Easy Print printer driver to install all client printers. If for any reason the Remote Desktop Easy Print printer driver cannot be used, a printer driver on the RD Session Host server that matches the client printer is used. If the RD Session Host server does not have a printer driver that matches the client printer, the client printer is not available for the Remote Desktop session.  

If you disable this policy setting, the RD Session Host server tries to find a suitable printer driver to install the client printer. If the RD Session Host server does not have a printer driver that matches the client printer, the server tries to use the Remote Desktop Easy Print driver to install the client printer. If for any reason the Remote Desktop Easy Print printer driver cannot be used, the client printer is not available for the Remote Desktop Services session.  

>[!NOTE]
>If the "Do not allow client printer redirection" policy setting is enabled, the "Use Remote Desktop Easy Print printer driver first" policy setting is ignored.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use Remote Desktop Easy Print printer driver first*
-   GP name: *TS_EASY_PRINT_User*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_enablevirtualgraphics"></a>**ADMX_TerminalServer/TS_EnableVirtualGraphics**  

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
This policy setting allows you to control the availability of RemoteFX on both a Remote Desktop Virtualization Host (RD Virtualization Host) server and a Remote Desktop Session Host (RD Session Host) server.  When deployed on an RD Virtualization Host server, RemoteFX delivers a rich user experience by rendering content on the server by using graphics processing units (GPUs). 

By default, RemoteFX for RD Virtualization Host uses server-side GPUs to deliver a rich user experience over LAN connections and RDP 7.1.  When deployed on an RD Session Host server, RemoteFX delivers a rich user experience by using a hardware-accelerated compression scheme.  

If you enable this policy setting, RemoteFX will be used to deliver a rich user experience over LAN connections and RDP 7.1.  

If you disable this policy setting, RemoteFX will be disabled.  

If you do not configure this policy setting, the default behavior will be used. By default, RemoteFX for RD Virtualization Host is enabled and RemoteFX for RD Session Host is disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure RemoteFX*
-   GP name: *TS_EnableVirtualGraphics*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\RemoteFX for Windows Server 2008 R2*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_fallbackprintdrivertype"></a>**ADMX_TerminalServer/TS_FALLBACKPRINTDRIVERTYPE**  

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
This policy setting allows you to specify the RD Session Host server fallback printer driver behavior. By default, the RD Session Host server fallback printer driver is disabled. If the RD Session Host server does not have a printer driver that matches the client's printer, no printer will be available for the Remote Desktop Services session.  

If you enable this policy setting, the fallback printer driver is enabled, and the default behavior is for the RD Session Host server to find a suitable printer driver. If one is not found, the client's printer is not available. You can choose to change this default behavior. The available options are:  

- **Do nothing if one is not found** - If there is a printer driver mismatch, the server will attempt to find a suitable driver. If one is not found, the client's printer is not available. This is the default behavior.  
- **Default to PCL if one is not found** - If no suitable printer driver can be found, default to the Printer Control Language (PCL) fallback printer driver.  
- **Default to PS if one is not found**- If no suitable printer driver can be found, default to the PostScript (PS) fallback printer driver. 
- **Show both PCL and PS if one is not found**- If no suitable driver can be found, show both PS and PCL-based fallback printer drivers.  

If you disable this policy setting, the RD Session Host server fallback driver is disabled and the RD Session Host server will not attempt to use the fallback printer driver.  If you do not configure this policy setting, the fallback printer driver behavior is off by default.  

>[!NOTE]
>If the **Do not allow client printer redirection** setting is enabled, this policy setting is ignored and the fallback printer driver is disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Specify RD Session Host server fallback printer driver behavior*
-   GP name: *TS_FALLBACKPRINTDRIVERTYPE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Printer Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_forcible_logoff"></a>**ADMX_TerminalServer/TS_FORCIBLE_LOGOFF**  

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
This policy setting determines whether an administrator attempting to connect remotely to the console of a server can log off an administrator currently logged on to the console.  This policy is useful when the currently connected administrator does not want to be logged off by another administrator. If the connected administrator is logged off, any data not previously saved is lost.  

If you enable this policy setting, logging off the connected administrator is not allowed.  

If you disable or do not configure this policy setting, logging off the connected administrator is allowed.  

>[!NOTE]
>The console session is also known as Session 0. Console access can be obtained by using the /console switch from Remote Desktop Connection in the computer field name or from the command line.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Deny logoff of an administrator logged in to the console session*
-   GP name: *TS_FORCIBLE_LOGOFF*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
If you enable this policy setting, when Remote Desktop Connection cannot connect directly to a remote computer (an RD Session Host server or a computer with Remote Desktop enabled), the clients will attempt to connect to the remote computer through an RD Gateway server.

In this case, the clients will attempt to connect to the RD Gateway server that is specified in the "Set RD Gateway server address" policy setting. You can enforce this policy setting or you can allow users to overwrite this setting.

By default, when you enable this policy setting, it is enforced. When this policy setting is enforced, users cannot override this setting, even if they select the "Use these RD Gateway server settings" option on the client. To enforce this policy setting, you must also specify the address of the RD Gateway server by using the "Set RD Gateway server address" policy setting, or client connection attempts to any remote computer will fail, if the client cannot connect directly to the remote computer.

To enhance security, it is also highly recommended that you specify the authentication method by using the "Set RD Gateway authentication method" policy setting. If you do not specify an authentication method by using this policy setting, either the NTLM protocol that is enabled on the client or a smart card can be used. To allow users to overwrite this policy setting, select the "Allow users to change this setting" check box.

When you do this, users on the client can choose not to connect through the RD Gateway server by selecting the "Do not use an RD Gateway server" option. Users can specify a connection method by configuring settings on the client, using an RDP file, or using an HTML script. If users do not specify a connection method, the connection method that you specify in this policy setting is used by default.

If you disable or do not configure this policy setting, clients will not use the RD Gateway server address that is specified in the "Set RD Gateway server address" policy setting. If an RD Gateway server is specified by the user, a client connection attempt will be made through that RD Gateway server.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
- GP Friendly name: *Enable connection through RD Gateway*
- GP name: *TS_GATEWAY_POLICY_ENABLE*
- GP path: *Windows Components\Remote Desktop Services\RD Gateway*
- GP ADMX file name: *TerminalServer.admx*

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
This policy specifies the authentication method that clients must use when attempting to connect to an RD Session Host server through an RD Gateway server. You can enforce this policy setting or you can allow users to overwrite this policy setting. 

By default, when you enable this policy setting, it is enforced. When this policy setting is enforced, users cannot override this setting, even if they select the "Use these RD Gateway server settings" option on the client.  

To allow users to overwrite this policy setting, select the "Allow users to change this setting" check box. When you do this, users can specify an alternate authentication method by configuring settings on the client, using an RDP file, or using an HTML script. If users do not specify an alternate authentication method, the authentication method that you specify in this policy setting is used by default.  

If you disable or do not configure this policy setting, the authentication method that is specified by the user is used, if one is specified. If an authentication method is not specified, the Negotiate protocol that is enabled on the client or a smart card can be used for authentication.


<!--/Description-->


<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set RD Gateway authentication method*
-   GP name: *TS_GATEWAY_POLICY_AUTH_METHOD*
-   GP path: *Windows Components\Remote Desktop Services\RD Gateway*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_gateway_policy_server"></a>**ADMX_TerminalServer/TS_GATEWAY_POLICY_SERVER**  

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
This policy specifies the address of the RD Gateway server that clients must use when attempting to connect to an RD Session Host server. You can enforce this policy setting or you can allow users to overwrite this policy setting. 

By default, when you enable this policy setting, it is enforced. When this policy setting is enforced, users cannot override this setting, even if they select the "Use these RD Gateway server settings" option on the client.  

>[!NOTE]
>It is highly recommended that you also specify the authentication method by using the **Set RD Gateway authentication method** policy setting. If you do not specify an authentication method by using this setting, either the NTLM protocol that is enabled on the client or a smart card can be used.  

To allow users to overwrite the **Set RD Gateway server address** policy setting and connect to another RD Gateway server, you must select the **Allow users to change this setting** check box and users will be allowed to specify an alternate RD Gateway server. 

Users can specify an alternative RD Gateway server by configuring settings on the client, using an RDP file, or using an HTML script. If users do not specify an alternate RD Gateway server, the server that you specify in this policy setting is used by default.  

>[!NOTE]
>If you disable or do not configure this policy setting, but enable the **Enable connections through RD Gateway** policy setting, client connection attempts to any remote computer will fail, if the client cannot connect directly to the remote computer. If an RD Gateway server is specified by the user, a client connection attempt will be made through that RD Gateway server.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set RD Gateway server address*
-   GP name: *TS_GATEWAY_POLICY_SERVER*
-   GP path: *Windows Components\Remote Desktop Services\RD Gateway*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_join_session_directory"></a>**ADMX_TerminalServer/TS_JOIN_SESSION_DIRECTORY**  

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
This policy setting allows you to specify whether the RD Session Host server should join a farm in RD Connection Broker. RD Connection Broker tracks user sessions and allows a user to reconnect to their existing session in a load-balanced RD Session Host server farm. To participate in RD Connection Broker, the Remote Desktop Session Host role service must be installed on the server.  

If the policy setting is enabled, the RD Session Host server joins the farm that is specified in the RD Connection Broker farm name policy setting. The farm exists on the RD Connection Broker server that is specified in the Configure RD Connection Broker server name policy setting.  

If you disable this policy setting, the server does not join a farm in RD Connection Broker, and user session tracking is not performed. If the policy setting is disabled, you cannot use either the Remote Desktop Session Host Configuration tool or the Remote Desktop Services WMI Provider to join the server to RD Connection Broker.  

If the policy setting is not configured, the policy setting is not specified at the Group Policy level.  

>[!NOTE] 
>1. If you enable this policy setting, you must also enable the Configure RD Connection Broker farm name and Configure RD Connection Broker server name policy settings.  
>2. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Join RD Connection Broker*
-   GP name: *TS_JOIN_SESSION_DIRECTORY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\RD Connection Broker*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_keep_alive"></a>**ADMX_TerminalServer/TS_KEEP_ALIVE**  

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
This policy setting allows you to enter a keep-alive interval to ensure that the session state on the RD Session Host server is consistent with the client state.  

After an RD Session Host server client loses the connection to an RD Session Host server, the session on the RD Session Host server might remain active instead of changing to a disconnected state, even if the client is physically disconnected from the RD Session Host server. If the client logs on to the same RD Session Host server again, a new session might be established (if the RD Session Host server is configured to allow multiple sessions), and the original session might still be active.  

If you enable this policy setting, you must enter a keep-alive interval. The keep-alive interval determines how often, in minutes, the server checks the session state. The range of values you can enter is 1 to 999,999.  

If you disable or do not configure this policy setting, a keep-alive interval is not set and the server will not check the session state.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure keep-alive connection interval*
-   GP name: *TS_KEEP_ALIVE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_license_secgroup"></a>**ADMX_TerminalServer/TS_LICENSE_SECGROUP**  

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
This policy setting allows you to specify the RD Session Host servers to which a Remote Desktop license server will offer Remote Desktop Services client access licenses (RDS CALs).  

You can use this policy setting to control which RD Session Host servers are issued RDS CALs by the Remote Desktop license server. By default, a license server issues an RDS CAL to any RD Session Host server that requests one.  

If you enable this policy setting and this policy setting is applied to a Remote Desktop license server, the license server will only respond to RDS CAL requests from RD Session Host servers whose computer accounts are a member of the RDS Endpoint Servers group on the license server. By default, the RDS Endpoint Servers group is empty.  

If you disable or do not configure this policy setting, the Remote Desktop license server issues an RDS CAL to any RD Session Host server that requests one. The RDS Endpoint Servers group is not deleted or changed in any way by disabling or not configuring this policy setting.  

>[!NOTE]
>You should only enable this policy setting when the license server is a member of a domain. You can only add computer accounts for RD Session Host servers to the RDS Endpoint Servers group when the license server is a member of a domain.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *License server security group*
-   GP name: *TS_LICENSE_SECGROUP*
-   GP path: *Windows Components\Remote Desktop Services\RD Licensing*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_license_servers"></a>**ADMX_TerminalServer/TS_LICENSE_SERVERS**  

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
This policy setting allows you to specify the order in which an RD Session Host server attempts to locate Remote Desktop license servers.  

If you enable this policy setting, an RD Session Host server first attempts to locate the specified license servers. If the specified license servers cannot be located, the RD Session Host server will attempt automatic license server discovery. 

In the automatic license server discovery process, an RD Session Host server in a Windows Server-based domain attempts to contact a license server in the following order:  
1. Remote Desktop license servers that are published in Active Directory Domain Services.  
2. Remote Desktop license servers that are installed on domain controllers in the same domain as the RD Session Host server.  
 
1If you disable or do not configure this policy setting, the RD Session Host server does not specify a license server at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use the specified Remote Desktop license servers*
-   GP name: *TS_LICENSE_SERVERS*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Licensing*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_license_tooltip"></a>**ADMX_TerminalServer/TS_LICENSE_TOOLTIP**  

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
This policy setting determines whether notifications are displayed on an RD Session Host server when there are problems with RD Licensing that affect the RD Session Host server.  

By default, notifications are displayed on an RD Session Host server after you log on as a local administrator, if there are problems with RD Licensing that affect the RD Session Host server. If applicable, a notification will also be displayed that notes the number of days until the licensing grace period for the RD Session Host server will expire.  

If you enable this policy setting, these notifications will not be displayed on the RD Session Host server.  

If you disable or do not configure this policy setting, these notifications will be displayed on the RD Session Host server after you log on as a local administrator.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Hide notifications about RD Licensing problems that affect the RD Session Host server*
-   GP name: *TS_LICENSE_TOOLTIP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Licensing*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_licensing_mode"></a>**ADMX_TerminalServer/TS_LICENSING_MODE**  

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
This policy setting allows you to specify the type of Remote Desktop Services client access license (RDS CAL) that is required to connect to this RD Session Host server.  

You can use this policy setting to select one of three licensing modes: Per User , Per Device and AAD Per User .  
- Per User licensing mode requires that each user account connecting to this RD Session Host server have an RDS Per User CAL issued from an RD Licensing server.  
- Per Device licensing mode requires that each device connecting to this RD Session Host server have an RDS Per Device CAL issued from an RD Licensing server.  
- AAD Per User licensing mode requires that each user account connecting to this RD Session Host server have a service plan that supports RDS licenses assigned in AAD.    

If you enable this policy setting, the Remote Desktop licensing mode that you specify is honored by the Remote Desktop license server and RD Session Host.  

If you disable or do not configure this policy setting, the licensing mode is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set the Remote Desktop licensing mode*
-   GP name: *TS_LICENSING_MODE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Licensing*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_max_con_policy"></a>**ADMX_TerminalServer/TS_MAX_CON_POLICY**  

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
This policy specifies whether Remote Desktop Services limits the number of simultaneous connections to the server.  You can use this setting to restrict the number of Remote Desktop Services sessions that can be active on a server. If this number is exceeded, additional users who try to connect receive an error message telling them that the server is busy and to try again later. Restricting the number of sessions improves performance because fewer sessions are demanding system resources. 

By default, RD Session Host servers allow an unlimited number of Remote Desktop Services sessions, and Remote Desktop for Administration allows two Remote Desktop Services sessions.  

To use this setting, enter the number of connections you want to specify as the maximum for the server. To specify an unlimited number of connections, type 999999.  

If the status is set to Enabled, the maximum number of connections is limited to the specified number consistent with the version of Windows and the mode of Remote Desktop Services running on the server.  

If the status is set to Disabled or Not Configured, limits to the number of connections are not enforced at the Group Policy level.  

>[!NOTE] 
>This setting is designed to be used on RD Session Host servers (that is, on servers running Windows with Remote Desktop Session Host role service installed).

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Limit number of connections*
-   GP name: *TS_MAX_CON_POLICY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_maxdisplayres"></a>**ADMX_TerminalServer/TS_MAXDISPLAYRES**  

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
This policy setting allows you to specify the maximum display resolution that can be used by each monitor used to display a Remote Desktop Services session. Limiting the resolution used to display a remote session can improve connection performance, particularly over slow links, and reduce server load.  

If you enable this policy setting, you must specify a resolution width and height. The resolution specified will be the maximum resolution that can be used by each monitor used to display a Remote Desktop Services session.  

If you disable or do not configure this policy setting, the maximum resolution that can be used by each monitor to display a Remote Desktop Services session will be determined by the values specified on the Display Settings tab in the Remote Desktop Session Host Configuration tool.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Limit maximum display resolution*
-   GP name: *TS_MAXDISPLAYRES*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_maxmonitor"></a>**ADMX_TerminalServer/TS_MAXMONITOR**  

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
This policy setting allows you to limit the number of monitors that a user can use to display a Remote Desktop Services session. Limiting the number of monitors to display a Remote Desktop Services session can improve connection performance, particularly over slow links, and reduce server load.  

If you enable this policy setting, you can specify the number of monitors that can be used to display a Remote Desktop Services session. You can specify a number from 1 to 16.  

If you disable or do not configure this policy setting, the number of monitors that can be used to display a Remote Desktop Services session is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Limit number of monitors*
-   GP name: *TS_MAXMONITOR*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_nodisconnectmenu"></a>**ADMX_TerminalServer/TS_NoDisconnectMenu**  

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
This policy setting allows you to remove the "Disconnect" option from the Shut Down Windows dialog box in Remote Desktop Services sessions.  You can use this policy setting to prevent users from using this familiar method to disconnect their client from an RD Session Host server.  

If you enable this policy setting, "Disconnect" does not appear as an option in the drop-down list in the Shut Down Windows dialog box.  

If you disable or do not configure this policy setting, "Disconnect" is not removed from the list in the Shut Down Windows dialog box.  

>[!NOTE]
>This policy setting affects only the Shut Down Windows dialog box. It does not prevent users from using other methods to disconnect from a Remote Desktop Services session. 

This policy setting also does not prevent disconnected sessions at the server. You can control how long a disconnected session remains active on the server by configuring the **Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\RD Session Host\Session Time Limits\Set time limit for disconnected sessions** policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Remove "Disconnect" option from Shut Down dialog*
-   GP name: *TS_NoDisconnectMenu*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_nosecuritymenu"></a>**ADMX_TerminalServer/TS_NoSecurityMenu**  

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
This policy specifies whether to remove the Windows Security item from the Settings menu on Remote Desktop clients. You can use this setting to prevent inexperienced users from logging off from Remote Desktop Services inadvertently.  

If the status is set to Enabled, Windows Security does not appear in Settings on the Start menu. As a result, users must type a security attention sequence, such as CTRL+ALT+END, to open the Windows Security dialog box on the client computer.  

If the status is set to Disabled or Not Configured, Windows Security remains in the Settings menu.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Remove Windows Security item from Start menu*
-   GP name: *TS_NoSecurityMenu*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_preventlicenseupgrade"></a>**ADMX_TerminalServer/TS_PreventLicenseUpgrade**  

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
This policy setting allows you to specify which version of Remote Desktop Services client access license (RDS CAL) a Remote Desktop Services license server will issue to clients connecting to RD Session Host servers running other Windows-based operating systems.  

A license server attempts to provide the most appropriate RDS or TS CAL for a connection. For example, a Windows Server 2008 license server will try to issue a Windows Server 2008 TS CAL for clients connecting to a terminal server running Windows Server 2008, and will try to issue a Windows Server 2003 TS CAL for clients connecting to a terminal server running Windows Server 2003.  

By default, if the most appropriate RDS CAL is not available for a connection, a Windows Server 2008 license server will issue a Windows Server 2008 TS CAL, if available, to the following:  
- A client connecting to a Windows Server 2003 terminal server 
- A client connecting to a Windows 2000 terminal server  

If you enable this policy setting, the license server will only issue a temporary RDS CAL to the client if an appropriate RDS CAL for the RD Session Host server is not available. If the client has already been issued a temporary RDS CAL and the temporary RDS CAL has expired, the client will not be able to connect to the RD Session Host server unless the RD Licensing grace period for the RD Session Host server has not expired.  

If you disable or do not configure this policy setting, the license server will exhibit the default behavior noted earlier.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prevent license upgrade*
-   GP name: *TS_PreventLicenseUpgrade*
-   GP path: *Windows Components\Remote Desktop Services\RD Licensing*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->


<hr/>

<!--Policy-->
<a href="" id="admx-terminalserver-ts_promt_creds_client_comp"></a>**ADMX_TerminalServer/TS_PROMT_CREDS_CLIENT_COMP**  

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
This policy setting determines whether a user will be prompted on the client computer to provide credentials for a remote connection to an RD Session Host server.  

If you enable this policy setting, a user will be prompted on the client computer instead of on the RD Session Host server to provide credentials for a remote connection to an RD Session Host server. If saved credentials for the user are available on the client computer, the user will not be prompted to provide credentials.  

>[!NOTE] 
>If you enable this policy setting in releases of Windows Server 2008 R2 with SP1 or Windows Server 2008 R2, and a user is prompted on both the client computer and on the RD Session Host server to provide credentials, clear the Always prompt for password check box on the Log on Settings tab in Remote Desktop Session Host Configuration.  

If you disable or do not configure this policy setting, the version of the operating system on the RD Session Host server will determine when a user is prompted to provide credentials for a remote connection to an RD Session Host server.  

For Windows Server 2003 and Windows 2000 Server a user will be prompted on the terminal server to provide credentials for a remote connection. For Windows Server 2008 and Windows Server 2008 R2, a user will be prompted on the client computer to provide credentials for a remote connection.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Prompt for credentials on the client computer*
-   GP name: *TS_PROMT_CREDS_CLIENT_COMP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
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

This policy determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled. VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares. By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted.  

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

This policy determines whether the RPC protocol messagese used by VSS for SMB2 File Shares feature is enabled. VSS for SMB2 File Shares feature enables VSS aware backup applications to perform application consistent backup and restore of VSS aware applications storing data on SMB2 File Shares. By default, the RPC protocol message between File Server VSS provider and File Server VSS Agent is signed but not encrypted.  

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

This policy setting allows you to specify the visual experience that remote users will have in Remote Desktop Connection (RDC) connections that use RemoteFX. You can use this policy to balance the network bandwidth usage with the type of graphics experience that is delivered.  Depending on the requirements of your users, you can reduce network bandwidth usage by reducing the screen capture rate. 

You can also reduce network bandwidth usage by reducing the image quality (increasing the amount of image compression that is performed).  
If you have a higher than average bandwidth network, you can maximize the utilization of bandwidth by selecting the highest setting for screen capture rate and the highest setting for image quality. 
 
By default, Remote Desktop Connection sessions that use RemoteFX are optimized for a balanced experience over LAN conditions. 

If you disable or do not configure this policy setting, Remote Desktop Connection sessions that use RemoteFX will be the same as if the medium screen capture rate and the medium image compression settings were selected (the default behavior).

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Optimize visual experience when using RemoteFX*
-   GP name: *TS_RemoteDesktopVirtualGraphics*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\RemoteFX for Windows Server 2008 R2*
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
This policy setting allows you to specify the name of a farm to join in RD Connection Broker. RD Connection Broker uses the farm name to determine which RD Session Host servers are in the same RD Session Host server farm. 

Therefore, you must use the same farm name for all RD Session Host servers in the same load-balanced farm. The farm name does not have to correspond to a name in Active Directory Domain Services. If you specify a new farm name, a new farm is created in RD Connection Broker. If you specify an existing farm name, the server joins that farm in RD Connection Broker.  

- If you enable this policy setting, you must specify the name of a farm in RD Connection Broker.  

- If you disable or do not configure this policy setting, the farm name is not specified at the Group Policy level.  

>[!NOTES]
>    1. This policy setting is not effective unless both the Join RD Connection Broker and the Configure RD Connection Broker server name policy settings are enabled and configured by using Group Policy.  
>    2. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure RD Connection Broker farm name*
-   GP name: *TS_SD_ClustName*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\RD Connection Broker*
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
This policy setting allows you to specify the redirection method to use when a client device reconnects to an existing Remote Desktop Services session in a load-balanced RD Session Host server farm. This setting applies to an RD Session Host server that is configured to use RD Connection Broker and not to the RD Connection Broker server.  

- If you enable this policy setting, a Remote Desktop Services client queries the RD Connection Broker server and is redirected to their existing session by using the IP address of the RD Session Host server where their session exists. To use this redirection method, client computers must be able to connect directly by IP address to RD Session Host servers in the farm.  

- If you disable this policy setting, the IP address of the RD Session Host server is not sent to the client. Instead, the IP address is embedded in a token. When a client reconnects to the load balancer, the routing token is used to redirect the client to their existing session on the correct RD Session Host server in the farm. Only disable this setting when your network load-balancing solution supports the use of RD Connection Broker routing tokens and you do not want clients to directly connect by IP address to RD Session Host servers in the load-balanced farm. 

If you do not configure this policy setting, the Use IP address redirection policy setting is not enforced at the group Group policy Policy level and the default will be used. This setting is enabled by default.  

>[!NOTES]
> For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use IP Address Redirection*
-   GP name: *TS_SD_EXPOSE_ADDRESS*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\RD Connection Broker*
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
This policy setting allows you to specify the RD Connection Broker server that the RD Session Host server uses to track and redirect user sessions for a load-balanced RD Session Host server farm. 
The specified server must be running the Remote Desktop Connection Broker service. All RD Session Host servers in a load-balanced farm should use the same RD Connection Broker server.  

- If you enable this policy setting, you must specify the RD Connection Broker server by using its fully qualified domain name (FQDN). In Windows Server 2012, for a high availability setup with multiple RD Connection Broker servers, you must provide a semi-colon separated list of the FQDNs of all the RD Connection Broker servers.  

- If you disable or do not configure this policy setting, the policy setting is not specified at the Group Policy level.
  

>[!NOTES]
>     1. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.  
>    2. This policy setting is not effective unless the Join RD Connection Broker policy setting is enabled.  
>    3. To be an active member of an RD Session Host server farm, the computer account for each RD Session Host server in the farm must be a member of one of the following local groups on the RD Connection Broker server: Session Directory Computers, Session Broker Computers, or RDS Endpoint Servers.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure RD Connection Broker server name*
-   GP name: *TS_SD_Loc*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\RD Connection Broker*
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

1. * Negotiate: The Negotiate method enforces the most secure method that is supported by the client. If Transport Layer Security (TLS) version 1.0 is supported, it is used to authenticate the RD Session Host server. If TLS is not supported, native Remote Desktop Protocol (RDP) encryption is used to secure communications, but the RD Session Host server is not authenticated. Native RDP encryption (as opposed to SSL encryption) is not recommended.  
2. * RDP: The RDP method uses native RDP encryption to secure communications between the client and RD Session Host server. If you select this setting, the RD Session Host server is not authenticated. Native RDP encryption (as opposed to SSL encryption) is not recommended.  
3. * SSL (TLS 1.0): The SSL method requires the use of TLS 1.0 to authenticate the RD Session Host server. If TLS is not supported, the connection fails. This is the recommended setting for this policy.  

- If you disable or do not configure this policy setting, the security method to be used for remote connections to RD Session Host servers is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Require use of specific security layer for remote (RDP) connections*
-   GP name: *TS_SECURITY_LAYER_POLICY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security*
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
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
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

- If you enable this policy setting, you must specify if you would like RDP to use UDP.  You can select one of the following options: "Use both UDP and TCP", "Use only TCP" or "Use either UDP or TCP (default)"  

If you select "Use either UDP or TCP" and the UDP connection is successful, most of the RDP traffic will use UDP.  If the UDP connection is not successful or if you select "Use only TCP," all of the RDP traffic will use TCP.  

- If you disable or do not configure this policy setting, RDP will choose the optimal protocols for delivering the best user experience.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Select RDP transport protocols*
-   GP name: *TS_SELECT_TRANSPORT*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
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

- If you disable this policy setting, RemoteApp programs published from this RD Session Host server will not use these advanced graphics. You may want to choose this option if you discover that applications published as RemoteApp programs do not support these advanced graphics.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use advanced RemoteFX graphics for RemoteApp*
-   GP name: *TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
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

    1. Always connect, even if authentication fails: The client connects to the RD Session Host server even if the client cannot authenticate the RD Session Host server.  

    2. Warn me if authentication fails: The client attempts to authenticate the RD Session Host server. If the RD Session Host server can be authenticated, the client establishes a connection to the RD Session Host server. If the RD Session Host server cannot be authenticated, the user is prompted to choose whether to connect to the RD Session Host server without authenticating the RD Session Host server. 

    3. Do not connect if authentication fails: The client establishes a connection to the RD Session Host server only if the RD Session Host server can be authenticated.  

- If you disable or do not configure this policy setting, the authentication setting that is specified in Remote Desktop Connection or in the .rdp file determines whether the client establishes a connection to the RD Session Host server when the client cannot authenticate the RD Session Host server.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure server authentication for client*
-   GP name: *TS_SERVER_AUTH*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client*
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
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
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
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
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

- If you enable this policy setting, you can specify which RDP compression algorithm to use. If you select the algorithm that is optimized to use less memory, this option is less memory-intensive, but uses more network bandwidth. 

If you select the algorithm that is optimized to use less network bandwidth, this option uses less network bandwidth, but is more memory-intensive. Additionally, a third option is available that balances memory usage and network bandwidth. 

In Windows  8 only the compression algorithm that balances memory usage and bandwidth is used.  You can also choose not to use an RDP compression algorithm. Choosing not to use an RDP compression algorithm will use more network bandwidth and is only recommended if you are using a hardware device that is designed to optimize network traffic. 

Even if you choose not to use an RDP compression algorithm, some graphics data will still be compressed.  

- If you disable or do not configure this policy setting, the default RDP compression algorithm will be used.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure compression for RemoteFX data*
-   GP name: *TS_SERVER_COMPRESSOR*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
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
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>
<!--Policy-->

<a href="" id="admx-terminalserver-ts_server_legacy_rfx"></a>**ADMX_TerminalServer/TS_SERVER_LEGACY_RFX**  

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
This policy setting allows you to control the availability of RemoteFX on both a Remote Desktop Virtualization Host (RD Virtualization Host) server and a Remote Desktop Session Host (RD Session Host) server.  

When deployed on an RD Virtualization Host server, RemoteFX delivers a rich user experience by rendering content on the server by using graphics processing units (GPUs). By default, RemoteFX for RD Virtualization Host uses server-side GPUs to deliver a rich user experience over LAN connections and RDP 7.1.  When deployed on an RD Session Host server, RemoteFX delivers a rich user experience by using a hardware-accelerated compression scheme.  

- If you enable this policy setting, RemoteFX will be used to deliver a rich user experience over LAN connections and RDP 7.1.  

- If you disable this policy setting, RemoteFX will be disabled.  If you do not configure this policy setting, the default behavior will be used. By default, RemoteFX for RD Virtualization Host is enabled and RemoteFX for RD Session Host is disabled.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure RemoteFX*
-   GP name: *TS_SERVER_LEGACY_RFX*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\RemoteFX for Windows Server 2008 R2*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_server_profile"></a>**ADMX_TerminalServer/TS_SERVER_PROFILE**  

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

This policy setting allows the administrator to configure the RemoteFX experience for Remote Desktop Session Host or Remote Desktop Virtualization Host servers. By default, the system will choose the best experience based on available nework bandwidth.  

If you enable this policy setting, the RemoteFX experience could be set to one of the following options:  
1. Let the system choose the experience for the network condition  
2. Optimize for server scalability  
3. Optimize for minimum bandwidth usage  If you disable or do not configure this policy setting, the RemoteFX experience will change dynamically based on the network condition."

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Configure RemoteFX Adaptive Graphics*
-   GP name: *TS_SERVER_PROFILE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_server_visexp"></a>**ADMX_TerminalServer/TS_SERVER_VISEXP**  

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

This policy setting allows you to specify the visual experience that remote users receive in Remote Desktop Services sessions. Remote sessions on the remote computer are then optimized to support this visual experience. By default, Remote Desktop Services sessions are optimized for rich multimedia, such as applications that use Silverlight or Windows Presentation Foundation.  

- If you enable this policy setting, you must select the visual experience for which you want to optimize Remote Desktop Services sessions. You can select either Rich multimedia or Text.  

- If you disable or do not configure this policy setting, Remote Desktop Services sessions are optimized for rich multimedia.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Optimize visual experience for Remote Desktop Service Sessions*
-   GP name: *TS_SERVER_VISEXP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment\RemoteFX for Windows Server 2008 R2*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_server_wddm_graphics_driver"></a>**ADMX_TerminalServer/TS_SERVER_WDDM_GRAPHICS_DRIVER**  

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

This policy setting lets you enable WDDM graphics display driver for Remote Desktop Connections.  

- If you enable or do not configure this policy setting, Remote Desktop Connections will use WDDM graphics display driver.  

- If you disable this policy setting, Remote Desktop Connections will NOT use WDDM graphics display driver. In this case, the Remote Desktop Connections will use XDDM graphics display driver.  For this change to take effect, you must restart Windows.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use WDDM graphics display driver for Remote Desktop Connections*
-   GP name: *TS_SERVER_WDDM_GRAPHICS_DRIVER*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_session_end_on_limit_1"></a>**ADMX_TerminalServer/TS_Session_End_On_Limit_1**  

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

This policy setting specifies whether to end a Remote Desktop Services session that has timed out instead of disconnecting it. You can use this setting to direct Remote Desktop Services to end a session (that is, the user is logged off and the session is deleted from the server) after time limits for active or idle sessions are reached. By default, Remote Desktop Services disconnects sessions that reach their time limits. Time limits are set locally by the server administrator or by using Group Policy. 

See the policy settings Set time limit for active Remote Desktop Services sessions and Set time limit for active but idle Remote Desktop Services sessions policy settings.  

- If you enable this policy setting, Remote Desktop Services ends any session that reaches its time-out limit.  

- If you disable this policy setting, Remote Desktop Services always disconnects a timed-out session, even if specified otherwise by the server administrator. If you do not configure this policy setting, Remote Desktop Services disconnects a timed-out session, unless specified otherwise in local settings.  

This policy setting only applies to time-out limits that are explicitly set by the administrator. 

This policy setting does not apply to time-out events that occur due to connectivity or network conditions. This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting takes precedence.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *End session when time limits are reached*
-   GP name: *TS_Session_End_On_Limit_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_session_end_on_limit_2"></a>**ADMX_TerminalServer/TS_Session_End_On_Limit_2**  

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

This policy setting specifies whether to end a Remote Desktop Services session that has timed out instead of disconnecting it. You can use this setting to direct Remote Desktop Services to end a session (that is, the user is logged off and the session is deleted from the server) after time limits for active or idle sessions are reached. By default, Remote Desktop Services disconnects sessions that reach their time limits. Time limits are set locally by the server administrator or by using Group Policy. 

See the policy settings Set time limit for active Remote Desktop Services sessions and Set time limit for active but idle Remote Desktop Services sessions policy settings.  

- If you enable this policy setting, Remote Desktop Services ends any session that reaches its time-out limit.  

- If you disable this policy setting, Remote Desktop Services always disconnects a timed-out session, even if specified otherwise by the server administrator. If you do not configure this policy setting, Remote Desktop Services disconnects a timed-out session, unless specified otherwise in local settings.  

This policy setting only applies to time-out limits that are explicitly set by the administrator. 

This policy setting does not apply to time-out events that occur due to connectivity or network conditions. This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting takes precedence.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *End session when time limits are reached*
-   GP name: *TS_Session_End_On_Limit_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_sessions_disconnected_timeout_1"></a>**ADMX_TerminalServer/TS_SESSIONS_Disconnected_Timeout_1**  

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

This policy setting allows you to configure a time limit for disconnected Remote Desktop Services sessions.  You can use this policy setting to specify the maximum amount of time that a disconnected session remains active on the server. By default, Remote Desktop Services allows users to disconnect from a Remote Desktop Services session without logging off and ending the session.  
When a session is in a disconnected state, running programs are kept active even though the user is no longer actively connected. By default, these disconnected sessions are maintained for an unlimited time on the server.  

- If you enable this policy setting, disconnected sessions are deleted from the server after the specified amount of time. To enforce the default behavior that disconnected sessions are maintained for an unlimited time, select Never. If you have a console session, disconnected session time limits do not apply.  

- If you disable or do not configure this policy setting, this policy setting is not specified at the Group Policy level. Be default, Remote Desktop Services disconnected sessions are maintained for an unlimited amount of time.  

>[!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set time limit for disconnected sessions*
-   GP name: *TS_SESSIONS_Disconnected_Timeout_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_sessions_disconnected_timeout_2"></a>**ADMX_TerminalServer/TS_SESSIONS_Disconnected_Timeout_2**  

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

This policy setting allows you to configure a time limit for disconnected Remote Desktop Services sessions.  You can use this policy setting to specify the maximum amount of time that a disconnected session remains active on the server. By default, Remote Desktop Services allows users to disconnect from a Remote Desktop Services session without logging off and ending the session.  
When a session is in a disconnected state, running programs are kept active even though the user is no longer actively connected. By default, these disconnected sessions are maintained for an unlimited time on the server.  

- If you enable this policy setting, disconnected sessions are deleted from the server after the specified amount of time. To enforce the default behavior that disconnected sessions are maintained for an unlimited time, select Never. If you have a console session, disconnected session time limits do not apply.  

- If you disable or do not configure this policy setting, this policy setting is not specified at the Group Policy level. Be default, Remote Desktop Services disconnected sessions are maintained for an unlimited amount of time.  

>[!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set time limit for disconnected sessions*
-   GP name: *TS_SESSIONS_Disconnected_Timeout_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_sessions_idle_limit_1"></a>**ADMX_TerminalServer/TS_SESSIONS_Idle_Limit_1**  

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

This policy setting allows you to specify the maximum amount of time that an active Remote Desktop Services session can be idle (without user input) before it is automatically disconnected.  

- If you enable this policy setting, you must select the desired time limit in the Idle session limit list. Remote Desktop Services will automatically disconnect active but idle sessions after the specified amount of time. The user receives a warning two minutes before the session disconnects, which allows the user to press a key or move the mouse to keep the session active. If you have a console session, idle session time limits do not apply.  

- If you disable or do not configure this policy setting, the time limit is not specified at the Group Policy level. By default,  Remote Desktop Services allows sessions to remain active but idle for an unlimited amount of time.  

If you want Remote Desktop Services to end instead of disconnect a session when the time limit is reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.  

>[!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set time limit for active but idle Remote Desktop Services sessions*
-   GP name: *TS_SESSIONS_Idle_Limit_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_sessions_idle_limit_2"></a>**ADMX_TerminalServer/TS_SESSIONS_Idle_Limit_2**  

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

This policy setting allows you to specify the maximum amount of time that an active Remote Desktop Services session can be idle (without user input) before it is automatically disconnected.  

- If you enable this policy setting, you must select the desired time limit in the Idle session limit list. Remote Desktop Services will automatically disconnect active but idle sessions after the specified amount of time. The user receives a warning two minutes before the session disconnects, which allows the user to press a key or move the mouse to keep the session active. If you have a console session, idle session time limits do not apply.  

- If you disable or do not configure this policy setting, the time limit is not specified at the Group Policy level. By default,  Remote Desktop Services allows sessions to remain active but idle for an unlimited amount of time.  

If you want Remote Desktop Services to end instead of disconnect a session when the time limit is reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.  

>[!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set time limit for active but idle Remote Desktop Services sessions*
-   GP name: *TS_SESSIONS_Idle_Limit_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_sessions_limits_1"></a>**ADMX_TerminalServer/TS_SESSIONS_Limits_1**  

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

This policy setting allows you to specify the maximum amount of time that a Remote Desktop Services session can be active before it is automatically disconnected.  

- If you enable this policy setting, you must select the desired time limit in the Active session limit list. Remote Desktop Services will automatically disconnect active sessions after the specified amount of time. The user receives a warning two minutes before the Remote Desktop Services session disconnects, which allows the user to save open files and close programs. If you have a console session, active session time limits do not apply.  

- If you disable or do not configure this policy setting, this policy setting is not specified at the Group Policy level. By default, Remote Desktop Services allows sessions to remain active for an unlimited amount of time.  

If you want Remote Desktop Services to end instead of disconnect a session when the time limit is reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.  

>[!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set time limit for active Remote Desktop Services sessions*
-   GP name: *TS_SESSIONS_Limits_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_sessions_limits_2"></a>**ADMX_TerminalServer/TS_SESSIONS_Limits_2**  

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

This policy setting allows you to specify the maximum amount of time that a Remote Desktop Services session can be active before it is automatically disconnected.  

- If you enable this policy setting, you must select the desired time limit in the Active session limit list. Remote Desktop Services will automatically disconnect active sessions after the specified amount of time. The user receives a warning two minutes before the Remote Desktop Services session disconnects, which allows the user to save open files and close programs. If you have a console session, active session time limits do not apply.  

- If you disable or do not configure this policy setting, this policy setting is not specified at the Group Policy level. By default, Remote Desktop Services allows sessions to remain active for an unlimited amount of time.  

If you want Remote Desktop Services to end instead of disconnect a session when the time limit is reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.  

>[!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set time limit for active Remote Desktop Services sessions*
-   GP name: *TS_SESSIONS_Limits_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_single_session"></a>**ADMX_TerminalServer/TS_SINGLE_SESSION**  

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

This policy setting allows you to restrict users to a single Remote Desktop Services session.  If you enable this policy setting, users who log on remotely by using Remote Desktop Services will be restricted to a single session (either active or disconnected) on that server. 

If the user leaves the session in a disconnected state, the user automatically reconnects to that session at the next logon.  

If you disable this policy setting, users are allowed to make unlimited simultaneous remote connections by using Remote Desktop Services.  If you do not configure this policy setting,  this policy setting is not specified at the Group Policy level.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Restrict Remote Desktop Services users to a single Remote Desktop Services session*
-   GP name: *TS_SINGLE_SESSION*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_smart_card"></a>**ADMX_TerminalServer/TS_SMART_CARD**  

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

This policy setting allows you to control the redirection of smart card devices in a Remote Desktop Services session.  

- If you enable this policy setting, Remote Desktop Services users cannot use a smart card to log on to a Remote Desktop Services session.  

- If you disable or do not configure this policy setting, smart card device redirection is allowed. By default, Remote Desktop Services automatically redirects smart card devices on connection.  

>[!NOTE]
> The client computer must be running at least Microsoft Windows 2000 Server or at least Microsoft Windows XP Professional and the target server must be joined to a domain.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow smart card device redirection*
-   GP name: *TS_SMART_CARD*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_start_program_1"></a>**ADMX_TerminalServer/TS_START_PROGRAM_1**  

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

Configures Remote Desktop Services to run a specified program automatically upon connection.  You can use this setting to specify a program to run automatically when a user logs on to a remote computer. By default, Remote Desktop Services sessions provide access to the full Windows desktop, unless otherwise specified with this setting, by the server administrator, or by the user in configuring the client connection. Enabling this setting overrides the "Start Program" settings set by the server administrator or user. 

The Start menu and Windows Desktop are not displayed, and when the user exits the program the session is automatically logged off. To use this setting, in Program path and file name, type the fully qualified path and file name of the executable file to be run when the user logs on. If necessary, in Working Directory, type the fully qualified path to the starting directory for the program. 

If you leave Working Directory blank, the program runs with its default working directory. If the specified program path, file name, or working directory is not the name of a valid directory, the RD Session Host server connection fails with an error message. If the status is set to Enabled, Remote Desktop Services sessions automatically run the specified program and use the specified Working Directory (or the program default directory, if Working Directory is not specified) as the working directory for the program.  If the status is set to Disabled or Not Configured, Remote Desktop Services sessions start with the full desktop, unless the server administrator or user specify otherwise. (See "Computer Configuration\Administrative Templates\System\Logon\Run these programs at user logon" setting.)  

>[!NOTE]
> This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting overrides.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Start a program on connection*
-   GP name: *TS_START_PROGRAM_1*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_start_program_2"></a>**ADMX_TerminalServer/TS_START_PROGRAM_2**  

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

Configures Remote Desktop Services to run a specified program automatically upon connection.  You can use this setting to specify a program to run automatically when a user logs on to a remote computer. By default, Remote Desktop Services sessions provide access to the full Windows desktop, unless otherwise specified with this setting, by the server administrator, or by the user in configuring the client connection. Enabling this setting overrides the "Start Program" settings set by the server administrator or user. 

The Start menu and Windows Desktop are not displayed, and when the user exits the program the session is automatically logged off. To use this setting, in Program path and file name, type the fully qualified path and file name of the executable file to be run when the user logs on. If necessary, in Working Directory, type the fully qualified path to the starting directory for the program. 

If you leave Working Directory blank, the program runs with its default working directory. If the specified program path, file name, or working directory is not the name of a valid directory, the RD Session Host server connection fails with an error message. If the status is set to Enabled, Remote Desktop Services sessions automatically run the specified program and use the specified Working Directory (or the program default directory, if Working Directory is not specified) as the working directory for the program.  If the status is set to Disabled or Not Configured, Remote Desktop Services sessions start with the full desktop, unless the server administrator or user specify otherwise. (See "Computer Configuration\Administrative Templates\System\Logon\Run these programs at user logon" setting.)  

>[!NOTE]
> This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting overrides.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Start a program on connection*
-   GP name: *TS_START_PROGRAM_2*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_temp_delete"></a>**ADMX_TerminalServer/TS_TEMP_DELETE**  

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

This policy setting specifies whether Remote Desktop Services retains a user's per-session temporary folders at logoff.  You can use this setting to maintain a user's session-specific temporary folders on a remote computer, even if the user logs off from a session. By default, Remote Desktop Services deletes a user's temporary folders when the user logs off.  

If you enable this policy setting, a user's per-session temporary folders are retained when the user logs off from a session.  

If you disable this policy setting, temporary folders are deleted when a user logs off, even if the server administrator specifies otherwise. If you do not configure this policy setting, Remote Desktop Services deletes the temporary folders from the remote computer at logoff, unless specified otherwise by the server administrator.  
  
>[!NOTE]
> This setting only takes effect if per-session temporary folders are in use on the server. If you enable the Do not use temporary folders per session policy setting, this policy setting has no effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not delete temp folders upon exit*
-   GP name: *TS_TEMP_DELETE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Temporary folders*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_temp_per_session"></a>**ADMX_TerminalServer/TS_TEMP_PER_SESSION**  

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

This policy setting allows you to prevent Remote Desktop Services from creating session-specific temporary folders.  

You can use this policy setting to disable the creation of separate temporary folders on a remote computer for each session. By default, Remote Desktop Services creates a separate temporary folder for each active session that a user maintains on a remote computer. These temporary folders are created on the remote computer in a Temp folder under the user's profile folder and are named with the sessionid.  

- If you enable this policy setting, per-session temporary folders are not created. Instead, a user's temporary files for all sessions on the remote computer are stored in a common Temp folder under the user's profile folder on the remote computer.  

- If you disable this policy setting, per-session temporary folders are always created, even if the server administrator specifies otherwise. If you do not configure this policy setting, per-session temporary folders are created unless the server administrator specifies otherwise.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not use temporary folders per session*
-   GP name: *TS_TEMP_PER_SESSION*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Temporary folders*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_time_zone"></a>**ADMX_TerminalServer/TS_TIME_ZONE**  

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

- If you enable this policy setting, clients that are capable of time zone redirection send their time zone information to the server. The server base time is then used to calculate the current session time (current session time = server base time + client time zone).  

- If you disable or do not configure this policy setting, the client computer does not redirect its time zone information and the session time zone is the same as the server time zone.  

>[!NOTE]
> Time zone redirection is possible only when connecting to at least a Microsoft Windows Server 2003 terminal server with a client using RDP 5.1 or later.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow time zone redirection*
-   GP name: *TS_TIME_ZONE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Device and Resource Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_tscc_permissions_policy"></a>**ADMX_TerminalServer/TS_TSCC_PERMISSIONS_POLICY**  

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

This policy setting specifies whether to disable the administrator rights to customize security permissions for the Remote Desktop Session Host server. You can use this setting to prevent administrators from making changes to the user groups allowed to connect remotely to the  RD Session Host server. By default, administrators are able to make such changes.  

- If you enable this policy setting the default security descriptors for existing groups on the RD Session Host server cannot be changed. All the security descriptors are read-only.  

- If you disable or do not configure this policy setting, server administrators have full read/write permissions to the user security descriptors by using the Remote Desktop Session WMI Provider.  

>[!NOTE]
> The preferred method of managing user access is by adding a user to the Remote Desktop Users group.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Do not allow local administrators to customize permissions*
-   GP name: *TS_TSCC_PERMISSIONS_POLICY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_turnoff_singleapp"></a>**ADMX_TerminalServer/TS_TURNOFF_SINGLEAPP**  

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

This policy setting determines whether the desktop is always displayed after a client connects to a remote computer or an initial program can run. It can be used to require that the desktop be displayed after a client connects to a remote computer, even if an initial program is already specified in the default user profile, Remote Desktop Connection, Remote Desktop Services client, or through Group Policy.  

- If you enable this policy setting, the desktop is always displayed when a client connects to a remote computer. This policy setting overrides any initial program policy settings.  

- If you disable or do not configure this policy setting, an initial program can be specified that runs on the remote computer after the client connects to the remote computer. If an initial program is not specified, the desktop is always displayed on the remote computer after the client connects to the remote computer.  

>[!NOTE]
> If this policy setting is enabled, then the "Start a program on connection" policy setting is ignored.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Always show desktop on connection*
-   GP name: *TS_TURNOFF_SINGLEAPP*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Remote Session Environment*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_uia"></a>**ADMX_TerminalServer/TS_UIA**  

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

This policy setting allows you to restrict users to a single Remote Desktop Services session.  

If you enable this policy setting, users who log on remotely by using Remote Desktop Services will be restricted to a single session (either active or disconnected) on that server. If the user leaves the session in a disconnected state, the user automatically reconnects to that session at the next logon.  

- If you disable this policy setting, users are allowed to make unlimited simultaneous remote connections by using Remote Desktop Services.  

- If you do not configure this policy setting,  this policy setting is not specified at the Group Policy level.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Restrict Remote Desktop Services users to a single Remote Desktop Services session*
-   GP name: *TS_UIA*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Connections*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>
<!--Policy-->

<a href="" id="admx-terminalserver-ts_usb_redirection_disable"></a>**ADMX_TerminalServer/TS_USB_REDIRECTION_DISABLE**  

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

This policy setting allows you to permit RDP redirection of other supported RemoteFX USB devices from this computer. Redirected RemoteFX USB devices will not be available for local usage on this computer.  
If you enable this policy setting, you can choose to give the ability to redirect other supported RemoteFX USB devices over RDP to all users or only to users who are in the Administrators group on the computer. 
If you disable or do not configure this policy setting, other supported RemoteFX USB devices are not available for RDP redirection by using any user account. For this change to take effect, you must restart Windows.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Allow RDP redirection of other supported RemoteFX USB devices from this computer*
-   GP name: *TS_USB_REDIRECTION_DISABLE*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Connection Client\RemoteFX USB Device Redirection*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_user_authentication_policy"></a>**ADMX_TerminalServer/TS_USER_AUTHENTICATION_POLICY**  

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

This policy setting enhances security by requiring that user authentication occur earlier in the remote connection process.  

- If you enable this policy setting, only client computers that support Network Level Authentication can connect to the RD Session Host server. To determine whether a client computer supports Network Level Authentication, start Remote Desktop Connection on the client computer, click the icon in the upper-left corner of the Remote Desktop Connection dialog box, and then click About. In the About Remote Desktop Connection dialog box, look for the phrase Network Level Authentication supported.  

- If you disable this policy setting, Network Level Authentication is not required for user authentication before allowing remote connections to the RD Session Host server. If you do not configure this policy setting, the local setting on the target computer will be enforced. On Windows Server 2012 and Windows 8, Network Level Authentication is enforced by default.  

Disabling this policy setting provides less security because user authentication will occur later in the remote connection process.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Require user authentication for remote connections by using Network Level Authentication*
-   GP name: *TS_USER_AUTHENTICATION_POLICY*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->

<a href="" id="admx-terminalserver-ts_user_home"></a>**ADMX_TerminalServer/TS_USER_HOME**  

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

This policy setting allows you to specify the name of the certificate template that determines which certificate is automatically selected to authenticate an RD Session Host server. A certificate is needed to authenticate an RD Session Host server when TLS 1.0, 1.1 or 1.2 is used to secure communication between a client and an RD Session Host server during RDP connections.  

- If you enable this policy setting, you need to specify a certificate template name. Only certificates created by using the specified certificate template will be considered when a certificate to authenticate the RD Session Host server is automatically selected. Automatic certificate selection only occurs when a specific certificate has not been selected. 

If no certificate can be found that was created with the specified certificate template, the RD Session Host server will issue a certificate enrollment request and will use the current certificate until the request is completed. If more than one certificate is found that was created with the specified certificate template, the certificate that will expire latest and that matches the current name of the RD Session Host server will be selected.  

- If you disable or do not configure this policy, the certificate template name is not specified at the Group Policy level. By default, a self-signed certificate is used to authenticate the RD Session Host server.  

If you select a specific certificate to be used to authenticate the RD Session Host server, that certificate will take precedence over this policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Server authentication certificate template*
-   GP name: *TS_USER_HOME*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Security*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy-->
 
<a href="" id="admx-terminalserver-ts_user_mandatory_profiles"></a>**ADMX_TerminalServer/TS_USER_MANDATORY_PROFILES** 

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

This policy setting allows you to specify whether Remote Desktop Services uses a mandatory profile for all users connecting remotely to the RD Session Host server.  

- If you enable this policy setting, Remote Desktop Services uses the path specified in the "Set path for Remote Desktop Services Roaming User Profile" policy setting as the root folder for the mandatory user profile. All users connecting remotely to the RD Session Host server use the same user profile.  

- If you disable or do not configure this policy setting, mandatory user profiles are not used by users connecting remotely to the RD Session Host server.  

For this policy setting to take effect, you must also enable and configure the "Set path for Remote Desktop Services Roaming User Profile" policy setting.


<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Use mandatory profiles on the RD Session Host server*
-   GP name: *TS_USER_MANDATORY_PROFILES*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Profiles*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--Policy--> 

<a href="" id="admx-terminalserver-ts_user_profiles"></a>**ADMX_TerminalServer/TS_USER_PROFILES** 

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

This policy setting allows you to specify the network path that Remote Desktop Services uses for roaming user profiles. By default, Remote Desktop Services stores all user profiles locally on the RD Session Host server. You can use this policy setting to specify a network share where user profiles can be centrally stored, allowing a user to access the same profile for sessions on all RD Session Host servers that are configured to use the network share for user profiles.  If you enable this policy setting, Remote Desktop Services uses the specified path as the root directory for all user profiles. The profiles are contained in subfolders named for the account name of each user.  

To configure this policy setting, type the path to the network share in the form of \\Computername\Sharename. Do not specify a placeholder for the user account name, because Remote Desktop Services automatically adds this when the user logs on and the profile is created. 

If the specified network share does not exist, Remote Desktop Services displays an error message on the RD Session Host server and will store the user profiles locally on the RD Session Host server.  

If you disable or do not configure this policy setting, user profiles are stored locally on the RD Session Host server. You can configure a user's profile path on the Remote Desktop Services Profile tab on the user's account Properties dialog box.  

1. The roaming user profiles enabled by the policy setting apply only to Remote Desktop Services connections. A user might also have a Windows roaming user profile configured. The Remote Desktop Services roaming user profile always takes precedence in a Remote Desktop Services session.  
2. To configure a mandatory Remote Desktop Services roaming user profile for all users connecting remotely to the RD Session Host server, use this policy setting together with the "Use mandatory profiles on the RD Session Host server" policy setting located in Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\RD Session Host\Profiles. The path set in the "Set path for Remote Desktop Services Roaming User Profile" policy setting should contain the mandatory profile.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:  
-   GP Friendly name: *Set path for Remote Desktop Services Roaming User Profile*
-   GP name: *TS_USER_PROFILES*
-   GP path: *Windows Components\Remote Desktop Services\Remote Desktop Session Host\Profiles*
-   GP ADMX file name: *TerminalServer.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->

