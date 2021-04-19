---
title: Policy CSP - ADMX_NetworkConnections
description: Policy CSP - ADMX_NetworkConnections
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 10/21/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_NetworkConnections

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_NetworkConnections policies  

<dl>
  <dd>
    <a href="#admx-networkconnections-nc-addremovecomponents">ADMX_NetworkConnections/NC_AddRemoveComponents</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-advancedsettings">ADMX_NetworkConnections/NC_AdvancedSettings</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-allowadvancedtcpipconfig">ADMX_NetworkConnections/NC_AllowAdvancedTCPIPConfig</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-changebindstate">ADMX_NetworkConnections/NC_ChangeBindState</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-deletealluserconnection">ADMX_NetworkConnections/NC_DeleteAllUserConnection</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-deleteconnection">ADMX_NetworkConnections/NC_DeleteConnection</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-dialupprefs">ADMX_NetworkConnections/NC_DialupPrefs</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-donotshowlocalonlyicon">ADMX_NetworkConnections/NC_DoNotShowLocalOnlyIcon</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-enableadminprohibits">ADMX_NetworkConnections/NC_EnableAdminProhibits</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-forcetunneling">ADMX_NetworkConnections/NC_ForceTunneling</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-ipstatechecking">ADMX_NetworkConnections/NC_IpStateChecking</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-lanchangeproperties">ADMX_NetworkConnections/NC_LanChangeProperties</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-lanconnect">ADMX_NetworkConnections/NC_LanConnect</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-lanproperties">ADMX_NetworkConnections/NC_LanProperties</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-newconnectionwizard">ADMX_NetworkConnections/NC_NewConnectionWizard</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-personalfirewallconfig">ADMX_NetworkConnections/NC_PersonalFirewallConfig</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-rasalluserproperties">ADMX_NetworkConnections/NC_RasAllUserProperties</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-raschangeproperties">ADMX_NetworkConnections/NC_RasChangeProperties</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-rasconnect">ADMX_NetworkConnections/NC_RasConnect</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-rasmyproperties">ADMX_NetworkConnections/NC_RasMyProperties</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-renamealluserrasconnection">ADMX_NetworkConnections/NC_RenameAllUserRasConnection</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-renameconnection">ADMX_NetworkConnections/NC_RenameConnection</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-renamelanconnection">ADMX_NetworkConnections/NC_RenameLanConnection</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-renamemyrasconnection">ADMX_NetworkConnections/NC_RenameMyRasConnection</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-showsharedaccessui">ADMX_NetworkConnections/NC_ShowSharedAccessUI</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-statistics">ADMX_NetworkConnections/NC_Statistics</a>
  </dd>
  <dd>
    <a href="#admx-networkconnections-nc-stddomainusersetlocation">ADMX_NetworkConnections/NC_StdDomainUserSetLocation</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-addremovecomponents"></a>**ADMX_NetworkConnections/NC_AddRemoveComponents**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether administrators can add and remove network components for a LAN or remote access connection. This setting has no effect on nonadministrators.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Install and Uninstall buttons for components of connections are disabled, and administrators are not permitted to access network components in the Windows Components Wizard.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Install and Uninstall buttons for components of connections in the Network Connections folder are enabled. Also, administrators can gain access to network components in the Windows Components Wizard.

The Install button opens the dialog boxes used to add network components. Clicking the Uninstall button removes the selected component in the components list (above the button).

The Install and Uninstall buttons appear in the properties dialog box for connections. These buttons are on the General tab for LAN connections and on the Networking tab for remote access connections.

> [!NOTE]
> When the "Prohibit access to properties of a LAN connection", "Ability to change properties of an all user remote access connection", or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the connection properties dialog box, the Install and Uninstall buttons for connections are blocked.
>
> Nonadministrators are already prohibited from adding and removing connection components, regardless of this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit adding and removing components for a LAN or remote access connection*
-   GP name: *NC_AddRemoveComponents*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-advancedsettings"></a>**ADMX_NetworkConnections/NC_AdvancedSettings**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether the Advanced Settings item on the Advanced menu in Network Connections is enabled for administrators.

