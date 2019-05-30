---
title: How to get a list of XML data name elements in <EventData> (Windows 10)
description: This reference topic for the IT professional explains how to use PowerShell to get a list of XML data name elements that can appear in <EventData>.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.date: 10/22/2018
---

# How to get a list of XML data name elements in EventData

**Applies to**
-   Windows 10

The Security log uses a manifest where you can get all of the event schema.

Run the following from an elevated PowerShell prompt:

```powershell
$secEvents = get-winevent -listprovider "microsoft-windows-security-auditing"
```

The .events property is a collection of all of the events listed in the manifest on the local machine.

For each event, there is a .Template property for the XML template used for the event properties (if there are any).

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

## Mapping data name elements to the names in an event description

You can use the &lt;Template&gt; and &lt;Description&gt; to map the data name elements that appear in XML view to the names that appear in the event description.

The &lt;Description&gt; is just the format string (if you’re used to Console.Writeline or sprintf statements) and the &lt;Template&gt; is the source of the input parameters for the &lt;Description&gt;.

Using Security event 4734 as an example:

```xml
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

```

For the **Subject: Security Id:** text element, it will use the fourth element in the Template, **SubjectUserSid**.

For **Additional Information Privileges:**, it would use the eighth element **PrivilegeList**.

A caveat to this is an oft-overlooked property of events called Version (in the &lt;SYSTEM&gt; element) that indicates the revision of the event schema and description. Most events have 1 version (all events have Version =0 like the Security/4734 example) but a few events like Security/4624 or Security/4688 have at least 3 versions (versions 0, 1, 2) depending on the OS version where the event is generated. Only the latest version is used for generating events in the Security log. In any case, the Event Version where the Template is taken from should use the same Event Version for the Description.

