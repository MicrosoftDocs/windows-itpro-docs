---
title: Allow COM object registration in a WDAC policy (Windows 10)
description: You can allow COM object registration in a Windows Defender Application Control policy.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: dansimp
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.technology: mde
---

# Allow COM object registration in a Windows Defender Application Control policy

**Applies to:**

-   Windows 10
-   Windows Server 2016
-   Windows Server 2019

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The [Microsoft Component Object Model (COM)](/windows/desktop/com/the-component-object-model) is a platform-independent, distributed, object-oriented system for creating binary software components that can interact. COM specifies an object model and programming requirements that enable COM objects to interact with other objects.

### COM object configurability in WDAC policy

Prior to the Windows 10 1903 update, Windows Defender Application Control (WDAC) enforced a built-in allow list for COM object registration. While this mechanism works for most common application usage scenarios, customers have provided feedback that there are cases where additional COM objects need to be allowed. The 1903 update to Windows 10 introduces the ability to specify allowed COM objects via their GUID in the WDAC policy.

**NOTE**: To add this functionality to other versions of Windows 10, you can install the following or later updates:

- Windows 10, 1809 June 18, 2019—KB4501371 (OS Build 17763.592) (https://support.microsoft.com/help/4501371/windows-10-update-kb4501371)
- Windows 10, 1803 June 18, 2019—KB4503288 (OS Build 17134.858) (https://support.microsoft.com/help/4503288/windows-10-update-kb4503288)
- Windows 10, 1709 June 18, 2019—KB4503281 (OS Build 16299.1237) (https://support.microsoft.com/help/4503281/windows-10-update-kb4503281) 
- Windows 10, 1703 June 18, 2019—KB4503289 (OS Build 15063.1897) (https://support.microsoft.com/help/4503289/windows-10-update-kb4503289
- Windows 10, 1607 June 18, 2019—KB4503294 (OS Build 14393.3053) (https://support.microsoft.com/help/4503294/windows-10-update-kb4503294)

### Get COM object GUID

Get GUID of application to allow in one of the following ways:
- Finding block event in Event Viewer (Application and Service Logs > Microsoft > Windows > AppLocker > MSI and Script) and extracting GUID
- Creating audit policy (using New-CIPolicy –Audit), potentially with specific provider, and use info from block events to get GUID

### Author policy setting to allow or deny COM object GUID

Three elements:
- Provider: platform on which code is running (values are  Powershell, WSH, IE, VBA, MSI, or a wildcard “AllHostIds”)
- Key: GUID for the program you with to run, in the format Key="{33333333-4444-4444-1616-161616161616}"
- ValueName: needs to be set to "EnterpriseDefinedClsId"

One attribute:
- Value: needs to be “true” for allow and “false” for deny
  - Note that deny only works in base policies, not supplemental
- The setting needs to be placed in the order of ASCII values (first by Provider, then Key, then ValueName)

### Examples

Example 1: Allows registration of all COM object GUIDs in any provider

```xml
<Setting Provider="AllHostIds" Key="AllKeys" ValueName="EnterpriseDefinedClsId">
  <Value>
    <Boolean>true</Boolean>
  </Value>
</Setting>
```

Example 2: Blocks a specific COM object from being registered via Internet Explorer (IE)

```xml
<Setting Provider="IE" Key="{00000000-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
  <Value>
    <Boolean>false</Boolean>
  </Value>
</Setting>
```

Example 3: Allows a specific COM object to register in PowerShell

```xml
<Setting Provider="PowerShell" Key="{33333333-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
  <Value>
    <Boolean>true</Boolean>
  </Value>
</Setting>
```
### How to configure settings for the CLSIDs

Given the following example of an error in the Event Viewer (**Application and Service Logs** > **Microsoft** > **Windows** > **AppLocker** > **MSI and Script**):

Log Name:      Microsoft-Windows-AppLocker/MSI and Script
Source:        Microsoft-Windows-AppLocker
Date:          11/11/2020 1:18:11 PM
Event ID:      8036
Task Category: None
Level:         Error
Keywords:
User:          S-1-5-21-3340858017-3068726007-3466559902-3647
Computer:      contoso.com
Description:
{f8d253d9-89a4-4daa-87b6-1168369f0b21} was prevented from running due to Config CI policy.

Event XML:

```XML
<Event xmlns="https://schemas.microsoft.com/win/2004/08/events/event">
  <System>
    <Provider Name="Microsoft-Windows-AppLocker" Guid="{cbda4dbf-8d5d-4f69-9578-be14aa540d22}" />
    <EventID>8036</EventID>
    <Version>0</Version>
    <Level>2</Level>
    <Task>0</Task>
    <Opcode>0</Opcode>
    <Keywords>0x4000000000000000</Keywords>
    <TimeCreated SystemTime="2020-11-11T19:18:11.4029179Z" />
    <EventRecordID>819347</EventRecordID>
    <Correlation ActivityID="{61e3e871-adb0-0047-c9cc-e761b0add601}" />
    <Execution ProcessID="21060" ThreadID="23324" />
    <Channel>Microsoft-Windows-AppLocker/MSI and Script</Channel>
    <Computer>contoso.com</Computer>
    <Security UserID="S-1-5-21-3340858017-3068726007-3466559902-3647" />
  </System>
  <EventData>
    <Data Name="IsApproved">false</Data>
    <Data Name="CLSID">{f8d253d9-89a4-4daa-87b6-1168369f0b21}</Data>
  </EventData>
</Event>
```

To add this CLSID to the existing policy, use the following steps:

1. Open PowerShell ISE with Administrative privileges.
2. Copy and edit this command, then run it from the admin PowerShell ISE. Consider the policy name to be `WDAC_policy.xml`.

```PowerShell
PS C:\WINDOWS\system32> Set-CIPolicySetting -FilePath <path to policy xml>\WDAC_policy.xml -Key 8856f961-340a-11d0-a96b-00c04fd705a2 -Provider WSH -Value True -ValueName EnterpriseDefinedClsId -ValueType Boolean
```

Once the command has been run, you will find that the following section is added to the policy XML.

```XML
  <Settings>
    <Setting Provider="WSH" Key="8856f961-340a-11d0-a96b-00c04fd705a2" ValueName="EnterpriseDefinedClsId">
      <Value>
        <Boolean>true</Boolean>
      </Value>
    </Setting>
```