The Advanced Settings item lets users view and change bindings and view and change the order in which the computer accesses connections, network providers, and print providers.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Advanced Settings item is disabled for administrators.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Advanced Settings item is enabled for administrators.

> [!NOTE]
> Nonadministrators are already prohibited from accessing the Advanced Settings dialog box, regardless of this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access to the Advanced Settings item on the Advanced menu*
-   GP name: *NC_AdvancedSettings*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-allowadvancedtcpipconfig"></a>**ADMX_NetworkConnections/NC_AllowAdvancedTCPIPConfig**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can configure advanced TCP/IP settings.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Advanced button on the Internet Protocol (TCP/IP) Properties dialog box is disabled for all users (including administrators). As a result, users cannot open the Advanced TCP/IP Settings Properties page and modify IP settings, such as DNS and WINS server information.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting, the Advanced button is enabled, and all users can open the Advanced TCP/IP Setting dialog box.

This setting is superseded by settings that prohibit access to properties of connections or connection components. When these policies are set to deny access to the connection properties dialog box or Properties button for connection components, users cannot gain access to the Advanced button for TCP/IP configuration.

Changing this setting from Enabled to Not Configured does not enable the Advanced button until the user logs off.

> [!NOTE]
> Nonadministrators (excluding Network Configuration Operators) do not have permission to access TCP/IP advanced configuration for a LAN connection, regardless of this setting.

> [!TIP]
> To open the Advanced TCP/IP Setting dialog box, in the Network Connections folder, right-click a connection icon, and click Properties. For remote access connections, click the Networking tab.  In the "Components checked are used by this connection" box, click Internet Protocol (TCP/IP), click the Properties button, and then click the Advanced button.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit TCP/IP advanced configuration*
-   GP name: *NC_AllowAdvancedTCPIPConfig*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-changebindstate"></a>**ADMX_NetworkConnections/NC_ChangeBindState**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting Determines whether administrators can enable and disable the components used by LAN connections.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the check boxes for enabling and disabling components are disabled. As a result, administrators cannot enable or disable the components that a connection uses.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Properties dialog box for a connection includes a check box beside the name of each component that the connection uses. Selecting the check box enables the component, and clearing the check box disables the component.

> [!NOTE]
> When the "Prohibit access to properties of a LAN connection" setting is enabled, users are blocked from accessing the check boxes for enabling and disabling the components of a LAN connection.
>
> Nonadministrators are already prohibited from enabling or disabling components for a LAN connection, regardless of this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit Enabling/Disabling components of a LAN connection*
-   GP name: *NC_ChangeBindState*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-deletealluserconnection"></a>**ADMX_NetworkConnections/NC_DeleteAllUserConnection**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can delete all user remote access connections.

To create an all-user remote access connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.

If you enable this setting, all users can delete shared remote access connections. In addition, if your file system is NTFS, users need to have Write access to Documents and Settings\All Users\Application Data\Microsoft\Network\Connections\Pbk to delete a shared remote access connection.

If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), users (including administrators) cannot delete all-user remote access connections. (By default, users can still delete their private connections, but you can change the default by using the "Prohibit deletion of remote access connections" setting.)

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you do not configure this setting, only Administrators and Network Configuration Operators can delete all user remote access connections.

When enabled, the "Prohibit deletion of remote access connections" setting takes precedence over this setting. Users (including administrators) cannot delete any remote access connections, and this setting is ignored.

> [!NOTE]
> LAN connections are created and deleted automatically by the system when a LAN adapter is installed or removed. You cannot use the Network Connections folder to create or delete a LAN connection.
> 
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ability to delete all user remote access connections*
-   GP name: *NC_DeleteAllUserConnection*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-deleteconnection"></a>**ADMX_NetworkConnections/NC_DeleteConnection**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can delete remote access connections.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), users (including administrators) cannot delete any remote access connections. This setting also disables the Delete option on the context menu for a remote access connection and on the File menu in the Network Connections folder.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, all users can delete their private remote access connections. Private connections are those that are available only to one user. (By default, only Administrators and Network Configuration Operators can delete connections available to all users, but you can change the default by using the "Ability to delete all user remote access connections" setting.)

