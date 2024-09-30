---
title: UserRights Policy CSP
description: Learn more about the UserRights Area in Policy CSP.
ms.date: 09/27/2024
---

<!-- Auto-Generated CSP Document -->

<!-- UserRights-Begin -->
# Policy CSP - UserRights

<!-- UserRights-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
User rights are assigned for user accounts or groups. The name of the policy defines the user right in question, and the values are always users or groups. Values can be represented as Security Identifiers (SID) or strings. For more information, see [Well-known SID structures](/openspecs/windows_protocols/ms-dtyp/81d92bba-d22b-4a8c-908a-554ab29148ab).

Even though strings are supported for well-known accounts and groups, it's better to use SIDs, because strings are localized for different languages. Some user rights allow things like AccessFromNetwork, while others disallow things, like DenyAccessFromNetwork.

## General example

Here's an example for setting the user right [BackupFilesAndDirectories](#backupfilesanddirectories) for Administrators and Authenticated Users groups.

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

Here are examples of data fields. The encoded `0xF000` is the standard delimiter/separator.

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

If you use Intune custom profiles to assign UserRights policies, you must use the CDATA tag (`<![CDATA[...]]>`) to wrap the data fields. You can specify one or more user groups within the CDATA tag by using `0xF000` as the delimiter/separator.

> [!NOTE]
> `&#xF000;` is the entity encoding of `0xF000`.

For example, the following syntax grants user rights to Authenticated Users and Replicator user groups:

```xml
<![CDATA[Authenticated Users&#xF000;Replicator]]>
```

For example, the following syntax grants user rights to two specific Microsoft Entra users from Contoso, user1 and user2:

```xml
<![CDATA[AzureAD\user1@contoso.com&#xF000;AzureAD\user2@contoso.com]]>
```

For example, the following syntax grants user rights to a specific user or group, by using the SID of the account or group:

```xml
<![CDATA[*S-1-12-1-430441778-1204322964-3914475434-3271576427&#xF000;*S-1-12-1-2699785510-1240757380-4153857927-656075536]]>
```
<!-- UserRights-Editable-End -->

<!-- AccessCredentialManagerAsTrustedCaller-Begin -->
## AccessCredentialManagerAsTrustedCaller

<!-- AccessCredentialManagerAsTrustedCaller-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AccessCredentialManagerAsTrustedCaller-Applicability-End -->

<!-- AccessCredentialManagerAsTrustedCaller-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/AccessCredentialManagerAsTrustedCaller
```
<!-- AccessCredentialManagerAsTrustedCaller-OmaUri-End -->

<!-- AccessCredentialManagerAsTrustedCaller-Description-Begin -->
<!-- Description-Source-DDF -->
This user right is used by Credential Manager during Backup/Restore. No accounts should've this privilege, as it's only assigned to Winlogon. Users' saved credentials might be compromised if this privilege is given to other entities.
<!-- AccessCredentialManagerAsTrustedCaller-Description-End -->

<!-- AccessCredentialManagerAsTrustedCaller-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AccessCredentialManagerAsTrustedCaller-Editable-End -->

<!-- AccessCredentialManagerAsTrustedCaller-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- AccessCredentialManagerAsTrustedCaller-DFProperties-End -->

<!-- AccessCredentialManagerAsTrustedCaller-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Access Credential Manager ase a trusted caller |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- AccessCredentialManagerAsTrustedCaller-GpMapping-End -->

<!-- AccessCredentialManagerAsTrustedCaller-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AccessCredentialManagerAsTrustedCaller-Examples-End -->

<!-- AccessCredentialManagerAsTrustedCaller-End -->

<!-- AccessFromNetwork-Begin -->
## AccessFromNetwork

<!-- AccessFromNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AccessFromNetwork-Applicability-End -->

<!-- AccessFromNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/AccessFromNetwork
```
<!-- AccessFromNetwork-OmaUri-End -->

<!-- AccessFromNetwork-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users and groups are allowed to connect to the computer over the network. Remote Desktop Services aren't affected by this user right.

> [!NOTE]
> Remote Desktop Services was called Terminal Services in previous versions of Windows Server.
<!-- AccessFromNetwork-Description-End -->

<!-- AccessFromNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AccessFromNetwork-Editable-End -->

<!-- AccessFromNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- AccessFromNetwork-DFProperties-End -->

<!-- AccessFromNetwork-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Access this computer from the network |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- AccessFromNetwork-GpMapping-End -->

<!-- AccessFromNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AccessFromNetwork-Examples-End -->

<!-- AccessFromNetwork-End -->

<!-- ActAsPartOfTheOperatingSystem-Begin -->
## ActAsPartOfTheOperatingSystem

<!-- ActAsPartOfTheOperatingSystem-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ActAsPartOfTheOperatingSystem-Applicability-End -->

<!-- ActAsPartOfTheOperatingSystem-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ActAsPartOfTheOperatingSystem
```
<!-- ActAsPartOfTheOperatingSystem-OmaUri-End -->

<!-- ActAsPartOfTheOperatingSystem-Description-Begin -->
<!-- Description-Source-DDF -->
This user right allows a process to impersonate any user without authentication. The process can therefore gain access to the same local resources as that user. Processes that require this privilege should use the LocalSystem account, which already includes this privilege, rather than using a separate user account with this privilege specially assigned.

> [!CAUTION]
> Assigning this user right can be a security risk. Only assign this user right to trusted users.
<!-- ActAsPartOfTheOperatingSystem-Description-End -->

<!-- ActAsPartOfTheOperatingSystem-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ActAsPartOfTheOperatingSystem-Editable-End -->

<!-- ActAsPartOfTheOperatingSystem-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ActAsPartOfTheOperatingSystem-DFProperties-End -->

<!-- ActAsPartOfTheOperatingSystem-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Act as part of the operating system |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ActAsPartOfTheOperatingSystem-GpMapping-End -->

<!-- ActAsPartOfTheOperatingSystem-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ActAsPartOfTheOperatingSystem-Examples-End -->

<!-- ActAsPartOfTheOperatingSystem-End -->

<!-- AdjustMemoryQuotasForProcess-Begin -->
## AdjustMemoryQuotasForProcess

<!-- AdjustMemoryQuotasForProcess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AdjustMemoryQuotasForProcess-Applicability-End -->

<!-- AdjustMemoryQuotasForProcess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/AdjustMemoryQuotasForProcess
```
<!-- AdjustMemoryQuotasForProcess-OmaUri-End -->

