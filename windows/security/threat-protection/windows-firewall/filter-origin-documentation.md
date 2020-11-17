---
title: Filter Origin Documentation (Audit Log Improvements)
description: Filter Origin Documentation (Audit Log Improvements)
ms.reviewer: 
ms.author: v-bshilpa
ms.prod: w10
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: normal
author: Benny-54
manager: dansimp
ms.collection: 
- m365-security-compliance
- m365-initiative-windows-security
ms.topic: troubleshooting
---

# Filter Origin Documentation (Audit Log Improvements)

Debugging packet drops is a continuous issue to Windows customers. In the past, customers had limited information about packet drops.

Typically, when investigating packet drop events, a customer would use the field `Filter Run-Time ID` from WFP Audits 5157 or 5152. 

![Event Properties](images/event-properties-5157.png)

The filter ID uniquely identifies the filter that caused the packet drop. The filter ID can be searched in the WFP state dump output to trace back to the FW rule where the filter originated from. 

However, the filter ID is not a reliable source for tracing back to the filter or the rule, as the filter ID can change for many reasons despite the rule not changing at all. This makes the diagnosis process error-prone and difficult.

For customers to debug packet drop events correctly and efficiently, they would need more context about the blocking filter such as its origin.

The blocking filters can be categorized under these filter origins:

1. Firewall Rules

2. Firewall Default Block Filters

    a.	AppContainer Loopback
    
    b.	Boottime Default
    
    c.	Quarantine Default
    
    d.	Query User Default
    
    e.	Stealth
    
    f.	UWP Default
    
    g.	WSH Default

The next section describes the improvements made to Audits 5157 and 5152 and how the above filter origins are used in these events. These improvements were added in Iron Release.
 
 ## Improved Firewall Audit 
 
The two new fields added to the Audit 5157 and 5152 events are `Filter Origin` and `Interface Index`.
 
The `Filter Origin` field will help identify the cause of the drop. Packet drops from FW are explicitly dropped by default block filters created by the Windows Firewall service or a FW rule which may be created by users, policies, services, apps, etc.

`Filter Origin` will either specify the rule ID (a unique identifier of a Firewall rule) or the name of one of the default block filters.

The `Interface Index` field will specify the network interface in which the packet was dropped. This field helps to identify which interface was quarantined, if the `Filter Origin` is a `Quarantine Default`.

To enable a specific audit event, run the corresponding command in an administrator command prompt:

