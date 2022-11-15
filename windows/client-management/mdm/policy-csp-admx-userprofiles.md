---
title: Policy CSP - ADMX_UserProfiles
description: Learn about Policy CSP - ADMX_UserProfiles.
ms.author: vinpa
ms.localizationpriority: medium
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 11/11/2020
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ADMX_UserProfiles

<hr/>

> [!TIP]
> These are ADMX-backed policies and require a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](../understanding-admx-backed-policies.md).
>
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](../understanding-admx-backed-policies.md#enabling-a-policy).
>
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).
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
This policy setting allows an administrator to automatically delete user profiles on system restart that haven't been used within a specified number of days.

> [!NOTE]
> One day is interpreted as 24 hours after a specific user profile was accessed.

If you enable this policy setting, the User Profile Service will automatically delete on the next system restart all user profiles on the computer that haven't been used within the specified number of days.

If you disable or don't configure this policy setting, User Profile Service won't automatically delete any profiles on the next system restart.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Delete user profiles older than a specified number of days on system restart*
-   GP name: *CleanupProfiles*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-dontforceunloadhive"></a>**ADMX_UserProfiles/DontForceUnloadHive**

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
This policy setting controls whether Windows forcefully unloads the user's registry at sign out, even if there are open handles to the per-user registry keys.

> [!NOTE]
> This policy setting should only be used for cases where you may be running into application compatibility issues due to this specific Windows behavior. It is not recommended to enable this policy by default as it may prevent users from getting an updated version of their roaming user profile.

If you enable this policy setting, Windows won't forcefully unload the user's registry at sign out, but will unload the registry when all open handles to the per-user registry keys are closed.

If you disable or don't configure this policy setting, Windows will always unload the user's registry at sign out, even if there are any open handles to the per-user registry keys at user sign out.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not forcefully unload the users registry at user logoff*
-   GP name: *DontForceUnloadHive*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-leaveappmgmtdata"></a>**ADMX_UserProfiles/LeaveAppMgmtData**

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
This policy setting determines whether the system retains a roaming user's Windows Installer and Group Policy based software installation data on their profile deletion.

