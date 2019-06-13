---
title: User Rights Assignment (Windows 10)
description: Provides an overview and links to information about the User Rights Assignment security policy settings user rights that are available in Windows.
ms.assetid: 99340252-60be-4c79-b0a5-56fbe1a9b0c5
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# User Rights Assignment

**Applies to**
-   Windows 10

Provides an overview and links to information about the User Rights Assignment security policy settings user rights that are available in Windows.
User rights govern the methods by which a user can log on to a system. User rights are applied at the local device level, and they allow users to perform tasks on a device or in a domain. User rights include logon rights and permissions. Logon rights control who is authorized to log on to a device and how they can log on. User rights permissions control access to computer and domain resources, and they can override permissions that have been set on specific objects. User rights are managed in Group Policy under the **User Rights Assignment** item.

Each user right has a constant name and a Group Policy name associated with it. The constant names are used when referring to the user right in log events. You can configure the user rights assignment settings in the following location within the Group Policy Management Console (GPMC) under 
**Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\User Rights Assignment**, or on the local device by using the Local Group Policy Editor (gpedit.msc).

For information about setting security policies, see [Configure security policy settings](how-to-configure-security-policy-settings.md).

The following table links to each security policy setting and provides the constant name for each. Setting descriptions contain reference information, best practices for configuring the policy setting, default values, differences between operating system versions, and considerations for policy management and security.

| Group Policy Setting | Constant Name |
| - | - |
| [Access Credential Manager as a trusted caller](access-credential-manager-as-a-trusted-caller.md) | SeTrustedCredManAccessPrivilege| 
| [Access this computer from the network](access-this-computer-from-the-network.md) | SeNetworkLogonRight| 
| [Act as part of the operating system](act-as-part-of-the-operating-system.md) | SeTcbPrivilege| 
| [Add workstations to domain](add-workstations-to-domain.md) | SeMachineAccountPrivilege| 
| [Adjust memory quotas for a process](adjust-memory-quotas-for-a-process.md) | SeIncreaseQuotaPrivilege| 
| [Allow log on locally](allow-log-on-locally.md) | SeInteractiveLogonRight| 
| [Allow log on through Remote Desktop Services](allow-log-on-through-remote-desktop-services.md)| SeRemoteInteractiveLogonRight|
| [Back up files and directories](back-up-files-and-directories.md) | SeBackupPrivilege| 
| [Bypass traverse checking](bypass-traverse-checking.md) | SeChangeNotifyPrivilege| 
| [Change the system time](change-the-system-time.md) | SeSystemtimePrivilege| 
| [Change the time zone](change-the-time-zone.md) | SeTimeZonePrivilege| 
| [Create a pagefile](create-a-pagefile.md) | SeCreatePagefilePrivilege| 
| [Create a token object](create-a-token-object.md) | SeCreateTokenPrivilege| 
| [Create global objects](create-global-objects.md) | SeCreateGlobalPrivilege| 
| [Create permanent shared objects](create-permanent-shared-objects.md) | SeCreatePermanentPrivilege| 
| [Create symbolic links](create-symbolic-links.md) | SeCreateSymbolicLinkPrivilege| 
| [Debug programs](debug-programs.md) | SeDebugPrivilege| 
| [Deny access to this computer from the network](deny-access-to-this-computer-from-the-network.md)| SeDenyNetworkLogonRight |
| [Deny log on as a batch job](deny-log-on-as-a-batch-job.md) | SeDenyBatchLogonRight| 
| [Deny log on as a service](deny-log-on-as-a-service.md) | SeDenyServiceLogonRight |
| [Deny log on locally](deny-log-on-locally.md) | SeDenyInteractiveLogonRight| 
| [Deny log on through Remote Desktop Services](deny-log-on-through-remote-desktop-services.md)| SeDenyRemoteInteractiveLogonRight| 
| [Enable computer and user accounts to be trusted for delegation](enable-computer-and-user-accounts-to-be-trusted-for-delegation.md)| SeEnableDelegationPrivilege| 
| [Force shutdown from a remote system](force-shutdown-from-a-remote-system.md) | SeRemoteShutdownPrivilege| 
| [Generate security audits](generate-security-audits.md) | SeAuditPrivilege| 
| [Impersonate a client after authentication](impersonate-a-client-after-authentication.md)| SeImpersonatePrivilege| 
| [Increase a process working set](increase-a-process-working-set.md) | SeIncreaseWorkingSetPrivilege| 
| [Increase scheduling priority](increase-scheduling-priority.md) | SeIncreaseBasePriorityPrivilege| 
| [Load and unload device drivers](load-and-unload-device-drivers.md) | SeLoadDriverPrivilege| 
| [Lock pages in memory](lock-pages-in-memory.md) | SeLockMemoryPrivilege| 
| [Log on as a batch job](log-on-as-a-batch-job.md) | SeBatchLogonRight| 
| [Log on as a service](log-on-as-a-service.md) | SeServiceLogonRight| 
| [Manage auditing and security log](manage-auditing-and-security-log.md)| SeSecurityPrivilege| 
| [Modify an object label](modify-an-object-label.md) | SeRelabelPrivilege| 
| [Modify firmware environment values](modify-firmware-environment-values.md)| SeSystemEnvironmentPrivilege| 
| [Perform volume maintenance tasks](perform-volume-maintenance-tasks.md) | SeManageVolumePrivilege| 
| [Profile single process](profile-single-process.md) | SeProfileSingleProcessPrivilege| 
| [Profile system performance](profile-system-performance.md) | SeSystemProfilePrivilege| 
| [Remove computer from docking station](remove-computer-from-docking-station.md) | SeUndockPrivilege| 
| [Replace a process level token](replace-a-process-level-token.md) | SeAssignPrimaryTokenPrivilege| 
| [Restore files and directories](restore-files-and-directories.md) | SeRestorePrivilege |
| [Shut down the system](shut-down-the-system.md) | SeShutdownPrivilege| 
| [Synchronize directory service data](synchronize-directory-service-data.md)| SeSyncAgentPrivilege| 
| [Take ownership of files or other objects](take-ownership-of-files-or-other-objects.md) | SeTakeOwnershipPrivilege| 
 
## Related topics

- [Security policy settings reference](security-policy-settings-reference.md)
