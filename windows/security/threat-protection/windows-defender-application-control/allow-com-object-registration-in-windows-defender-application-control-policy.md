---
title: Allow COM object registration in a Windows Defender Application Control policy (Windows 10)
description: You can allow COM object registration in a Windows Defender Application Control policy.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: mdsakibMSFT
ms.date: 05/21/2019
---

# Allow COM object registration in a Windows Defender Application Control policy

**Applies to:**

-   Windows 10
-   Windows Server 2016

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

The [Microsoft Component Object Model (COM)](https://docs.microsoft.com/windows/desktop/com/the-component-object-model) is a platform-independent, distributed, object-oriented system for creating binary software components that can interact. COM specifies an object model and programming requirements that enable COM objects to interact with other objects.

### COM object configurability in WDAC policy

Prior to the Windows 10 1903 update, Windows Defender Application Control (WDAC) enforced a built-in allow list for COM object registration. While this mechanism works for most common application usage scenarios, customers have provided feedback that there are cases where additional COM objects need to be allowed. The 1903 update to Windows 10 introduces the ability to specify allowed COM objects via their GUID in the WDAC policy.

NOTE: To add this functionality to other versions of windows 10 you can install the following or later updates:

- Windows 10, 1809 June 18, 2019—KB4501371 (OS Build 17763.592) (https://internal.support.services.microsoft.com/en-us/help/4501371/windows-10-update-kb4501371)
- windows 10, 1803 June 18, 2019—KB4503288 (OS Build 17134.858) (https://internal.support.services.microsoft.com/en-us/help/4503288/windows-10-update-kb4503288)
- Windows 10, 1709 June 18, 2019—KB4503281 (OS Build 16299.1237) (https://internal.support.services.microsoft.com/en-us/help/4503281/windows-10-update-kb4503281) 
- windows 10, 1703 June 18, 2019—KB4503289 (OS Build 15063.1897) (https://internal.support.services.microsoft.com/en-us/help/4503289/windows-10-update-kb4503289
- Windows 10, 1607 June 18, 2019—KB4503294 (OS Build 14393.3053) (https://internal.support.services.microsoft.com/en-us/help/4503294/windows-10-update-kb4503294)


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

