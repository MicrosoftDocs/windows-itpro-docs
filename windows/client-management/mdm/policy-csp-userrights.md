---
title: Policy CSP - UserRights
description: Learn how user rights are assigned for user accounts or groups, and how the name of the policy defines the user right in question.
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: dansimp
---

# Policy CSP - UserRights



<hr/>

User rights are assigned for user accounts or groups. The name of the policy defines the user right in question, and the values are always users or groups. Values can be represented as SIDs or strings. For reference, see [Well-Known SID Structures](/openspecs/windows_protocols/ms-dtyp/81d92bba-d22b-4a8c-908a-554ab29148ab).

Even though strings are supported for well-known accounts and groups, it is better to use SIDs, because strings are localized for different languages. Some user rights allow things like AccessFromNetwork, while others disallow things, like DenyAccessFromNetwork.

Here is an example for setting the user right BackupFilesAndDirectories for Administrators and Authenticated Users groups.

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">

<SyncBody>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/UserRights/BackupFilesAndDirectories</LocURI>
        </Target>
        <Data>Authenticated Users&#xF000;Administrators</Data>
      </Item>
    </Replace>
  <Final/>
  </SyncBody>
</SyncML>
```

Here are examples of data fields. The encoded 0xF000 is the standard delimiter/separator.

- Grant a user right to Administrators group via SID:
   ```xml
   <Data>*S-1-5-32-544</Data>
   ```
 
- Grant a user right to multiple groups (Administrators, Authenticated Users) via SID:
   ```xml
   <Data>*S-1-5-32-544&#xF000;*S-1-5-11</Data>
   ```

- Grant a user right to multiple groups (Administrators, Authenticated Users) via a mix of SID and Strings:
   ```xml
   <Data>*S-1-5-32-544&#xF000;Authenticated Users</Data>
   ```
 
- Grant a user right to multiple groups (Authenticated Users, Administrators) via strings:
   ```xml
   <Data>Authenticated Users&#xF000;Administrators</Data>
   ```

- Empty input indicates that there are no users configured to have that user right:
   ```xml
   <Data></Data>
   ```
   
  If you use Intune custom profiles to assign UserRights policies, you must use the CDATA tag (`<![CDATA[...]]>`) to wrap the data fields. You can specify one or more user groups within the CDATA tag by using 0xF000 as the delimiter/separator.

> [!NOTE]
> `&#xF000;` is the entity encoding of 0xF000.

For example, the following syntax grants user rights to Authenticated Users and Replicator user groups:

```xml
<![CDATA[Authenticated Users&#xF000;Replicator]]>
```

For example, the following syntax grants user rights to two specific Azure Active Directory (AAD) users from Contoso, user1 and user2:

```xml
<![CDATA[AzureAD\user1@contoso.com&#xF000;AzureAD\user2@contoso.com]]>
```

For example, the following syntax grants user rights to a specific user or group, by using the Security Identifier (SID) of the account or group:

```xml
<![CDATA[*S-1-12-1-430441778-1204322964-3914475434-3271576427&#xF000;*S-1-12-1-2699785510-1240757380-4153857927-656075536]]>
```

<hr/>

<!--Policies-->
## UserRights policies

