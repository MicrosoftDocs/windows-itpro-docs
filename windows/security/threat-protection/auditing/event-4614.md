---
title: 4614(S) A notification package has been loaded by the Security Account Manager. 
description: Describes security event 4614(S) A notification package has been loaded by the Security Account Manager.
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

# 4614(S): A notification package has been loaded by the Security Account Manager.


<img src="images/event-4614.png" alt="Event 4614 illustration" width="449" height="317" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Security System Extension](audit-security-system-extension.md)

***Event Description:***

This event generates every time a Notification Package has been loaded by the [Security Account Manager](/previous-versions/windows/it-pro/windows-server-2003/cc756748(v=ws.10)).

In reality, starting with Windows Vista, a notification package should be interpreted as afs [Password Filter](/windows/win32/secmgmt/password-filters).

Password Filters are DLLs that are loaded or called when passwords are set or changed.

Each time a system starts, it loads the notification package DLLs from **HKEY\_LOCAL\_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Lsa\\Notification Packages** registry value and performs the initialization sequence for every package.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>4614</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>12289</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-14T03:36:43.073484900Z" /> 
 <EventRecordID>1048140</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="516" ThreadID="520" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="NotificationPackageName">WDIGEST</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

***Field Descriptions:***

**Notification Package Name** \[Type = UnicodeString\]**:** the name of loaded Notification Package.

## Security Monitoring Recommendations

For 4614(S): A notification package has been loaded by the Security Account Manager.

-   Typically this event has an informational purpose. If you defined the list of allowed Notification Packages in the system, then you can check is “**Notification Package Name”** field value in the allow list or not.