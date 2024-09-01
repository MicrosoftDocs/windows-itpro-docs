---
title: ADMX_UserProfiles Policy CSP
description: Learn more about the ADMX_UserProfiles Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_UserProfiles-Begin -->
# Policy CSP - ADMX_UserProfiles

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_UserProfiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_UserProfiles-Editable-End -->

<!-- CleanupProfiles-Begin -->
## CleanupProfiles

<!-- CleanupProfiles-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CleanupProfiles-Applicability-End -->

<!-- CleanupProfiles-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/CleanupProfiles
```
<!-- CleanupProfiles-OmaUri-End -->

<!-- CleanupProfiles-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows an administrator to automatically delete user profiles on system restart that haven't been used within a specified number of days.

> [!NOTE]
> One day is interpreted as 24 hours after a specific user profile was accessed.

- If you enable this policy setting, the User Profile Service will automatically delete on the next system restart all user profiles on the computer that haven't been used within the specified number of days.

- If you disable or don't configure this policy setting, User Profile Service won't automatically delete any profiles on the next system restart.
<!-- CleanupProfiles-Description-End -->

<!-- CleanupProfiles-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CleanupProfiles-Editable-End -->

<!-- CleanupProfiles-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CleanupProfiles-DFProperties-End -->

<!-- CleanupProfiles-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CleanupProfiles |
| Friendly Name | Delete user profiles older than a specified number of days on system restart |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | UserProfiles.admx |
<!-- CleanupProfiles-AdmxBacked-End -->

<!-- CleanupProfiles-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CleanupProfiles-Examples-End -->

<!-- CleanupProfiles-End -->

<!-- DontForceUnloadHive-Begin -->
## DontForceUnloadHive

<!-- DontForceUnloadHive-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DontForceUnloadHive-Applicability-End -->

<!-- DontForceUnloadHive-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/DontForceUnloadHive
```
<!-- DontForceUnloadHive-OmaUri-End -->

<!-- DontForceUnloadHive-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting controls whether Windows forcefully unloads the user's registry at logoff, even if there are open handles to the per-user registry keys.

> [!NOTE]
> This policy setting should only be used for cases where you may be running into application compatibility issues due to this specific Windows behavior. It isn't recommended to enable this policy by default as it may prevent users from getting an updated version of their roaming user profile.

- If you enable this policy setting, Windows won't forcefully unload the users registry at logoff, but will unload the registry when all open handles to the per-user registry keys are closed.

- If you disable or don't configure this policy setting, Windows will always unload the users registry at logoff, even if there are any open handles to the per-user registry keys at user logoff.
<!-- DontForceUnloadHive-Description-End -->

<!-- DontForceUnloadHive-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DontForceUnloadHive-Editable-End -->

<!-- DontForceUnloadHive-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DontForceUnloadHive-DFProperties-End -->

<!-- DontForceUnloadHive-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DontForceUnloadHive |
| Friendly Name | Do not forcefully unload the users registry at user logoff |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | DisableForceUnload |
| ADMX File Name | UserProfiles.admx |
<!-- DontForceUnloadHive-AdmxBacked-End -->

<!-- DontForceUnloadHive-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DontForceUnloadHive-Examples-End -->

<!-- DontForceUnloadHive-End -->

<!-- LeaveAppMgmtData-Begin -->
## LeaveAppMgmtData

<!-- LeaveAppMgmtData-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LeaveAppMgmtData-Applicability-End -->

<!-- LeaveAppMgmtData-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/LeaveAppMgmtData
```
<!-- LeaveAppMgmtData-OmaUri-End -->

<!-- LeaveAppMgmtData-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the system retains a roaming user's Windows Installer and Group Policy based software installation data on their profile deletion.

By default Windows deletes all information related to a roaming user (which includes the user's settings, data, Windows Installer related data, and the like) when their profile is deleted. As a result, the next time a roaming user whose profile was previously deleted on that client logs on, they will need to reinstall all apps published via policy at logon increasing logon time. You can use this policy setting to change this behavior.

- If you enable this policy setting, Windows won't delete Windows Installer or Group Policy software installation data for roaming users when profiles are deleted from the machine. This will improve the performance of Group Policy based Software Installation during user logon when a user profile is deleted and that user subsequently logs on to the machine.

- If you disable or don't configure this policy setting, Windows will delete the entire profile for roaming users, including the Windows Installer and Group Policy software installation data when those profiles are deleted.

> [!NOTE]
> If this policy setting is enabled for a machine, local administrator action is required to remove the Windows Installer or Group Policy software installation data stored in the registry and file system of roaming users' profiles on the machine.
<!-- LeaveAppMgmtData-Description-End -->

<!-- LeaveAppMgmtData-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LeaveAppMgmtData-Editable-End -->

<!-- LeaveAppMgmtData-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LeaveAppMgmtData-DFProperties-End -->

<!-- LeaveAppMgmtData-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LeaveAppMgmtData |
| Friendly Name | Leave Windows Installer and Group Policy Software Installation Data |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | LeaveAppMgmtData |
| ADMX File Name | UserProfiles.admx |
<!-- LeaveAppMgmtData-AdmxBacked-End -->

<!-- LeaveAppMgmtData-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LeaveAppMgmtData-Examples-End -->

<!-- LeaveAppMgmtData-End -->

<!-- LimitSize-Begin -->
## LimitSize

<!-- LimitSize-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LimitSize-Applicability-End -->

<!-- LimitSize-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/LimitSize
```
<!-- LimitSize-OmaUri-End -->