<dl>
  <dd>
    <a href="#userrights-accesscredentialmanagerastrustedcaller">UserRights/AccessCredentialManagerAsTrustedCaller</a>
  </dd>
  <dd>
    <a href="#userrights-accessfromnetwork">UserRights/AccessFromNetwork</a>
  </dd>
  <dd>
    <a href="#userrights-actaspartoftheoperatingsystem">UserRights/ActAsPartOfTheOperatingSystem</a>
  </dd>
  <dd>
    <a href="#userrights-allowlocallogon">UserRights/AllowLocalLogOn</a>
  </dd>
  <dd>
    <a href="#userrights-backupfilesanddirectories">UserRights/BackupFilesAndDirectories</a>
  </dd>
  <dd>
    <a href="#userrights-changesystemtime">UserRights/ChangeSystemTime</a>
  </dd>
  <dd>
    <a href="#userrights-createglobalobjects">UserRights/CreateGlobalObjects</a>
  </dd>
  <dd>
    <a href="#userrights-createpagefile">UserRights/CreatePageFile</a>
  </dd>
  <dd>
    <a href="#userrights-createpermanentsharedobjects">UserRights/CreatePermanentSharedObjects</a>
  </dd>
  <dd>
    <a href="#userrights-createsymboliclinks">UserRights/CreateSymbolicLinks</a>
  </dd>
  <dd>
    <a href="#userrights-createtoken">UserRights/CreateToken</a>
  </dd>
  <dd>
    <a href="#userrights-debugprograms">UserRights/DebugPrograms</a>
  </dd>
  <dd>
    <a href="#userrights-denyaccessfromnetwork">UserRights/DenyAccessFromNetwork</a>
  </dd>
  <dd>
    <a href="#userrights-denylocallogon">UserRights/DenyLocalLogOn</a>
  </dd>
  <dd>
    <a href="#userrights-denyremotedesktopserviceslogon">UserRights/DenyRemoteDesktopServicesLogOn</a>
  </dd>
  <dd>
    <a href="#userrights-enabledelegation">UserRights/EnableDelegation</a>
  </dd>
  <dd>
    <a href="#userrights-generatesecurityaudits">UserRights/GenerateSecurityAudits</a>
  </dd>
  <dd>
    <a href="#userrights-impersonateclient">UserRights/ImpersonateClient</a>
  </dd>
  <dd>
    <a href="#userrights-increaseschedulingpriority">UserRights/IncreaseSchedulingPriority</a>
  </dd>
  <dd>
    <a href="#userrights-loadunloaddevicedrivers">UserRights/LoadUnloadDeviceDrivers</a>
  </dd>
  <dd>
    <a href="#userrights-lockmemory">UserRights/LockMemory</a>
  </dd>
  <dd>
    <a href="#userrights-manageauditingandsecuritylog">UserRights/ManageAuditingAndSecurityLog</a>
  </dd>
  <dd>
    <a href="#userrights-managevolume">UserRights/ManageVolume</a>
  </dd>
  <dd>
    <a href="#userrights-modifyfirmwareenvironment">UserRights/ModifyFirmwareEnvironment</a>
  </dd>
  <dd>
    <a href="#userrights-modifyobjectlabel">UserRights/ModifyObjectLabel</a>
  </dd>
  <dd>
    <a href="#userrights-profilesingleprocess">UserRights/ProfileSingleProcess</a>
  </dd>
  <dd>
    <a href="#userrights-remoteshutdown">UserRights/RemoteShutdown</a>
  </dd>
  <dd>
    <a href="#userrights-restorefilesanddirectories">UserRights/RestoreFilesAndDirectories</a>
  </dd>
  <dd>
    <a href="#userrights-takeownership">UserRights/TakeOwnership</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="userrights-accesscredentialmanagerastrustedcaller"></a>**UserRights/AccessCredentialManagerAsTrustedCaller**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right is used by Credential Manager during Backup/Restore. No accounts should have this privilege, as it is only assigned to Winlogon. Users' saved credentials might be compromised if this privilege is given to other entities.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Access Credential Manager as a trusted caller*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-accessfromnetwork"></a>**UserRights/AccessFromNetwork**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users and groups are allowed to connect to the computer over the network. Remote Desktop Services are not affected by this user right.
