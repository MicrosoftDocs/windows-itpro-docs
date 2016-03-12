---
title: User Rights Assignment (Windows 10)
description: Provides an overview and links to information about the User Rights Assignment security policy settings user rights that are available in Windows.
MSHAttr: PreferredLib /library
ms.assetid: 99340252-60be-4c79-b0a5-56fbe1a9b0c5
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# User Rights Assignment


**Applies to**

-   Windows 10

Provides an overview and links to information about the User Rights Assignment security policy settings user rights that are available in Windows.

User rights govern the methods by which a user can log on to a system. User rights are applied at the local device level, and they allow users to perform tasks on a device or in a domain. User rights include logon rights and permissions. Logon rights control who is authorized to log on to a device and how they can log on. User rights permissions control access to computer and domain resources, and they can override permissions that have been set on specific objects. User rights are managed in Group Policy under the **User Rights Assignment** item.

Each user right has a constant name and a Group Policy name associated with it. The constant names are used when referring to the user right in log events. You can configure the user rights assignment settings in the following location within the Group Policy Management Console (GPMC) under **Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment**, or on the local device by using the Local Group Policy Editor (gpedit.msc).

For information about setting security policies, see [Configure security policy settings](how-to-configure-security-policy-settings.md).

The following table links to each security policy setting and provides the constant name for each. Setting descriptions contain reference information, best practices for configuring the policy setting, default values, differences between operating system versions, and considerations for policy management and security.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Policy Setting</th>
<th align="left">Constant Name</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Access Credential Manager as a trusted caller](access-credential-manager-as-a-trusted-caller.md)</p></td>
<td align="left"><p>SeTrustedCredManAccessPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Access this computer from the network](access-this-computer-from-the-network.md)</p></td>
<td align="left"><p>SeNetworkLogonRight</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Act as part of the operating system](act-as-part-of-the-operating-system.md)</p></td>
<td align="left"><p>SeTcbPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Add workstations to domain](add-workstations-to-domain.md)</p></td>
<td align="left"><p>SeMachineAccountPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Adjust memory quotas for a process](adjust-memory-quotas-for-a-process.md)</p></td>
<td align="left"><p>SeIncreaseQuotaPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Allow log on locally](allow-log-on-locally.md)</p></td>
<td align="left"><p>SeInteractiveLogonRight</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Allow log on through Remote Desktop Services](allow-log-on-through-remote-desktop-services.md)</p></td>
<td align="left"><p>SeRemoteInteractiveLogonRight</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Back up files and directories](back-up-files-and-directories.md)</p></td>
<td align="left"><p>SeBackupPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Bypass traverse checking](bypass-traverse-checking.md)</p></td>
<td align="left"><p>SeChangeNotifyPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Change the system time](change-the-system-time.md)</p></td>
<td align="left"><p>SeSystemtimePrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Change the time zone](change-the-time-zone.md)</p></td>
<td align="left"><p>SeTimeZonePrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Create a pagefile](create-a-pagefile.md)</p></td>
<td align="left"><p>SeCreatePagefilePrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Create a token object](create-a-token-object.md)</p></td>
<td align="left"><p>SeCreateTokenPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Create global objects](create-global-objects.md)</p></td>
<td align="left"><p>SeCreateGlobalPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Create permanent shared objects](create-permanent-shared-objects.md)</p></td>
<td align="left"><p>SeCreatePermanentPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Create symbolic links](create-symbolic-links.md)</p></td>
<td align="left"><p>SeCreateSymbolicLinkPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Debug programs](debug-programs.md)</p></td>
<td align="left"><p>SeDebugPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Deny access to this computer from the network](deny-access-to-this-computer-from-the-network.md)</p></td>
<td align="left"><p>SeDenyNetworkLogonRight</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Deny log on as a batch job](deny-log-on-as-a-batch-job.md)</p></td>
<td align="left"><p>SeDenyBatchLogonRight</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Deny log on as a service](deny-log-on-as-a-service.md)</p></td>
<td align="left"><p>SeDenyServiceLogonRight</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Deny log on locally](deny-log-on-locally.md)</p></td>
<td align="left"><p>SeDenyInteractiveLogonRight</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Deny log on through Remote Desktop Services](deny-log-on-through-remote-desktop-services.md)</p></td>
<td align="left"><p>SeDenyRemoteInteractiveLogonRight</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Enable computer and user accounts to be trusted for delegation](enable-computer-and-user-accounts-to-be-trusted-for-delegation.md)</p></td>
<td align="left"><p>SeEnableDelegationPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Force shutdown from a remote system](force-shutdown-from-a-remote-system.md)</p></td>
<td align="left"><p>SeRemoteShutdownPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Generate security audits](generate-security-audits.md)</p></td>
<td align="left"><p>SeAuditPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Impersonate a client after authentication](impersonate-a-client-after-authentication.md)</p></td>
<td align="left"><p>SeImpersonatePrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Increase a process working set](increase-a-process-working-set.md)</p></td>
<td align="left"><p>SeIncreaseWorkingSetPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Increase scheduling priority](increase-scheduling-priority.md)</p></td>
<td align="left"><p>SeIncreaseBasePriorityPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Load and unload device drivers](load-and-unload-device-drivers.md)</p></td>
<td align="left"><p>SeLoadDriverPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Lock pages in memory](lock-pages-in-memory.md)</p></td>
<td align="left"><p>SeLockMemoryPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Log on as a batch job](log-on-as-a-batch-job.md)</p></td>
<td align="left"><p>SeBatchLogonRight</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Log on as a service](log-on-as-a-service.md)</p></td>
<td align="left"><p>SeServiceLogonRight</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Manage auditing and security log](manage-auditing-and-security-log.md)</p></td>
<td align="left"><p>SeSecurityPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Modify an object label](modify-an-object-label.md)</p></td>
<td align="left"><p>SeRelabelPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Modify firmware environment values](modify-firmware-environment-values.md)</p></td>
<td align="left"><p>SeSystemEnvironmentPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Perform volume maintenance tasks](perform-volume-maintenance-tasks.md)</p></td>
<td align="left"><p>SeManageVolumePrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Profile single process](profile-single-process.md)</p></td>
<td align="left"><p>SeProfileSingleProcessPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Profile system performance](profile-system-performance.md)</p></td>
<td align="left"><p>SeSystemProfilePrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Remove computer from docking station](remove-computer-from-docking-station.md)</p></td>
<td align="left"><p>SeUndockPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Replace a process level token](replace-a-process-level-token.md)</p></td>
<td align="left"><p>SeAssignPrimaryTokenPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Restore files and directories](restore-files-and-directories.md)</p></td>
<td align="left"><p>SeRestorePrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Shut down the system](shut-down-the-system.md)</p></td>
<td align="left"><p>SeShutdownPrivilege</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Synchronize directory service data](synchronize-directory-service-data.md)</p></td>
<td align="left"><p>SeSyncAgentPrivilege</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Take ownership of files or other objects](take-ownership-of-files-or-other-objects.md)</p></td>
<td align="left"><p>SeTakeOwnershipPrivilege</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[Security policy settings reference](security-policy-settings-reference.md)

 

 





