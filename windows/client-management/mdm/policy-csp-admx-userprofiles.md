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
    <a href="#admx-userprofiles-addadmingrouptorup">ADMX_UserProfiles/AddAdminGroupToRUP</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-cleanupprofiles">ADMX_UserProfiles/CleanupProfiles</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-compatiblerupsecurity">ADMX_UserProfiles/CompatibleRUPSecurity</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-connect-homedir-toroot">ADMX_UserProfiles/Connect_HomeDir_ToRoot</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-cscsuspenddirectories">ADMX_UserProfiles/CscSuspendDirectories</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-deleteroamingcachedprofiles">ADMX_UserProfiles/DeleteRoamingCachedProfiles</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-dontforceunloadhive">ADMX_UserProfiles/DontForceUnloadHive</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-enableslowlinkdetect">ADMX_UserProfiles/EnableSlowLinkDetect</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-enableslowlinkui">ADMX_UserProfiles/EnableSlowLinkUI</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-excludedirectories">ADMX_UserProfiles/ExcludeDirectories</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-leaveappmgmtdata">ADMX_UserProfiles/LeaveAppMgmtData</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-limitsize">ADMX_UserProfiles/LimitSize</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-localprofile">ADMX_UserProfiles/LocalProfile</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-machineprofilepath">ADMX_UserProfiles/MachineProfilePath</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-primarycomputer-rup">ADMX_UserProfiles/PrimaryComputer_RUP</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-profiledlgtimeout">ADMX_UserProfiles/ProfileDlgTimeOut</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-profileerroraction">ADMX_UserProfiles/ProfileErrorAction</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-profileunloadtimeout">ADMX_UserProfiles/ProfileUnloadTimeout</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-readonlyuserprofile">ADMX_UserProfiles/Readonlyuserprofile</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-slowlinkdefault">ADMX_UserProfiles/SlowLinkDefault</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-slowlinktimeout">ADMX_UserProfiles/SlowLinkTimeOut</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-user-home">ADMX_UserProfiles/USER_HOME</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-uploadhive">ADMX_UserProfiles/UploadHive</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-userinfoaccessaction">ADMX_UserProfiles/UserInfoAccessAction</a>
  </dd>
  <dd>
    <a href="#admx-userprofiles-waitfornetwork">ADMX_UserProfiles/WaitForNetwork</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-addadmingrouptorup"></a>**ADMX_UserProfiles/AddAdminGroupToRUP**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting adds the Administrator security group to the roaming user profile share.

Once an administrator has configured a user's roaming profile, the profile will be created at the user's next login. The profile is created at the location that is specified by the administrator.

For the Windows XP Professional and Windows 2000 Professional operating systems, the default file permissions for the newly generated profile are full control, or read and write access for the user, and no file access for the administrators group.

By configuring this policy setting, you can alter this behavior.

If you enable this policy setting, the administrator group is also given full control to the user's profile folder.

If you disable or do not configure this policy setting, only the user is given full control of their user profile, and the administrators group has no file system access to this folder.

> [!NOTE]
> If the policy setting is enabled after the profile is created, the policy setting has no effect.
> 
> The policy setting must be configured on the client computer, not the server, for it to have any effect, because the client computer sets the file share permissions for the roaming profile at creation time.
> 
> In the default case, administrators have no file access to the user's profile, but they may still take ownership of this folder to grant themselves file permissions.
>
> The behavior when this policy setting is enabled is exactly the same behavior as in Windows NT 4.0.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Add the Administrators security group to roaming user profiles*
-   GP name: *AddAdminGroupToRUP*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
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
<a href="" id="admx-userprofiles-compatiblerupsecurity"></a>**ADMX_UserProfiles/CompatibleRUPSecurity**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting disables the more secure default setting for the user's roaming user profile folder.

After an administrator has configured a user's roaming profile, the profile will be created at the user's next login. The profile is created at the location that is specified by the administrator.

For Windows 2000 Professional pre-SP4 and Windows XP pre-SP1 operating systems, the default file permissions for the newly generated profile are full control access for the user and no file access for the administrators group. No checks are made for the correct permissions if the profile folder already exists. For Windows Server 2003 family, Windows 2000 Professional SP4 and Windows XP SP1, the default behavior is to check the folder for the correct permissions if the profile folder already exists, and not copy files to or from the roaming folder if the permissions are not correct.

By configuring this policy setting, you can alter this behavior.

If you enable this policy setting Windows will not check the permissions for the folder in the case where the folder exists.