> [!NOTE]
> Remote Desktop Services was called Terminal Services in previous versions of Windows Server.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Access this computer from the network*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-actaspartoftheoperatingsystem"></a>**UserRights/ActAsPartOfTheOperatingSystem**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right allows a process to impersonate any user without authentication. The process can therefore gain access to the same local resources as that user. Processes that require this privilege should use the LocalSystem account, which already includes this privilege, rather than using a separate user account with this privilege specially assigned.
> [!CAUTION]
> Assigning this user right can be a security risk. Assign this user right to trusted users only.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Act as part of the operating system*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-allowlocallogon"></a>**UserRights/AllowLocalLogOn**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can log on to the computer.
> [!NOTE]
> Modifying this setting might affect compatibility with clients, services, and applications. For compatibility information about this setting, see [Allow log on locally](https://go.microsoft.com/fwlink/?LinkId=24268 ) at the Microsoft website.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Allow log on locally*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-backupfilesanddirectories"></a>**UserRights/BackupFilesAndDirectories**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when backing up files and directories. Specifically, this user right is similar to granting the following permissions to the user or group in question on all files and folders on the system: Traverse Folder/Execute File, Read.
> [!CAUTION]
> Assigning this user right can be a security risk. Since users with this user right can read any registry settings and files, assign this user right to trusted users only.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Back up files and directories*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-changesystemtime"></a>**UserRights/ChangeSystemTime**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users and groups can change the time and date on the internal clock of the computer. Users that are assigned this user right can affect the appearance of event logs. If the system time is changed, events that are logged will reflect this new time, not the actual time that the events occurred.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Change the system time*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-createglobalobjects"></a>**UserRights/CreateGlobalObjects**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This security setting determines whether users can create global objects that are available to all sessions. Users can still create objects that are specific to their own session if they do not have this user right. Users who can create global objects could affect processes that run under other users' sessions, which could lead to application failure or data corruption.
> [!CAUTION]
> Assigning this user right can be a security risk. Assign this user right to trusted users only.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Create global objects*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-createpagefile"></a>**UserRights/CreatePageFile**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users and groups can call an internal application programming interface (API) to create and change the size of a page file. This user right is used internally by the operating system and usually does not need to be assigned to any users.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Create a pagefile*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-createpermanentsharedobjects"></a>**UserRights/CreatePermanentSharedObjects**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which accounts can be used by processes to create a directory object using the object manager. This user right is used internally by the operating system and is useful to kernel-mode components that extend the object namespace. Because components that are running in kernel mode already have this user right assigned to them, it is not necessary to specifically assign it.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Create permanent shared objects*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-createsymboliclinks"></a>**UserRights/CreateSymbolicLinks**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines if the user can create a symbolic link from the computer he is logged on to.
> [!CAUTION]
> This privilege should be given to trusted users only. Symbolic links can expose security vulnerabilities in applications that aren't designed to handle them.
> [!NOTE]
> This setting can be used in conjunction with a symlink filesystem setting that can be manipulated with the command line utility to control the kinds of symlinks that are allowed on the machine. Type 'fsutil behavior set symlinkevaluation /?' at the command line to get more information about fsutil and symbolic links.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Create symbolic links*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-createtoken"></a>**UserRights/CreateToken**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which accounts can be used by processes to create a token that can then be used to get access to any local resources when the process uses an internal application programming interface (API) to create an access token. This user right is used internally by the operating system. Unless it is necessary, do not assign this user right to a user, group, or process other than Local System.
> [!CAUTION]
> Assigning this user right can be a security risk. Do not assign this user right to any user, group, or process that you do not want to take over the system.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Create a token object*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-debugprograms"></a>**UserRights/DebugPrograms**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can attach a debugger to any process or to the kernel. Developers who are debugging their own applications do not need to be assigned this user right. Developers who are debugging new system components will need this user right to be able to do so. This user right provides complete access to sensitive and critical operating system components.
> [!CAUTION]
> Assigning this user right can be a security risk. Assign this user right to trusted users only.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Debug programs*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-denyaccessfromnetwork"></a>**UserRights/DenyAccessFromNetwork**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users are prevented from accessing a computer over the network. This policy setting supersedes the Access this computer from the network policy setting if a user account is subject to both policies.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Deny access to this computer from the network*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-denylocallogon"></a>**UserRights/DenyLocalLogOn**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This security setting determines which service accounts are prevented from registering a process as a service.
> [!NOTE]
> This security setting does not apply to the System, Local Service, or Network Service accounts.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Deny log on Locally*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-denyremotedesktopserviceslogon"></a>**UserRights/DenyRemoteDesktopServicesLogOn**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users and groups are prohibited from logging on as Remote Desktop Services clients.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Deny log on through Remote Desktop Services*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-enabledelegation"></a>**UserRights/EnableDelegation**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can set the Trusted for Delegation setting on a user or computer object. The user or object that is granted this privilege must have write access to the account control flags on the user or computer object. A server process running on a computer (or under a user context) that is trusted for delegation can access resources on another computer using delegated credentials of a client, as long as the client account does not have the Account cannot be delegated account control flag set.
> [!CAUTION]
> Misuse of this user right, or of the Trusted for Delegation setting, could make the network vulnerable to sophisticated attacks using Trojan horse programs that impersonate incoming clients and use their credentials to gain access to network resources.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Enable computer and user accounts to be trusted for delegation*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-generatesecurityaudits"></a>**UserRights/GenerateSecurityAudits**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which accounts can be used by a process to add entries to the security log. The security log is used to trace unauthorized system access. Misuse of this user right can result in the generation of many auditing events, potentially hiding evidence of an attack or causing a denial of service. Shut down system immediately if unable to log security audits security policy setting is enabled.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Generate security audits*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-impersonateclient"></a>**UserRights/ImpersonateClient**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
Assigning this user right to a user allows programs running on behalf of that user to impersonate a client. Requiring this user right for this kind of impersonation prevents an unauthorized user from convincing a client to connect (for example, by remote procedure call (RPC) or named pipes) to a service that they have created and then impersonating that client, which can elevate the unauthorized user's permissions to administrative or system levels.
> [!CAUTION]
> Assigning this user right can be a security risk. Assign this user right to trusted users only.
> [!NOTE]
> By default, services that are started by the Service Control Manager have the built-in Service group added to their access tokens. Component Object Model (COM) servers that are started by the COM infrastructure and that are configured to run under a specific account also have the Service group added to their access tokens. As a result, these services get this user right when they are started. In addition, a user can also impersonate an access token if any of the following conditions exist. 
1) The access token that is being impersonated is for this user.
2) The user, in this logon session, created the access token by logging on to the network with explicit credentials.
3) The requested level is less than Impersonate, such as Anonymous or Identify.
Because of these factors, users do not usually need this user right.
> [!WARNING]
> If you enable this setting, programs that previously had the Impersonate privilege might lose it, and they might not run.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Impersonate a client after authentication*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-increaseschedulingpriority"></a>**UserRights/IncreaseSchedulingPriority**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which accounts can use a process with Write Property access to another process to increase the execution priority assigned to the other process. A user with this privilege can change the scheduling priority of a process through the Task Manager user interface.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Increase scheduling priority*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

