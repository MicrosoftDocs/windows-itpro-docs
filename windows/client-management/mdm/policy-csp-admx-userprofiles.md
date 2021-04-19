---
title: Policy CSP - ADMX_UserProfiles
description: Policy CSP - ADMX_UserProfiles
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 11/11/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_UserProfiles
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_UserProfiles policies  

<dl>
  <dd>
    <a href="#admx-userprofiles-cleanupprofiles">ADMX_UserProfiles/CleanupProfiles</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-dontforceunloadhive">ADMX_UserProfiles/DontForceUnloadHive</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-leaveappmgmtdata">ADMX_UserProfiles/LeaveAppMgmtData</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-limitsize">ADMX_UserProfiles/LimitSize</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-profileerroraction">ADMX_UserProfiles/ProfileErrorAction</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-slowlinktimeout">ADMX_UserProfiles/SlowLinkTimeOut</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-user-home">ADMX_UserProfiles/USER_HOME</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-userinfoaccessaction">ADMX_UserProfiles/UserInfoAccessAction</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-cleanupprofiles"></a>**ADMX_UserProfiles/CleanupProfiles**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows an administrator to automatically delete user profiles on system restart that have not been used within a specified number of days. Note: One day is interpreted as 24 hours after a specific user profile was accessed.

If you enable this policy setting, the User Profile Service will automatically delete on the next system restart all user profiles on the computer that have not been used within the specified number of days. 

If you disable or do not configure this policy setting, User Profile Service will not automatically delete any profiles on the next system restart.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Delete user profiles older than a specified number of days on system restart*
-   GP name: *CleanupProfiles*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-dontforceunloadhive"></a>**ADMX_UserProfiles/DontForceUnloadHive**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls whether Windows forcefully unloads the user's registry at logoff, even if there are open handles to the per-user registry keys. 

Note: This policy setting should only be used for cases where you may be running into application compatibility issues due to this specific Windows behavior. It is not recommended to enable this policy by default as it may prevent users from getting an updated version of their roaming user profile.

If you enable this policy setting, Windows will not forcefully unload the users registry at logoff, but will unload the registry when all open handles to the per-user registry keys are closed.

If you disable or do not configure this policy setting, Windows will always unload the users registry at logoff, even if there are any open handles to the per-user registry keys at user logoff.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not forcefully unload the users registry at user logoff*
-   GP name: *DontForceUnloadHive*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-leaveappmgmtdata"></a>**ADMX_UserProfiles/LeaveAppMgmtData**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether the system retains a roaming user's Windows Installer and Group Policy based software installation data on their profile deletion.