If you disable or do not configure this policy setting AND the roaming profile folder exists AND the user or administrators group are not the owner of the folder, Windows will not copy files to or from the roaming folder. The user will be shown an error message and an entry will be written to the event log. The user's cached profile will be used, or a temporary profile issued if no cached profile exists. 

> [!NOTE]
> The policy setting must be configured on the client computer not the server for it to have any effect because the client computer sets the file share permissions for the roaming profile at creation time.
>
> The behavior when this policy setting is enabled is exactly the same behavior as in Windows 2000 Professional pre-SP4 and Windows XP Professional.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Do not check for user ownership of Roaming Profile Folders*
-   GP name: *CompatibleRUPSecurity*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-connect-homedir-toroot"></a>**ADMX_UserProfiles/Connect_HomeDir_ToRoot**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting restores the definitions of the %HOMESHARE% and %HOMEPATH% environment variables to those used in Windows NT 4.0 and earlier. Along with %HOMEDRIVE%, these variables define the home directory of a user profile. The home directory is a persistent mapping of a drive letter on the local computer to a local or remote directory.

If you enable this policy setting, the system uses the Windows NT 4.0 definitions. %HOMESHARE% stores only the network share (such as \\\server\share). %HOMEPATH% stores the remainder of the fully qualified path to the home directory (such as \dir1\dir2\homedir). As a result, users can access any directory on the home share by using the home directory drive letter.

If you disable or do not configure this policy setting, the system uses the definitions introduced with Windows 2000. %HOMESHARE% stores the fully qualified path to the home directory (such as \\\\server\share\dir1\dir2\homedir). Users can access the home directory and any of its subdirectories from the home drive letter, but they cannot see or access its parent directories. %HOMEPATH% stores a final backslash and is included for compatibility with earlier systems.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Connect home directory to root of the share*
-   GP name: *Connect_HomeDir_ToRoot*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-cscsuspenddirectories"></a>**ADMX_UserProfiles/CscSuspendDirectories**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to specify which network directories will be synchronized only at logon and logoff via Offline Files. This policy setting is meant to be used in conjunction with Folder Redirection, to help resolve issues with applications that do not work well with Offline Files while the user is online.

If you enable this policy setting, the network paths specified in this policy setting will be synchronized only by Offline Files during user logon and logoff, and will be taken offline while the user is logged on.

If you disable or do not configure this policy setting, the paths specified in this policy setting will behave like any other cached data via Offline Files and continue to remain online while the user is logged on, if the network paths are accessible.

> [!NOTE]
> You should not use this policy setting to suspend any of the root redirected folders such as Appdata\Roaming, Start Menu, and Documents. You should suspend only the subfolders of these parent folders.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Specify network directories to sync at logon/logoff time only*
-   GP name: *CscSuspendDirectories*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-deleteroamingcachedprofiles"></a>**ADMX_UserProfiles/DeleteRoamingCachedProfiles**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines whether Windows keeps a copy of a user's roaming profile on the local computer's hard drive when the user logs off.

Roaming profiles reside on a network server. By default, when users with roaming profiles log off, the system also saves a copy of their roaming profile on the hard drive of the computer they are using in case the server that stores the roaming profile is unavailable when the user logs on again. The local copy is also used when the remote copy of the roaming user profile is slow to load.

If you enable this policy setting, any local copies of the user's roaming profile are deleted when the user logs off. The roaming profile still remains on the network server that stores it.

If you disable or do not configure this policy setting, Windows keeps a copy of a user's roaming profile on the local computer's hard drive when the user logs off.

> [!IMPORTANT]
> Do not enable this policy setting if you are using the slow link detection feature. To respond to a slow link, the system requires a local copy of the user's roaming profile.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Delete cached copies of roaming profiles*
-   GP name: *DeleteRoamingCachedProfiles*
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
<a href="" id="admx-userprofiles-enableslowlinkdetect"></a>**ADMX_UserProfiles/EnableSlowLinkDetect**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting disables the detection of slow network connections. 

Slow link detection measures the speed of the connection between a user's computer and the remote server that stores the roaming user profile. When the system detects a slow link, the related policy settings in this folder tell the computer how to respond.

If you enable this policy setting, the system does not detect slow connections or recognize any connections as being slow. As a result, the system does not respond to slow connections to user profiles, and it ignores the policy settings that tell the system how to respond to a slow connection.

If you disable this policy setting or do not configure it, slow link detection is enabled. The system measures the speed of the connection between the user's computer and profile server. If the connection is slow (as defined by the "Slow network connection timeout for user profiles" policy setting), the system applies the other policy settings set in this folder to determine how to proceed. By default, when the connection is slow, the system loads the local copy of the user profile.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Disable detection of slow network connections*
-   GP name: *EnableSlowLinkDetect*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-enableslowlinkui"></a>**ADMX_UserProfiles/EnableSlowLinkUI**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting provides users with the ability to download their roaming profile, even when a slow network connection with their roaming profile server is detected.