When enabled, this setting takes precedence over the "Ability to delete all user remote access connections" setting. Users cannot delete any remote access connections, and the "Ability to delete all user remote access connections" setting is ignored.

> [!NOTE]
> LAN connections are created and deleted automatically when a LAN adapter is installed or removed. You cannot use the Network Connections folder to create or delete a LAN connection.
>
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
> 
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit deletion of remote access connections*
-   GP name: *NC_DeleteConnection*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-dialupprefs"></a>**ADMX_NetworkConnections/NC_DialupPrefs**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether the Remote Access Preferences item on the Advanced menu in Network Connections folder is enabled.

The Remote Access Preferences item lets users create and change connections before logon and configure automatic dialing and callback features.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Remote Access Preferences item is disabled for all users (including administrators).

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Remote Access Preferences item is enabled for all users.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access to the Remote Access Preferences item on the Advanced menu*
-   GP name: *NC_DialupPrefs*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-donotshowlocalonlyicon"></a>**ADMX_NetworkConnections/NC_DoNotShowLocalOnlyIcon**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether or not the "local access only" network icon will be shown.

When enabled, the icon for Internet access will be shown in the system tray even when a user is connected to a network with local access only.

If you disable this setting or do not configure it, the "local access only" icon will be used when a user is connected to a network with local access only.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not show the "local access only" network icon*
-   GP name: *NC_DoNotShowLocalOnlyIcon*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-enableadminprohibits"></a>**ADMX_NetworkConnections/NC_EnableAdminProhibits**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether settings that existed in Windows 2000 Server family will apply to Administrators.

The set of Network Connections group settings that existed in Windows 2000 Professional also exists in Windows XP Professional. In Windows 2000 Professional, all of these settings had the ability to prohibit the use of certain features from Administrators.

By default, Network Connections group settings in Windows XP Professional do not have the ability to prohibit the use of features from Administrators.

If you enable this setting, the Windows XP settings that existed in Windows 2000 Professional will have the ability to prohibit Administrators from using certain features. These settings are "Ability to rename LAN connections or remote access connections available to all users", "Prohibit access to properties of components of a LAN connection", "Prohibit access to properties of components of a remote access connection", "Ability to access TCP/IP advanced configuration", "Prohibit access to the Advanced Settings Item on the Advanced Menu", "Prohibit adding and removing components for a LAN or remote access connection", "Prohibit access to properties of a LAN connection", "Prohibit Enabling/Disabling components of a LAN connection", "Ability to change properties of an all user remote access connection", "Prohibit changing properties of a private remote access connection", "Prohibit deletion of remote access connections", "Ability to delete all user remote access connections", "Prohibit connecting and disconnecting a remote access connection", "Ability to Enable/Disable a LAN connection", "Prohibit access to the New Connection Wizard", "Prohibit renaming private remote access connections", "Prohibit access to the Remote Access Preferences item on the Advanced menu", "Prohibit viewing of status for an active connection". When this setting is enabled, settings that exist in both Windows 2000 Professional and Windows XP Professional behave the same for administrators.

If you disable this setting or do not configure it, Windows XP settings that existed in Windows 2000 will not apply to administrators.

> [!NOTE]
> This setting is intended to be used in a situation in which the Group Policy object that these settings are being applied to contains both Windows 2000 Professional and Windows XP Professional computers, and identical Network Connections policy behavior is required between all Windows 2000 Professional and Windows XP Professional computers.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable Windows 2000 Network Connections settings for Administrators*
-   GP name: *NC_EnableAdminProhibits*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-forcetunneling"></a>**ADMX_NetworkConnections/NC_ForceTunneling**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether a remote client computer  routes Internet traffic through the internal network or whether the client accesses the Internet directly.