<!-- LimitSize-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting sets the maximum size of each user profile and determines the system's response when a user profile reaches the maximum size. This policy setting affects both local and roaming profiles.

- If you disable this policy setting or don't configure it, the system doesn't limit the size of user profiles.

- If you enable this policy setting, you can:

- Set a maximum permitted user profile size.

- Determine whether the registry files are included in the calculation of the profile size.

- Determine whether users are notified when the profile exceeds the permitted maximum size.

- Specify a customized message notifying users of the oversized profile.

- Determine how often the customized message is displayed.

> [!NOTE]
> In operating systems earlier than Microsoft Windows Vista, Windows won't allow users to log off until the profile size has been reduced to within the allowable limit. In Microsoft Windows Vista, Windows won't block users from logging off. Instead, if the user has a roaming user profile, Windows won't synchronize the user's profile with the roaming profile server if the maximum profile size limit specified here is exceeded.
<!-- LimitSize-Description-End -->

<!-- LimitSize-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LimitSize-Editable-End -->

<!-- LimitSize-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LimitSize-DFProperties-End -->

<!-- LimitSize-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LimitSize |
| Friendly Name | Limit profile size |
| Location | User Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\System |
| Registry Value Name | EnableProfileQuota |
| ADMX File Name | UserProfiles.admx |
<!-- LimitSize-AdmxBacked-End -->

<!-- LimitSize-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LimitSize-Examples-End -->

<!-- LimitSize-End -->

<!-- ProfileErrorAction-Begin -->
## ProfileErrorAction

<!-- ProfileErrorAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ProfileErrorAction-Applicability-End -->

<!-- ProfileErrorAction-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/ProfileErrorAction
```
<!-- ProfileErrorAction-OmaUri-End -->

<!-- ProfileErrorAction-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting will automatically log off a user when Windows can't load their profile.

If Windows can't access the user profile folder or the profile contains errors that prevent it from loading, Windows logs on the user with a temporary profile. This policy setting allows the administrator to disable this behavior, preventing Windows from loggin on the user with a temporary profile.

- If you enable this policy setting, Windows won't log on a user with a temporary profile. Windows logs the user off if their profile can't be loaded.

- If you disable this policy setting or don't configure it, Windows logs on the user with a temporary profile when Windows can't load their user profile.

Also, see the "Delete cached copies of roaming profiles" policy setting.
<!-- ProfileErrorAction-Description-End -->

<!-- ProfileErrorAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProfileErrorAction-Editable-End -->

<!-- ProfileErrorAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ProfileErrorAction-DFProperties-End -->

<!-- ProfileErrorAction-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ProfileErrorAction |
| Friendly Name | Do not log users on with temporary profiles |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | ProfileErrorAction |
| ADMX File Name | UserProfiles.admx |
<!-- ProfileErrorAction-AdmxBacked-End -->

<!-- ProfileErrorAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProfileErrorAction-Examples-End -->

<!-- ProfileErrorAction-End -->

<!-- SlowLinkTimeOut-Begin -->
## SlowLinkTimeOut

<!-- SlowLinkTimeOut-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SlowLinkTimeOut-Applicability-End -->

<!-- SlowLinkTimeOut-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/SlowLinkTimeOut
```
<!-- SlowLinkTimeOut-OmaUri-End -->

<!-- SlowLinkTimeOut-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting defines a slow connection for roaming user profiles and establishes thresholds for two tests of network speed.

To determine the network performance characteristics, a connection is made to the file share storing the user's profile and 64 kilobytes of data is transfered. From that connection and data transfer, the network's latency and connection speed are determined.

This policy setting and related policy settings in this folder together define the system's response when roaming user profiles are slow to load.

- If you enable this policy setting, you can change how long Windows waits for a response from the server before considering the connection to be slow.

- If you disable or don't configure this policy setting, Windows considers the network connection to be slow if the server returns less than 500 kilobits of data per second or take 120 milliseconds to respond. Consider increasing this value for clients using DHCP Service-assigned addresses or for computers accessing profiles across dial-up connections.