If you enable this policy setting, users will be allowed to define whether they want their roaming profile to be downloaded when a slow link with their roaming profile server is detected.

In operating systems earlier than Microsoft Windows Vista, a dialog box will be shown to the user during logon if a slow network connection is detected. The user then is able to choose to download the remote copy of the user profile. In Microsoft Windows Vista, a check box appears on the logon screen and the user must choose whether to download the remote user profile before Windows detects the network connection speed.  

If you disable or do not configure this policy setting, the system does not consult the user. Instead, the system uses the local copy of the user profile. If you have enabled the "Wait for remote user profile" policy setting, the system downloads the remote copy of the user profile without consulting the user. In Microsoft Windows Vista, the system will ignore the user choice made on the logon screen.

> [!NOTE]
> This policy setting and related policy settings in this folder define the system's response when roaming user profiles are slow to download. To adjust the time within which the user must respond to this notice in operating systems earlier than Microsoft Windows Vista, use the "Timeout for dialog boxes" policy setting.

> [!IMPORTANT]
> If the "Do not detect slow network connections" setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there is no local copy of the roaming profile to load when the system detects a slow connection.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prompt user when a slow network connection is detected*
-   GP name: *EnableSlowLinkUI*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-excludedirectories"></a>**ADMX_UserProfiles/ExcludeDirectories**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting lets you exclude folders that are normally included in the user's profile. As a result, these folders do not need to be stored by the network server on which the profile resides and do not follow users to other computers.

> [!NOTE]
> When excluding content from the profile you should try to exclude the narrowest set of data that will address your needs. For example, if there is one application with data that should not be roamed then add only that application's specific folder under the AppData\Roaming folder rather than all of the AppData\Roaming folder to the exclusion list.

By default, the Appdata\Local and Appdata\LocalLow folders and all their subfolders such as the History, Temp, and Temporary Internet Files folders are excluded from the user's roaming profile.

In operating systems earlier than Microsoft Windows Vista, only the History, Local Settings, Temp, and Temporary Internet Files folders are excluded from the user's roaming profile by default.

If you enable this policy setting, you can exclude additional folders.

If you disable this policy setting or do not configure it, only the default folders are excluded.

> [!NOTE]
> You cannot use this policy setting to include the default folders in a roaming user profile.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Exclude directories in roaming profile*
-   GP name: *ExcludeDirectories*
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
<a href="" id="admx-userprofiles-localprofile"></a>**ADMX_UserProfiles/LocalProfile**  

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
Available in the latest Windows 10 Insider Preview Build. This setting determines if roaming user profiles are available on a particular computer. By default, when roaming profile users log on to a computer, their roaming profile is copied down to the local computer. If they have already logged on to this computer in the past, the roaming profile is merged with the local profile. Similarly, when the user logs off this computer, the local copy of their profile, including any changes they have made, is merged with the server copy of their profile.

Using the setting, you can prevent users configured to use roaming profiles from receiving their profile on a specific computer.

If you enable this setting, the following occurs on the affected computer: At first logon, the user receives a new local  profile, rather than the roaming profile. At logoff, changes are saved to the local profile. All subsequent logons use the local profile. 

If you disable this setting or do not configure it, the default behavior occurs, as indicated above.

If you enable both the "Prevent Roaming Profile changes from propagating to the server" setting and the "Only allow local user profiles" setting, roaming profiles are disabled.

> [!NOTE]
> This setting only affects roaming profile users.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Only allow local user profiles*
-   GP name: *LocalProfile*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-machineprofilepath"></a>**ADMX_UserProfiles/MachineProfilePath**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting specifies whether Windows should use the specified network path as the roaming user profile path for all users logging onto this computer.

To use this policy setting, type the path to the network share in the form \\\\Computername\Sharename\. It is recommended to use a path such as \\\\Computername\Sharename\%USERNAME% to give each user an individual profile folder. If not specified, all users logging onto this computer will use the same roaming profile folder as specified by this policy. You need to ensure that you have set the appropriate security on the folder to allow all users to access the profile.

If you enable this policy setting, all users logging on this computer will use the roaming profile path specified in this policy.

If you disable or do not configure this policy setting, users logging on this computer will use their local profile or standard roaming user profile.

> [!NOTE]
> There are four ways to configure a roaming profile for a user. Windows reads profile configuration in the following order and uses the first configured policy setting it reads.