<!-- AdjustMemoryQuotasForProcess-Description-Begin -->
<!-- Description-Source-DDF -->
Adjust memory quotas for a process - This privilege determines who can change the maximum memory that can be consumed by a process. This privilege is useful for system tuning on a group or user basis.
<!-- AdjustMemoryQuotasForProcess-Description-End -->

<!-- AdjustMemoryQuotasForProcess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AdjustMemoryQuotasForProcess-Editable-End -->

<!-- AdjustMemoryQuotasForProcess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- AdjustMemoryQuotasForProcess-DFProperties-End -->

<!-- AdjustMemoryQuotasForProcess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Adjust memory quotas for a process |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- AdjustMemoryQuotasForProcess-GpMapping-End -->

<!-- AdjustMemoryQuotasForProcess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AdjustMemoryQuotasForProcess-Examples-End -->

<!-- AdjustMemoryQuotasForProcess-End -->

<!-- AllowLocalLogOn-Begin -->
## AllowLocalLogOn

<!-- AllowLocalLogOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- AllowLocalLogOn-Applicability-End -->

<!-- AllowLocalLogOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/AllowLocalLogOn
```
<!-- AllowLocalLogOn-OmaUri-End -->

<!-- AllowLocalLogOn-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can log on to the computer.

> [!NOTE]
> Modifying this setting may affect compatibility with clients, services, and applications. For compatibility information about this setting, see Allow log on locally (https://go.microsoft.com/fwlink/?LinkId=24268 ) at the Microsoft website.
<!-- AllowLocalLogOn-Description-End -->

<!-- AllowLocalLogOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLocalLogOn-Editable-End -->

<!-- AllowLocalLogOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- AllowLocalLogOn-DFProperties-End -->

<!-- AllowLocalLogOn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Allow log on locally |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- AllowLocalLogOn-GpMapping-End -->

<!-- AllowLocalLogOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLocalLogOn-Examples-End -->

<!-- AllowLocalLogOn-End -->

<!-- AllowLogOnThroughRemoteDesktop-Begin -->
## AllowLogOnThroughRemoteDesktop

<!-- AllowLogOnThroughRemoteDesktop-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- AllowLogOnThroughRemoteDesktop-Applicability-End -->

<!-- AllowLogOnThroughRemoteDesktop-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/AllowLogOnThroughRemoteDesktop
```
<!-- AllowLogOnThroughRemoteDesktop-OmaUri-End -->

<!-- AllowLogOnThroughRemoteDesktop-Description-Begin -->
<!-- Description-Source-DDF -->
Allow log on through Remote Desktop Services - This policy setting determines which users or groups can access the sign-in screen of a remote device through a Remote Desktop Services connection.
<!-- AllowLogOnThroughRemoteDesktop-Description-End -->

<!-- AllowLogOnThroughRemoteDesktop-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- AllowLogOnThroughRemoteDesktop-Editable-End -->

<!-- AllowLogOnThroughRemoteDesktop-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- AllowLogOnThroughRemoteDesktop-DFProperties-End -->

<!-- AllowLogOnThroughRemoteDesktop-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Allow log on through Remote Desktop Services |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- AllowLogOnThroughRemoteDesktop-GpMapping-End -->

<!-- AllowLogOnThroughRemoteDesktop-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- AllowLogOnThroughRemoteDesktop-Examples-End -->

<!-- AllowLogOnThroughRemoteDesktop-End -->

<!-- BackupFilesAndDirectories-Begin -->
## BackupFilesAndDirectories

<!-- BackupFilesAndDirectories-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- BackupFilesAndDirectories-Applicability-End -->

<!-- BackupFilesAndDirectories-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/BackupFilesAndDirectories
```
<!-- BackupFilesAndDirectories-OmaUri-End -->

<!-- BackupFilesAndDirectories-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when backing up files and directories. Specifically, this user right is similar to granting the following permissions to the user or group in question on all files and folders on the system:Traverse Folder/Execute File, Read.

> [!CAUTION]
> Assigning this user right can be a security risk. Since users with this user right can read any registry settings and files, only assign this user right to trusted users.
<!-- BackupFilesAndDirectories-Description-End -->

<!-- BackupFilesAndDirectories-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BackupFilesAndDirectories-Editable-End -->

<!-- BackupFilesAndDirectories-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- BackupFilesAndDirectories-DFProperties-End -->

<!-- BackupFilesAndDirectories-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Back up files and directories |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- BackupFilesAndDirectories-GpMapping-End -->

<!-- BackupFilesAndDirectories-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BackupFilesAndDirectories-Examples-End -->

<!-- BackupFilesAndDirectories-End -->

<!-- BypassTraverseChecking-Begin -->
## BypassTraverseChecking

<!-- BypassTraverseChecking-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- BypassTraverseChecking-Applicability-End -->

<!-- BypassTraverseChecking-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/BypassTraverseChecking
```
<!-- BypassTraverseChecking-OmaUri-End -->

<!-- BypassTraverseChecking-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can traverse directory trees even though the user may not have permissions on the traversed directory. This privilege doesn't allow the user to list the contents of a directory, only to traverse directories.
<!-- BypassTraverseChecking-Description-End -->

<!-- BypassTraverseChecking-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- BypassTraverseChecking-Editable-End -->

<!-- BypassTraverseChecking-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- BypassTraverseChecking-DFProperties-End -->

<!-- BypassTraverseChecking-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Bypass traverse checking |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- BypassTraverseChecking-GpMapping-End -->

<!-- BypassTraverseChecking-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- BypassTraverseChecking-Examples-End -->

<!-- BypassTraverseChecking-End -->

<!-- ChangeSystemTime-Begin -->
## ChangeSystemTime

<!-- ChangeSystemTime-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ChangeSystemTime-Applicability-End -->