> [!IMPORTANT]
> If the "Do not detect slow network connections" policy setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there is no local copy of the roaming profile to load when the system detects a slow connection.
<!-- SlowLinkTimeOut-Description-End -->

<!-- SlowLinkTimeOut-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SlowLinkTimeOut-Editable-End -->

<!-- SlowLinkTimeOut-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SlowLinkTimeOut-DFProperties-End -->

<!-- SlowLinkTimeOut-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SlowLinkTimeOut |
| Friendly Name | Control slow network connection timeout for user profiles |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | UserProfiles.admx |
<!-- SlowLinkTimeOut-AdmxBacked-End -->

<!-- SlowLinkTimeOut-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SlowLinkTimeOut-Examples-End -->

<!-- SlowLinkTimeOut-End -->

<!-- USER_HOME-Begin -->
## USER_HOME

<!-- USER_HOME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- USER_HOME-Applicability-End -->

<!-- USER_HOME-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/USER_HOME
```
<!-- USER_HOME-OmaUri-End -->

<!-- USER_HOME-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the location and root (file share or local path) of a user's home folder for a logon session.

- If you enable this policy setting, the user's home folder is configured to the specified local or network location, creating a new folder for each user name.

To use this policy setting, in the Location list, choose the location for the home folder. If you choose "On the network," enter the path to a file share in the Path box (for example, \\ComputerName\ShareName), and then choose the drive letter to assign to the file share. If you choose "On the local computer," enter a local path (for example, C:\HomeFolder) in the Path box.

Don't specify environment variables or ellipses in the path. Also, don't specify a placeholder for the user name because the user name will be appended at logon.

> [!NOTE]
> The Drive letter box is ignored if you choose "On the local computer" from the Location list. If you choose "On the local computer" and enter a file share, the user's home folder will be placed in the network location without mapping the file share to a drive letter.

- If you disable or don't configure this policy setting, the user's home folder is configured as specified in the user's Active Directory Domain Services account.

If the "Set Remote Desktop Services User Home Directory" policy setting is enabled, the "Set user home folder" policy setting has no effect.
<!-- USER_HOME-Description-End -->

<!-- USER_HOME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- USER_HOME-Editable-End -->

<!-- USER_HOME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- USER_HOME-DFProperties-End -->

<!-- USER_HOME-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | USER_HOME |
| Friendly Name | Set user home folder |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | UserProfiles.admx |
<!-- USER_HOME-AdmxBacked-End -->

<!-- USER_HOME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- USER_HOME-Examples-End -->

<!-- USER_HOME-End -->

<!-- UserInfoAccessAction-Begin -->
## UserInfoAccessAction

<!-- UserInfoAccessAction-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- UserInfoAccessAction-Applicability-End -->

<!-- UserInfoAccessAction-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_UserProfiles/UserInfoAccessAction
```
<!-- UserInfoAccessAction-OmaUri-End -->

<!-- UserInfoAccessAction-Description-Begin -->
<!-- Description-Source-ADMX -->
This setting prevents users from managing the ability to allow apps to access the user name, account picture, and domain information.

- If you enable this policy setting, sharing of user name, picture and domain information may be controlled by setting one of the following options:

"Always on" - users won't be able to change this setting and the user's name and account picture will be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability will also be able to retrieve the user's UPN, SIP/URI, and DNS.

"Always off" - users won't be able to change this setting and the user's name and account picture won't be shared with apps (not desktop apps). In addition apps (not desktop apps) that have the enterprise authentication capability won't be able to retrieve the user's UPN, SIP/URI, and DNS. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources.

- If you don't configure or disable this policy the user will have full control over this setting and can turn it off and on. Selecting this option may have a negative impact on certain enterprise software and/or line of business apps that depend on the domain information protected by this setting to connect with network resources if users choose to turn the setting off.
<!-- UserInfoAccessAction-Description-End -->

<!-- UserInfoAccessAction-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- UserInfoAccessAction-Editable-End -->

<!-- UserInfoAccessAction-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- UserInfoAccessAction-DFProperties-End -->

<!-- UserInfoAccessAction-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | UserInfoAccessAction |
| Friendly Name | User management of sharing user name, account picture, and domain information with apps (not desktop apps) |
| Location | Computer Configuration |
| Path | System > User Profiles |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | AllowUserInfoAccess |
| ADMX File Name | UserProfiles.admx |
<!-- UserInfoAccessAction-AdmxBacked-End -->

<!-- UserInfoAccessAction-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- UserInfoAccessAction-Examples-End -->

<!-- UserInfoAccessAction-End -->

<!-- ADMX_UserProfiles-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_UserProfiles-CspMoreInfo-End -->

<!-- ADMX_UserProfiles-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
