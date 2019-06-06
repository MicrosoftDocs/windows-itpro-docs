---
title: Network access - Restrict clients allowed to make remote calls to SAM
description: Security policy setting that controls which users can enumerate users and groups in the local Security Accounts Manager (SAM) database.
ms.prod: w10
ms.mktglfcycl: explore
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
ms.localizationpriority: medium
author: dansimp
ms.date: 09/17/2018
ms.reviewer: 
manager: dansimp
ms.author: dansimp
---

# Network access: Restrict clients allowed to make remote calls to SAM

**Applies to**
-   Windows 10, version 1607 and later
-   Windows 10, version 1511 with [KB 4103198](https://support.microsoft.com/help/4013198) installed
-   Windows 10, version 1507 with [KB 4012606](https://support.microsoft.com/help/4012606) installed 
-   Windows 8.1 with [KB 4102219](https://support.microsoft.com/help/4012219/march-2017-preview-of-monthly-quality-rollup-for-windows-8-1-and-windows-server-2012-r2) installed 
-   Windows 7 with [KB 4012218](https://support.microsoft.com/help/4012218/march-2017-preview-of-monthly-quality-rollup-for-windows-7-sp1-and-windows-server-2008-r2-sp1) installed 
-   Windows Server 2016
-   Windows Server 2012 R2 with[KB 4012219](https://support.microsoft.com/help/4012219/march-2017-preview-of-monthly-quality-rollup-for-windows-8-1-and-windows-server-2012-r2) installed
-   Windows Server 2012 with [KB 4012220](https://support.microsoft.com/help/4012220/march-2017-preview-of-monthly-quality-rollup-for-windows-server-2012) installed 
-   Windows Server 2008 R2 with [KB 4012218](https://support.microsoft.com/help/4012218/march-2017-preview-of-monthly-quality-rollup-for-windows-7-sp1-and-windows-server-2008-r2-sp1) installed


The **Network access: Restrict clients allowed to make remote calls to SAM** security policy setting controls which users can enumerate users and groups in the local Security Accounts Manager (SAM) database and Active Directory. 
The setting was first supported by Windows 10 version 1607 and Windows Server 2016 (RTM) and can be configured on earlier Windows client and server operating systems by installing updates from the KB articles listed in **Applies to** section of this topic. 

This topic describes the default values for this security policy setting in different versions of Windows.
By default, computers beginning with Windows 10 version 1607 and Windows Server 2016 are more restrictive than earlier versions of Windows. 
This means that if you have a mix of computers, such as member servers that run both Windows Server 2016 and Windows Server 2012 R2, the servers that run Windows Server 2016 may fail to enumerate accounts by default where the servers that run Windows Server 2012 R2 succeed.

This topic also covers related events, and how to enable audit mode before constraining the security principals that are allowed to remotely enumerate users and groups so that your environment remains secure without impacting application compatibility. 

## Reference

The SAMRPC protocol makes it possible for a low privileged user to query a machine on a network for data. 
For example, a user can use SAMRPC to enumerate users, including privileged accounts such as local or domain administrators, or to enumerate groups and group memberships from the local SAM and Active Directory. 
This information can provide important context and serve as a starting point for an attacker to compromise a domain or networking environment. 

To mitigate this risk, you can configure the **Network access: Restrict clients allowed to make remote calls to SAM** security policy setting to force the security accounts manager (SAM) to do an access check against remote calls. 
The access check allows or denies remote RPC connections to SAM and Active Directory for users and groups that you define. 

By default, the **Network access: Restrict clients allowed to make remote calls to SAM** security policy setting is not defined. 
If you define it, you can edit the default Security Descriptor Definition Language (SDDL) string to explicitly allow or deny users and groups to make remote calls to the SAM. 
If the policy setting is left blank after the policy is defined, the policy is not enforced.   

The default security descriptor on computers beginning with Windows 10 version 1607 and Windows Server 2016 allows only the local (built-in) Administrators group remote access to SAM on non-domain controllers, and allows Everyone access on domain controllers. 
You can edit the default security descriptor to allow or deny other users and groups, including the built-in Administrators.

The default security descriptor on computers that run earlier versions of Windows does not restrict any remote calls to SAM, but an administrator can edit the security descriptor to enforce restrictions. 
This less restrictive default allows for testing the impact of enabling restrictions on existing applications.

## Policy and Registry Names

|   |   |
|----|---|
| Policy Name | Network access: Restrict clients allowed to make remote calls to SAM |
| Location | Computer Configuration\|Windows Settings\|Security Settings\|Local Policies\|Security Options |
| Possible values | <br>- Not defined <br>- Defined, along with the security descriptor for users and groups who are allowed or denied to use SAMRPC to remotely access either the local SAM or Active Directory. |
| Registry location | `HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\RestrictRemoteSam` |
| Registry type | REG_SZ |
| Registry value | A string that will contain the SDDL of the security descriptor to be deployed. |

The Group Policy setting is only available on computers that run Windows Server 2016 or Windows 10, version 1607 and later. 
This is the only option to configure this setting by using a user interface (UI).

On computers that run earlier versions of Windows, you need to edit the registry setting directly or use Group Policy Preferences. 
To avoid setting it manually in this case, you can configure the GPO itself on a computer that runs Windows Server 2016 or Windows 10, version 1607 or later and have it apply to all computers within the scope of the GPO because the same registry key exists on every computer after the corresponding KB is installed. 

> [!NOTE]
> This policy is implemented similarly to other "Network access" policies in that there is a single policy element at the registry path listed. There is no notion of a local policy versus an enterprise policy; there is just one policy setting and whichever writes last wins. 
> 
> For example, suppose a local administrator configures this setting as part of a local policy using the Local Security Policy snap-in (Secpol.msc), which edits that same registry path. If an enterprise administrator configures this setting as part of an enterprise GPO, that enterprise GPO will overwrite the same registry path. 

## Default values
Beginning with Windows 10, version 1607 and Windows Server 2016, computers have hard-coded and more restrictive default values than earlier versions of Windows. 
The different default values help strike a balance where recent Windows versions are more secure by default and older versions don’t undergo any disruptive behavior changes. 
Administrators can test whether applying the same restriction earlier versions of Windows will cause compatibility problems for existing applications before implementing this security policy setting in a production environment. 

In other words, the hotfix in each KB article provides the necessary code and functionality, but you need to configure the restriction after you install the hotfix—no restrictions are enabled by default after the hotfix is installed on earlier versions of Windows.

| |Default SDDL	|Translated SDDL| Comments
|---|---|---|---|
|Windows Server 2016 domain controller (reading Active Directory)|“”|-|Everyone has read permissions to preserve compatibility.|
|Earlier domain controller |-|-|No access check is performed by default.|
|Windows 10, version 1607 non-domain controller|O:SYG:SYD:(A;;RC;;;BA)| Owner: NTAUTHORITY/SYSTEM (WellKnownGroup) (S-1-5-18) <br>Primary group: NTAUTHORITY/SYSTEM (WellKnownGroup) (S-1-5-18) <br>DACL: <br>•	Revision: 0x02 <br>•	Size: 0x0020 <br>•	Ace Count: 0x001 <br>•	Ace[00]------------------------- <br> &nbsp;&nbsp;AceType:0x00 <br> &nbsp;&nbsp;(ACCESS\_ALLOWED_ACE_TYPE)<br> &nbsp;&nbsp;AceSize:0x0018 <br> &nbsp;&nbsp;InheritFlags:0x00 <br> &nbsp;&nbsp;Access Mask:0x00020000 <br> &nbsp;&nbsp;AceSid: BUILTIN\Administrators (Alias) (S-1-5-32-544) <br><br> &nbsp;&nbsp;SACL: Not present |Grants RC access (READ_CONTROL, also known as STANDARD_RIGHTS_READ) only to members of the local (built-in) Administrators group. |
|Earlier non-domain controller |-|-|No access check is performed by default.|

## Policy management

This section explains how to configure audit-only mode, how to analyze related events that are logged when the **Network access: Restrict clients allowed to make remote calls to SAM** security policy setting is enabled, and how to configure event throttling to prevent flooding the event log.

### Audit only mode

Audit only mode configures the SAMRPC protocol to do the access check against the currently configured security descriptor but will not fail the call if the access check fails. Instead, the call will be allowed, but SAMRPC will log an event describing what would have happened if the feature had been enabled. This provides administrators a way to test their applications before enabling the policy in production. Audit only mode is not configured by default. To configure it, add the following registry setting.

|Registry|Details|
|---|---|
|Path|HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa|
|Setting|RestrictRemoteSamAuditOnlyMode|
|Data Type|REG_DWORD|
|Value|1|
|Notes|This setting cannot be added or removed by using predefined Group Policy settings. <br> Administrators may create a custom policy to set the registry value if needed. <br>                               SAM responds dynamically to changes in this registry value without a reboot. <br> You can use the [Events 16962 - 16969 Reader](https://gallery.technet.microsoft.com/Events-16962-16969-Reader-2eae5f1d) script to parse the event logs, as explained in the next section.|

### Related events

There are corresponding events that indicate when remote calls to the SAM are restricted, what accounts attempted to read from the SAM database, and more. The following workflow is recommended to identify applications that may be affected by restricting remote calls to SAM:
1.	Dump event logs to a common share. 
2.	Parse them with the [Events 16962 - 16969 Reader](https://gallery.technet.microsoft.com/Events-16962-16969-Reader-2eae5f1d) script. 
3.	Review Event IDs 16962 to 16969, as listed in the following table, in the System log with event source Directory-Service-SAM.
4.	Identify which security contexts are enumerating users or groups in the SAM database. 
5.	Prioritize the callers, determine if they should be allowed or not, then include the allowed callers in the SDDL string.

|Event ID|Event Message Text|Explanation |
|---|---|---|
|16962|"Remote calls to the SAM database are being restricted using the default security descriptor: %1.%n "<br><br> %2-  "Default SD String:" |Emit event when registry SDDL is absent, causing fallback to default hard-coded SDDL (event should include a copy of the default SDDL).|
|16963|Message Text: "Remote calls to the SAM database are being restricted using the configured registry security descriptor: %1.%n" <br><br> %1 - "Registry SD String:" |Emit event when a new SDDL is read from the registry (either on startup or change) and is considered valid. The event includes the source and a copy of the queried SDDL.
|16964|"The registry security descriptor is malformed: %1.%n Remote calls to the SAM database are being restricted using the default security descriptor: %2.%n" <br><br>%1- "Malformed SD String:"<br> %2- "Default SD String:"|Emit event when registry SDDL is mal-formed, causing fallback to default hard-coded SDDL (event should include a copy of the default SDDL).
|16965|Message Text: "A remote call to the SAM database has been denied.%nClient SID: %1%n Network address: %2%n"<br><br> %1- "Client SID:" %2- "Client Network Address | Emit event when access is denied to a remote client. Event should include identity and network address of the client.
|16966|Audit Mode is enabled- <br><br>Message Text: "Audit only mode is now enabled for remote calls to the SAM database. SAM will log an event for clients who would have been denied access in normal mode. %n"|Emit event whenever training mode (see 16968) is enabled or disabled. 
|16967|Audit Mode is disabled- <br><br>Message Text: "Audit only mode is now disabled for remote calls to the SAM database.%n For more information"|Emit event whenever training mode (see 16968) is enabled or disabled.
|16968| Message Text: "Audit only mode is currently enabled for remote calls to the SAM database.%n The following client would have been normally denied access:%nClient SID: %1 from network address: %2. %n" <br>%1- "Client SID:" <br>%2- "Client Network Address:"|Emit event when access would have been denied to a remote client, but was allowed through due to training mode being enabled. Event should include identity and network address of the client.|
|16969|Message Text: "%2 remote calls to the SAM database have been denied in the past %1 seconds throttling window.%n <br>"%1- "Throttle window:" <br>%2- "Suppressed Message Count:"| Throttling may be necessary for some events due to expected high volume on some servers causing the event log to wrap. <br><br>Note: There is no throttling of events when audit mode is enabled. Environments with a large number of low-privilege and anonymous querying of the remote database may see large numbers of events logged to the System log. For more info, see the [Event Throttling](#event-throttling) section.

Compare the security context attempting to remotely enumerate accounts with the default security descriptor. Then edit the security descriptor to add accounts that require remote access. 

### Event Throttling
A busy server can flood event logs with events related to the remote enumeration access check. To prevent this, access-denied events are logged once every 15 minutes by default. The length of this period is controlled by the following registry value.

|Registry Path|HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa\ |
|---|---|
Setting |RestrictRemoteSamEventThrottlingWindow|
Data Type |DWORD|
|Value|seconds|
|Reboot Required?|No|
|Notes|**Default** is 900 seconds – 15mins. <br>The throttling uses a suppressed events counter which starts at 0 and gets incremented during the throttling window. <br> For example, X events were suppressed in the last 15 minutes. <br>The counter is restarted after the event 16969 is logged.

### Restart requirement

Restarts are not required to enable, disable or modify the **Network access: Restrict clients allowed to make remote calls to SAM security** policy setting, including audit only mode. Changes become effective without a device restart when they are saved locally or distributed through Group Policy.

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability	
The SAMRPC protocol has a default security posture that makes it possible for low-privileged attackers to query a machine on the network for data that is critical to their further hacking and penetration plans. <br><br>
The following example illustrates how an attacker might exploit remote SAM enumeration:
1.	A low-privileged attacker gains a foothold on a network.
2.	The attacker then queries all machines on the network to determine which ones have a highly privileged domain user configured as a local administrator on that machine. 
3.	If the attacker can then find any other vulnerability on that machine that allows taking it over, the attacker can then squat on the machine waiting for the high-privileged user to logon and then steal or impersonate those credentials.

### Countermeasure
You can mitigate this vulnerability by enabling the **Network access: Restrict clients allowed to make remote calls** to SAM security policy setting and configuring the SDDL for only those accounts that are explicitly allowed access.

### Potential impact
If the policy is defined, admin tools, scripts and software that formerly enumerated users, groups and group membership may fail. To identify accounts that may be affected, test this setting in [audit only mode](#audit-only-mode).  

## Related Topics
[Security Options](https://technet.microsoft.com/itpro/windows/keep-secure/security-options)

[SAMRi10 - Hardening SAM Remote Access in Windows 10/Server 2016](https://gallery.technet.microsoft.com/SAMRi10-Hardening-Remote-48d94b5b)

<br>