<!-- ChangeSystemTime-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ChangeSystemTime
```
<!-- ChangeSystemTime-OmaUri-End -->

<!-- ChangeSystemTime-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users and groups can change the time and date on the internal clock of the computer. Users that are assigned this user right can affect the appearance of event logs. If the system time is changed, events that are logged will reflect this new time, not the actual time that the events occurred.
<!-- ChangeSystemTime-Description-End -->

<!-- ChangeSystemTime-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!CAUTION]
> When you configure user rights, it replaces existing users or groups that were previously assigned to those user rights. The system requires that the **Local Service** account (SID `S-1-5-19`) always has the ChangeSystemTime right. Always specify **Local Service**, in addition to any other accounts that you need to configure in this policy.
>
> If you don't include the **Local Service** account, the request fails with the following error:
>
> | Error code         | Symbolic name       | Error description            | Header     |
> |--------------------|---------------------|------------------------------|------------|
> | `0x80070032` (Hex) | ERROR_NOT_SUPPORTED | The request isn't supported. | winerror.h |
<!-- ChangeSystemTime-Editable-End -->

<!-- ChangeSystemTime-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ChangeSystemTime-DFProperties-End -->

<!-- ChangeSystemTime-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Change the system time |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ChangeSystemTime-GpMapping-End -->

<!-- ChangeSystemTime-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ChangeSystemTime-Examples-End -->

<!-- ChangeSystemTime-End -->

<!-- ChangeTimeZone-Begin -->
## ChangeTimeZone

<!-- ChangeTimeZone-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ChangeTimeZone-Applicability-End -->

<!-- ChangeTimeZone-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ChangeTimeZone
```
<!-- ChangeTimeZone-OmaUri-End -->

<!-- ChangeTimeZone-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users and groups can change the time zone used by the computer for displaying the local time, which is the computer's system time plus the time zone offset. System time itself is absolute and isn't affected by a change in the time zone.
<!-- ChangeTimeZone-Description-End -->

<!-- ChangeTimeZone-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ChangeTimeZone-Editable-End -->

<!-- ChangeTimeZone-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ChangeTimeZone-DFProperties-End -->

<!-- ChangeTimeZone-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Change the time zone |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ChangeTimeZone-GpMapping-End -->

<!-- ChangeTimeZone-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ChangeTimeZone-Examples-End -->

<!-- ChangeTimeZone-End -->

<!-- CreateGlobalObjects-Begin -->
## CreateGlobalObjects

<!-- CreateGlobalObjects-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- CreateGlobalObjects-Applicability-End -->

<!-- CreateGlobalObjects-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/CreateGlobalObjects
```
<!-- CreateGlobalObjects-OmaUri-End -->

<!-- CreateGlobalObjects-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines whether users can create global objects that are available to all sessions. Users can still create objects that are specific to their own session if they don't have this user right. Users who can create global objects could affect processes that run under other users' sessions, which could lead to application failure or data corruption.

> [!CAUTION]
> Assigning this user right can be a security risk. Assign this user right only to trusted users.
<!-- CreateGlobalObjects-Description-End -->

<!-- CreateGlobalObjects-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CreateGlobalObjects-Editable-End -->

<!-- CreateGlobalObjects-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- CreateGlobalObjects-DFProperties-End -->

<!-- CreateGlobalObjects-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Create global objects |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- CreateGlobalObjects-GpMapping-End -->

<!-- CreateGlobalObjects-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CreateGlobalObjects-Examples-End -->

<!-- CreateGlobalObjects-End -->

<!-- CreatePageFile-Begin -->
## CreatePageFile

<!-- CreatePageFile-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- CreatePageFile-Applicability-End -->

<!-- CreatePageFile-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/CreatePageFile
```
<!-- CreatePageFile-OmaUri-End -->

<!-- CreatePageFile-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users and groups can call an internal application programming interface (API) to create and change the size of a page file. This user right is used internally by the operating system and usually doesn't need to be assigned to any users.
<!-- CreatePageFile-Description-End -->

<!-- CreatePageFile-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CreatePageFile-Editable-End -->

<!-- CreatePageFile-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- CreatePageFile-DFProperties-End -->

<!-- CreatePageFile-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Create a pagefile |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- CreatePageFile-GpMapping-End -->

<!-- CreatePageFile-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CreatePageFile-Examples-End -->

<!-- CreatePageFile-End -->

<!-- CreatePermanentSharedObjects-Begin -->
## CreatePermanentSharedObjects

<!-- CreatePermanentSharedObjects-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- CreatePermanentSharedObjects-Applicability-End -->

<!-- CreatePermanentSharedObjects-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/CreatePermanentSharedObjects
```
<!-- CreatePermanentSharedObjects-OmaUri-End -->

<!-- CreatePermanentSharedObjects-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which accounts can be used by processes to create a directory object using the object manager. This user right is used internally by the operating system and is useful to kernel-mode components that extend the object namespace. Because components that are running in kernel mode already have this user right assigned to them, it isn't necessary to specifically assign it.
<!-- CreatePermanentSharedObjects-Description-End -->

<!-- CreatePermanentSharedObjects-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CreatePermanentSharedObjects-Editable-End -->

<!-- CreatePermanentSharedObjects-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- CreatePermanentSharedObjects-DFProperties-End -->

<!-- CreatePermanentSharedObjects-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Create permanent shared objects |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- CreatePermanentSharedObjects-GpMapping-End -->

<!-- CreatePermanentSharedObjects-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CreatePermanentSharedObjects-Examples-End -->

<!-- CreatePermanentSharedObjects-End -->

<!-- CreateSymbolicLinks-Begin -->
## CreateSymbolicLinks

<!-- CreateSymbolicLinks-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- CreateSymbolicLinks-Applicability-End -->

<!-- CreateSymbolicLinks-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/CreateSymbolicLinks
```
<!-- CreateSymbolicLinks-OmaUri-End -->

<!-- CreateSymbolicLinks-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines if the user can create a symbolic link from the computer he is logged-on to.

> [!CAUTION]
> This privilege should only be given to trusted users. Symbolic links can expose security vulnerabilities in applications that aren't designed to handle them.

> [!NOTE]
> This setting can be used in conjunction a symlink filesystem setting that can be manipulated with the command line utility to control the kinds of symlinks that are allowed on the machine. Type 'fsutil behavior set symlinkevaluation /?' at the command line to get more information about fsutil and symbolic links.
<!-- CreateSymbolicLinks-Description-End -->

<!-- CreateSymbolicLinks-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CreateSymbolicLinks-Editable-End -->

<!-- CreateSymbolicLinks-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- CreateSymbolicLinks-DFProperties-End -->

<!-- CreateSymbolicLinks-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Create symbolic links |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- CreateSymbolicLinks-GpMapping-End -->

