---
title: 4826(S) Boot Configuration Data loaded. 
description: Describes security event 4826(S) Boot Configuration Data loaded. This event is generated every time system starts and loads Boot Configuration Data settings.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/07/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 4826(S): Boot Configuration Data loaded.


<img src="images/event-4826.png" alt="Event 4826 illustration" width="438" height="494" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Policy Change Events](audit-other-policy-change-events.md)

***Event Description:***

This event generates every time system starts and load current [Boot Configuration Data](/previous-versions/windows/hardware/design/dn653287(v=vs.85)) (BCD) settings.

This event is always logged regardless of the "Audit Other Policy Change Events" sub-category setting.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4826</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13573</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-13T00:59:57.553201100Z" /> 
 <EventRecordID>751</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="4" ThreadID="164" /> 
 <Channel>Security</Channel> 
 <Computer>WIN10-1</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">-</Data> 
 <Data Name="SubjectDomainName">-</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="LoadOptions">-</Data> 
 <Data Name="AdvancedOptions">%%1843</Data> 
 <Data Name="ConfigAccessPolicy">%%1846</Data> 
 <Data Name="RemoteEventLogging">%%1843</Data> 
 <Data Name="KernelDebug">%%1843</Data> 
 <Data Name="VsmLaunchType">%%1848</Data> 
 <Data Name="TestSigning">%%1843</Data> 
 <Data Name="FlightSigning">%%1843</Data> 
 <Data Name="DisableIntegrityChecks">%%1843</Data> 
 <Data Name="HypervisorLoadOptions">-</Data> 
 <Data Name="HypervisorLaunchType">%%1848</Data> 
 <Data Name="HypervisorDebug">%%1843</Data> 
 </EventData>
</Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2012, Windows 8.

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that reported this event. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event. Always “S-1-5-18” for this event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that reported this event. Always “-“ for this event.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Always “-“ for this event.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**General Settings:**

-   **Load Options** \[Type = UnicodeString\]**:** there is no information about this field in this document.

-   **Advanced Options** \[Type = UnicodeString\]**:** shows whether Windows is configured for system boot to the legacy menu (F8 menu) on the next boot (**Yes** or **No**). You can enable advanced boot using “bcdedit /set onetimeadvancedoptions yes” command.

-   **Configuration Access Policy** \[Type = UnicodeString\]**:** there is no information about this field in this document.

-   **System Event Logging** \[Type = UnicodeString\]**:** there is no information about this field in this document.

-   **Kernel Debugging** \[Type = UnicodeString\]**:** shows whether Windows [kernel debugging](/windows-hardware/drivers/devtest/bcdedit--debug) is enabled or not (**Yes** or **No**). You can enable kernel debugging using “bcdedit /debug on” command.

-   **VSM Launch Type** \[Type = UnicodeString\]**:** there is no information about this field in this document.

**Signature Settings:**

-   **Test Signing** \[Type = UnicodeString\]**:** shows whether Windows [test signing](/previous-versions/windows/hardware/design/dn653559(v=vs.85)) is enabled or not (**Yes** or **No**). You can disable test signing using “bcdedit /set testsigning off” command.

> **Note**&nbsp;&nbsp;This parameter controls whether Windows 8.1, Windows 8, Windows 7, Windows Server 2008, or Windows Vista will load any type of test-signed kernel-mode code. This option is not set by default, which means test-signed kernel-mode drivers on 64-bit versions of Windows 8.1, Windows 8, Windows 7, Windows Server 2008, and Windows Vista will not load by default. After you run the BCDEdit command, restart the computer so that the change takes effect. For more information, see [Introduction to Test-Signing](/windows-hardware/drivers/install/introduction-to-test-signing).

-   **Flight Signing** \[Type = UnicodeString\]**:** shows whether Windows flight signing (which allows flight-signed code signing certificates) is enabled or not (**Yes** or **No**). You can disable flight signing using “bcdedit /set flightsigning off” command.

-   **Disable Integrity Checks** \[Type = UnicodeString\]**:** shows whether Windows integrity check is disabled or not (**Yes** or **No**). You can disable integrity checks using “bcdedit /set nointegritychecks on” command.

**HyperVisor Settings:**

-   **HyperVisor Load Options** \[Type = UnicodeString\]**:** shows hypervisor **loadoptions**. See more information here: <https://msdn.microsoft.com/library/windows/hardware/ff542202(v=vs.85).aspx>.

-   **HyperVisor Launch Type** \[Type = UnicodeString\]**:** shows the hypervisor launch options (**Off** or **Auto**). If you are setting up a debugger to debug Hyper-V on a target computer, set this option to **Auto** on the target computer. For more information, see [Attaching to a Target Computer Running Hyper-V](/windows-hardware/drivers/debugger/setting-up-network-debugging-of-a-virtual-machine-host). Information about [Hyper-V](/windows/deployment/deploy-whats-new) technology is available on Microsoft TechNet web site.

-   **HyperVisor Debugging** \[Type = UnicodeString\]**:** shows whether the hypervisor debugger is enabled or not (**Yes** or **No**). For information about hypervisor debugging, see [Attaching to a Target Computer Running Hyper-V](/windows-hardware/drivers/debugger/setting-up-network-debugging-of-a-virtual-machine-host).

## Security Monitoring Recommendations

For 4826(S): Boot Configuration Data loaded.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   Because this event is typically triggered by the SYSTEM account, we recommend that you report it whenever **“Subject\\Security ID”** is not SYSTEM.

-   If you have a standard or baseline for Boot Configuration Data settings defined, monitor this event and check whether the settings reported by the event are still the same as were defined in your standard or baseline.