> [!WARNING]
> If you remove **Window Manager\Window Manager Group** from the **Increase scheduling priority** user right, certain applications and computers do not function correctly. In particular, the INK workspace does not function correctly on unified memory architecture (UMA) laptop and desktop computers that run Windows 10, version 1903 (or later) and that use the Intel GFX driver.
>
> On affected computers, the display blinks when users draw on INK workspaces such as those that are used by Microsoft Edge, Microsoft PowerPoint, or Microsoft OneNote. The blinking occurs because the inking-related processes repeatedly try to use the Real-Time priority, but are denied permission.

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-loadunloaddevicedrivers"></a>**UserRights/LoadUnloadDeviceDrivers**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can dynamically load and unload device drivers or other code in to kernel mode. This user right does not apply to Plug and Play device drivers. It is recommended that you do not assign this privilege to other users.
> [!CAUTION]
> Assigning this user right can be a security risk. Do not assign this user right to any user, group, or process that you do not want to take over the system.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Load and unload device drivers*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-lockmemory"></a>**UserRights/LockMemory**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which accounts can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Exercising this privilege might significantly affect system performance by decreasing the amount of available random access memory (RAM).

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Lock pages in memory*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-manageauditingandsecuritylog"></a>**UserRights/ManageAuditingAndSecurityLog**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys. This security setting does not allow a user to enable file and object access auditing in general. You can view audited events in the security log of the Event Viewer. A user with this privilege also can view and clear the security log.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Manage auditing and security log*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-managevolume"></a>**UserRights/ManageVolume**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users and groups can run maintenance tasks on a volume, such as remote defragmentation. Use caution when assigning this user right. Users with this user right can explore disks and extend files in to memory that contains other data. When the extended files are opened, the user might be able to read and modify the acquired data.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Perform volume maintenance tasks*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-modifyfirmwareenvironment"></a>**UserRights/ModifyFirmwareEnvironment**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines who can modify firmware environment values. Firmware environment variables are settings stored in the nonvolatile RAM of non-x86-based computers. The effect of the setting depends on the processor. On x86-based computers, the only firmware environment value that can be modified by assigning this user right is the Last Known Good Configuration setting, which should be modified only by the system. On Itanium-based computers, boot information is stored in nonvolatile RAM. Users must be assigned this user right to run bootcfg.exe and to change the Default Operating System setting on Startup and Recovery in System Properties. On all computers, this user right is required to install or upgrade Windows.
> [!NOTE]
> This security setting does not affect who can modify the system environment variables and user environment variables that are displayed on the Advanced tab of System Properties.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Modify firmware environment values*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-modifyobjectlabel"></a>**UserRights/ModifyObjectLabel**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which user accounts can modify the integrity label of objects, such as files, registry keys, or processes owned by other users. Processes running under a user account can modify the label of an object owned by that user to a lower level without this privilege.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Modify an object label*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-profilesingleprocess"></a>**UserRights/ProfileSingleProcess**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can use performance monitoring tools to monitor the performance of system processes.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Profile single process*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-remoteshutdown"></a>**UserRights/RemoteShutdown**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users are allowed to shut down a computer from a remote location on the network. Misuse of this user right can result in a denial of service.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Force shutdown from a remote system*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-restorefilesanddirectories"></a>**UserRights/RestoreFilesAndDirectories**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories, and it determines which users can set any valid security principal as the owner of an object. Specifically, this user right is similar to granting the following permissions to the user or group in question on all files and folders on the system: Traverse Folder/Execute File, Write.
> [!CAUTION]
> Assigning this user right can be a security risk. Since users with this user right can overwrite registry settings, hide data, and gain ownership of system objects, assign this user right to trusted users only.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Restore files and directories*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="userrights-takeownership"></a>**UserRights/TakeOwnership**

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
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
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
This user right determines which users can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads.
> [!CAUTION]
> Assigning this user right can be a security risk. Since owners of objects have full control of them, assign this user right to trusted users only.

<!--/Description-->
<!--DbMapped-->
GP Info:
-   GP Friendly name: *Take ownership of files or other objects*
-   GP path: *Windows Settings/Security Settings/Local Policies/User Rights Assignment*

<!--/DbMapped-->
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
