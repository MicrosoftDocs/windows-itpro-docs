---
title: 6420(S) A device was disabled. (Windows 10)
description: Describes security event 6420(S) A device was disabled.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 6420(S): A device was disabled.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-6420.png" alt="Event 6420 illustration" width="526" height="682" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit PNP Activity](audit-pnp-activity.md)

***Event Description:***

This event generates every time specific device was disabled.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>6420</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13316</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-11-14T22:23:29.137398300Z" /> 
 <EventRecordID>484</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="4" ThreadID="88" /> 
 <Channel>Security</Channel> 
 <Computer>DESKTOP-NFC0HVN</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="SubjectUserSid">S-1-5-18</Data> 
 <Data Name="SubjectUserName">DESKTOP-NFC0HVN$</Data> 
 <Data Name="SubjectDomainName">WORKGROUP</Data> 
 <Data Name="SubjectLogonId">0x3e7</Data> 
 <Data Name="DeviceId">USB\\VID\_138A&PID\_0017\\ffbc12c950a0</Data> 
 <Data Name="DeviceDescription">Synaptics FP Sensors (WBF) (PID=0017)</Data> 
 <Data Name="ClassId">{53D29EF7-377C-4D14-864B-EB3A85769359}</Data> 
 <Data Name="ClassName">Biometric</Data> 
 <Data Name="HardwareIds">USB\\VID\_138A&PID\_0017&REV\_0078 USB\\VID\_138A&PID\_0017</Data> 
 <Data Name="CompatibleIds">USB\\Class\_FF&SubClass\_00&Prot\_00 USB\\Class\_FF&SubClass\_00 USB\\Class\_FF</Data> 
 <Data Name="LocationInformation">Port\_\#0002.Hub\_\#0004</Data> 
 </EventData>
</Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows 10 \[Version 1511\].

***Event Versions:*** 0.

***Field Descriptions:***

**Subject:**

-   **Security ID** \[Type = SID\]**:** SID of account that disabled the device. Event Viewer automatically tries to resolve SIDs and show the account name. If the SID cannot be resolved, you will see the source data in the event.

> **Note**&nbsp;&nbsp;A **security identifier (SID)** is a unique value of variable length used to identify a trustee (security principal). Each account has a unique SID that is issued by an authority, such as an Active Directory domain controller, and stored in a security database. Each time a user logs on, the system retrieves the SID for that user from the database and places it in the access token for that user. The system uses the SID in the access token to identify the user in all subsequent interactions with Windows security. When a SID has been used as the unique identifier for a user or group, it cannot ever be used again to identify another user or group. For more information about SIDs, see [Security identifiers](/windows/access-protection/access-control/security-identifiers).

-   **Account Name** \[Type = UnicodeString\]**:** the name of the account that disabled the device.

-   **Account Domain** \[Type = UnicodeString\]**:** subject’s domain or computer name. Formats vary, and include the following:

    -   Domain NETBIOS name example: CONTOSO

    -   Lowercase full domain name: contoso.local

    -   Uppercase full domain name: CONTOSO.LOCAL

    -   For some [well-known security principals](https://support.microsoft.com/kb/243330), such as LOCAL SERVICE or ANONYMOUS LOGON, the value of this field is “NT AUTHORITY”.

    -   For local user accounts, this field will contain the name of the computer or device that this account belongs to, for example: “Win81”.

-   **Logon ID** \[Type = HexInt64\]**:** hexadecimal value that can help you correlate this event with recent events that might contain the same Logon ID, for example, “[4624](event-4624.md): An account was successfully logged on.”

**Device ID** \[Type = UnicodeString\]: “**Device instance path**” attribute of device. To see device properties, start Device Manager, open specific device properties, and click “Details”:

<img src="images/synaptics1.png" alt="Device Properties device instance path illustration" width="557" height="316" />

**Device Name** \[Type = UnicodeString\]: “**Device description**” attribute of device. To see device properties, start Device Manager, open specific device properties, and click “Details”:

<img src="images/synaptics2.png" alt="Device Properties device description illustration" width="557" height="305" />

**Class ID** \[Type = UnicodeString\]: “**Class Guid**” attribute of device. To see device properties, start Device Manager, open specific device properties, and click “Details”:

<img src="images/synaptics3.png" alt="Device Properties class GUID illustration" width="557" height="300" />

**Class Name** \[Type = UnicodeString\]: “**Class**” attribute of device. To see device properties, start Device Manager, open specific device properties, and click “Details”:

<img src="images/synaptics4.png" alt="Device Properties class illustration" width="557" height="298" />

**Hardware IDs** \[Type = UnicodeString\]: “**Hardware Ids**” attribute of device. To see device properties, start Device Manager, open specific device properties, and click “Details”:

<img src="images/synaptics5.png" alt="Device Properties hardware IDs illustration" width="557" height="313" />

**Compatible IDs** \[Type = UnicodeString\]: “**Compatible Ids**” attribute of device. To see device properties, start Device Manager, open specific device properties, and click “Details”:

<img src="images/synaptics6.png" alt="Device Properties compatible IDs illustration" width="557" height="337" />

**Location Information** \[Type = UnicodeString\]: “**Location information**” attribute of device. To see device properties, start Device Manager, open specific device properties, and click “Details”:

<img src="images/synaptics7.png" alt="Device Properties location illustration" width="557" height="298" />

## Security Monitoring Recommendations

For 6420(S): A device was disabled.

> **Important**&nbsp;&nbsp;For this event, also see [Appendix A: Security monitoring recommendations for many audit events](appendix-a-security-monitoring-recommendations-for-many-audit-events.md).

-   You can use this event to track the events and event information shown in the following table by using the listed fields:

| Event and event information to monitor          | Field to use               |
|-------------------------------------------------|----------------------------|
| Device disable events, **Device Instance Path** | “**Device ID**”            |
| Device disable events, **Device Description**   | “**Device Name**”          |
| Device disable events, **Class GUID**           | “**Class ID**”             |
| Device disable events, **Hardware IDs**         | “**Hardware IDs**”         |
| Device disable events, **Compatible IDs**       | “**Compatible IDs**”       |
| Device disable events, **Location information** | “**Location Information**” |

