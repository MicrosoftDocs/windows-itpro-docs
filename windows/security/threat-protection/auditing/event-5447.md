---
title: 5447(S) A Windows Filtering Platform filter has been changed. (Windows 10)
description: Describes security event 5447(S) A Windows Filtering Platform filter has been changed.
ms.pagetype: security
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.localizationpriority: none
author: dansimp
ms.date: 04/19/2017
---

# 5447(S): A Windows Filtering Platform filter has been changed.

**Applies to**
-   Windows 10
-   Windows Server 2016


<img src="images/event-5447.png" alt="Event 5447 illustration" width="493" height="793" hspace="10" align="left" />

***Subcategory:***&nbsp;[Audit Other Policy Change Events](audit-other-policy-change-events.md)

***Event Description:***

This event generates every time a [Windows Filtering Platform](https://msdn.microsoft.com/library/windows/desktop/aa366510(v=vs.85).aspx) filter has been changed.

It typically generates during Group Policy update procedures.

> **Note**&nbsp;&nbsp;For recommendations, see [Security Monitoring Recommendations](#security-monitoring-recommendations) for this event.

<br clear="all">

***Event XML:***
```
- <Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
- <System>
 <Provider Name="Microsoft-Windows-Security-Auditing" Guid="{54849625-5478-4994-A5BA-3E3B0328C30D}" /> 
 <EventID>5447</EventID> 
 <Version>0</Version> 
 <Level>0</Level> 
 <Task>13573</Task> 
 <Opcode>0</Opcode> 
 <Keywords>0x8020000000000000</Keywords> 
 <TimeCreated SystemTime="2015-10-07T23:51:12.191198900Z" /> 
 <EventRecordID>1060216</EventRecordID> 
 <Correlation /> 
 <Execution ProcessID="524" ThreadID="3784" /> 
 <Channel>Security</Channel> 
 <Computer>DC01.contoso.local</Computer> 
 <Security /> 
 </System>
- <EventData>
 <Data Name="ProcessId">284</Data> 
 <Data Name="UserSid">S-1-5-19</Data> 
 <Data Name="UserName">NT AUTHORITY\\LOCAL SERVICE</Data> 
 <Data Name="ProviderKey">{DECC16CA-3F33-4346-BE1E-8FB4AE0F3D62}</Data> 
 <Data Name="ProviderName">Microsoft Corporation</Data> 
 <Data Name="ChangeType">%%16385</Data> 
 <Data Name="FilterKey">{91334E6D-FFAB-40F1-8C43-5554965C228D}</Data> 
 <Data Name="FilterName">Port Scanning Prevention Filter</Data> 
 <Data Name="FilterType">%%16388</Data> 
 <Data Name="FilterId">100100</Data> 
 <Data Name="LayerKey">{AC4A9833-F69D-4648-B261-6DC84835EF39}</Data> 
 <Data Name="LayerName">Inbound Transport v4 Discard Layer</Data> 
 <Data Name="LayerId">13</Data> 
 <Data Name="Weight">13835058055315718144</Data> 
 <Data Name="Conditions">Condition ID: {632ce23b-5167-435c-86d7-e903684aa80c} Match value: No flags set Condition value: 0x00000003</Data> 
 <Data Name="Action">%%16391</Data> 
 <Data Name="CalloutKey">{EDA08606-2494-4D78-89BC-67837C03B969}</Data> 
 <Data Name="CalloutName">WFP Built-in Silent Drop Transport v4 Discard Layer Callout</Data> 
 </EventData>
 </Event>

```

***Required Server Roles:*** None.

***Minimum OS Version:*** Windows Server 2008, Windows Vista.

***Event Versions:*** 0.

## Security Monitoring Recommendations

For 5447(S): A Windows Filtering Platform filter has been changed.

-   This event mainly used for Windows Filtering Platform troubleshooting and typically has little to no security relevance.