When a remote client computer connects to an internal network using DirectAccess, it can access the Internet in two ways: through the secure tunnel that DirectAccess establishes between the computer and the internal network, or directly through the local default gateway.

If you enable this policy setting, all traffic between a remote client computer running DirectAccess and the Internet is routed through the internal network.

If you disable this policy setting, traffic between remote client computers running DirectAccess and the Internet is not routed through the internal network.

If you do not configure this policy setting, traffic between remote client computers running DirectAccess and the Internet is not routed through the internal network.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Route all traffic through the internal network*
-   GP name: *NC_ForceTunneling*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-ipstatechecking"></a>**ADMX_NetworkConnections/NC_IpStateChecking**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage whether notifications are shown to the user when a DHCP-configured connection is unable to retrieve an IP address from a DHCP server. This is often signified by the assignment of an automatic private IP address"(i.e. an IP address in the range 169.254.*.*). This indicates that a DHCP server could not be reached or the DHCP server was reached but unable to respond to the request with a valid IP address. By default, a notification is displayed providing the user with information on how the problem can be resolved.

If you enable this policy setting, this condition will not be reported as an error to the user.

If you disable or do not configure this policy setting, a DHCP-configured connection that has not been assigned an IP address will be reported via a notification, providing the user with information as to how the problem can be resolved.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Turn off notifications when a connection has only limited or no connectivity*
-   GP name: *NC_IpStateChecking*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-lanchangeproperties"></a>**ADMX_NetworkConnections/NC_LanChangeProperties**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Administrators and Network Configuration Operators can change the properties of components used by a LAN connection.

This setting determines whether the Properties button for components of a LAN connection is enabled.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties button is disabled for Administrators. Network Configuration Operators are prohibited from accessing connection components, regardless of the "Enable Network Connections settings for Administrators" setting.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting does not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Properties button is enabled for administrators and Network Configuration Operators.

The Local Area Connection Properties dialog box includes a list of the network components that the connection uses. To view or change the properties of a component, click the name of the component, and then click the Properties button beneath the component list.

> [!NOTE]
> Not all network components have configurable properties. For components that are not configurable, the Properties button is always disabled.
>
> When the "Prohibit access to properties of a LAN connection" setting is enabled, users are blocked from accessing the Properties button for LAN connection components.
>
> Network Configuration Operators only have permission to change TCP/IP properties. Properties for all other components are unavailable to these users.
>
> Nonadministrators are already prohibited from accessing properties of components for a LAN connection, regardless of this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access to properties of components of a LAN connection*
-   GP name: *NC_LanChangeProperties*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-lanconnect"></a>**ADMX_NetworkConnections/NC_LanConnect**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can enable/disable LAN connections.

If you enable this setting, the Enable and Disable options for LAN connections are available to users (including nonadministrators). Users can enable/disable a LAN connection by double-clicking the icon representing the connection, by right-clicking it, or by using the File menu.

If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), double-clicking the icon has no effect, and the Enable and Disable menu items are disabled for all users (including administrators).

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you do not configure this setting, only Administrators and Network Configuration Operators can enable/disable LAN connections.

> [!NOTE]
> Administrators can still enable/disable LAN connections from Device Manager when this setting is disabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ability to Enable/Disable a LAN connection*
-   GP name: *NC_LanConnect*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-lanproperties"></a>**ADMX_NetworkConnections/NC_LanProperties**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can change the properties of a LAN connection.

This setting determines whether the Properties menu item is enabled, and thus, whether the Local Area Connection Properties dialog box is available to users.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled for all users, and users cannot open the Local Area Connection Properties dialog box.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, a Properties menu item appears when users right-click the icon representing a LAN connection. Also, when users select the connection, Properties is enabled on the File menu.