By default Windows deletes all information related to a roaming user (which includes the user's settings, data, Windows Installer related data, and the like) when their profile is deleted. As a result, the next time a roaming user whose profile was previously deleted on that client logs on, they will need to reinstall all apps published via policy at logon increasing logon time. You can use this policy setting to change this behavior.

If you enable this policy setting, Windows will not delete Windows Installer or Group Policy software installation data for roaming users when profiles are deleted from the machine. This will improve the performance of Group Policy based Software Installation during user logon when a user profile is deleted and that user subsequently logs on to the machine.

If you disable or do not configure this policy setting, Windows will delete the entire profile for roaming users, including the Windows Installer and Group Policy software installation data when those profiles are deleted.

> [!NOTE]
> If this policy setting is enabled for a machine, local administrator action is required to remove the Windows Installer or Group Policy software installation data stored in the registry and file system of roaming users' profiles on the machine.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Leave Windows Installer and Group Policy Software Installation Data*
-   GP name: *LeaveAppMgmtData*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-limitsize"></a>**ADMX_UserProfiles/LimitSize**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting sets the maximum size of each user profile and determines the system's response when a user profile reaches the maximum size. This policy setting affects both local and roaming profiles.

If you disable this policy setting or do not configure it, the system does not limit the size of user profiles.

If you enable this policy setting, you can:

- Set a maximum permitted user profile size.
- Determine whether the registry files are included in the calculation of the profile size.
- Determine whether users are notified when the profile exceeds the permitted maximum size.
- Specify a customized message notifying users of the oversized profile.
- Determine how often the customized message is displayed.

> [!NOTE]
> In operating systems earlier than Microsoft Windows Vista, Windows will not allow users to log off until the profile size has been reduced to within the allowable limit. In Microsoft Windows Vista, Windows will not block users from logging off. Instead, if the user has a roaming user profile, Windows will not synchronize the user's profile with the roaming profile server if the maximum profile size limit specified here is exceeded.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Limit profile size*
-   GP name: *LimitSize*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-profileerroraction"></a>**ADMX_UserProfiles/ProfileErrorAction**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting will automatically log off a user when Windows cannot load their profile. 

If Windows cannot access the user profile folder or the profile contains errors that prevent it from loading, Windows logs on the user with a temporary profile. This policy setting allows the administrator to disable this behavior, preventing Windows from logging on the user with a temporary profile.

If you enable this policy setting, Windows will not log on a user with a temporary profile. Windows logs the user off if their profile cannot be loaded.

If you disable this policy setting or do not configure it, Windows logs on the user with a temporary profile when Windows cannot load their user profile.

Also, see the "Delete cached copies of roaming profiles" policy setting.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not log users on with temporary profiles*
-   GP name: *ProfileErrorAction*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-slowlinktimeout"></a>**ADMX_UserProfiles/SlowLinkTimeOut**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting defines a slow connection for roaming user profiles and establishes thresholds for two tests of network speed. 

To determine the network performance characteristics, a connection is made to the file share storing the user's profile and 64 kilobytes of data is transferred. From that connection and data transfer, the network's latency and connection speed are determined.

This policy setting and related policy settings in this folder together define the system's response when roaming user profiles are slow to load.

If you enable this policy setting, you can change how long Windows waits for a response from the server before considering the connection to be slow.

If you disable or do not configure this policy setting, Windows considers the network connection to be slow if the server returns less than 500 kilobits of data per second or take 120 milliseconds to respond.Consider increasing this value for clients using DHCP Service-assigned addresses or for computers accessing profiles across dial-up connections.Important: If the "Do not detect slow network connections" policy setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there is no local copy of the roaming profile to load when the system detects a slow connection.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Control slow network connection timeout for user profiles*
-   GP name: *SlowLinkTimeOut*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-user-home"></a>**ADMX_UserProfiles/USER_HOME**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to specify the location and root (file share or local path) of a user's home folder for a logon session.

If you enable this policy setting, the user's home folder is configured to the specified local or network location, creating a new folder for each user name.

To use this policy setting, in the Location list, choose the location for the home folder. If you choose “On the network,” enter the path to a file share in the Path box (for example, \\\\ComputerName\ShareName), and then choose the drive letter to assign to the file share. If you choose “On the local computer,” enter a local path (for example, C:\HomeFolder) in the Path box.

Do not specify environment variables or ellipses in the path. Also, do not specify a placeholder for the user name because the user name will be appended at logon.

> [!NOTE]
> The Drive letter box is ignored if you choose “On the local computer” from the Location list. If you choose “On the local computer” and enter a file share, the user's home folder will be placed in the network location without mapping the file share to a drive letter.

If you disable or do not configure this policy setting, the user's home folder is configured as specified in the user's Active Directory Domain Services account.

If the "Set Remote Desktop Services User Home Directory" policy setting is enabled, the “Set user home folder” policy setting has no effect.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set user home folder*
-   GP name: *USER_HOME*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-userinfoaccessaction"></a>**ADMX_UserProfiles/UserInfoAccessAction**  

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
Available in the latest Windows 10 Insider Preview Build. This setting prevents users from managing the ability to allow apps to access the user name, account picture, and domain information.

If you enable this policy setting, sharing of user name, picture and domain information may be controlled by setting one of the following options:

- "Always on" - users will not be able to change this setting and the user's name and account picture will be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability will also be able to retrieve the user's UPN, SIP/URI, and DNS.

- "Always off" - users will not be able to change this setting and the user's name and account picture will not be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability will not be able to retrieve the user's UPN, SIP/URI, and DNS. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources.

If you do not configure or disable this policy the user will have full control over this setting and can turn it off and on. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources if users choose to turn the setting off.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *User management of sharing user name, account picture, and domain information with apps (not desktop apps)*
-   GP name: *UserInfoAccessAction*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

> [!NOTE]
> These policies are for upcoming release.
<!--/Policies-->
