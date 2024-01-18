---
title: 5152(F) The Windows Filtering Platform blocked a packet. 
description: Describes security event 5152(F) The Windows Filtering Platform blocked a packet.
ms.pagetype: security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: low
author: vinaypamnani-msft
ms.date: 09/08/2021
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: reference
---

# 5152(F): The Windows Filtering Platform blocked a packet.


<img src="images/event-5152.png" alt="Event 5152 illustration" width="497" height="499" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Filtering Platform Packet Drop](audit-filtering-platform-packet-drop.md)

***Event Description:***

This event generates when [Windows Filtering Platform](/windows/win32/fwp/windows-filtering-platform-start-page) has blocked a network packet.

This event is generated for every received network packet.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5152</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12809</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8010000000000000</Keywords> 
 <TimeCreated SystemTime="2015-09-22T16:52:37.274367300Z" /> 
 <EventRecordID>321323</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="4" ThreadID="4456" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ProcessId">4556</Data> 
 <Data Name="Application">\\device\\harddiskvolume2\\documents\\listener.exe</Data> 
 <Data Name="Direction">%%14592</Data> 
 <Data Name="SourceAddress">10.0.0.100</Data> 
 <Data Name="SourcePort">49278</Data> 
 <Data Name="DestAddress">10.0.0.10</Data> 
 <Data Name="DestPort">3333</Data> 
 <Data Name="Protocol">6</Data> 
 <Data Name="FilterRTID">0</Data> 
 <Data Name="LayerName">%%14610</Data> 
 <Data Name="LayerRTID">44</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Application Information**:

-   **Process ID** \[Type = Pointer\]: hexadecimal Process ID of the process to which blocked network packet was sent. Process ID (PID) is a number used by the operating system to uniquely identify an active process. To see the PID for a specific process you can, for example, use Task Manager (Details tab, PID column):

    <img src="images/task-manager.png" alt="Task manager illustration" width="585" height="375" />

    If you convert the hexadecimal value to decimal, you can compare it to the values in Task Manager.

    You can also correlate this process ID with a process ID in other events, for example, “[4688](event-4688.md): A new process has been created” **Process Information\\New Process ID**.

-   **Application Name** \[Type = UnicodeString\]**:** full path and the name of the executable for the process.

    Logical disk is displayed in format \\device\\harddiskvolume\#. You can get all local volume numbers by using **diskpart** utility. The command to get volume numbers using diskpart is “**list volume”**:

<img src="images/diskpart.png" alt="DiskPart illustration" width="786" height="246" />

**Network Information:**

-   **Direction** \[Type = UnicodeString\]: direction of blocked connection.

    -   Inbound – for inbound connections.

    -   Outbound – for unbound connections.

-   **Source Address** \[Type = UnicodeString\]**:** local IP address on which application received the packet.

    -   IPv4 Address

    -   IPv6 Address

    -   :: - all IP addresses in IPv6 format

    -   0.0.0.0 - all IP addresses in IPv4 format

    -   127.0.0.1, ::1 - localhost

-   **Source Port** \[Type = UnicodeString\]**:** port number on which application received the packet.

-   **Destination Address** \[Type = UnicodeString\]**:** IP address ***from*** which packet was received or initiated.

    -   IPv4 Address

    -   IPv6 Address

    -   :: - all IP addresses in IPv6 format

    -   0.0.0.0 - all IP addresses in IPv4 format

    -   127.0.0.1, ::1 - localhost

-   **Destination Port** \[Type = UnicodeString\]**:** port number that was used from remote machine to send the packet.

-   **Protocol** \[Type = UInt32\]**:** number of the protocol that was used.

| Service                                            | Protocol Number |
|----------------------------------------------------|-----------------|
| Internet Control Message Protocol (ICMP)           | 1               |
| Transmission Control Protocol (TCP)                | 6               |
| User Datagram Protocol (UDP)                       | 17              |
| General Routing Encapsulation (PPTP data over GRE) | 47              |
| Authentication Header (AH) IPSec                   | 51              |
| Encapsulation Security Payload (ESP) IPSec         | 50              |
| Exterior Gateway Protocol (EGP)                    | 8               |
| Gateway-Gateway Protocol (GGP)                     | 3               |
| Host Monitoring Protocol (HMP)                     | 20              |
| Internet Group Management Protocol (IGMP)          | 88              |
| MIT Remote Virtual Disk (RVD)                      | 66              |
| OSPF Open Shortest Path First                      | 89              |
| PARC Universal Packet Protocol (PUP)               | 12              |
| Reliable Datagram Protocol (RDP)                   | 27              |
| Reservation Protocol (RSVP) QoS                    | 46              |

**Filter Information:**

-   **Filter Run-Time ID** \[Type = UInt64\]: unique filter ID that blocked the packet.

    To find a specific Windows Filtering Platform filter by ID, run the following command: **netsh wfp show filters**. As a result of this command, the **filters.xml** file will be generated. Open this file and find specific substring with required filter ID (**&lt;filterId&gt;**)**,** for example:

    <img src="images/filters-xml-file.png" alt="Filters.xml file illustration" width="840" height="176" />

-   **Layer Name** \[Type = UnicodeString\]: [Application Layer Enforcement](/windows/win32/fwp/application-layer-enforcement--ale-) layer name.

-   **Layer Run-Time ID** \[Type = UInt64\]: Windows Filtering Platform layer identifier. To find a specific Windows Filtering Platform layer ID, run the following command: **netsh wfp show state**. As a result of this command **wfpstate.xml** file will be generated. Open this file and find specific substring with required layer ID (**&lt;layerId&gt;**)**,** for example:

<img src="images/wfpstate-xml.png" alt="Wfpstate xml illustration" width="1563" height="780" />

## Security Monitoring Recommendations

For 5152(F): The Windows Filtering Platform blocked a packet.

-   If you have a pre-defined application that should be used to perform the operation that was reported by this event, monitor events with “**Application**” not equal to your defined application.

-   You can monitor to see if “**Application**” isn't in a standard folder (for example, not in **System32** or **Program Files**) or is in a restricted folder (for example, **Temporary Internet Files**).

-   If you have a pre-defined list of restricted substrings or words in application names (for example, “**mimikatz**” or “**cain.exe**”), check for these substrings in “**Application**.”

-   Check that **Source Address** is one of the addresses assigned to the computer.

-   If the computer or device shouldn't have access to the Internet, or contains only applications that don’t connect to the Internet, monitor for [5152](event-5152.md) events where **Destination Address** is an IP address from the Internet (not from private IP ranges).

-   If you know that the computer should never contact or should never be contacted by certain network IP addresses, monitor for these addresses in **Destination Address**.

-   If you've an allowlist of IP addresses that the computer or device is expected to contact or to be contacted by, monitor for IP addresses in **“Destination Address”** that aren't in the allowlist.

-   If you need to monitor all inbound connections to a specific local port, monitor for [5152](event-5152.md) events with that “**Source Port**.**”**

-   Monitor for all connections with a “**Protocol Number”** that isn't typical for this device or computer, for example, anything other than 1, 6, or 17.

-   If the computer’s communication with “**Destination Address”** should always use a specific “**Destination Port**,**”** monitor for any other “**Destination Port**.”