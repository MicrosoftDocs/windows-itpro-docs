---
title: Windows Defender Application Control path-based rules (Windows 10)
description: Windows Defender Application Control restricts which applications users are allowed to run and the code that runs in the system core.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: jsuther1974
ms.date: 05/14/2019
---

# COM Whitelisting

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The [Microsoft Component Object Model (COM)](https://docs.microsoft.com/windows/desktop/com/the-component-object-model) is a platform-independent, distributed, object-oriented system for creating binary software components that can interact. COM specifies an object model and programming requirements that enable COM objects to interact with other objects.

Get GUID of application to allow by either:
- Finding block event in Event Viewer (Application and Service Logs > Microsoft > Windows > AppLocker > MSI and Script) and extracting GUID
- Creating audit policy (using New-CIPolicy –Audit), potentially with specific provider, and use info from block events to get GUID

### Author setting

Three elements:
- Provider: platform on which code is running (values are  Powershell, WSH, IE, VBA, MSI, or a wildcard “AllHostIds”)
- Key: GUID for the program you with to run, in the format Key="{33333333-4444-4444-1616-161616161616}"
- ValueName: needs to be set to "EnterpriseDefinedClsId"

One attribute:
- Value: needs to be “true” for allow and “false” for deny
  Note: without quotation marks
  Note: deny only works in base policies
- The setting needs to be placed in the order of ASCII values, first by Provider, then Key, then ValueName

### Examples

```xml
    <Setting Provider="AllHostIds" Key="AllKeys" ValueName="EnterpriseDefinedClsId">
      <Value>
        <Boolean>true</Boolean>
      </Value>
    </Setting>
    <Setting Provider="IE" Key="{00000000-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
      <Value>
        <Boolean>false</Boolean>
      </Value>
    </Setting>
    <Setting Provider="PowerShell" Key="{33333333-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
      <Value>
        <Boolean>true</Boolean>
      </Value>
    </Setting>
```