1. Terminal Services roaming profile path specified by Terminal Services policy
2. Terminal Services roaming profile path specified by the user object
3. A per-computer roaming profile path specified in this policy
4. A per-user roaming profile path specified in the user object

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set roaming profile path for all users logging onto this computer*
-   GP name: *MachineProfilePath*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-primarycomputer-rup"></a>**ADMX_UserProfiles/PrimaryComputer_RUP**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls on a per-computer basis whether roaming profiles are downloaded on a user's primary computers only. This policy setting is useful to improve logon performance and to increase security for user data on computers where the user might not want to download private data, such as on a meeting room computer or on a computer in a remote office.

To designate a user's primary computers, an administrator must use management software or a script to add primary computer attributes to the user's account in Active Directory Domain Services (AD DS). This policy setting also requires the Windows Server 2012 version of the Active Directory schema to function.

If you enable this policy setting and the user has a roaming profile, the roaming profile is downloaded on the user's primary computer only.

If you disable or do not configure this policy setting and the user has a roaming profile, the roaming profile is downloaded on every computer that the user logs on to.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Download roaming profiles on primary computers only*
-   GP name: *PrimaryComputer_RUP*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-profiledlgtimeout"></a>**ADMX_UserProfiles/ProfileDlgTimeOut**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls how long Windows waits for a user response before it uses a default user profile for roaming user profiles.

The default user profile is applied when the user does not respond to messages explaining that any of the following events has occurred:

- The system detects a slow connection between the user's computer and the server that stores users' roaming user profiles.
- The system cannot access users' server-based profiles when users log on or off.
- Users' local profiles are newer than their server-based profiles.

If you enable this policy setting, you can override the amount of time Windows waits for user input before using a default user profile for roaming user profiles. The default timeout value is 30 seconds. To use this policy setting, type the number of seconds Windows should wait for user input. The minumum value is 0 seconds, and the maximum is 600 seconds.

If you disable or do not configure this policy setting, Windows waits 30 seconds for user input before applying the default user profile .

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Establish timeout value for dialog boxes*
-   GP name: *ProfileDlgTimeOut*
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

If Windows cannot access the user profile folder or the profile contains errors that prevent it from loading, Windows logs on the user with a temporary profile. This policy setting allows the administrator to disable this behavior, preventing Windows from loggin on the user with a temporary profile.

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
<a href="" id="admx-userprofiles-profileunloadtimeout"></a>**ADMX_UserProfiles/ProfileUnloadTimeout**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines how many times the system tries to unload and update the registry portion of a user profile. When the number of trials specified by this policy setting is exhausted, the system stops trying. As a result, the user profile might not be current, and local and roaming user profiles might not match.

When a user logs off of the computer, the system unloads the user-specific section of the registry (HKEY_CURRENT_USER) into a file (NTUSER.DAT) and updates it. However, if another program or service is reading or editing the registry, the system cannot unload it. The system tries repeatedly (at a rate of once per second) to unload and update the registry settings. By default, the system repeats its periodic attempts 60 times (over the course of one minute).

If you enable this policy setting, you can adjust the number of times the system tries to unload and update the user's registry settings. (You cannot adjust the retry rate.)

If you disable this policy setting or do not configure it, the system repeats its attempt 60 times.

If you set the number of retries to 0, the system tries just once to unload and update the user's registry settings. It does not try again.

> [!NOTE]
> This policy setting is particularly important to servers running Remote Desktop Services. Because Remote Desktop Services edits the users' registry settings when they log off, the system's first few attempts to unload the user settings are more likely to fail.

This policy setting does not affect the system's attempts to update the files in the user profile.

> [!TIP]
> Consider increasing the number of retries specified in this policy setting if there are many user profiles stored in the computer's memory. This indicates that the system has not been able to unload the profile.

Also, check the Application Log in Event Viewer for events generated by Userenv. The system records an event whenever it tries to unload the registry portion of the user profile. The system also records an event when it fails to update the files in a user profile.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Maximum retries to unload and update user profile*
-   GP name: *ProfileUnloadTimeout*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-readonlyuserprofile"></a>**ADMX_UserProfiles/Readonlyuserprofile**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting determines if the changes a user makes to their roaming profile are merged with the server copy of their profile.

By default, when a user with a roaming profile logs on to a computer, the roaming profile is copied down to the local computer. If the user has logged on to the computer in the past, the roaming profile is merged with the local profile. Similarly, when the user logs off the computer, the local copy of their profile, including any changes, is merged with the server copy of the profile.

Using this policy setting, you can prevent changes made to a roaming profile on a particular computer from being persisted.

If you enable this policy setting, changes a user makes to their roaming profile aren't merged with the server (roaming) copy when the user logs off.