By default Windows deletes all information related to a roaming user (which includes the user's settings, data, Windows Installer related data, and the like) when their profile is deleted. As a result, the next time roaming users whose profiles were previously deleted on that client sign in, they'll need to reinstall all apps published via policy at sign in, increasing sign-in time. You can use this policy setting to change this behavior.

If you enable this policy setting, Windows won't delete Windows Installer or Group Policy software installation data for roaming users when profiles are deleted from the machine. This data retention will improve the performance of Group Policy-based Software Installation during user sign in when a user profile is deleted and that user later signs in to the machine.

If you disable or don't configure this policy setting, Windows will delete the entire profile for roaming users, including the Windows Installer and Group Policy software installation data when those profiles are deleted.

> [!NOTE]
> If this policy setting is enabled for a machine, local administrator action is required to remove the Windows Installer or Group Policy software installation data stored in the registry and file system of roaming users' profiles on the machine.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Leave Windows Installer and Group Policy Software Installation Data*
-   GP name: *LeaveAppMgmtData*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-limitsize"></a>**ADMX_UserProfiles/LimitSize**

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
This policy setting sets the maximum size of each user profile and determines the system's response when a user profile reaches the maximum size. This policy setting affects both local and roaming profiles.

If you disable this policy setting or don't configure it, the system doesn't limit the size of user profiles.

If you enable this policy setting, you can:

- Set a maximum permitted user profile size.
- Determine whether the registry files are included in the calculation of the profile size.
- Determine whether users are notified when the profile exceeds the permitted maximum size.
- Specify a customized message notifying users of the oversized profile.
- Determine how often the customized message is displayed.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Limit profile size*
-   GP name: *LimitSize*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-profileerroraction"></a>**ADMX_UserProfiles/ProfileErrorAction**

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
This policy setting will automatically sign out a user when Windows can't load their profile.

If Windows can't access the user profile folder or the profile contains errors that prevent it from loading, Windows logs on the user with a temporary profile. This policy setting allows the administrator to disable this behavior, preventing Windows from logging on the user with a temporary profile.

If you enable this policy setting, Windows won't sign in users with a temporary profile. Windows signs out the users if their profiles can't be loaded.

If you disable this policy setting or don't configure it, Windows logs on the user with a temporary profile when Windows can't load their user profile.

Also, see the "Delete cached copies of roaming profiles" policy setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Do not log users on with temporary profiles*
-   GP name: *ProfileErrorAction*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-slowlinktimeout"></a>**ADMX_UserProfiles/SlowLinkTimeOut**

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
This policy setting defines a slow connection for roaming user profiles and establishes thresholds for two tests of network speed.

To determine the network performance characteristics, a connection is made to the file share storing the user's profile and 64 kilobytes of data is transferred. From that connection and data transfer, the network's latency and connection speed are determined.

This policy setting and related policy settings in this folder together define the system's response when roaming user profiles are slow to load.

If you enable this policy setting, you can change how long Windows waits for a response from the server before considering the connection to be slow.

If you disable or don't configure this policy setting, Windows considers the network connection to be slow if the server returns less than 500 kilobits of data per second or take 120 milliseconds to respond.Consider increasing this value for clients using DHCP Service-assigned addresses or for computers accessing profiles across dial-up connections.Important: If the "Do not detect slow network connections" policy setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there's no local copy of the roaming profile to load when the system detects a slow connection.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Control slow network connection timeout for user profiles*
-   GP name: *SlowLinkTimeOut*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-user-home"></a>**ADMX_UserProfiles/USER_HOME**

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
This policy setting allows you to specify the location and root (file share or local path) of a user's home folder for a sign-in session.

If you enable this policy setting, the user's home folder is configured to the specified local or network location, creating a new folder for each user name.

To use this policy setting, in the Location list, choose the location for the home folder. If you choose “On the network,” enter the path to a file share in the Path box (for example, \\\\ComputerName\ShareName), and then choose the drive letter to assign to the file share. If you choose “On the local computer,” enter a local path (for example, C:\HomeFolder) in the Path box.

Don't specify environment variables or ellipses in the path. Also, don't specify a placeholder for the user name because the user name will be appended at sign in.

> [!NOTE]
> The Drive letter box is ignored if you choose “On the local computer” from the Location list. If you choose “On the local computer” and enter a file share, the user's home folder will be placed in the network location without mapping the file share to a drive letter.

If you disable or don't configure this policy setting, the user's home folder is configured as specified in the user's Active Directory Domain Services account.

If the "Set Remote Desktop Services User Home Directory" policy setting is enabled, the “Set user home folder” policy setting has no effect.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *Set user home folder*
-   GP name: *USER_HOME*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-userprofiles-userinfoaccessaction"></a>**ADMX_UserProfiles/UserInfoAccessAction**

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
This setting prevents users from managing the ability to allow apps to access the user name, account picture, and domain information.

If you enable this policy setting, sharing of user name, picture and domain information may be controlled by setting one of the following options:

- "Always on" - users won't be able to change this setting and the user's name and account picture will be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability will also be able to retrieve the user's UPN, SIP/URI, and DNS.
- "Always off" - users won't be able to change this setting and the user's name and account picture won't be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability won't be able to retrieve the user's UPN, SIP/URI, and DNS. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources.

If you don't configure or disable this policy the user will have full control over this setting and can turn it off and on. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources if users choose to turn off the setting.

<!--/Description-->

<!--ADMXBacked-->
ADMX Info:
-   GP Friendly name: *User management of sharing user name, account picture, and domain information with apps (not desktop apps)*
-   GP name: *UserInfoAccessAction*
-   GP path: *System\User Profiles*
-   GP ADMX file name: *UserProfiles.admx*

<!--/ADMXBacked-->
<!--/Policy-->

<hr/>

<!--/Policies-->

## Related topics

[ADMX-backed policies in Policy CSP](./policies-in-policy-csp-admx-backed.md)