|**Audit #**|**Enable Command**|**Link**|
|:-----|:-----|:-----|
|**5157**|`Auditpol /set /category:"System" /SubCategory:"Filtering Platform Connection" /success:enable /failure:enable`|[5157(F): The Windows Filtering Platform has blocked a connection.](https://docs.microsoft.com/windows/security/threat-protection/auditing/event-5157)|
|**5152**|`Auditpol /set /category:"System" /SubCategory:"Filtering Platform Connection" /success:enable /failure:enable`|[5152(F): The Windows Filtering Platform blocked a packet.](https://docs.microsoft.com/windows/security/threat-protection/auditing/event-5152)|

## Example Flow of Debugging Packet Drops with Filter Origin 

As the audit surfaces `Filter Origin` and `Interface Index`, the network admin can determine the root cause of the network packet drop and the interface it happened on.

![Event Audit](images/event-audit-5157.png)

The next sections are divided by `Filter Origin` type. The filter origin value will either be a rule name or the name of one of the default block filters. If the filter origin is one of the default block filters, skip to the section, **Firewall Default Block Filters**. Otherwise, continue to the section **Firewall Rules**.

## Firewall Rules

Run the following PowerShell command to generate the rule information using `Filter Origin`. 

```Powershell
Get-NetFirewallRule -Name “<Filter Origin>”
Get-NetFirewallRule -Name " {A549B7CF-0542-4B67-93F9-EEBCDD584377} "
```

![Firewall rule](images/firewallrule.png)

After identifying the rule that caused the drop, the network admin can now modify/disable the rule to allow the traffic they want through command prompt or using the Windows Defender UI. The network admin can find the rule in the UI with the rule’s `DisplayName`.

>[!NOTE]
> Firewall rules from Mobile Device Management (MDM) store cannot be searched using the Windows Defender UI. Additionally, the above method will not work when the `Filter Origin` is one of the default block filters, as they do not correspond to any Firewall rules.

## Firewall Default Block Filters

**AppContainer Loopback**

Network drop events from the AppContainer Loopback block filter origin occur when localhost loopback is not enabled properly for the UWP app.

To enable localhost loopback in a local debugging environment, see [Communicating with localhost](https://docs.microsoft.com/en-us/windows/iot-core/develop-your-app/loopback).

To enable localhost loopback for a published app which requires loopback access to communicate with another UWP or packaged win32 app, see [uap4:LoopbackAccessRules](https://docs.microsoft.com/en-us/uwp/schemas/appxpackage/uapmanifestschema/element-uap4-loopbackaccessrules).

**Boottime Default**

Network drop events from the Boottime Default block filter origin occur when the computer is booting up and the Firewall service is not yet running. Services will need to create a boottime allow filter to allow the traffic. It should be noted that it is not possible to add boottime filters through Firewall rules.

**Quarantine Default**

Network drops from the Quarantine Default block filter occur when the interface is temporarily quarantined by Firewall Service. The Firewall service quarantines an interface when it detects a change on the network, and based on several other factors, the Firewall service may put the interface in quarantine as a safeguard. When an interface is in quarantine, the Quarantine Default Block filter will block any new non-loopback inbound connections. 

Run the following PowerShell command to generate more information about the interface:

```Powershell
Get-NetIPInterface –InterfaceIndex <Interface Index>
Get-NetIPInterface –InterfaceIndex 5
```

![Quarantine Default block filter](images/quarantine-default-block-filter.png)

To learn more about the quarantine feature, see [Quarantine Behavior](quarantine.md).

>[!NOTE]
> Quarantine-related packet drops are often transient and signify nothing more than a network change on the interface.

**Query User Default**

Network packet drops from Query User Default block filters occur when there is no explicit rule created to allow an inbound connection for the packet. When an application binds to a socket but does not have a corresponding inbound rule to allow packets on that port, Windows generates a pop up for the user to allow or deny the app to receive packets on the available network categories. If the user clicks to deny the connection in this popup, subsequent inbound packets to the app will be dropped. To resolve the drops: 

1. Create an inbound FW rule to allow the packet for this application. This will allow the packet to bypass any Query User Default block filters.

2. Delete any block Query User rules which may have been auto generated by the FW service.

To generate a list of all the Query User block rules, you can run the following PowerShell command:

```Powershell
Get-NetFirewallRule | Where {$_.Name -like "*Query User*"}
```

![Query User Default block filter](images/query-user-default-block-filters.png)

The query user pop-up feature is enabled by default. 

To disable the query user pop-up, you can run the following in administrative command prompt:

```Console
Netsh set allprofiles inboundusernotification disable
```
Or in PowerShell:

```Powershell
Set-NetFirewallProfile -NotifyOnListen False
```

**Stealth**

Network drops from Stealth filters are typically made to prevent port scanning.

To disable Stealth-mode, see [Disable stealth mode in Windows](https://docs.microsoft.com/en-us/troubleshoot/windows-server/networking/disable-stealth-mode).

**UWP Default**

Network drops from UWP Default Inbound/Outbound block filters are often caused by the UWP app not being configured correctly (i.e. the UWP app is missing the correct capability tokens or loopback is not enabled) or the private range is configured incorrectly. 

For more information on how to debug drops caused by UWP default block filters, see [Troubleshooting UWP App Connectivity Issues](https://docs.microsoft.com/en-us/windows/security/threat-protection/windows-firewall/troubleshooting-uwp-firewall).

**WSH Default**

Network drops from WSH default filters indicate that there wasn’t an explicit Windows Service Hardening allow rule to allow network traffic for the protected service. The service owner will need to configure allow rules for the service if the block is not expected.