<!-- CreateSymbolicLinks-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CreateSymbolicLinks-Examples-End -->

<!-- CreateSymbolicLinks-End -->

<!-- CreateToken-Begin -->
## CreateToken

<!-- CreateToken-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- CreateToken-Applicability-End -->

<!-- CreateToken-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/CreateToken
```
<!-- CreateToken-OmaUri-End -->

<!-- CreateToken-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which accounts can be used by processes to create a token that can then be used to get access to any local resources when the process uses an internal application programming interface (API) to create an access token. This user right is used internally by the operating system. Unless it's necessary, don't assign this user right to a user, group, or process other than Local System.

> [!CAUTION]
> Assigning this user right can be a security risk. Don't assign this user right to any user, group, or process that you don't want to take over the system.
<!-- CreateToken-Description-End -->

<!-- CreateToken-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CreateToken-Editable-End -->

<!-- CreateToken-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- CreateToken-DFProperties-End -->

<!-- CreateToken-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Create a token object |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- CreateToken-GpMapping-End -->

<!-- CreateToken-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CreateToken-Examples-End -->

<!-- CreateToken-End -->

<!-- DebugPrograms-Begin -->
## DebugPrograms

<!-- DebugPrograms-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DebugPrograms-Applicability-End -->

<!-- DebugPrograms-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/DebugPrograms
```
<!-- DebugPrograms-OmaUri-End -->

<!-- DebugPrograms-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can attach a debugger to any process or to the kernel. Developers who are debugging their own applications don't need to be assigned this user right. Developers who are debugging new system components will need this user right to be able to do so. This user right provides complete access to sensitive and critical operating system components.

> [!CAUTION]
> Assigning this user right can be a security risk. Only assign this user right to trusted users.
<!-- DebugPrograms-Description-End -->

<!-- DebugPrograms-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DebugPrograms-Editable-End -->

<!-- DebugPrograms-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- DebugPrograms-DFProperties-End -->

<!-- DebugPrograms-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Debug programs |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- DebugPrograms-GpMapping-End -->

<!-- DebugPrograms-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DebugPrograms-Examples-End -->

<!-- DebugPrograms-End -->

<!-- DenyAccessFromNetwork-Begin -->
## DenyAccessFromNetwork

<!-- DenyAccessFromNetwork-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DenyAccessFromNetwork-Applicability-End -->

<!-- DenyAccessFromNetwork-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/DenyAccessFromNetwork
```
<!-- DenyAccessFromNetwork-OmaUri-End -->

<!-- DenyAccessFromNetwork-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users are prevented from accessing a computer over the network. This policy setting supersedes the Access this computer from the network policy setting if a user account is subject to both policies.
<!-- DenyAccessFromNetwork-Description-End -->

<!-- DenyAccessFromNetwork-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyAccessFromNetwork-Editable-End -->

<!-- DenyAccessFromNetwork-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- DenyAccessFromNetwork-DFProperties-End -->

<!-- DenyAccessFromNetwork-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Deny access to this computer from the network |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- DenyAccessFromNetwork-GpMapping-End -->

<!-- DenyAccessFromNetwork-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyAccessFromNetwork-Examples-End -->

<!-- DenyAccessFromNetwork-End -->

<!-- DenyLocalLogOn-Begin -->
## DenyLocalLogOn

<!-- DenyLocalLogOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DenyLocalLogOn-Applicability-End -->

<!-- DenyLocalLogOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/DenyLocalLogOn
```
<!-- DenyLocalLogOn-OmaUri-End -->

<!-- DenyLocalLogOn-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines which service accounts are prevented from registering a process as a service.

> [!NOTE]
> This security setting doesn't apply to the System, Local Service, or Network Service accounts.
<!-- DenyLocalLogOn-Description-End -->

<!-- DenyLocalLogOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- KNOWN ISSUE: DenyLocalLogOn policy section from DDF has strings for 'Deny log on as a service'-->
<!-- DenyLocalLogOn-Editable-End -->

<!-- DenyLocalLogOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- DenyLocalLogOn-DFProperties-End -->

<!-- DenyLocalLogOn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Deny log on as a service |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- DenyLocalLogOn-GpMapping-End -->

<!-- DenyLocalLogOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyLocalLogOn-Examples-End -->

<!-- DenyLocalLogOn-End -->

<!-- DenyLogOnAsBatchJob-Begin -->
## DenyLogOnAsBatchJob

<!-- DenyLogOnAsBatchJob-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- DenyLogOnAsBatchJob-Applicability-End -->

<!-- DenyLogOnAsBatchJob-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/DenyLogOnAsBatchJob
```
<!-- DenyLogOnAsBatchJob-OmaUri-End -->

<!-- DenyLogOnAsBatchJob-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines which accounts are prevented from being able to log on as a batch job. This policy setting supersedes the Log on as a batch job policy setting if a user account is subject to both policies.
<!-- DenyLogOnAsBatchJob-Description-End -->

<!-- DenyLogOnAsBatchJob-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyLogOnAsBatchJob-Editable-End -->

<!-- DenyLogOnAsBatchJob-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- DenyLogOnAsBatchJob-DFProperties-End -->

<!-- DenyLogOnAsBatchJob-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Deny log on as a batch job |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- DenyLogOnAsBatchJob-GpMapping-End -->

<!-- DenyLogOnAsBatchJob-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyLogOnAsBatchJob-Examples-End -->

<!-- DenyLogOnAsBatchJob-End -->

<!-- DenyLogOnAsService-Begin -->
## DenyLogOnAsService

<!-- DenyLogOnAsService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- DenyLogOnAsService-Applicability-End -->

<!-- DenyLogOnAsService-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/DenyLogOnAsService
```
<!-- DenyLogOnAsService-OmaUri-End -->

<!-- DenyLogOnAsService-Description-Begin -->
<!-- Description-Source-DDF -->
Deny log on as a service -This security setting determines which service accounts are prevented from registering a process as a service. This policy setting supersedes the Log on as a service policy setting if an account is subject to both policies.

> [!NOTE]
> This security setting doesn't apply to the System, Local Service, or Network Service accounts. Default: None.
<!-- DenyLogOnAsService-Description-End -->

<!-- DenyLogOnAsService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyLogOnAsService-Editable-End -->

<!-- DenyLogOnAsService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- DenyLogOnAsService-DFProperties-End -->

