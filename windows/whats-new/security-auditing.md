---
title: What's new in security auditing (Windows 10)
description: Security auditing is one of the most powerful tools that you can use to maintain the integrity of your system.
ms.assetid: CB35A02E-5C66-449D-8C90-7B73C636F67B
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
author: brianlic-msft
ms.pagetype: security, mobile
redirect_url: whats-new-windows-10-version-1511.md
---

# What's new in security auditing?

**Applies to**
-   Windows 10
-   Windows 10 Mobile
-   Windows Server 2016

Security auditing is one of the most powerful tools that you can use to maintain the integrity of your system. As part of your overall security strategy, you should determine the level of auditing that is appropriate for your environment. Auditing should identify attacks (successful or not) that pose a threat to your network, and attacks against resources that you have determined to be valuable in your risk assessment.

## New features in Windows 10, version 1511

-   The [WindowsSecurityAuditing](http://go.microsoft.com/fwlink/p/?LinkId=690517) and [Reporting](http://go.microsoft.com/fwlink/p/?LinkId=690525) configuration service providers allow you to add security audit policies to mobile devices.

## New features in Windows 10

In Windows 10, security auditing has added some improvements:
-   [New audit subcategories](#bkmk-auditsubcat)
-   [More info added to existing audit events](#bkmk-moreinfo)

### <a href="" id="bkmk-auditsubcat"></a>New audit subcategories

In Windows 10, two new audit subcategories were added to the Advanced Audit Policy Configuration to provide greater granularity in audit events:
-   [Audit Group Membership](../keep-secure/audit-group-membership.md) Found in the Logon/Logoff audit category, the Audit Group Membership subcategory allows you to audit the group membership information in a user's logon token. Events in this subcategory are generated when group memberships are enumerated or queried on the PC where the logon session was created. For an interactive logon, the security audit event is generated on the PC that the user logged on to. For a network logon, such as accessing a shared folder on the network, the security audit event is generated on the PC hosting the resource.
    When this setting is configured, one or more security audit events are generated for each successful logon. You must also enable the **Audit Logon** setting under **Advanced Audit Policy Configuration\\System Audit Policies\\Logon/Logoff**. Multiple events are generated if the group membership information cannot fit in a single security audit event.
-   [Audit PNP Activity](../keep-secure/audit-pnp-activity.md) Found in the Detailed Tracking category, the Audit PNP Activity subcategory allows you to audit when plug and play detects an external device.
    Only Success audits are recorded for this category. If you do not configure this policy setting, no audit event is generated when an external device is detected by plug and play.
    A PnP audit event can be used to track down changes in system hardware and will be logged on the PC where the change took place. A list of hardware vendor IDs are included in the event.

### <a href="" id="bkmk-moreinfo"></a>More info added to existing audit events

With Windows 10, we've added more info to existing audit events to make it easier for you to put together a full audit trail and come away with the information you need to protect your enterprise. Improvements were made to the following audit events:
-   [Changed the kernel default audit policy](#bkmk-kdal)
-   [Added a default process SACL to LSASS.exe](#bkmk-lsass)
-   [Added new fields in the logon event](#bkmk-logon)
-   [Added new fields in the process creation event](#bkmk-logon)
-   [Added new Security Account Manager events](#bkmk-sam)
-   [Added new BCD events](#bkmk-bcd)
-   [Added new PNP events](#bkmk-pnp)

### <a href="" id="bkmk-kdal"></a>Changed the kernel default audit policy

In previous releases, the kernel depended on the Local Security Authority (LSA) to retrieve info in some of its events. In Windows 10, the process creation events audit policy is automatically enabled until an actual audit policy is received from LSA. This results in better auditing of services that may start before LSA starts.

### <a href="" id="bkmk-lsass"></a>Added a default process SACL to LSASS.exe

In Windows 10, a default process SACL was added to LSASS.exe to log processes attempting to access LSASS.exe. The SACL is L"S:(AU;SAFA;0x0010;;;WD)". You can enable this under **Advanced Audit Policy Configuration\\Object Access\\Audit Kernel Object**.
This can help identify attacks that steal credentials from the memory of a process.

### <a href="" id="bkmk-logon"></a>New fields in the logon event

The logon event ID 4624 has been updated to include more verbose information to make them easier to analyze. The following fields have been added to event 4624:
1.  **MachineLogon** String: yes or no
    If the account that logged into the PC is a computer account, this field will be yes. Otherwise, the field is no.
2.  **ElevatedToken** String: yes or no
    If the account that logged into the PC is an administrative logon, this field will be yes. Otherwise, the field is no. Additionally, if this is part of a split token, the linked login ID (LSAP\_LOGON\_SESSION) will also be shown.
3.  **TargetOutboundUserName** String
    **TargetOutboundUserDomain** String
    The username and domain of the identity that was created by the LogonUser method for outbound traffic.
4.  **VirtualAccount** String: yes or no
    If the account that logged into the PC is a virtual account, this field will be yes. Otherwise, the field is no.
5.  **GroupMembership** String
    A list of all of the groups in the user's token.
6.  **RestrictedAdminMode** String: yes or no
    If the user logs into the PC in restricted admin mode with Remote Desktop, this field will be yes.
    For more info on restricted admin mode, see [Restricted Admin mode for RDP](http://blogs.technet.com/b/kfalde/archive/2013/08/14/restricted-admin-mode-for-rdp-in-windows-8-1-2012-r2.aspx).

### <a href="" id="bkmk-process"></a>New fields in the process creation event

The logon event ID 4688 has been updated to include more verbose information to make them easier to analyze. The following fields have been added to event 4688:
1.  **TargetUserSid** String
    The SID of the target principal.
2.  **TargetUserName** String
    The account name of the target user.
3.  **TargetDomainName** String
    The domain of the target user..
4.  **TargetLogonId** String
    The logon ID of the target user.
5.  **ParentProcessName** String
    The name of the creator process.
6.  **ParentProcessId** String
    A pointer to the actual parent process if it's different from the creator process.

### <a href="" id="bkmk-sam"></a>New Security Account Manager events

In Windows 10, new SAM events were added to cover SAM APIs that perform read/query operations. In previous versions of Windows, only write operations were audited. The new events are event ID 4798 and event ID 4799. The following APIs are now audited:
-   SamrEnumerateGroupsInDomain
-   SamrEnumerateUsersInDomain
-   SamrEnumerateAliasesInDomain
-   SamrGetAliasMembership
-   SamrLookupNamesInDomain
-   SamrLookupIdsInDomain
-   SamrQueryInformationUser
-   SamrQueryInformationGroup
-   SamrQueryInformationUserAlias
-   SamrGetMembersInGroup
-   SamrGetMembersInAlias
-   SamrGetUserDomainPasswordInformation

### <a href="" id="bkmk-bcd"></a>New BCD events

Event ID 4826 has been added to track the following changes to the Boot Configuration Database (BCD):
-   DEP/NEX settings
-   Test signing
-   PCAT SB simulation
-   Debug
-   Boot debug
-   Integrity Services
-   Disable Winload debugging menu

### <a href="" id="bkmk-pnp"></a>New PNP events

Event ID 6416 has been added to track when an external device is detected through Plug and Play. One important scenario is if an external device that contains malware is inserted into a high-value machine that doesn’t expect this type of action, such as a domain controller.
[Learn how to manage your security audit policies within your organization](../keep-secure/security-auditing-overview.md).
