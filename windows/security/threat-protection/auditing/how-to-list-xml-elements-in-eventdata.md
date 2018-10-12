---
title: How to get a list of XML elements in <EventData> (Windows 10)
description: This reference topic for the IT professional explains how to use PowerShell to get a list of XML elements that can appear in <EventData>.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: tedhardyMSFT
ms.date: 10/12/2018
---

# How to get a list of XML elements in <EventData>

**Applies to**
-   Windows 10

Since the Security log uses a manifest, you can get all of the event schema from the workstation.

Run this from an elevated powershell prompt:

```powershell
$secEvents = get-winevent -listprovider "microsoft-windows-security-auditing"
```

The .events property is a collection of all of the events listed in the manifest on the local machine.
For each event there is a .Template property for the XML template used for the event properties (if there are any.)

For example:

```powershell
PS C:\WINDOWS\system32> $SecEvents.events[100]


Id          : 4734
Version     : 0
LogLink     : System.Diagnostics.Eventing.Reader.EventLogLink
Level       : System.Diagnostics.Eventing.Reader.EventLevel
Opcode      : System.Diagnostics.Eventing.Reader.EventOpcode
Task        : System.Diagnostics.Eventing.Reader.EventTask
Keywords    : {}
Template    : <template xmlns="http://schemas.microsoft.com/win/2004/08/events">
                <data name="TargetUserName" inType="win:UnicodeString" outType="xs:string"/>
                <data name="TargetDomainName" inType="win:UnicodeString" outType="xs:string"/>
                <data name="TargetSid" inType="win:SID" outType="xs:string"/>
                <data name="SubjectUserSid" inType="win:SID" outType="xs:string"/>
                <data name="SubjectUserName" inType="win:UnicodeString" outType="xs:string"/>
                <data name="SubjectDomainName" inType="win:UnicodeString" outType="xs:string"/>
                <data name="SubjectLogonId" inType="win:HexInt64" outType="win:HexInt64"/>
                <data name="PrivilegeList" inType="win:UnicodeString" outType="xs:string"/>
              </template>

Description : A security-enabled local group was deleted.

              Subject:
                Security ID:            %4
                Account Name:           %5
                Account Domain:         %6
                Logon ID:               %7

              Group:
                Security ID:            %3
                Group Name:             %1
                Group Domain:           %2

              Additional Information:
                Privileges:             %8



PS C:\WINDOWS\system32> $SecEvents.events[100].Template
<template xmlns="http://schemas.microsoft.com/win/2004/08/events">
  <data name="TargetUserName" inType="win:UnicodeString" outType="xs:string"/>
  <data name="TargetDomainName" inType="win:UnicodeString" outType="xs:string"/>
  <data name="TargetSid" inType="win:SID" outType="xs:string"/>
  <data name="SubjectUserSid" inType="win:SID" outType="xs:string"/>
  <data name="SubjectUserName" inType="win:UnicodeString" outType="xs:string"/>
  <data name="SubjectDomainName" inType="win:UnicodeString" outType="xs:string"/>
  <data name="SubjectLogonId" inType="win:HexInt64" outType="win:HexInt64"/>
  <data name="PrivilegeList" inType="win:UnicodeString" outType="xs:string"/>
</template>

```