If you disable or not configure this policy setting, the default behavior occurs, as indicated above.

> [!NOTE]
> This policy setting only affects roaming profile users.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Prevent Roaming Profile changes from propagating to the server*
-   GP name: *Readonlyuserprofile*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-slowlinkdefault"></a>**ADMX_UserProfiles/SlowLinkDefault**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting directs the system to wait for the remote copy of the roaming user profile to load, even when loading is slow. Also, the system waits for the remote copy when the user is notified about a slow connection, but does not respond in the time allowed.

This policy setting and related policy settings in this folder together define the system's response when roaming user profiles are slow to load.

If you enable this policy setting, the system waits for the remote copy of the roaming user profile to load, even when loading is slow.

If you disable this policy setting or do not configure it, when a remote profile is slow to load, the system loads the local copy of the roaming user profile. The local copy is also used when the user is consulted (as set in the "Prompt user when slow link is detected" policy setting), but does not respond in the time allowed (as set in the "Timeout for dialog boxes" policy setting).

Waiting for the remote profile is appropriate when users move between computers frequently and the local copy of their profile is not always current. Using the local copy is desirable when quick logging on is a priority.

> [!IMPORTANT]
> If the "Do not detect slow network connections" policy setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there is no local copy of the roaming profile to load when the system detects a slow connection.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Wait for remote user profile*
-   GP name: *SlowLinkDefault*
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

To determine the network performance characteristics, a connection is made to the file share storing the user's profile and 64 kilobytes of data is transfered. From that connection and data transfer, the network's latency and connection speed are determined.

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
<a href="" id="admx-userprofiles-uploadhive"></a>**ADMX_UserProfiles/UploadHive**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting sets the schedule for background uploading of a roaming user profile's registry file (ntuser.dat). This policy setting controls only the uploading of a roaming user profile's registry file (other user data and regular profiles are not be uploaded) and uploads it only if the user is logged on. This policy setting does not stop the roaming user profile's registry file from being uploaded at user logoff.

If "Run at set interval" is chosen, then an interval must be set, with a value of 1-720 hours. Once set, Windows uploads the profile's registry file at the specified interval after the user logs on.  For example, with a value of 6 hours, the registry file of the roaming user profile is uploaded to the server every six hours while the user is logged on.

If "Run at specified time of day" is chosen, then a time of day must be specified. Once set, Windows uploads the registry file  at the same time every day, as long as the user is logged on.

For both scheduling options, there is a random one hour delay attached per-trigger to avoid overloading the server with simultaneous uploads. For example, if the settings dictate that the user's registry file is to be uploaded at 6pm, it will actually upload at a random time between 6pm and 7pm.

> [!NOTE]
> If "Run at set interval" is selected, the "Time of day" option is disregarded. Likewise, if "Run at set time of day" is chosen, the "Interval (hours)" option is disregarded.

If you enable this policy setting, Windows uploads the registry file of the user's roaming user profile in the background according to the schedule set here while the user is logged on. Regular profiles are not affected.

If this setting is disabled or not configured, the registry file for a roaming user profile will not be uploaded in the background while the user is logged on.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set the schedule for background upload of a roaming user profile's registry file while user is logged on*
-   GP name: *UploadHive*
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

<!--Policy-->
<a href="" id="admx-userprofiles-waitfornetwork"></a>**ADMX_UserProfiles/WaitForNetwork**  

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
Available in the latest Windows 10 Insider Preview Build. This policy setting controls how long Windows waits for a response from the network before logging on a user without a remote home directory and withou synchronizing roaming user profiles. This policy setting is useful for the cases in which a network might take typically longer to initialize, such as with a wireless network.

> [!NOTE]
> Windows doesn't wait for the network if the physical network connection is not available on the computer (if the media is disconnected or the network adapter is not available).

If you enable this policy setting, Windows waits for the network to become available up to the maximum wait time specified in this policy setting. Setting the value to zero causes Windows to proceed without waiting for the network.

If you disable or do not configure this policy setting, Windows waits for the network for a maximum of 30 seconds.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Set maximum wait time for the network if a user has a roaming user profile or remote home directory*
-   GP name: *WaitForNetwork*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

Footnotes:

- 1 - Available in Windows 10, version 1607.
- 2 - Available in Windows 10, version 1703.
- 3 - Available in Windows 10, version 1709.
- 4 - Available in Windows 10, version 1803.
- 5 - Available in Windows 10, version 1809.
- 6 - Available in Windows 10, version 1903.
- 7 - Available in Windows 10, version 1909.
- 8 - Available in Windows 10, version 2004.

<!--/Policies-->