> [!NOTE]
> This setting takes precedence over settings that manipulate the availability of features inside the Local Area Connection Properties dialog box. If this setting is enabled, nothing within the properties dialog box for a LAN connection is available to users.
>
> Nonadministrators have the right to view the properties dialog box for a connection but not to make changes, regardless of this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access to properties of a LAN connection*
-   GP name: *NC_LanProperties*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-newconnectionwizard"></a>**ADMX_NetworkConnections/NC_NewConnectionWizard**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can use the New Connection Wizard, which creates new network connections.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Make New Connection icon does not appear in the Start Menu on in the Network Connections folder. As a result, users (including administrators) cannot start the New Connection Wizard.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Make New Connection icon appears in the Start menu and in the Network Connections folder for all users. Clicking the Make New Connection icon starts the New Connection Wizard.

> [!NOTE]
> Changing this setting from Enabled to Not Configured does not restore the Make New Connection icon until the user logs off or on. When other changes to this setting are applied, the icon does not appear or disappear in the Network Connections folder until the folder is refreshed.
>
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access to the New Connection Wizard*
-   GP name: *NC_NewConnectionWizard*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-personalfirewallconfig"></a>**ADMX_NetworkConnections/NC_PersonalFirewallConfig**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting prohibits use of Internet Connection Firewall on your DNS domain network.

Determines whether users can enable the Internet Connection Firewall feature on a connection, and if the Internet Connection Firewall service can run on a computer.

> [!IMPORTANT]
> This setting is location aware. It only applies when a computer is connected to the same DNS domain network it was connected to when the setting was refreshed on that computer. If a computer is connected to a DNS domain network other than the one it was connected to when the setting was refreshed, this setting does not apply.

The Internet Connection Firewall is a stateful packet filter for home and small office users to protect them from Internet network security threats.

If you enable this setting, Internet Connection Firewall cannot be enabled or configured by users (including administrators), and the Internet Connection Firewall service cannot run on the computer. The option to enable the Internet Connection Firewall through the Advanced tab is removed. In addition, the Internet Connection Firewall is not enabled for remote access connections created through the Make New Connection Wizard. The Network Setup Wizard is disabled.

If you enable the "Windows Firewall: Protect all network connections" policy setting, the "Prohibit use of Internet Connection Firewall on your DNS domain network" policy setting has no effect on computers that are running Windows Firewall, which replaces Internet Connection Firewall when you install Windows XP Service Pack 2.

If you disable this setting or do not configure it, the Internet Connection Firewall is disabled when a LAN Connection or VPN connection is created, but users can use the Advanced tab in the connection properties to enable it. The Internet Connection Firewall is enabled by default on the connection for which Internet Connection Sharing is enabled. In addition, remote access connections created through the Make New Connection Wizard have the Internet Connection Firewall enabled.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit use of Internet Connection Firewall on your DNS domain network*
-   GP name: *NC_PersonalFirewallConfig*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-rasalluserproperties"></a>**ADMX_NetworkConnections/NC_RasAllUserProperties**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether a user can view and change the properties of remote access connections that are available to all users of the computer.

To create an all-user remote access connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.

This setting determines whether the Properties menu item is enabled, and thus, whether the Remote Access Connection Properties dialog box is available to users.

If you enable this setting, a Properties menu item appears when any user right-clicks the icon for a remote access connection. Also, when any user selects the connection, Properties appears on the File menu.

If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled, and users (including administrators) cannot open the remote access connection properties dialog box.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you do not configure this setting, only Administrators and Network Configuration Operators can change properties of all-user remote access connections.

> [!NOTE]
> This setting takes precedence over settings that manipulate the availability of features inside the Remote Access Connection Properties dialog box. If this setting is disabled, nothing within the properties dialog box for a remote access connection will be available to users.
> 
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ability to change properties of an all user remote access connection*
-   GP name: *NC_RasAllUserProperties*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-raschangeproperties"></a>**ADMX_NetworkConnections/NC_RasChangeProperties**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can view and change the properties of components used by a private or all-user remote access connection.

This setting determines whether the Properties button for components used by a private or all-user remote access connection is enabled.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties button is disabled for all users (including administrators).

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting does not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Properties button is enabled for all users.