<!-- DenyLogOnAsService-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Deny log on as a service |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- DenyLogOnAsService-GpMapping-End -->

<!-- DenyLogOnAsService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyLogOnAsService-Examples-End -->

<!-- DenyLogOnAsService-End -->

<!-- DenyRemoteDesktopServicesLogOn-Begin -->
## DenyRemoteDesktopServicesLogOn

<!-- DenyRemoteDesktopServicesLogOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- DenyRemoteDesktopServicesLogOn-Applicability-End -->

<!-- DenyRemoteDesktopServicesLogOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/DenyRemoteDesktopServicesLogOn
```
<!-- DenyRemoteDesktopServicesLogOn-OmaUri-End -->

<!-- DenyRemoteDesktopServicesLogOn-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users and groups are prohibited from logging on as a Remote Desktop Services client.
<!-- DenyRemoteDesktopServicesLogOn-Description-End -->

<!-- DenyRemoteDesktopServicesLogOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DenyRemoteDesktopServicesLogOn-Editable-End -->

<!-- DenyRemoteDesktopServicesLogOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- DenyRemoteDesktopServicesLogOn-DFProperties-End -->

<!-- DenyRemoteDesktopServicesLogOn-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Deny log on through Remote Desktop Services |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- DenyRemoteDesktopServicesLogOn-GpMapping-End -->

<!-- DenyRemoteDesktopServicesLogOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DenyRemoteDesktopServicesLogOn-Examples-End -->

<!-- DenyRemoteDesktopServicesLogOn-End -->

<!-- EnableDelegation-Begin -->
## EnableDelegation

<!-- EnableDelegation-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableDelegation-Applicability-End -->

<!-- EnableDelegation-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/EnableDelegation
```
<!-- EnableDelegation-OmaUri-End -->

<!-- EnableDelegation-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can set the Trusted for Delegation setting on a user or computer object. The user or object that's granted this privilege must have write access to the account control flags on the user or computer object. A server process running on a computer (or under a user context) that's trusted for delegation can access resources on another computer using delegated credentials of a client, as long as the client account doesn't have the Account can't be delegated account control flag set.

> [!CAUTION]
> Misuse of this user right, or of the Trusted for Delegation setting, could make the network vulnerable to sophisticated attacks using Trojan horse programs that impersonate incoming clients and use their credentials to gain access to network resources.
<!-- EnableDelegation-Description-End -->

<!-- EnableDelegation-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableDelegation-Editable-End -->

<!-- EnableDelegation-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- EnableDelegation-DFProperties-End -->

<!-- EnableDelegation-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Enable computer and user accounts to be trusted for delegation |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- EnableDelegation-GpMapping-End -->

<!-- EnableDelegation-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableDelegation-Examples-End -->

<!-- EnableDelegation-End -->

<!-- GenerateSecurityAudits-Begin -->
## GenerateSecurityAudits

<!-- GenerateSecurityAudits-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- GenerateSecurityAudits-Applicability-End -->

<!-- GenerateSecurityAudits-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/GenerateSecurityAudits
```
<!-- GenerateSecurityAudits-OmaUri-End -->

<!-- GenerateSecurityAudits-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which accounts can be used by a process to add entries to the security log. The security log is used to trace unauthorized system access. Misuse of this user right can result in the generation of many auditing events, potentially hiding evidence of an attack or causing a denial of service. Shut down system immediately if unable to log security audits security policy setting is enabled.
<!-- GenerateSecurityAudits-Description-End -->

<!-- GenerateSecurityAudits-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- GenerateSecurityAudits-Editable-End -->

<!-- GenerateSecurityAudits-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- GenerateSecurityAudits-DFProperties-End -->

<!-- GenerateSecurityAudits-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Generate security audits |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- GenerateSecurityAudits-GpMapping-End -->

<!-- GenerateSecurityAudits-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- GenerateSecurityAudits-Examples-End -->

<!-- GenerateSecurityAudits-End -->

<!-- ImpersonateClient-Begin -->
## ImpersonateClient

<!-- ImpersonateClient-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ImpersonateClient-Applicability-End -->

<!-- ImpersonateClient-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ImpersonateClient
```
<!-- ImpersonateClient-OmaUri-End -->

<!-- ImpersonateClient-Description-Begin -->
<!-- Description-Source-DDF -->
Assigning this user right to a user allows programs running on behalf of that user to impersonate a client. Requiring this user right for this kind of impersonation prevents an unauthorized user from convincing a client to connect (for example, by remote procedure call (RPC) or named pipes) to a service that they've created and then impersonating that client, which can elevate the unauthorized user's permissions to administrative or system levels.

> [!CAUTION]
> Assigning this user right can be a security risk. Only assign this user right to trusted users.

> [!NOTE]
> By default, services that are started by the Service Control Manager have the built-in Service group added to their access tokens. Component Object Model (COM) servers that are started by the COM infrastructure and that are configured to run under a specific account also have the Service group added to their access tokens. As a result, these services get this user right when they're started. In addition, a user can also impersonate an access token if any of the following conditions exist. 1) The access token that's being impersonated is for this user. 2) The user, in this logon session, created the access token by logging on to the network with explicit credentials. 3) The requested level is less than Impersonate, such as Anonymous or Identify. Because of these factors, users don't usually need this user right.

> [!WARNING]
> If you enable this setting, programs that previously had the Impersonate privilege may lose it, and they may not run.
<!-- ImpersonateClient-Description-End -->

<!-- ImpersonateClient-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ImpersonateClient-Editable-End -->

<!-- ImpersonateClient-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ImpersonateClient-DFProperties-End -->

<!-- ImpersonateClient-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Impersonate a client after authentication |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ImpersonateClient-GpMapping-End -->

<!-- ImpersonateClient-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ImpersonateClient-Examples-End -->

<!-- ImpersonateClient-End -->

<!-- IncreaseProcessWorkingSet-Begin -->
## IncreaseProcessWorkingSet

<!-- IncreaseProcessWorkingSet-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- IncreaseProcessWorkingSet-Applicability-End -->