The Networking tab of the Remote Access Connection Properties dialog box includes a list of the network components that the connection uses. To view or change the properties of a component, click the name of the component, and then click the Properties button beneath the component list.

> [NOTE]
> Not all network components have configurable properties. For components that are not configurable, the Properties button is always disabled.
>
> When the "Ability to change properties of an all user remote access connection" or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the Remote Access Connection Properties dialog box, the Properties button for remote access connection components is blocked.
>
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit access to properties of components of a remote access connection*
-   GP name: *NC_RasChangeProperties*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-rasconnect"></a>**ADMX_NetworkConnections/NC_RasConnect**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can connect and disconnect remote access connections.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), double-clicking the icon has no effect, and the Connect and Disconnect menu items are disabled for all users (including administrators).

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Connect and Disconnect options for remote access connections are available to all users. Users can connect or disconnect a remote access connection by double-clicking the icon representing the connection, by right-clicking it, or by using the File menu.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit connecting and disconnecting a remote access connection*
-   GP name: *NC_RasConnect*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-rasmyproperties"></a>**ADMX_NetworkConnections/NC_RasMyProperties**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can view and change the properties of their private remote access connections.

Private connections are those that are available only to one user. To create a private connection, on the Connection Availability page in the New Connection Wizard, click the "Only for myself" option.

This setting determines whether the Properties menu item is enabled, and thus, whether the Remote Access Connection Properties dialog box for a private connection is available to users.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled, and no users (including administrators) can open the Remote Access Connection Properties dialog box for a private connection.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, a Properties menu item appears when any user right-clicks the icon representing a private remote access connection. Also, when any user selects the connection, Properties appears on the File menu.

> [!NOTE]
> This setting takes precedence over settings that manipulate the availability of features in the Remote Access Connection Properties dialog box. If this setting is enabled, nothing within the properties dialog box for a remote access connection will be available to users.
>
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit changing properties of a private remote access connection*
-   GP name: *NC_RasMyProperties*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-renamealluserrasconnection"></a>**ADMX_NetworkConnections/NC_RenameAllUserRasConnection**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether nonadministrators can rename all-user remote access connections.

To create an all-user connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.

If you enable this setting, the Rename option is enabled for all-user remote access connections. Any user can rename all-user connections by clicking an icon representing the connection or by using the File menu.

If you disable this setting, the Rename option is disabled for nonadministrators only.

If you do not configure the setting, only Administrators and Network Configuration Operators can rename all-user remote access connections.

> [!NOTE]
> This setting does not apply to Administrators.

When the "Ability to rename LAN connections or remote access connections available to all users" setting is configured (set to either Enabled or Disabled), this setting does not apply.

This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ability to rename all user remote access connections*
-   GP name: *NC_RenameAllUserRasConnection*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-renameconnection"></a>**ADMX_NetworkConnections/NC_RenameConnection**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting Determines whether users can rename LAN or all user remote access connections.

If you enable this setting, the Rename option is enabled for all users. Users can rename connections by clicking the icon representing a connection or by using the File menu.

If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option for LAN and all user remote access connections is disabled for all users (including Administrators and Network Configuration Operators).

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If this setting is not configured, only Administrators and Network Configuration Operators have the right to rename LAN or all user remote access connections.

> [!NOTE]
> When configured, this setting always takes precedence over the "Ability to rename LAN connections" and "Ability to rename all user remote access connections" settings.
>
> This setting does not prevent users from using other programs, such as Internet Explorer, to rename remote access connections.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ability to rename LAN connections or remote access connections available to all users*
-   GP name: *NC_RenameConnection*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-renamelanconnection"></a>**ADMX_NetworkConnections/NC_RenameLanConnection**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether nonadministrators can rename a LAN connection.

If you enable this setting, the Rename option is enabled for LAN connections. Nonadministrators can rename LAN connections by clicking an icon representing the connection or by using the File menu.

If you disable this setting, the Rename option is disabled for nonadministrators only.

If you do not configure this setting, only Administrators and Network Configuration Operators can rename LAN connections