<!-- IncreaseProcessWorkingSet-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/IncreaseProcessWorkingSet
```
<!-- IncreaseProcessWorkingSet-OmaUri-End -->

<!-- IncreaseProcessWorkingSet-Description-Begin -->
<!-- Description-Source-DDF -->
Increase a process working set. This privilege determines which user accounts can increase or decrease the size of a process's working set. The working set of a process is the set of memory pages currently visible to the process in physical RAM memory. These pages are resident and available for an application to use without triggering a page fault. The minimum and maximum working set sizes affect the virtual memory paging behavior of a process.

> [!WARNING]
> Increasing the working set size for a process decreases the amount of physical memory available to the rest of the system.
<!-- IncreaseProcessWorkingSet-Description-End -->

<!-- IncreaseProcessWorkingSet-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- IncreaseProcessWorkingSet-Editable-End -->

<!-- IncreaseProcessWorkingSet-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- IncreaseProcessWorkingSet-DFProperties-End -->

<!-- IncreaseProcessWorkingSet-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Increase a process working set |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- IncreaseProcessWorkingSet-GpMapping-End -->

<!-- IncreaseProcessWorkingSet-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IncreaseProcessWorkingSet-Examples-End -->

<!-- IncreaseProcessWorkingSet-End -->

<!-- IncreaseSchedulingPriority-Begin -->
## IncreaseSchedulingPriority

<!-- IncreaseSchedulingPriority-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- IncreaseSchedulingPriority-Applicability-End -->

<!-- IncreaseSchedulingPriority-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/IncreaseSchedulingPriority
```
<!-- IncreaseSchedulingPriority-OmaUri-End -->

<!-- IncreaseSchedulingPriority-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which accounts can use a process with Write Property access to another process to increase the execution priority assigned to the other process. A user with this privilege can change the scheduling priority of a process through the Task Manager user interface.
<!-- IncreaseSchedulingPriority-Description-End -->

<!-- IncreaseSchedulingPriority-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->

> [!WARNING]
> If you remove **Window Manager\Window Manager Group** from the **Increase scheduling priority** user right, certain applications and computers won't function correctly. In particular, the INK workspace doesn't function correctly on unified memory architecture (UMA) laptop and desktop computers that run Windows 10, version 1903 or later and that use the Intel GFX driver.
>
> On affected computers, the display blinks when users draw on INK workspaces such as those that are used by Microsoft Edge, Microsoft PowerPoint, or Microsoft OneNote. The blinking occurs because the inking-related processes repeatedly try to use the Real-Time priority, but are denied permission.
<!-- IncreaseSchedulingPriority-Editable-End -->

<!-- IncreaseSchedulingPriority-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- IncreaseSchedulingPriority-DFProperties-End -->

<!-- IncreaseSchedulingPriority-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Increase scheduling priority |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- IncreaseSchedulingPriority-GpMapping-End -->

<!-- IncreaseSchedulingPriority-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- IncreaseSchedulingPriority-Examples-End -->

<!-- IncreaseSchedulingPriority-End -->

<!-- LoadUnloadDeviceDrivers-Begin -->
## LoadUnloadDeviceDrivers

<!-- LoadUnloadDeviceDrivers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- LoadUnloadDeviceDrivers-Applicability-End -->

<!-- LoadUnloadDeviceDrivers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/LoadUnloadDeviceDrivers
```
<!-- LoadUnloadDeviceDrivers-OmaUri-End -->

<!-- LoadUnloadDeviceDrivers-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can dynamically load and unload device drivers or other code in to kernel mode. This user right doesn't apply to Plug and Play device drivers. It's recommended that you don't assign this privilege to other users.

> [!CAUTION]
> Assigning this user right can be a security risk. Don't assign this user right to any user, group, or process that you don't want to take over the system.
<!-- LoadUnloadDeviceDrivers-Description-End -->

<!-- LoadUnloadDeviceDrivers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LoadUnloadDeviceDrivers-Editable-End -->

<!-- LoadUnloadDeviceDrivers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- LoadUnloadDeviceDrivers-DFProperties-End -->

<!-- LoadUnloadDeviceDrivers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Load and unload device drivers |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- LoadUnloadDeviceDrivers-GpMapping-End -->

<!-- LoadUnloadDeviceDrivers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LoadUnloadDeviceDrivers-Examples-End -->

<!-- LoadUnloadDeviceDrivers-End -->

<!-- LockMemory-Begin -->
## LockMemory

<!-- LockMemory-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- LockMemory-Applicability-End -->

<!-- LockMemory-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/LockMemory
```
<!-- LockMemory-OmaUri-End -->

<!-- LockMemory-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which accounts can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Exercising this privilege could significantly affect system performance by decreasing the amount of available random access memory (RAM).
<!-- LockMemory-Description-End -->

<!-- LockMemory-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LockMemory-Editable-End -->

<!-- LockMemory-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- LockMemory-DFProperties-End -->

<!-- LockMemory-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Lock pages in memory |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- LockMemory-GpMapping-End -->

<!-- LockMemory-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LockMemory-Examples-End -->

<!-- LockMemory-End -->

<!-- LogOnAsBatchJob-Begin -->
## LogOnAsBatchJob

<!-- LogOnAsBatchJob-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- LogOnAsBatchJob-Applicability-End -->

<!-- LogOnAsBatchJob-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/LogOnAsBatchJob
```
<!-- LogOnAsBatchJob-OmaUri-End -->

<!-- LogOnAsBatchJob-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting allows a user to be logged-on by means of a batch-queue facility and is provided only for compatibility with older versions of Windows. For example, when a user submits a job by means of the task scheduler, the task scheduler logs that user on as a batch user rather than as an interactive user.
<!-- LogOnAsBatchJob-Description-End -->

<!-- LogOnAsBatchJob-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LogOnAsBatchJob-Editable-End -->

<!-- LogOnAsBatchJob-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- LogOnAsBatchJob-DFProperties-End -->

<!-- LogOnAsBatchJob-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Log on as a batch job |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- LogOnAsBatchJob-GpMapping-End -->

<!-- LogOnAsBatchJob-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LogOnAsBatchJob-Examples-End -->

<!-- LogOnAsBatchJob-End -->

<!-- LogOnAsService-Begin -->
## LogOnAsService

<!-- LogOnAsService-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- LogOnAsService-Applicability-End -->

<!-- LogOnAsService-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/LogOnAsService
```
<!-- LogOnAsService-OmaUri-End -->

<!-- LogOnAsService-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting allows a security principal to log on as a service. Services can be configured to run under the Local System, Local Service, or Network Service accounts, which have a built in right to log on as a service. Any service that runs under a separate user account must be assigned the right.
<!-- LogOnAsService-Description-End -->