> [!NOTE]
> This setting does not apply to Administrators.

When the "Ability to rename LAN connections or remote access connections available to all users" setting is configured (set to either enabled or disabled), this setting does not apply.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ability to rename LAN connections*
-   GP name: *NC_RenameLanConnection*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-renamemyrasconnection"></a>**ADMX_NetworkConnections/NC_RenameMyRasConnection**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can rename their private remote access connections.

Private connections are those that are available only to one user. To create a private connection, on the Connection Availability page in the New Connection Wizard, click the "Only for myself" option.

If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option is disabled for all users (including administrators).

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the Rename option is enabled for all users' private remote access connections. Users can rename their private connection by clicking an icon representing the connection or by using the File menu.

> [!NOTE]
> This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit renaming private remote access connections*
-   GP name: *NC_RenameMyRasConnection*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-showsharedaccessui"></a>**ADMX_NetworkConnections/NC_ShowSharedAccessUI**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether administrators can enable and configure the Internet Connection Sharing (ICS) feature of an Internet connection and if the ICS service can run on the computer.

ICS lets administrators configure their system as an Internet gateway for a small network and provides network services, such as name resolution and addressing through DHCP, to the local private network.

If you enable this setting, ICS cannot be enabled or configured by administrators, and the ICS service cannot run on the computer. The Advanced tab in the Properties dialog box for a LAN or remote access connection is removed. The Internet Connection Sharing page is removed from the New Connection Wizard. The Network Setup Wizard is disabled.

If you disable this setting or do not configure it and have two or more connections, administrators can enable ICS. The Advanced tab in the properties dialog box for a LAN or remote access connection is available. In addition, the user is presented with the option to enable Internet Connection Sharing in the Network Setup Wizard and Make New Connection Wizard. (The Network Setup Wizard is available only in Windows XP Professional.)

By default, ICS is disabled when you create a remote access connection, but administrators can use the Advanced tab to enable it. When running the New Connection Wizard or Network Setup Wizard, administrators can choose to enable ICS.

> [!NOTE]
> Internet Connection Sharing is only available when two or more network connections are present.

When the "Prohibit access to properties of a LAN connection," "Ability to change properties of an all user remote access connection," or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the Connection Properties dialog box, the Advanced tab for the connection is blocked.

Nonadministrators are already prohibited from configuring Internet Connection Sharing, regardless of this setting.

Disabling this setting does not prevent Wireless Hosted Networking from using the ICS service for DHCP services. To prevent the ICS service from running, on the Network Permissions tab in the network's policy properties, select the "Don't use hosted networks" check box.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit use of Internet Connection Sharing on your DNS domain network*
-   GP name: *NC_ShowSharedAccessUI*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-statistics"></a>**ADMX_NetworkConnections/NC_Statistics**  

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
> * User

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether users can view the status for an active connection.

Connection status is available from the connection status taskbar icon or from the Status dialog box. The Status dialog box displays information about the connection and its activity. It also provides buttons to disconnect and to configure the properties of the connection.

If you enable this setting, the connection status taskbar icon and Status dialog box are not available to users (including administrators). The Status option is disabled in the context menu for the connection and on the File menu in the Network Connections folder. Users cannot choose to show the connection icon in the taskbar from the Connection Properties dialog box.

If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.

If you disable this setting or do not configure it, the connection status taskbar icon and  Status dialog box are available to all users.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prohibit viewing of status for an active connection*
-   GP name: *NC_Statistics*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-networkconnections-nc-stddomainusersetlocation"></a>**ADMX_NetworkConnections/NC_StdDomainUserSetLocation**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether to require domain users to elevate when setting a network's location.

If you enable this policy setting, domain users must elevate when setting a network's location.

If you disable or do not configure this policy setting, domain users can set a network's location without elevating.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Require domain users to elevate when setting a network's location*
-   GP name: *NC_StdDomainUserSetLocation*
-   GP path: *Network\Network Connections*
-   GP ADMX file name: *NetworkConnections.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are for upcoming release.
<!--/Policies-->