<!-- LogOnAsService-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LogOnAsService-Editable-End -->

<!-- LogOnAsService-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- LogOnAsService-DFProperties-End -->

<!-- LogOnAsService-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Log on as a service |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- LogOnAsService-GpMapping-End -->

<!-- LogOnAsService-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LogOnAsService-Examples-End -->

<!-- LogOnAsService-End -->

<!-- ManageAuditingAndSecurityLog-Begin -->
## ManageAuditingAndSecurityLog

<!-- ManageAuditingAndSecurityLog-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ManageAuditingAndSecurityLog-Applicability-End -->

<!-- ManageAuditingAndSecurityLog-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ManageAuditingAndSecurityLog
```
<!-- ManageAuditingAndSecurityLog-OmaUri-End -->

<!-- ManageAuditingAndSecurityLog-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys. This security setting doesn't allow a user to enable file and object access auditing in general. You can view audited events in the security log of the Event Viewer. A user with this privilege can also view and clear the security log.
<!-- ManageAuditingAndSecurityLog-Description-End -->

<!-- ManageAuditingAndSecurityLog-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ManageAuditingAndSecurityLog-Editable-End -->

<!-- ManageAuditingAndSecurityLog-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ManageAuditingAndSecurityLog-DFProperties-End -->

<!-- ManageAuditingAndSecurityLog-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Manage auditing and security log |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ManageAuditingAndSecurityLog-GpMapping-End -->

<!-- ManageAuditingAndSecurityLog-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ManageAuditingAndSecurityLog-Examples-End -->

<!-- ManageAuditingAndSecurityLog-End -->

<!-- ManageVolume-Begin -->
## ManageVolume

<!-- ManageVolume-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ManageVolume-Applicability-End -->

<!-- ManageVolume-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ManageVolume
```
<!-- ManageVolume-OmaUri-End -->

<!-- ManageVolume-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users and groups can run maintenance tasks on a volume, such as remote defragmentation. Use caution when assigning this user right. Users with this user right can explore disks and extend files in to memory that contains other data. When the extended files are opened, the user might be able to read and modify the acquired data.
<!-- ManageVolume-Description-End -->

<!-- ManageVolume-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ManageVolume-Editable-End -->

<!-- ManageVolume-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ManageVolume-DFProperties-End -->

<!-- ManageVolume-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Perform volume maintenance tasks |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ManageVolume-GpMapping-End -->

<!-- ManageVolume-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ManageVolume-Examples-End -->

<!-- ManageVolume-End -->

<!-- ModifyFirmwareEnvironment-Begin -->
## ModifyFirmwareEnvironment

<!-- ModifyFirmwareEnvironment-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ModifyFirmwareEnvironment-Applicability-End -->

<!-- ModifyFirmwareEnvironment-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ModifyFirmwareEnvironment
```
<!-- ModifyFirmwareEnvironment-OmaUri-End -->

<!-- ModifyFirmwareEnvironment-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines who can modify firmware environment values. Firmware environment variables are settings stored in the nonvolatile RAM of non-x86-based computers. The effect of the setting depends on the processor. On x86-based computers, the only firmware environment value that can be modified by assigning this user right is the Last Known Good Configuration setting, which should only be modified by the system. On Itanium-based computers, boot information is stored in nonvolatile RAM. Users must be assigned this user right to run bootcfg.exe and to change the Default Operating System setting on Startup and Recovery in System Properties. On all computers, this user right is required to install or upgrade Windows.

> [!NOTE]
> This security setting doesn't affect who can modify the system environment variables and user environment variables that are displayed on the Advanced tab of System Properties.
<!-- ModifyFirmwareEnvironment-Description-End -->

<!-- ModifyFirmwareEnvironment-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ModifyFirmwareEnvironment-Editable-End -->

<!-- ModifyFirmwareEnvironment-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ModifyFirmwareEnvironment-DFProperties-End -->

<!-- ModifyFirmwareEnvironment-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Modify firmware environment values |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ModifyFirmwareEnvironment-GpMapping-End -->

<!-- ModifyFirmwareEnvironment-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ModifyFirmwareEnvironment-Examples-End -->

<!-- ModifyFirmwareEnvironment-End -->

<!-- ModifyObjectLabel-Begin -->
## ModifyObjectLabel

<!-- ModifyObjectLabel-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ModifyObjectLabel-Applicability-End -->

<!-- ModifyObjectLabel-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ModifyObjectLabel
```
<!-- ModifyObjectLabel-OmaUri-End -->

<!-- ModifyObjectLabel-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which user accounts can modify the integrity label of objects, such as files, registry keys, or processes owned by other users. Processes running under a user account can modify the label of an object owned by that user to a lower level without this privilege.
<!-- ModifyObjectLabel-Description-End -->

<!-- ModifyObjectLabel-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ModifyObjectLabel-Editable-End -->

<!-- ModifyObjectLabel-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ModifyObjectLabel-DFProperties-End -->

<!-- ModifyObjectLabel-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Modify an object label |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ModifyObjectLabel-GpMapping-End -->

<!-- ModifyObjectLabel-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ModifyObjectLabel-Examples-End -->

<!-- ModifyObjectLabel-End -->

<!-- ProfileSingleProcess-Begin -->
## ProfileSingleProcess

<!-- ProfileSingleProcess-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- ProfileSingleProcess-Applicability-End -->

<!-- ProfileSingleProcess-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ProfileSingleProcess
```
<!-- ProfileSingleProcess-OmaUri-End -->

<!-- ProfileSingleProcess-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can use performance monitoring tools to monitor the performance of system processes.
<!-- ProfileSingleProcess-Description-End -->

<!-- ProfileSingleProcess-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProfileSingleProcess-Editable-End -->

<!-- ProfileSingleProcess-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ProfileSingleProcess-DFProperties-End -->

<!-- ProfileSingleProcess-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Profile single process |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ProfileSingleProcess-GpMapping-End -->

<!-- ProfileSingleProcess-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProfileSingleProcess-Examples-End -->

<!-- ProfileSingleProcess-End -->

<!-- ProfileSystemPerformance-Begin -->
## ProfileSystemPerformance

<!-- ProfileSystemPerformance-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ProfileSystemPerformance-Applicability-End -->

<!-- ProfileSystemPerformance-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ProfileSystemPerformance
```
<!-- ProfileSystemPerformance-OmaUri-End -->

<!-- ProfileSystemPerformance-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines which users can use performance monitoring tools to monitor the performance of system processes.
<!-- ProfileSystemPerformance-Description-End -->

<!-- ProfileSystemPerformance-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ProfileSystemPerformance-Editable-End -->

<!-- ProfileSystemPerformance-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ProfileSystemPerformance-DFProperties-End -->

<!-- ProfileSystemPerformance-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Profile system performance |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ProfileSystemPerformance-GpMapping-End -->

<!-- ProfileSystemPerformance-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ProfileSystemPerformance-Examples-End -->

<!-- ProfileSystemPerformance-End -->

<!-- RemoteShutdown-Begin -->
## RemoteShutdown

<!-- RemoteShutdown-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- RemoteShutdown-Applicability-End -->

<!-- RemoteShutdown-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/RemoteShutdown
```
<!-- RemoteShutdown-OmaUri-End -->

<!-- RemoteShutdown-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users are allowed to shut down a computer from a remote location on the network. Misuse of this user right can result in a denial of service.
<!-- RemoteShutdown-Description-End -->

<!-- RemoteShutdown-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RemoteShutdown-Editable-End -->

<!-- RemoteShutdown-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- RemoteShutdown-DFProperties-End -->

<!-- RemoteShutdown-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Force shutdown from a remote system |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- RemoteShutdown-GpMapping-End -->

<!-- RemoteShutdown-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RemoteShutdown-Examples-End -->

<!-- RemoteShutdown-End -->

<!-- ReplaceProcessLevelToken-Begin -->
## ReplaceProcessLevelToken

<!-- ReplaceProcessLevelToken-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ReplaceProcessLevelToken-Applicability-End -->

<!-- ReplaceProcessLevelToken-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ReplaceProcessLevelToken
```
<!-- ReplaceProcessLevelToken-OmaUri-End -->

<!-- ReplaceProcessLevelToken-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines which user accounts can call the CreateProcessAsUser() application programming interface (API) so that one service can start another. An example of a process that uses this user right is Task Scheduler. For information about Task Scheduler, see Task Scheduler overview.
<!-- ReplaceProcessLevelToken-Description-End -->

<!-- ReplaceProcessLevelToken-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ReplaceProcessLevelToken-Editable-End -->

<!-- ReplaceProcessLevelToken-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ReplaceProcessLevelToken-DFProperties-End -->

<!-- ReplaceProcessLevelToken-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Replace a process level token |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ReplaceProcessLevelToken-GpMapping-End -->

<!-- ReplaceProcessLevelToken-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ReplaceProcessLevelToken-Examples-End -->

<!-- ReplaceProcessLevelToken-End -->

<!-- RestoreFilesAndDirectories-Begin -->
## RestoreFilesAndDirectories

<!-- RestoreFilesAndDirectories-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- RestoreFilesAndDirectories-Applicability-End -->

<!-- RestoreFilesAndDirectories-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/RestoreFilesAndDirectories
```
<!-- RestoreFilesAndDirectories-OmaUri-End -->

<!-- RestoreFilesAndDirectories-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories, and determines which users can set any valid security principal as the owner of an object. Specifically, this user right is similar to granting the following permissions to the user or group in question on all files and folders on the system:Traverse Folder/Execute File, Write.

> [!CAUTION]
> Assigning this user right can be a security risk. Since users with this user right can overwrite registry settings, hide data, and gain ownership of system objects, only assign this user right to trusted users.
<!-- RestoreFilesAndDirectories-Description-End -->

<!-- RestoreFilesAndDirectories-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- RestoreFilesAndDirectories-Editable-End -->

<!-- RestoreFilesAndDirectories-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- RestoreFilesAndDirectories-DFProperties-End -->

<!-- RestoreFilesAndDirectories-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Restore files and directories |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- RestoreFilesAndDirectories-GpMapping-End -->

<!-- RestoreFilesAndDirectories-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- RestoreFilesAndDirectories-Examples-End -->

<!-- RestoreFilesAndDirectories-End -->

<!-- ShutDownTheSystem-Begin -->
## ShutDownTheSystem

<!-- ShutDownTheSystem-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 11, version 24H2 [10.0.26100] and later |
<!-- ShutDownTheSystem-Applicability-End -->

<!-- ShutDownTheSystem-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/ShutDownTheSystem
```
<!-- ShutDownTheSystem-OmaUri-End -->

<!-- ShutDownTheSystem-Description-Begin -->
<!-- Description-Source-DDF -->
This security setting determines which users who are logged-on locally to the computer can shut down the operating system using the Shut Down command. Misuse of this user right can result in a denial of service.
<!-- ShutDownTheSystem-Description-End -->

<!-- ShutDownTheSystem-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShutDownTheSystem-Editable-End -->

<!-- ShutDownTheSystem-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- ShutDownTheSystem-DFProperties-End -->

<!-- ShutDownTheSystem-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Shut down the system |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- ShutDownTheSystem-GpMapping-End -->

<!-- ShutDownTheSystem-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShutDownTheSystem-Examples-End -->

<!-- ShutDownTheSystem-End -->

<!-- TakeOwnership-Begin -->
## TakeOwnership

<!-- TakeOwnership-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- TakeOwnership-Applicability-End -->

<!-- TakeOwnership-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/UserRights/TakeOwnership
```
<!-- TakeOwnership-OmaUri-End -->

<!-- TakeOwnership-Description-Begin -->
<!-- Description-Source-DDF -->
This user right determines which users can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads.

> [!CAUTION]
> Assigning this user right can be a security risk. Since owners of objects have full control of them, only assign this user right to trusted users.
<!-- TakeOwnership-Description-End -->

<!-- TakeOwnership-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TakeOwnership-Editable-End -->

<!-- TakeOwnership-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
| Allowed Values | List (Delimiter: `0xF000`) |
<!-- TakeOwnership-DFProperties-End -->

<!-- TakeOwnership-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | Take ownership of files or other objects |
| Path | Windows Settings > Security Settings > Local Policies > User Rights Assignment |
<!-- TakeOwnership-GpMapping-End -->

<!-- TakeOwnership-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TakeOwnership-Examples-End -->

<!-- TakeOwnership-End -->

<!-- UserRights-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- UserRights-CspMoreInfo-End -->

<!-- UserRights-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
